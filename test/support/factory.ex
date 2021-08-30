defmodule Librecov.Factory do
  use ExMachina
  use ExMachina.EctoWithChangesetStrategy, repo: Librecov.Repo

  def project_factory do
    %Librecov.Project{
      name: sequence(:name, &"name/#{&1}"),
      base_url: sequence(:base_url, &"https://github.com/tuvistavie/name-#{&1}"),
      current_coverage: 50.0,
      repo_id: sequence(:repo_id, &"github_#{&1}"),
      token: sequence(:token, &"my_secret_token_#{&1}")
    }
  end

  def settings_factory do
    %Librecov.Settings{
      signup_enabled: false,
      restricted_signup_domains: nil,
      default_project_visibility: "internal"
    }
  end

  def user_factory do
    %Librecov.User{
      id: sequence(:id, &(&1 + 2)),
      name: sequence(:name, &"name-#{&1}"),
      email: sequence(:email, &"email-#{&1}@example.com"),
      password: "my-secure-password"
    }
  end

  def build_factory do
    %Librecov.Build{
      build_number: sequence(:build_number, & &1),
      project: fn -> build(:project) end
    }
  end

  def job_factory do
    %Librecov.Job{
      job_number: sequence(:job_number, & &1),
      build: fn -> build(:build) end
    }
  end

  def file_factory do
    %Librecov.File{
      job: fn -> build(:job) end,
      name: sequence(:name, &"file-#{&1}"),
      source: "return 0",
      coverage_lines: []
    }
  end

  def badge_factory do
    %Librecov.Badge{
      project: fn -> build(:project) end,
      coverage: 50.0,
      image: "encoded_image",
      format: to_string(Librecov.Badge.default_format())
    }
  end

  def make_changeset(%Librecov.Project{} = project) do
    Librecov.ProjectManager.changeset(project, %{})
  end

  def make_changeset(%Librecov.File{} = file) do
    {job_id, file} = Map.pop(file, :job_id)
    job_id = job_id || file.job.id
    params = Map.from_struct(file)

    job =
      if job_id do
        Librecov.Repo.get(Librecov.Job, job_id)
      else
        insert(:job)
      end

    file = Ecto.build_assoc(job, :files)
    Librecov.FileManager.changeset(file, params)
  end

  def make_changeset(%Librecov.Build{} = build) do
    {project_id, build} = Map.pop(build, :project_id)
    project_id = project_id || build.project.id
    params = Map.from_struct(build)

    project =
      if project_id do
        Librecov.Repo.get(Librecov.Project, project_id)
      else
        insert(:project)
      end

    build = Ecto.build_assoc(project, :builds)
    Librecov.BuildManager.changeset(build, params)
  end

  def make_changeset(%Librecov.Job{} = job) do
    {build_id, job} = Map.pop(job, :build_id)
    build_id = build_id || job.build.id
    params = Map.from_struct(job)

    build =
      if build_id do
        Librecov.Repo.get(Librecov.Build, build_id)
      else
        insert(:build)
      end

    job = Ecto.build_assoc(build, :jobs)
    Librecov.JobManager.changeset(job, params)
  end

  def make_changeset(%Librecov.Badge{} = badge) do
    {project_id, badge} = Map.pop(badge, :project_id)
    params = Map.from_struct(badge)

    project =
      if project_id do
        Librecov.Repo.get(Librecov.Project, project_id)
      else
        insert(:project)
      end

    badge = Ecto.build_assoc(project, :badge)
    Librecov.BadgeManager.changeset(badge, params)
  end

  def make_changeset(model) do
    model
  end

  def with_project(build) do
    project = insert(:project)
    %{build | project_id: project.id}
  end

  def with_secure_password(user, password) do
    changeset = Librecov.UserManager.changeset(user, %{password: password})
    %{user | password_digest: changeset.changes[:password_digest]}
  end

  def confirmed_user(user) do
    %{user | confirmed_at: Timex.now(), password_initialized: true}
  end

  def params_for(factory_name, attrs \\ %{}) do
    ExMachina.Ecto.params_for(__MODULE__, factory_name, attrs)
    |> Enum.reject(fn {_key, value} -> is_nil(value) or value == "" end)
    |> Enum.into(%{})
  end
end
