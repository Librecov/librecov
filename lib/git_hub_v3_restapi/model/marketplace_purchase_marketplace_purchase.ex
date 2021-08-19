# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule GitHubV3RESTAPI.Model.MarketplacePurchaseMarketplacePurchase do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :billing_cycle,
    :next_billing_date,
    :is_installed,
    :unit_count,
    :on_free_trial,
    :free_trial_ends_on,
    :updated_at,
    :plan
  ]

  @type t :: %__MODULE__{
          :billing_cycle => String.t() | nil,
          :next_billing_date => String.t() | nil,
          :is_installed => boolean() | nil,
          :unit_count => integer() | nil,
          :on_free_trial => boolean() | nil,
          :free_trial_ends_on => String.t() | nil,
          :updated_at => String.t() | nil,
          :plan => GitHubV3RESTAPI.Model.MarketplaceListingPlan.t() | nil
        }
end

defimpl Poison.Decoder, for: GitHubV3RESTAPI.Model.MarketplacePurchaseMarketplacePurchase do
  import GitHubV3RESTAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:plan, :struct, GitHubV3RESTAPI.Model.MarketplaceListingPlan, options)
  end
end
