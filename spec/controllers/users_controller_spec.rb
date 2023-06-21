require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    describe 'Post /users' do
        it 'creates a new user object' do
            post :create, params: {username: 'test', email: 'test', first_name: 'test', last_name: 'test'}

            expect(response).to have_http_status(:ok)
        end
    end

end
