# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.TeamDiscussionComment do
  @moduledoc """
  A reply to a discussion within a team.
  """

  @derive [Poison.Encoder]
  defstruct [
    :author,
    :body,
    :body_html,
    :body_version,
    :created_at,
    :last_edited_at,
    :discussion_url,
    :html_url,
    :node_id,
    :number,
    :updated_at,
    :url,
    :reactions
  ]

  @type t :: %__MODULE__{
          :author => SimpleUser | nil,
          :body => String.t(),
          :body_html => String.t(),
          :body_version => String.t(),
          :created_at => DateTime.t(),
          :last_edited_at => DateTime.t() | nil,
          :discussion_url => String.t(),
          :html_url => String.t(),
          :node_id => String.t(),
          :number => integer(),
          :updated_at => DateTime.t(),
          :url => String.t(),
          :reactions => GitHubV3RESTAPI.Model.ReactionRollup.t() | nil
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.TeamDiscussionComment do
  import GitHubV3RESTAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:author, :struct, GitHubV3RESTAPI.Model.SimpleUser, options)
    |> deserialize(:reactions, :struct, GitHubV3RESTAPI.Model.ReactionRollup, options)
  end
end
