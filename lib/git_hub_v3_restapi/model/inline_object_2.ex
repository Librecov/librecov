# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.InlineObject2 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :access_token
  ]

  @type t :: %__MODULE__{
          :access_token => String.t() | nil
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.InlineObject2 do
  def decode(value, _options) do
    value
  end
end