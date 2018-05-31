require 'rails_helper'
RSpec.describe UsersController, type: :controller do

  let(:valid_attributes) {
    {
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email
    }
  }

  let(:invalid_attributes) {
    {
      first_name: Faker::Number.number(10),
      last_name: Faker::Number.number(10),
      email: Faker::Number.number(10)
    }
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      user = User.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      user = User.create! valid_attributes
      get :show, params: {id: user.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      user = User.create! valid_attributes
      get :edit, params: {id: user.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new User" do
        expect {
          post :create, params: {user: valid_attributes}, session: valid_session
        }.to change(User, :count).by(1)
      end

      it "redirects to the created user" do
        post :create, params: {user: valid_attributes}, session: valid_session
        expect(response).to redirect_to(User.last)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {
          first_name: 'FooBar',
          last_name: 'FooBar',
          email: 'foo@bac.com'
        }
      }

      it "redirects to the user" do
        user = User.create! valid_attributes
        put :update, params: {id: user.to_param, user: valid_attributes}, session: valid_session
        expect(response).to redirect_to(user)
      end

      # it "broadcasts to the index page" do
      #   user = User.create! valid_attributes
      #   expect {
      #     put :update, params: {id: user.to_param, user: new_attributes}, session: valid_session
      #   }.to have_broadcasted_to("user_channel").with(
      #     user: {
      #       _id: '',
      #       user: new_attributes
      #     }
      #   )
      # end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested user" do
      user = User.create! valid_attributes
      expect {
        delete :destroy, params: {id: user.to_param}, session: valid_session
      }.to change(User, :count).by(-1)
    end

    it "redirects to the users list" do
      user = User.create! valid_attributes
      delete :destroy, params: {id: user.to_param}, session: valid_session
      expect(response).to redirect_to(users_url)
    end
  end

end
