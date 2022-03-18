require "test_helper"

class DishTest < ActiveSupport::TestCase
  setup do
    sign_in users(:regular)
  end
end
