require 'rails_helper'

module Features
  module ControllerMacros
    def login_admin
      before(:each) do
        @request.env["devise.mapping"] = Devise.mappings[:admin]
        sign_in FactoryGirl.create(:admin) # Using factory girl as an example
      end
    end

    def login
      @request.env["devise.mapping"] = Devise.mappings[:user]
      @user = FactoryGirl.build(:create_user)
      allow(@user).to receive(:geocode).and_return(true)
      @user.save
      @user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
      sign_in @user
    end

    def login_user
      before(:each) do
        # login
      end
    end
  end
end
