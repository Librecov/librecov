# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.FileCommit do
  @moduledoc """
  File Commit
  """

  @derive [Poison.Encoder]
  defstruct [
    :content,
    :commit
  ]

  @type t :: %__MODULE__{
          :content => GitHubV3RESTAPI.Model.FileCommitContent.t() | nil,
          :commit => GitHubV3RESTAPI.Model.FileCommitCommit.t()
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.FileCommit do
  import GitHubV3RESTAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:content, :struct, GitHubV3RESTAPI.Model.FileCommitContent, options)
    |> deserialize(:commit, :struct, GitHubV3RESTAPI.Model.FileCommitCommit, options)
  end
end
