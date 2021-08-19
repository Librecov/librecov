# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Api.Projects do
  @moduledoc """
  API calls for all endpoints tagged `Projects`.
  """

  alias GitHubV3RESTAPI.Connection
  import GitHubV3RESTAPI.RequestBuilder

  @doc """
  Add project collaborator
  Adds a collaborator to an organization project and sets their permission level. You must be an organization owner or a project `admin` to add a collaborator.

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - project_id (integer()):
  - username (String.t):
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject57):
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_add_collaborator(Tesla.Env.client(), integer(), String.t(), keyword()) ::
          {:ok, nil}
          | {:ok, GitHubV3RESTAPI.Model.InlineResponse415.t()}
          | {:ok, GitHubV3RESTAPI.Model.ValidationError.t()}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:error, Tesla.Env.t()}
  def projects_add_collaborator(connection, project_id, username, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:put)
    |> url("/projects/#{project_id}/collaborators/#{username}")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {204, false},
      {404, %GitHubV3RESTAPI.Model.BasicError{}},
      {415, %GitHubV3RESTAPI.Model.InlineResponse415{}},
      {422, %GitHubV3RESTAPI.Model.ValidationError{}},
      {304, false},
      {403, %GitHubV3RESTAPI.Model.BasicError{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}}
    ])
  end

  @doc """
  Create a project card

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - column_id (integer()): column_id parameter
  - opts (KeywordList): [optional] Optional parameters
    - :body (UNKNOWN_BASE_TYPE):
  ## Returns

  {:ok, GitHubV3RESTAPI.Model.ProjectCard.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_create_card(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil}
          | {:ok, GitHubV3RESTAPI.Model.ProjectCard.t()}
          | {:ok, GitHubV3RESTAPI.Model.InlineResponse5031.t()}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:ok, GitHubV3RESTAPI.Model.ValidationErrorSimple.t()}
          | {:error, Tesla.Env.t()}
  def projects_create_card(connection, column_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:post)
    |> url("/projects/columns/#{column_id}/cards")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {201, %GitHubV3RESTAPI.Model.ProjectCard{}},
      {304, false},
      {403, %GitHubV3RESTAPI.Model.BasicError{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}},
      {422, %GitHubV3RESTAPI.Model.ValidationErrorSimple{}},
      {503, %GitHubV3RESTAPI.Model.InlineResponse5031{}}
    ])
  end

  @doc """
  Create a project column

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - project_id (integer()):
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject58):
  ## Returns

  {:ok, GitHubV3RESTAPI.Model.ProjectColumn.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_create_column(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil}
          | {:ok, GitHubV3RESTAPI.Model.ValidationErrorSimple.t()}
          | {:ok, GitHubV3RESTAPI.Model.ProjectColumn.t()}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:error, Tesla.Env.t()}
  def projects_create_column(connection, project_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:post)
    |> url("/projects/#{project_id}/columns")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {201, %GitHubV3RESTAPI.Model.ProjectColumn{}},
      {304, false},
      {403, %GitHubV3RESTAPI.Model.BasicError{}},
      {422, %GitHubV3RESTAPI.Model.ValidationErrorSimple{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}}
    ])
  end

  @doc """
  Create a user project

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject167):
  ## Returns

  {:ok, GitHubV3RESTAPI.Model.Project.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_create_for_authenticated_user(Tesla.Env.client(), keyword()) ::
          {:ok, nil}
          | {:ok, GitHubV3RESTAPI.Model.ValidationErrorSimple.t()}
          | {:ok, GitHubV3RESTAPI.Model.InlineResponse415.t()}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:ok, GitHubV3RESTAPI.Model.Project.t()}
          | {:error, Tesla.Env.t()}
  def projects_create_for_authenticated_user(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:post)
    |> url("/user/projects")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {201, %GitHubV3RESTAPI.Model.Project{}},
      {304, false},
      {403, %GitHubV3RESTAPI.Model.BasicError{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}},
      {415, %GitHubV3RESTAPI.Model.InlineResponse415{}},
      {422, %GitHubV3RESTAPI.Model.ValidationErrorSimple{}}
    ])
  end

  @doc """
  Create an organization project
  Creates an organization project board. Returns a `404 Not Found` status if projects are disabled in the organization. If you do not have sufficient privileges to perform this action, a `401 Unauthorized` or `410 Gone` status is returned.

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - org (String.t):
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject38):
  ## Returns

  {:ok, GitHubV3RESTAPI.Model.Project.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_create_for_org(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GitHubV3RESTAPI.Model.ValidationErrorSimple.t()}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:ok, GitHubV3RESTAPI.Model.Project.t()}
          | {:error, Tesla.Env.t()}
  def projects_create_for_org(connection, org, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:post)
    |> url("/orgs/#{org}/projects")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {201, %GitHubV3RESTAPI.Model.Project{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}},
      {403, %GitHubV3RESTAPI.Model.BasicError{}},
      {404, %GitHubV3RESTAPI.Model.BasicError{}},
      {410, %GitHubV3RESTAPI.Model.BasicError{}},
      {422, %GitHubV3RESTAPI.Model.ValidationErrorSimple{}}
    ])
  end

  @doc """
  Create a repository project
  Creates a repository project board. Returns a `404 Not Found` status if projects are disabled in the repository. If you do not have sufficient privileges to perform this action, a `401 Unauthorized` or `410 Gone` status is returned.

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject116):
  ## Returns

  {:ok, GitHubV3RESTAPI.Model.Project.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_create_for_repo(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GitHubV3RESTAPI.Model.ValidationErrorSimple.t()}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:ok, GitHubV3RESTAPI.Model.Project.t()}
          | {:error, Tesla.Env.t()}
  def projects_create_for_repo(connection, owner, repo, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:post)
    |> url("/repos/#{owner}/#{repo}/projects")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {201, %GitHubV3RESTAPI.Model.Project{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}},
      {403, %GitHubV3RESTAPI.Model.BasicError{}},
      {404, %GitHubV3RESTAPI.Model.BasicError{}},
      {410, %GitHubV3RESTAPI.Model.BasicError{}},
      {422, %GitHubV3RESTAPI.Model.ValidationErrorSimple{}}
    ])
  end

  @doc """
  Delete a project
  Deletes a project board. Returns a `404 Not Found` status if projects are disabled.

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - project_id (integer()):
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_delete(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:ok, GitHubV3RESTAPI.Model.InlineResponse4031.t()}
          | {:error, Tesla.Env.t()}
  def projects_delete(connection, project_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/projects/#{project_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {204, false},
      {304, false},
      {403, %GitHubV3RESTAPI.Model.InlineResponse4031{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}},
      {410, %GitHubV3RESTAPI.Model.BasicError{}},
      {404, %GitHubV3RESTAPI.Model.BasicError{}}
    ])
  end

  @doc """
  Delete a project card

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - card_id (integer()): card_id parameter
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_delete_card(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:ok, GitHubV3RESTAPI.Model.InlineResponse4031.t()}
          | {:error, Tesla.Env.t()}
  def projects_delete_card(connection, card_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/projects/columns/cards/#{card_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {204, false},
      {304, false},
      {403, %GitHubV3RESTAPI.Model.InlineResponse4031{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}},
      {404, %GitHubV3RESTAPI.Model.BasicError{}}
    ])
  end

  @doc """
  Delete a project column

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - column_id (integer()): column_id parameter
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_delete_column(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil} | {:ok, GitHubV3RESTAPI.Model.BasicError.t()} | {:error, Tesla.Env.t()}
  def projects_delete_column(connection, column_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/projects/columns/#{column_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {204, false},
      {304, false},
      {403, %GitHubV3RESTAPI.Model.BasicError{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}}
    ])
  end

  @doc """
  Get a project
  Gets a project by its `id`. Returns a `404 Not Found` status if projects are disabled. If you do not have sufficient privileges to perform this action, a `401 Unauthorized` or `410 Gone` status is returned.

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - project_id (integer()):
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, GitHubV3RESTAPI.Model.Project.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_get(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:ok, GitHubV3RESTAPI.Model.Project.t()}
          | {:error, Tesla.Env.t()}
  def projects_get(connection, project_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/projects/#{project_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %GitHubV3RESTAPI.Model.Project{}},
      {304, false},
      {403, %GitHubV3RESTAPI.Model.BasicError{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}}
    ])
  end

  @doc """
  Get a project card

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - card_id (integer()): card_id parameter
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, GitHubV3RESTAPI.Model.ProjectCard.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_get_card(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil}
          | {:ok, GitHubV3RESTAPI.Model.ProjectCard.t()}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:error, Tesla.Env.t()}
  def projects_get_card(connection, card_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/projects/columns/cards/#{card_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %GitHubV3RESTAPI.Model.ProjectCard{}},
      {304, false},
      {403, %GitHubV3RESTAPI.Model.BasicError{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}},
      {404, %GitHubV3RESTAPI.Model.BasicError{}}
    ])
  end

  @doc """
  Get a project column

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - column_id (integer()): column_id parameter
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, GitHubV3RESTAPI.Model.ProjectColumn.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_get_column(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil}
          | {:ok, GitHubV3RESTAPI.Model.ProjectColumn.t()}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:error, Tesla.Env.t()}
  def projects_get_column(connection, column_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/projects/columns/#{column_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %GitHubV3RESTAPI.Model.ProjectColumn{}},
      {304, false},
      {403, %GitHubV3RESTAPI.Model.BasicError{}},
      {404, %GitHubV3RESTAPI.Model.BasicError{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}}
    ])
  end

  @doc """
  Get project permission for a user
  Returns the collaborator's permission level for an organization project. Possible values for the `permission` key: `admin`, `write`, `read`, `none`. You must be an organization owner or a project `admin` to review a user's permission level.

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - project_id (integer()):
  - username (String.t):
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, GitHubV3RESTAPI.Model.RepositoryCollaboratorPermission.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_get_permission_for_user(Tesla.Env.client(), integer(), String.t(), keyword()) ::
          {:ok, nil}
          | {:ok, GitHubV3RESTAPI.Model.InlineResponse415.t()}
          | {:ok, GitHubV3RESTAPI.Model.ValidationError.t()}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:ok, GitHubV3RESTAPI.Model.RepositoryCollaboratorPermission.t()}
          | {:error, Tesla.Env.t()}
  def projects_get_permission_for_user(connection, project_id, username, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/projects/#{project_id}/collaborators/#{username}/permission")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %GitHubV3RESTAPI.Model.RepositoryCollaboratorPermission{}},
      {404, %GitHubV3RESTAPI.Model.BasicError{}},
      {415, %GitHubV3RESTAPI.Model.InlineResponse415{}},
      {422, %GitHubV3RESTAPI.Model.ValidationError{}},
      {304, false},
      {403, %GitHubV3RESTAPI.Model.BasicError{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}}
    ])
  end

  @doc """
  List project cards

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - column_id (integer()): column_id parameter
  - opts (KeywordList): [optional] Optional parameters
    - :archived_state (String.t): Filters the project cards that are returned by the card's state. Can be one of `all`,`archived`, or `not_archived`.
    - :per_page (integer()): Results per page (max 100)
    - :page (integer()): Page number of the results to fetch.
  ## Returns

  {:ok, [%ProjectCard{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_list_cards(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil}
          | {:ok, list(GitHubV3RESTAPI.Model.ProjectCard.t())}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:error, Tesla.Env.t()}
  def projects_list_cards(connection, column_id, opts \\ []) do
    optional_params = %{
      :archived_state => :query,
      :per_page => :query,
      :page => :query
    }

    %{}
    |> method(:get)
    |> url("/projects/columns/#{column_id}/cards")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%GitHubV3RESTAPI.Model.ProjectCard{}]},
      {304, false},
      {403, %GitHubV3RESTAPI.Model.BasicError{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}}
    ])
  end

  @doc """
  List project collaborators
  Lists the collaborators for an organization project. For a project, the list of collaborators includes outside collaborators, organization members that are direct collaborators, organization members with access through team memberships, organization members with access through default organization permissions, and organization owners. You must be an organization owner or a project `admin` to list collaborators.

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - project_id (integer()):
  - opts (KeywordList): [optional] Optional parameters
    - :affiliation (String.t): Filters the collaborators by their affiliation. Can be one of:   \\* `outside`: Outside collaborators of a project that are not a member of the project's organization.   \\* `direct`: Collaborators with permissions to a project, regardless of organization membership status.   \\* `all`: All collaborators the authenticated user can see.
    - :per_page (integer()): Results per page (max 100)
    - :page (integer()): Page number of the results to fetch.
  ## Returns

  {:ok, [%SimpleUser{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_list_collaborators(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil}
          | {:ok, GitHubV3RESTAPI.Model.InlineResponse415.t()}
          | {:ok, GitHubV3RESTAPI.Model.ValidationError.t()}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:ok, list(GitHubV3RESTAPI.Model.SimpleUser.t())}
          | {:error, Tesla.Env.t()}
  def projects_list_collaborators(connection, project_id, opts \\ []) do
    optional_params = %{
      :affiliation => :query,
      :per_page => :query,
      :page => :query
    }

    %{}
    |> method(:get)
    |> url("/projects/#{project_id}/collaborators")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%GitHubV3RESTAPI.Model.SimpleUser{}]},
      {404, %GitHubV3RESTAPI.Model.BasicError{}},
      {415, %GitHubV3RESTAPI.Model.InlineResponse415{}},
      {422, %GitHubV3RESTAPI.Model.ValidationError{}},
      {304, false},
      {403, %GitHubV3RESTAPI.Model.BasicError{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}}
    ])
  end

  @doc """
  List project columns

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - project_id (integer()):
  - opts (KeywordList): [optional] Optional parameters
    - :per_page (integer()): Results per page (max 100)
    - :page (integer()): Page number of the results to fetch.
  ## Returns

  {:ok, [%ProjectColumn{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_list_columns(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil}
          | {:ok, list(GitHubV3RESTAPI.Model.ProjectColumn.t())}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:error, Tesla.Env.t()}
  def projects_list_columns(connection, project_id, opts \\ []) do
    optional_params = %{
      :per_page => :query,
      :page => :query
    }

    %{}
    |> method(:get)
    |> url("/projects/#{project_id}/columns")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%GitHubV3RESTAPI.Model.ProjectColumn{}]},
      {304, false},
      {403, %GitHubV3RESTAPI.Model.BasicError{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}}
    ])
  end

  @doc """
  List organization projects
  Lists the projects in an organization. Returns a `404 Not Found` status if projects are disabled in the organization. If you do not have sufficient privileges to perform this action, a `401 Unauthorized` or `410 Gone` status is returned.

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - org (String.t):
  - opts (KeywordList): [optional] Optional parameters
    - :state (String.t): Indicates the state of the projects to return. Can be either `open`, `closed`, or `all`.
    - :per_page (integer()): Results per page (max 100)
    - :page (integer()): Page number of the results to fetch.
  ## Returns

  {:ok, [%Project{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_list_for_org(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GitHubV3RESTAPI.Model.ValidationErrorSimple.t()}
          | {:ok, list(GitHubV3RESTAPI.Model.Project.t())}
          | {:error, Tesla.Env.t()}
  def projects_list_for_org(connection, org, opts \\ []) do
    optional_params = %{
      :state => :query,
      :per_page => :query,
      :page => :query
    }

    %{}
    |> method(:get)
    |> url("/orgs/#{org}/projects")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%GitHubV3RESTAPI.Model.Project{}]},
      {422, %GitHubV3RESTAPI.Model.ValidationErrorSimple{}}
    ])
  end

  @doc """
  List repository projects
  Lists the projects in a repository. Returns a `404 Not Found` status if projects are disabled in the repository. If you do not have sufficient privileges to perform this action, a `401 Unauthorized` or `410 Gone` status is returned.

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - opts (KeywordList): [optional] Optional parameters
    - :state (String.t): Indicates the state of the projects to return. Can be either `open`, `closed`, or `all`.
    - :per_page (integer()): Results per page (max 100)
    - :page (integer()): Page number of the results to fetch.
  ## Returns

  {:ok, [%Project{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_list_for_repo(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GitHubV3RESTAPI.Model.ValidationErrorSimple.t()}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:ok, list(GitHubV3RESTAPI.Model.Project.t())}
          | {:error, Tesla.Env.t()}
  def projects_list_for_repo(connection, owner, repo, opts \\ []) do
    optional_params = %{
      :state => :query,
      :per_page => :query,
      :page => :query
    }

    %{}
    |> method(:get)
    |> url("/repos/#{owner}/#{repo}/projects")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%GitHubV3RESTAPI.Model.Project{}]},
      {401, %GitHubV3RESTAPI.Model.BasicError{}},
      {403, %GitHubV3RESTAPI.Model.BasicError{}},
      {404, %GitHubV3RESTAPI.Model.BasicError{}},
      {410, %GitHubV3RESTAPI.Model.BasicError{}},
      {422, %GitHubV3RESTAPI.Model.ValidationErrorSimple{}}
    ])
  end

  @doc """
  List user projects

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - username (String.t):
  - opts (KeywordList): [optional] Optional parameters
    - :state (String.t): Indicates the state of the projects to return. Can be either `open`, `closed`, or `all`.
    - :per_page (integer()): Results per page (max 100)
    - :page (integer()): Page number of the results to fetch.
  ## Returns

  {:ok, [%Project{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_list_for_user(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GitHubV3RESTAPI.Model.InlineResponse415.t()}
          | {:ok, GitHubV3RESTAPI.Model.ValidationError.t()}
          | {:ok, list(GitHubV3RESTAPI.Model.Project.t())}
          | {:error, Tesla.Env.t()}
  def projects_list_for_user(connection, username, opts \\ []) do
    optional_params = %{
      :state => :query,
      :per_page => :query,
      :page => :query
    }

    %{}
    |> method(:get)
    |> url("/users/#{username}/projects")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%GitHubV3RESTAPI.Model.Project{}]},
      {415, %GitHubV3RESTAPI.Model.InlineResponse415{}},
      {422, %GitHubV3RESTAPI.Model.ValidationError{}}
    ])
  end

  @doc """
  Move a project card

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - card_id (integer()): card_id parameter
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject53):
  ## Returns

  {:ok, map()} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_move_card(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil}
          | {:ok, GitHubV3RESTAPI.Model.InlineResponse4032.t()}
          | {:ok, GitHubV3RESTAPI.Model.InlineResponse5031.t()}
          | {:ok, Map.t()}
          | {:ok, GitHubV3RESTAPI.Model.ValidationError.t()}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:error, Tesla.Env.t()}
  def projects_move_card(connection, card_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:post)
    |> url("/projects/columns/cards/#{card_id}/moves")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {201, false},
      {304, false},
      {403, %GitHubV3RESTAPI.Model.InlineResponse4032{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}},
      {503, %GitHubV3RESTAPI.Model.InlineResponse5031{}},
      {422, %GitHubV3RESTAPI.Model.ValidationError{}}
    ])
  end

  @doc """
  Move a project column

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - column_id (integer()): column_id parameter
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject55):
  ## Returns

  {:ok, map()} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_move_column(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil}
          | {:ok, GitHubV3RESTAPI.Model.ValidationErrorSimple.t()}
          | {:ok, Map.t()}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:error, Tesla.Env.t()}
  def projects_move_column(connection, column_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:post)
    |> url("/projects/columns/#{column_id}/moves")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {201, false},
      {304, false},
      {403, %GitHubV3RESTAPI.Model.BasicError{}},
      {422, %GitHubV3RESTAPI.Model.ValidationErrorSimple{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}}
    ])
  end

  @doc """
  Remove user as a collaborator
  Removes a collaborator from an organization project. You must be an organization owner or a project `admin` to remove a collaborator.

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - project_id (integer()):
  - username (String.t):
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_remove_collaborator(Tesla.Env.client(), integer(), String.t(), keyword()) ::
          {:ok, nil}
          | {:ok, GitHubV3RESTAPI.Model.InlineResponse415.t()}
          | {:ok, GitHubV3RESTAPI.Model.ValidationError.t()}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:error, Tesla.Env.t()}
  def projects_remove_collaborator(connection, project_id, username, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/projects/#{project_id}/collaborators/#{username}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {204, false},
      {304, false},
      {404, %GitHubV3RESTAPI.Model.BasicError{}},
      {415, %GitHubV3RESTAPI.Model.InlineResponse415{}},
      {403, %GitHubV3RESTAPI.Model.BasicError{}},
      {422, %GitHubV3RESTAPI.Model.ValidationError{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}}
    ])
  end

  @doc """
  Update a project
  Updates a project board's information. Returns a `404 Not Found` status if projects are disabled. If you do not have sufficient privileges to perform this action, a `401 Unauthorized` or `410 Gone` status is returned.

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - project_id (integer()):
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject56):
  ## Returns

  {:ok, GitHubV3RESTAPI.Model.Project.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_update(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil}
          | {:ok, GitHubV3RESTAPI.Model.ValidationErrorSimple.t()}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:ok, GitHubV3RESTAPI.Model.InlineResponse4031.t()}
          | {:ok, GitHubV3RESTAPI.Model.Project.t()}
          | {:error, Tesla.Env.t()}
  def projects_update(connection, project_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:patch)
    |> url("/projects/#{project_id}")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %GitHubV3RESTAPI.Model.Project{}},
      {404, false},
      {304, false},
      {403, %GitHubV3RESTAPI.Model.InlineResponse4031{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}},
      {410, %GitHubV3RESTAPI.Model.BasicError{}},
      {422, %GitHubV3RESTAPI.Model.ValidationErrorSimple{}}
    ])
  end

  @doc """
  Update an existing project card

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - card_id (integer()): card_id parameter
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject52):
  ## Returns

  {:ok, GitHubV3RESTAPI.Model.ProjectCard.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_update_card(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil}
          | {:ok, GitHubV3RESTAPI.Model.ValidationErrorSimple.t()}
          | {:ok, GitHubV3RESTAPI.Model.ProjectCard.t()}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:error, Tesla.Env.t()}
  def projects_update_card(connection, card_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:patch)
    |> url("/projects/columns/cards/#{card_id}")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %GitHubV3RESTAPI.Model.ProjectCard{}},
      {304, false},
      {403, %GitHubV3RESTAPI.Model.BasicError{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}},
      {404, %GitHubV3RESTAPI.Model.BasicError{}},
      {422, %GitHubV3RESTAPI.Model.ValidationErrorSimple{}}
    ])
  end

  @doc """
  Update an existing project column

  ## Parameters

  - connection (GitHubV3RESTAPI.Connection): Connection to server
  - column_id (integer()): column_id parameter
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject54):
  ## Returns

  {:ok, GitHubV3RESTAPI.Model.ProjectColumn.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec projects_update_column(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil}
          | {:ok, GitHubV3RESTAPI.Model.ProjectColumn.t()}
          | {:ok, GitHubV3RESTAPI.Model.BasicError.t()}
          | {:error, Tesla.Env.t()}
  def projects_update_column(connection, column_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:patch)
    |> url("/projects/columns/#{column_id}")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %GitHubV3RESTAPI.Model.ProjectColumn{}},
      {304, false},
      {403, %GitHubV3RESTAPI.Model.BasicError{}},
      {401, %GitHubV3RESTAPI.Model.BasicError{}}
    ])
  end
end
