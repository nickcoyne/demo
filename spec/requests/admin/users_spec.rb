require 'rails_helper'

RSpec.describe 'Admin::Users' do
  let(:admin_user) { create(:user, :admin) }
  let(:user) { create(:user) }

  context 'when logged in as admin' do
    before(:each) do
      post session_path, session: { email: admin_user.email, password: 'password' }
    end

    describe 'GET /admin/users' do
      it 'renders ok' do
        get '/admin/users/'
        expect(response).to have_http_status(200)
      end
    end

    describe 'GET /admin/users/:id' do
      it 'renders ok' do
        get "/admin/users/#{user.id}"
        expect(response).to have_http_status(200)
      end
    end

    describe 'GET /admin/users/:id/edit' do
      it 'renders ok' do
        get "/admin/users/#{user.id}/edit"
        expect(response).to have_http_status(200)
      end
    end
  end

  context 'when not logged in as admin' do
    it 'redirects' do
      get '/admin/users/'
      expect(response).to have_http_status(302)
    end
  end
end
