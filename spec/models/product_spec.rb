require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    
    it 'is valid with all fields filled up' do
      product = Product.new
      product.name = 'Pinetree'
      product.price_cents = 50.00
      product.quantity = 10
      product.category = Category.new(name: 'Trees')

      expect(product).to be_valid
    end

    it 'is invalid without name' do
      product = Product.new
      product.name = nil
      product.price_cents = 50.00
      product.quantity = 10
      product.category = Category.new(name: 'Trees')

      expect(product).to_not be_valid
    end

    it 'is invalid without price' do
      product = Product.new
      product.name = 'Pinetree'
      product.price_cents = nil
      product.quantity = 10
      product.category = Category.new(name: 'Trees')

      expect(product).to_not be_valid
    end
    
    it 'is invalid without quantity' do
      product = Product.new
      product.name = 'Pinetree'
      product.price_cents = 50.00
      product.quantity = nil
      product.category = Category.new(name: 'Trees')

      expect(product).to_not be_valid
    end

    it 'is invalid without quantity' do
      product = Product.new
      product.name = 'Pinetree'
      product.price_cents = 50.00
      product.quantity = 10
      product.category = nil

      expect(product).to_not be_valid
    end
  end
end
