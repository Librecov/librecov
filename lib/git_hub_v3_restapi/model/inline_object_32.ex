# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.InlineObject32 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :config,
    :events,
    :active
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :config => GitHubV3RESTAPI.Model.OrgsOrgHooksConfig.t(),
          :events => [String.t()] | nil,
          :active => boolean() | nil
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.InlineObject32 do
  import GitHubV3RESTAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:config, :struct, GitHubV3RESTAPI.Model.OrgsOrgHooksConfig, options)
  end
end
