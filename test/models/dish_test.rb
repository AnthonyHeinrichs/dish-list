require "test_helper"

class DishTest < ActiveSupport::TestCase
  test 'if dish will not save' do
    dish = Dish.all
    assert_not dish.nil?
  end
end
