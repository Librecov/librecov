# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.ReleaseAsset do
  @moduledoc """
  Data related to a release.
  """

  @derive [Poison.Encoder]
  defstruct [
    :url,
    :browser_download_url,
    :id,
    :node_id,
    :name,
    :label,
    :state,
    :content_type,
    :size,
    :download_count,
    :created_at,
    :updated_at,
    :uploader
  ]

  @type t :: %__MODULE__{
          :url => String.t(),
          :browser_download_url => String.t(),
          :id => integer(),
          :node_id => String.t(),
          :name => String.t(),
          :label => String.t() | nil,
          :state => String.t(),
          :content_type => String.t(),
          :size => integer(),
          :download_count => integer(),
          :created_at => DateTime.t(),
          :updated_at => DateTime.t(),
          :uploader => SimpleUser | nil
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.ReleaseAsset do
  import GitHubV3RESTAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:uploader, :struct, GitHubV3RESTAPI.Model.SimpleUser, options)
  end
end