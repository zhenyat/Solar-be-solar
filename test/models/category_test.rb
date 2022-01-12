require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  def setup
    @category = Category.new
  end

  context 'validations' do
    should validate_presence_of(:name)
    should validate_uniqueness_of(:name)
    should validate_presence_of(:title)
    should validate_uniqueness_of(:title)
    should validate_presence_of(:url)
    should validate_uniqueness_of(:url)
    should validate_presence_of(:seo_title)
  end
end
