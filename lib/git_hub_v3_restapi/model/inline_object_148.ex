# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.InlineObject148 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :schemas,
    :displayName,
    :externalId,
    :groups,
    :active,
    :userName,
    :name,
    :emails
  ]

  @type t :: %__MODULE__{
          :schemas => [String.t()] | nil,
          :displayName => String.t() | nil,
          :externalId => String.t() | nil,
          :groups => [String.t()] | nil,
          :active => boolean() | nil,
          :userName => String.t(),
          :name => GitHubV3RESTAPI.Model.ScimV2OrganizationsOrgUsersName.t(),
          :emails => [GitHubV3RESTAPI.Model.ScimV2OrganizationsOrgUsersScimUserIdEmails.t()]
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.InlineObject148 do
  import GitHubV3RESTAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:name, :struct, GitHubV3RESTAPI.Model.ScimV2OrganizationsOrgUsersName, options)
    |> deserialize(
      :emails,
      :list,
      GitHubV3RESTAPI.Model.ScimV2OrganizationsOrgUsersScimUserIdEmails,
      options
    )
  end
end