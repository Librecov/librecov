# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.InlineObject7 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :scopes,
    :note,
    :note_url,
    :client_id,
    :client_secret,
    :fingerprint
  ]

  @type t :: %__MODULE__{
          :scopes => [String.t()] | nil,
          :note => String.t() | nil,
          :note_url => String.t() | nil,
          :client_id => String.t() | nil,
          :client_secret => String.t() | nil,
          :fingerprint => String.t() | nil
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.InlineObject7 do
  def decode(value, _options) do
    value
  end
end
