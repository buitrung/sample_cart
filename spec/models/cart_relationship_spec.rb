require 'rails_helper'

RSpec.describe CartRelationship, type: :model do

	before(:all) do
		@cart = Cart.create(session_id: Faker::Crypto.md5)
		@product = Product.create(title: "Lenovo Thinkpad X220", price: 600)
	end

	describe "create new cart relationship" do
		context "when product_id is nil" do
			it "should be invalid" do
				expect(@product).to be_valid
			end
		end
	end

end
