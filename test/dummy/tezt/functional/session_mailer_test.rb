# require 'test_helper'

# class SessionMailerTest < ActionMailer::TestCase
#   setup do
#     @reset_email = credentials(:jane_email).email
#     @reset_token = credentials(:jane_password_token)
#     @verification_token = credentials(:john_email_token)
#     @verification_email = credentials(:john_email).email
#     @root_url = 'hxxp://test.host/'
#   end

#   test 'email verification email' do
#     email_draft = SessionMailer.email_verification_email @verification_token,
#                                                          @root_url
#     if email_draft.respond_to? :deliver_now
#       email = email_draft.deliver_now  # Rails 4.2+
#     else
#       email = email_draft.deliver  # Rails 4.0 and 4.1
#     end
#     assert !ActionMailer::Base.deliveries.empty?

#     assert_equal 'test.host e-mail verification', email.subject
#     assert_equal ['admin@test.host'], email.from
#     assert_equal '"test.host staff" <admin@test.host>', email['from'].to_s
#     assert_equal [@verification_email], email.to
#     assert_match @verification_token.code, email.encoded
#     assert_match @root_url, email.encoded
#   end

#   test 'password reset email' do
#     email_draft = SessionMailer.reset_password_email @reset_email,
#                                                      @reset_token, @root_url
#     if email_draft.respond_to? :deliver_now
#       email = email_draft.deliver_now  # Rails 4.2+
#     else
#       email = email_draft.deliver  # Rails 4.0 and 4.1
#     end
#     assert !ActionMailer::Base.deliveries.empty?

#     assert_equal 'test.host password reset', email.subject
#     assert_equal ['admin@test.host'], email.from
#     assert_equal '"test.host staff" <admin@test.host>', email['from'].to_s
#     assert_equal [@reset_email], email.to
#     assert_match @reset_token.code, email.encoded
#     assert_match @root_url, email.encoded
#   end
# end
