# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.InlineObject69 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :head_sha
  ]

  @type t :: %__MODULE__{
          :head_sha => String.t()
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.InlineObject69 do
  def decode(value, _options) do
    value
  end
end