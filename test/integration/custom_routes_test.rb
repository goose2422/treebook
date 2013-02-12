require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "that the /login route opens the login page"
  	get '/login'
  	assert_response: success
	end
end
