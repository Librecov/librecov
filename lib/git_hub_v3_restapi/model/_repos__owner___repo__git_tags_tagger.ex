# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.ReposOwnerRepoGitTagsTagger do
  @moduledoc """
  An object with information about the individual creating the tag.
  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :email,
    :date
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :email => String.t(),
          :date => DateTime.t() | nil
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.ReposOwnerRepoGitTagsTagger do
  def decode(value, _options) do
    value
  end
end