require "test_helper"

class BankTest < ActiveSupport::TestCase
  def setup
    @bank = Bank.new
  end

  context 'validations' do
    should validate_presence_of(:name)
    should validate_uniqueness_of(:name)
    should validate_presence_of(:title)
    should validate_uniqueness_of(:title)
    should validate_uniqueness_of(:email).case_insensitive
    should validate_presence_of(:corr_acc)
    should validate_uniqueness_of(:corr_acc).case_insensitive
    should validate_presence_of(:corr_acc_with)
    should validate_presence_of(:bic)
    should validate_uniqueness_of(:bic).case_insensitive
    should validate_presence_of(:inn)
    should validate_uniqueness_of(:inn).case_insensitive
    should validate_presence_of(:ogrn)
    should validate_uniqueness_of(:ogrn).case_insensitive  end
end
