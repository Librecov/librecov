# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.InlineObject8 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :client_secret,
    :scopes,
    :note,
    :note_url,
    :fingerprint
  ]

  @type t :: %__MODULE__{
          :client_secret => String.t(),
          :scopes => [String.t()] | nil,
          :note => String.t() | nil,
          :note_url => String.t() | nil,
          :fingerprint => String.t() | nil
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.InlineObject8 do
  def decode(value, _options) do
    value
  end
end
