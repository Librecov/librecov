# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.Page do
  @moduledoc """
  The configuration for GitHub Pages for a repository.
  """

  @derive [Poison.Encoder]
  defstruct [
    :url,
    :status,
    :cname,
    :custom_404,
    :html_url,
    :source,
    :public,
    :https_certificate,
    :https_enforced
  ]

  @type t :: %__MODULE__{
          :url => String.t(),
          :status => String.t() | nil,
          :cname => String.t() | nil,
          :custom_404 => boolean(),
          :html_url => String.t() | nil,
          :source => GitHubV3RESTAPI.Model.PagesSourceHash.t() | nil,
          :public => boolean(),
          :https_certificate => GitHubV3RESTAPI.Model.PagesHttpsCertificate.t() | nil,
          :https_enforced => boolean() | nil
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.Page do
  import GitHubV3RESTAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:source, :struct, GitHubV3RESTAPI.Model.PagesSourceHash, options)
    |> deserialize(
      :https_certificate,
      :struct,
      GitHubV3RESTAPI.Model.PagesHttpsCertificate,
      options
    )
  end
end