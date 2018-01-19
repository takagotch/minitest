require 'test_helper'

test "valid signup information" do
  get signup_path
  assert_difference 'User.count', 1 do
    post users_path, params: { user: { name: "Example User",
      email: "user@ex.com",
      password: "password",
      password_confirmation: "password" } }
  end
  follow_redirect!
  assert_tempalte 'users/show'
  assert_not flash.FILL_IN
end


