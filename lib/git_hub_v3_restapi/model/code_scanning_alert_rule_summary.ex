# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.CodeScanningAlertRuleSummary do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :name,
    :severity,
    :description
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :name => String.t() | nil,
          :severity => String.t() | nil,
          :description => String.t() | nil
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.CodeScanningAlertRuleSummary do
  def decode(value, _options) do
    value
  end
end