defmodule Librecov.Parser.Lcov do
  alias Librecov.Web.Schemas.Job.SourceFile

  def parse(lcov_string) do
    with {:ok, lcov_filepath} <- Temp.open("my-file", &IO.write(&1, lcov_string)),
         {json_str, 0} <-
           System.cmd(
             "#{File.cwd!()}/node_modules/.bin/lcov-parse",
             [lcov_filepath]
           ),
         {:ok, lcov_objects} <- json_str |> Jason.decode() do
      {:ok, lcov_objects |> Enum.map(&lcov_object_to_map/1)}
    end
  end

  defp lcov_object_to_map(lcov_object) do
    total_lines = lcov_object["lines"]["found"]

    SourceFile.cast_and_validate!(%{
      name: lcov_object["file"],
      source: Range.new(1, total_lines) |> Enum.map_join("\n", fn _ -> "MISSING" end),
      coverage: details_to_coverage(lcov_object["lines"]["details"], total_lines),
      branches: details_to_branches(lcov_object["branches"]["details"])
    })
  end

  defp details_to_coverage(details, total) do
    Range.new(1, total)
    |> Enum.map(fn line_no ->
      details |> Enum.find(fn %{"line" => line} -> line == line_no end) |> extract_hits()
    end)
  end

  def extract_hits(%{"hit" => hit}), do: hit
  def extract_hits(_), do: nil

  defp details_to_branches(details) do
    details
    |> Enum.map(fn branch ->
      [
        Map.get(branch, "line", 0),
        Map.get(branch, "block", 0),
        Map.get(branch, "branch", 0),
        Map.get(branch, "taken", 0)
      ]
    end)
  end
end
