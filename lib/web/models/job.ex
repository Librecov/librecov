defmodule Librecov.Job do
  use Librecov.Web, :model

  import Ecto.Query

  schema "jobs" do
    field(:coverage, :float, default: 0.0)
    field(:previous_job_id, :integer)
    field(:run_at, :utc_datetime_usec)
    field(:files_count, :integer)
    field(:job_number, :integer)
    field(:previous_coverage, :float)

    belongs_to(:build, Librecov.Build)
    has_one(:previous_job, Librecov.Job)
    has_many(:files, Librecov.File)

    timestamps()
  end

  def compute_coverage(job) do
    lines = Enum.flat_map(job.files, & &1.coverage_lines)
    Librecov.File.compute_coverage(lines)
  end

  def for_build(query, %Librecov.Build{id: id}), do: for_build(query, id)

  def for_build(query, build_id) when is_integer(build_id),
    do: query |> where(build_id: ^build_id)
end
