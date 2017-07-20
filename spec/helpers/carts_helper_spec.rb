require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the CartsHelper. For example:
#
# describe CartsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe CartsHelper, type: :helper do
	describe "Check cart" do
		context "if not exist" do
			it "should return false" do
				expect(cart_exist?).to be false
			end
		end

		context "if exist" do
			it "should return true" do
				session[:session_id] = Faker::Crypto.md5
				Cart.create(session_id: session[:session_id])
				expect(cart_exist?).to be true
			end
		end
	end

	describe "Current cart" do
		context "if not yet created" do
			it "should create new one" do
				expect(current_cart).to_not be nil
			end
		end

		context "if created" do
			it "should derive from db" do
				session[:session_id] = Faker::Crypto.md5
				Cart.create(session_id: session[:session_id])
				expect(current_cart).to_not be nil
			end
		end
	end
end
