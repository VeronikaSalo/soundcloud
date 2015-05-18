require 'spec_helper'

describe User do

  before do
    @user = FactoryGirl.create(:user)
  end

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:provider) }
  it { should respond_to(:uid) }
  it { should respond_to(:city) }
  it { should respond_to(:country) }
  it { should respond_to(:description) }
  it { should respond_to(:oauth_token) }
  it { should respond_to(:oauth_expires_at) }
  it { should respond_to(:photo) }

  it 'has valid factory' do
    expect(FactoryGirl.create(:user)).to be_valid
  end

  it 'name return users full name' do
    user = FactoryGirl.build(:user)
    expect( user.name ).to eq(user.first_name.to_s + ' ' + user.last_name.to_s)
  end

end