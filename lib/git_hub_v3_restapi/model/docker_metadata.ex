# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.DockerMetadata do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :tag
  ]

  @type t :: %__MODULE__{
          :tag => List | nil
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.DockerMetadata do
  def decode(value, _options) do
    value
  end
end
