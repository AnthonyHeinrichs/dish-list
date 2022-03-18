require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'create account for user' do
    account_params = {
      email: 'tony@gmail.com',
      firstname: 'Anthony',
      lastname: 'Heinrichs',
      encrypted_password: '123456'
    }
  end
end
