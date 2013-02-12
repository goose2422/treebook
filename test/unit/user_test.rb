require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "user should enter his first name" do 
  	user = User.new
  	assert !user.save #test that user's first name hasn't already been saved
  	assert !user.errors[:first_name].empty?  #test that errors on the first name field is not empty
  end

    test "user should enter a last name" do 
	  	user = User.new
	  	assert !user.save #test that user's first name hasn't already been saved
	  	assert !user.errors[:last_name].empty?  #test that errors on the first name field is not empty
  	end

    test "user should enter a profile name" do 
	  	user = User.new
	  	assert !user.save #test that user's first name hasn't already been saved
	  	assert !user.errors[:profile_name].empty?  #test that errors on the first name field is not empty
  	end

  	test "user should have a unique profile name" do 
	  	user = User.new
	  	user.profile_name = "toddmacey"
	  	user.email = "tacey@gmail.com"
	  	user.first_name = "Todd"
	  	user.last_name = "Macey"
	  	user.password = "password"
	  	user.password_confirmation = "password"
	  	users(:jason)
	  	assert !user.save
	  	puts user.errors.inspect
	  	assert !user.errors[:profile_name].empty?
  	end

  	test "a user should have a profile name without spaces" do
  		user = User.new
  		user.profile_name = "My Profile with spaces"
  		assert !user.save
  		assert !user.errors[:profile_name].empty?
  		assert !user.errors[:profile_name].include?("Must be formatted correctly")
  	end

    test "a user can have a correctly formatted profile name" do
      user = User.new(first_name: 'Todd', last_name: "Macey", email: "tmacey@gmail.com", )
      user.password = user.password.confirmation = "password"
      user.profile_name = "goose"
      assert user.valid?
    end

end
