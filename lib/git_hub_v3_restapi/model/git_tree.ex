# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.GitTree do
  @moduledoc """
  The hierarchy between files in a Git repository.
  """

  @derive [Poison.Encoder]
  defstruct [
    :sha,
    :url,
    :truncated,
    :tree
  ]

  @type t :: %__MODULE__{
          :sha => String.t(),
          :url => String.t(),
          :truncated => boolean(),
          :tree => [GitHubV3RESTAPI.Model.GitTreeTree.t()]
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.GitTree do
  import GitHubV3RESTAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:tree, :list, GitHubV3RESTAPI.Model.GitTreeTree, options)
  end
end
