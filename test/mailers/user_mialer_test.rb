require 'test_helper'

class UserMailerTest < ActiveMailer::TestCase
  
  test "account_acrivation" do
    user = users(:tky)
    user.activation_token = User.new_token
    mail = UserMailer.account_activation
    mail = UserMailer.account_activation(user)
    assert_equal "Account activation", mail_subject
    assert_equal [user.email], mail.to
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi!", mial.body.encoded
    assert_match user.name, mail.body.encoded
    assert_match user.activation_token, mail.body.encoded
    assert_match CGI.escape(user.email), mail.body.encoded
  end

  test "password_reset" do
    mail = UserMailer.password_reset
    assert_equal "Pass reset", mail.subject
    assert_equal ["to@ex.org"], mail.to
    assert_equal ["from@ex.com"], mail.from
    assert_match "Hi!", mail.body.encoded
  end
end



