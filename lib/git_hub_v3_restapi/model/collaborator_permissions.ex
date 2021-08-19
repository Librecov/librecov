# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.CollaboratorPermissions do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :pull,
    :push,
    :admin
  ]

  @type t :: %__MODULE__{
          :pull => boolean(),
          :push => boolean(),
          :admin => boolean()
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.CollaboratorPermissions do
  def decode(value, _options) do
    value
  end
end
