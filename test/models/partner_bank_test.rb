require "test_helper"

class PartnerBankTest < ActiveSupport::TestCase
  def setup
    @bank = Bank.new
  end

  context 'validations' do
    should validate_presence_of(:account)
    should validate_uniqueness_of(:account).case_insensitive
  end
end
