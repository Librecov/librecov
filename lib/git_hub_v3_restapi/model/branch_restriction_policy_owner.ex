# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.BranchRestrictionPolicyOwner do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :login,
    :id,
    :node_id,
    :url,
    :repos_url,
    :events_url,
    :hooks_url,
    :issues_url,
    :members_url,
    :public_members_url,
    :avatar_url,
    :description,
    :gravatar_id,
    :html_url,
    :followers_url,
    :following_url,
    :gists_url,
    :starred_url,
    :subscriptions_url,
    :organizations_url,
    :received_events_url,
    :type,
    :site_admin
  ]

  @type t :: %__MODULE__{
          :login => String.t() | nil,
          :id => integer() | nil,
          :node_id => String.t() | nil,
          :url => String.t() | nil,
          :repos_url => String.t() | nil,
          :events_url => String.t() | nil,
          :hooks_url => String.t() | nil,
          :issues_url => String.t() | nil,
          :members_url => String.t() | nil,
          :public_members_url => String.t() | nil,
          :avatar_url => String.t() | nil,
          :description => String.t() | nil,
          :gravatar_id => String.t() | nil,
          :html_url => String.t() | nil,
          :followers_url => String.t() | nil,
          :following_url => String.t() | nil,
          :gists_url => String.t() | nil,
          :starred_url => String.t() | nil,
          :subscriptions_url => String.t() | nil,
          :organizations_url => String.t() | nil,
          :received_events_url => String.t() | nil,
          :type => String.t() | nil,
          :site_admin => boolean() | nil
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.BranchRestrictionPolicyOwner do
  def decode(value, _options) do
    value
  end
end