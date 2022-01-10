require "test_helper"

class CompanyTest < ActiveSupport::TestCase
  def setup
    # @company = companies(:ips)
    @company = Company.new
  end

  context 'validations' do
    should validate_presence_of(:name)
    should validate_uniqueness_of(:name)
    should validate_presence_of(:title)
    should validate_uniqueness_of(:title)
    should validate_presence_of(:inn)
    should validate_uniqueness_of(:inn).case_insensitive
    should validate_presence_of(:ogrnip)
    should validate_uniqueness_of(:ogrnip).case_insensitive
    should validate_presence_of(:email)
    should validate_uniqueness_of(:email).case_insensitive
  end

  context 'a company' do
    should "be one active Company" do
      assert_equal 1, Company.active.count
    end
  end
end
