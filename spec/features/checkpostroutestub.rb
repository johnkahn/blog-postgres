require 'rails_helper'
#stubs to check routing, without going to the database

RSpec.describe Post, :type => :request do

  describe "request list of all posts" do

    it 'can be routed' do
      post = Post.create(title: "Test title", body: nil)
      get posts_path
      expect(response).to be_successful
    end

  end
end
