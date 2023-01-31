require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    before(:each) do
      @user = User.new do |user|
        user.first_name = 'Nikko'
        user.last_name = 'Bansil'
        user.email = 'nikko@test.com'
        user.password = '12345678'
        user.password_confirmation = '12345678'
      end
    end

    it 'is valid with all fields filled' do
      expect(@user).to be_valid
    end

    it 'is invalid without first_name' do
      @user.first_name = nil
      expect(@user).to_not be_valid
    end

    it 'is invalid without last_name' do
      @user.last_name = nil
      expect(@user).to_not be_valid
    end

    it 'is invalid without email' do
      @user.email = nil
      expect(@user).to_not be_valid
    end

    it 'is invalid without password' do
      @user.password = nil
      expect(@user).to_not be_valid
    end

    it 'is invalid without password_confirmation' do
      @user.password_confirmation = nil
      expect(@user).to_not be_valid
    end

    it "is invalid when passwords don't match" do
      @user.password = '12345678'
      @user.password_confirmation = '123456789'
      expect(@user).to_not be_valid
    end

    it "is invalid when password is less than 8 characters" do
      @user.password = '1234'
      @user.password_confirmation = '1234'
      expect(@user).to_not be_valid
    end

    it 'is not valid if email is not unique' do
      @user.save

      same_email = User.new
      same_email.first_name = 'Hello'
      same_email.last_name = 'World'
      same_email.email = 'nikko@test.com'
      same_email.password = '12345678'
      same_email.password_confirmation = '12345678'

      same_email.save
      expect(same_email.errors[:email].first).to eql("has already been taken")
    end

  end
end
