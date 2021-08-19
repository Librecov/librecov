# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.ScimV2OrganizationsOrgUsersScimUserIdOperations do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :op,
    :path,
    :value
  ]

  @type t :: %__MODULE__{
          :op => String.t(),
          :path => String.t() | nil,
          :value => OneOfobjectarraystring | nil
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.ScimV2OrganizationsOrgUsersScimUserIdOperations do
  import GitHubV3RESTAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:value, :struct, GitHubV3RESTAPI.Model.OneOfobjectarraystring, options)
  end
end
