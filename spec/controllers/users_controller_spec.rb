require 'rails_helper'

describe UsersController do

  before :each do
      @user = FactoryGirl.create(:user)
  end

  describe 'GET #show' do

    it 'assigns requested speaker to @user' do
      get :show, id: @user
      expect(assigns(:user)).to eq(@user)
    end

    it 'render the :show template' do
      get :show, id: @user
      expect(response).to render_template :show
    end
  end

  describe 'GET #edit' do

    it 'assigns requested user to @user' do
      get :edit, id: @user
      expect(assigns(:user)).to eq(@user)
    end

    it 'render the :edit template' do
      get :edit, id: @user
      expect(response).to render_template :edit
    end
  end


  describe 'PUT update' do

    it 'asstign the requested user to @user' do
      put :update, id: @user, user: FactoryGirl.attributes_for(:user)
      expect(assigns(:user)).to eq(@user)
    end

    it 'change @user attr' do
      put :update, id: @user, user: FactoryGirl.attributes_for(:user, name: 'Frodo' )
      @user.reload
      expect(@user.name).to eq("Frodo")
    end

    it 'redirect to user_path' do
      put :update, id: @user, user: FactoryGirl.attributes_for(:user)
      expect(response).to redirect_to user_path
    end
  end
end