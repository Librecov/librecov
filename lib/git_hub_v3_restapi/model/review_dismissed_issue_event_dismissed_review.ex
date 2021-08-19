# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.ReviewDismissedIssueEventDismissedReview do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :state,
    :review_id,
    :dismissal_message,
    :dismissal_commit_id
  ]

  @type t :: %__MODULE__{
          :state => String.t(),
          :review_id => integer(),
          :dismissal_message => String.t() | nil,
          :dismissal_commit_id => String.t() | nil
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.ReviewDismissedIssueEventDismissedReview do
  def decode(value, _options) do
    value
  end
end
