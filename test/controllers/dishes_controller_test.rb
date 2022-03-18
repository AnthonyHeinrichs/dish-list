require "test_helper"

class DishesControllerTest < ActionDispatch::IntegrationTest
  test 'That favorite dishes can be saved' do
  dish = Dish.last
  assert FavoriteDish.create(user: User.last, dish: dish)
  end
end
