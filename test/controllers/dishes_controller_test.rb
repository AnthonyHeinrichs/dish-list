require "test_helper"

class DishesControllerTest < ActionDispatch::IntegrationTest
  test 'That favorite dishes can be saved to favorites list' do
    dish = Dish.last
    assert FavoriteDish.create(user: User.last, dish: dish)
  end

  test 'That new dishes can be created' do
    dish = Dish.new(name: 'test', country: 'CA', spiciness: 3, description: 'test 123456!@#')
    assert dish.valid?
  end
end
