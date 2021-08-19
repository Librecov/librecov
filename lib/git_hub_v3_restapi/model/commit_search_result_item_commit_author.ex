# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.CommitSearchResultItemCommitAuthor do
  @moduledoc """

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
          :date => DateTime.t()
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.CommitSearchResultItemCommitAuthor do
  def decode(value, _options) do
    value
  end
end
