# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.InlineObject42 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :title,
    :body,
    :private
  ]

  @type t :: %__MODULE__{
          :title => String.t(),
          :body => String.t(),
          :private => boolean() | nil
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.InlineObject42 do
  def decode(value, _options) do
    value
  end
end
