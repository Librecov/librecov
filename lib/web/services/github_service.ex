defmodule Librecov.GithubService do
  require Logger
  alias Librecov.Project
  alias Librecov.Repo
  alias Librecov.ProjectManager
  alias EventBus.Model.Event

  def handle("pull_request", payload) do
    handle_pr(payload["action"], payload)
    install(payload["repository"])
  end

  def handle(event, _payload) do
    Logger.debug("Unhandled event: #{event}")
  end

  def handle_pr("synchronize", payload) do
    %Event{id: UUID.uuid1(), topic: :pull_request_synced, data: payload} |> EventBus.notify()
  end

  def handle_pr(event, _payload) do
    Logger.warn("Unhandled pr event: #{event}")
  end

  defp install(%{"id" => repo_id, "full_name" => name, "html_url" => base_url}) do
    with {:ok, %Project{}} <-
           Repo.insert(
             ProjectManager.changeset(%Project{}, %{
               name: name,
               base_url: base_url,
               current_coverage: 0.0,
               token: "oc_#{SecureRandom.urlsafe_base64(12)}",
               repo_id: "github_#{repo_id}"
             })
           ) do
      Logger.info("Installed Repo #{name}")
    end
  end
end
