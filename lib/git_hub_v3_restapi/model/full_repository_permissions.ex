# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.FullRepositoryPermissions do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :admin,
    :pull,
    :push
  ]

  @type t :: %__MODULE__{
          :admin => boolean(),
          :pull => boolean(),
          :push => boolean()
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.FullRepositoryPermissions do
  def decode(value, _options) do
    value
  end
end
