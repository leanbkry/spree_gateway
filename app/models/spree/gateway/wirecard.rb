module Spree
  class Gateway::Wirecard < Gateway

    preference :public_key, :string
    preference :private_key, :string
    preference :currency, :string, :default => 'EUR'

    def provider_class
      ActiveMerchant::Billing::WirecardGateway
    end
  end
end
