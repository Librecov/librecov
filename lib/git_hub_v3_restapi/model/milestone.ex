# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.Milestone do
  @moduledoc """
  A collection of related issues and pull requests.
  """

  @derive [Poison.Encoder]
  defstruct [
    :url,
    :html_url,
    :labels_url,
    :id,
    :node_id,
    :number,
    :state,
    :title,
    :description,
    :creator,
    :open_issues,
    :closed_issues,
    :created_at,
    :updated_at,
    :closed_at,
    :due_on
  ]

  @type t :: %__MODULE__{
          :url => String.t(),
          :html_url => String.t(),
          :labels_url => String.t(),
          :id => integer(),
          :node_id => String.t(),
          :number => integer(),
          :state => String.t(),
          :title => String.t(),
          :description => String.t() | nil,
          :creator => SimpleUser | nil,
          :open_issues => integer(),
          :closed_issues => integer(),
          :created_at => DateTime.t(),
          :updated_at => DateTime.t(),
          :closed_at => DateTime.t() | nil,
          :due_on => DateTime.t() | nil
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.Milestone do
  import GitHubV3RESTAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:creator, :struct, GitHubV3RESTAPI.Model.SimpleUser, options)
  end
end