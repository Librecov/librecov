# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.Import do
  @moduledoc """
  A repository import from an external source.
  """

  @derive [Poison.Encoder]
  defstruct [
    :vcs,
    :use_lfs,
    :vcs_url,
    :svc_root,
    :tfvc_project,
    :status,
    :status_text,
    :failed_step,
    :error_message,
    :import_percent,
    :commit_count,
    :push_percent,
    :has_large_files,
    :large_files_size,
    :large_files_count,
    :project_choices,
    :message,
    :authors_count,
    :url,
    :html_url,
    :authors_url,
    :repository_url,
    :svn_root
  ]

  @type t :: %__MODULE__{
          :vcs => String.t() | nil,
          :use_lfs => boolean() | nil,
          :vcs_url => String.t(),
          :svc_root => String.t() | nil,
          :tfvc_project => String.t() | nil,
          :status => String.t(),
          :status_text => String.t() | nil,
          :failed_step => String.t() | nil,
          :error_message => String.t() | nil,
          :import_percent => integer() | nil,
          :commit_count => integer() | nil,
          :push_percent => integer() | nil,
          :has_large_files => boolean() | nil,
          :large_files_size => integer() | nil,
          :large_files_count => integer() | nil,
          :project_choices => [GitHubV3RESTAPI.Model.ImportProjectChoices.t()] | nil,
          :message => String.t() | nil,
          :authors_count => integer() | nil,
          :url => String.t(),
          :html_url => String.t(),
          :authors_url => String.t(),
          :repository_url => String.t(),
          :svn_root => String.t() | nil
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.Import do
  import GitHubV3RESTAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:project_choices, :list, GitHubV3RESTAPI.Model.ImportProjectChoices, options)
  end
end