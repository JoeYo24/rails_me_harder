require 'rails_helper'

RSpec.describe PostsController, type: :controller do
    describe 'POST /posts' do
        it 'creates a new post object' do
            post :create, params: {username: 'test', content: 'test', time: 'test'}

            expect(Post.count).to eq(1)
        end
    end
    describe 'GET /posts' do
        it 'gets all posts' do
            get :index

            expect(Post.count).to eq(0)
        end
    end
end
