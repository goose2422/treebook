require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "that the /login route opens the login page" do
  	get '/login'
  	assert_response: success
	end

	test "that a person's profile page works" do
		get '/jimjim'
		assert_response :success
	end
end
