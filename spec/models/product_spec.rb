require 'rails_helper'

RSpec.describe Product, type: :model do

	before(:all) do
		@product = Product.new(title: "Lenovo Thinkpad X220", price: 600)
	end

	# pending "add some examples to (or delete) #{__FILE__}"

	context "create new product" do
		it "should be valid" do
			expect(@product).to be_valid
		end

		it "shouldn't be valid as title is blank" do
			@product.title = '   '
			expect(@product).to_not be_valid
		end

		it "shouldn't be valid as price is left empty" do
			@product.price = nil
			expect(@product).to_not be_valid
		end

		it "shouldn't be valid as price is non numeric" do
			@product.price = 'six hundred'
			expect(@product).to_not be_valid
		end
	end

end