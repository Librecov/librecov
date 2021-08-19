# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.InlineObject83 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :wait_timer,
    :reviewers,
    :deployment_branch_policy
  ]

  @type t :: %__MODULE__{
          :wait_timer => integer() | nil,
          :reviewers =>
            [GitHubV3RESTAPI.Model.ReposOwnerRepoEnvironmentsEnvironmentNameReviewers.t()] | nil,
          :deployment_branch_policy => GitHubV3RESTAPI.Model.DeploymentBranchPolicy.t() | nil
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.InlineObject83 do
  import GitHubV3RESTAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :reviewers,
      :list,
      GitHubV3RESTAPI.Model.ReposOwnerRepoEnvironmentsEnvironmentNameReviewers,
      options
    )
    |> deserialize(
      :deployment_branch_policy,
      :struct,
      GitHubV3RESTAPI.Model.DeploymentBranchPolicy,
      options
    )
  end
end