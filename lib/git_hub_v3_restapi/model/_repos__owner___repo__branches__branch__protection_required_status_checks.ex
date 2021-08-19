# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks do
  @moduledoc """
  Require status checks to pass before merging. Set to `null` to disable.
  """

  @derive [Poison.Encoder]
  defstruct [
    :strict,
    :contexts
  ]

  @type t :: %__MODULE__{
          :strict => boolean(),
          :contexts => [String.t()]
        }
end

defimpl Poison.Decoder,
  for: GitHubV3RESTAPI.Model.ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks do
  def decode(value, _options) do
    value
  end
end