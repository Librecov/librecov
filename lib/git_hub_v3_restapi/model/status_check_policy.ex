# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.StatusCheckPolicy do
  @moduledoc """
  Status Check Policy
  """

  @derive [Poison.Encoder]
  defstruct [
    :url,
    :strict,
    :contexts,
    :contexts_url
  ]

  @type t :: %__MODULE__{
          :url => String.t(),
          :strict => boolean(),
          :contexts => [String.t()],
          :contexts_url => String.t()
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.StatusCheckPolicy do
  def decode(value, _options) do
    value
  end
end
