require 'spec_helper'

describe Spree::Gateway::Wirecard do
  let(:gateway) { described_class.create!(name: 'Wirecard') }

  context '.provider_class' do
    it 'is a Wirecard gateway' do
      expect(gateway.provider_class).to eq ::ActiveMerchant::Billing::WirecardGateway
    end
  end
end
