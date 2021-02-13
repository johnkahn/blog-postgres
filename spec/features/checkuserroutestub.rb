require 'rails_helper'

RSpec.describe User, :type => :request do

  describe "request list of all users" do

    it 'can be routed' do
      user = User.create(first_name: "Test user")
      get users_path
      expect(response).to be_successful
      expect(response.body).to include("Test user")
    end

  end
end
