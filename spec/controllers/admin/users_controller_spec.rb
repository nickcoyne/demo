require 'rails_helper'

RSpec.describe Admin::UsersController do
  let(:valid_attributes) { attributes_for(:user) }
  let(:invalid_attributes) { attributes_for(:user, email: '') }
  let(:admin_user) { create(:user, :admin) }
  let(:user) { create(:user) }

  context 'when logged in as admin' do
    before(:each) do
      sign_in_as(admin_user)
    end

    describe "GET index" do
      it "assigns all users as @users" do
        get :index
        expect(assigns(:users)).to eq([admin_user])
      end
    end

    describe "GET show" do
      it "assigns the requested user as @user" do
        get :show, { id: user.to_param }
        expect(assigns(:user)).to eq(user)
      end
    end

    describe "GET new" do
      it "assigns a new user as @user" do
        get :new
        expect(assigns(:user)).to be_a_new(User)
      end
    end

    describe "GET edit" do
      it "assigns the requested user as @user" do
        user = User.create! valid_attributes
        get :edit, { id: user.to_param }
        expect(assigns(:user)).to eq(user)
      end
    end

    describe "POST create" do
      describe "with valid params" do
        it "creates a new User" do
          expect {
            post :create, { user: valid_attributes }
          }.to change(User, :count).by(1)
        end

        it "assigns a newly created user as @user" do
          post :create, { user: valid_attributes }
          expect(assigns(:user)).to be_a(User)
          expect(assigns(:user)).to be_persisted
        end

        it "redirects to the users list" do
          post :create, { user: valid_attributes }
          expect(response).to redirect_to(admin_users_url)
        end
      end

      describe "with invalid params" do
        it "assigns a newly created but unsaved user as @user" do
          post :create, { user: invalid_attributes }
          expect(assigns(:user)).to be_a_new(User)
        end

        it "re-renders the 'new' template" do
          post :create, { user: invalid_attributes }
          expect(response).to render_template('new')
        end
      end
    end

    describe "PUT update" do
      describe "with valid params" do
        let(:new_attributes) { { last_name: 'Sproglotsowitz' } }

        it "updates the requested user" do
          put :update, { id: user.to_param, user: new_attributes }
          user.reload
          expect(user.last_name).to eq('Sproglotsowitz')
        end

        it "assigns the requested user as @user" do
          put :update, { id: user.to_param, user: valid_attributes }
          expect(assigns(:user)).to eq(user)
        end

        it "redirects to the users list" do
          put :update, { id: user.to_param, user: valid_attributes }
          expect(response).to redirect_to(admin_users_url)
        end
      end

      describe "with invalid params" do
        it "assigns the user as @user" do
          put :update, { id: user.to_param, user: invalid_attributes }
          expect(assigns(:user)).to eq(user)
        end

        it "re-renders the 'edit' template" do
          put :update, { id: user.to_param, user: invalid_attributes }
          expect(response).to render_template("edit")
        end
      end
    end

    describe "DELETE destroy" do
      it "destroys the requested user" do
        user
        expect {
          delete :destroy, { id: user.to_param }
        }.to change(User, :count).by(-1)
      end

      it "redirects to the users list" do
        delete :destroy, { id: user.to_param }
        expect(response).to redirect_to(admin_users_url)
      end
    end
  end

  context 'when not logged in as admin' do
    describe "GET index" do
      it "redirects to login page" do
        get :index
        expect(response).to redirect_to(sign_in_url)
      end
    end
  end
end
