module Spree
  class Gateway::Wirecard < Gateway

    preference :login, :string
    preference :password, :string
    preference :signature, :string

    def provider_class
      ActiveMerchant::Billing::WirecardGateway
    end
  end
end
