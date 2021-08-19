# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.InlineResponse5031 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :code,
    :message,
    :documentation_url,
    :errors
  ]

  @type t :: %__MODULE__{
          :code => String.t() | nil,
          :message => String.t() | nil,
          :documentation_url => String.t() | nil,
          :errors => [GitHubV3RESTAPI.Model.InlineResponse5031Errors.t()] | nil
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.InlineResponse5031 do
  import GitHubV3RESTAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errors, :list, GitHubV3RESTAPI.Model.InlineResponse5031Errors, options)
  end
end