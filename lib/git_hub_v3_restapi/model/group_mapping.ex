# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.GroupMapping do
  @moduledoc """
  External Groups to be mapped to a team for membership
  """

  @derive [Poison.Encoder]
  defstruct [
    :groups
  ]

  @type t :: %__MODULE__{
          :groups => [GitHubV3RESTAPI.Model.GroupMappingGroups.t()] | nil
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.GroupMapping do
  import GitHubV3RESTAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:groups, :list, GitHubV3RESTAPI.Model.GroupMappingGroups, options)
  end
end
