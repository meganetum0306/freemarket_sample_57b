require 'rails_helper'
describe User do
  describe '#create' do
    it "is invalid without a nickname" do
     user = User.new(email: "", password: "00000000", password_confirmation: "00000000")
     user.valid?
     expect(user.errors[:email]).to include("can't be blank")
    end
  end
end