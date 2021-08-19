# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.ReposOwnerRepoSecurityAndAnalysis do
  @moduledoc """
  Specify which security and analysis features to enable or disable. For example, to enable GitHub Advanced Security, use this data in the body of the PATCH request: `{\"security_and_analysis\": {\"advanced_security\": {\"status\": \"enabled\"}}}`. If you have admin permissions for a private repository covered by an Advanced Security license, you can check which security and analysis features are currently enabled by using a `GET /repos/{owner}/{repo}` request.
  """

  @derive [Poison.Encoder]
  defstruct [
    :advanced_security,
    :secret_scanning
  ]

  @type t :: %__MODULE__{
          :advanced_security =>
            GitHubV3RESTAPI.Model.ReposOwnerRepoSecurityAndAnalysisAdvancedSecurity.t() | nil,
          :secret_scanning =>
            GitHubV3RESTAPI.Model.ReposOwnerRepoSecurityAndAnalysisSecretScanning.t() | nil
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.ReposOwnerRepoSecurityAndAnalysis do
  import GitHubV3RESTAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :advanced_security,
      :struct,
      GitHubV3RESTAPI.Model.ReposOwnerRepoSecurityAndAnalysisAdvancedSecurity,
      options
    )
    |> deserialize(
      :secret_scanning,
      :struct,
      GitHubV3RESTAPI.Model.ReposOwnerRepoSecurityAndAnalysisSecretScanning,
      options
    )
  end
end