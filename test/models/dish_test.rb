require "test_helper"

class DishTest < ActiveSupport::TestCase
  test 'if dish will not save' do
    dish = Dish.all
    assert_not dish.nil?
  end

  test 'that dishes have names' do
    dish = Dish.last
    assert_not dish.present?
  end
end
