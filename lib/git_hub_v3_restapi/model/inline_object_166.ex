# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.InlineObject166 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :lock_repositories,
    :exclude_attachments,
    :exclude,
    :repositories
  ]

  @type t :: %__MODULE__{
          :lock_repositories => boolean() | nil,
          :exclude_attachments => boolean() | nil,
          :exclude => [String.t()] | nil,
          :repositories => [String.t()]
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.InlineObject166 do
  def decode(value, _options) do
    value
  end
end
