# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.RepositoryInvitation do
  @moduledoc """
  Repository invitations let you manage who you collaborate with.
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :repository,
    :invitee,
    :inviter,
    :permissions,
    :created_at,
    :expired,
    :url,
    :html_url,
    :node_id
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :repository => GitHubV3RESTAPI.Model.MinimalRepository.t(),
          :invitee => SimpleUser | nil,
          :inviter => SimpleUser | nil,
          :permissions => String.t(),
          :created_at => DateTime.t(),
          :expired => boolean() | nil,
          :url => String.t(),
          :html_url => String.t(),
          :node_id => String.t()
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.RepositoryInvitation do
  import GitHubV3RESTAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:repository, :struct, GitHubV3RESTAPI.Model.MinimalRepository, options)
    |> deserialize(:invitee, :struct, GitHubV3RESTAPI.Model.SimpleUser, options)
    |> deserialize(:inviter, :struct, GitHubV3RESTAPI.Model.SimpleUser, options)
  end
end
