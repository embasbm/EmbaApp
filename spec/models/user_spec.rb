require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) { @user = FactoryBot.create(:user) }

  subject { @user }

  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:email) }

  it '#first_name should responde to type String' do
    expect(@user.first_name).to be_a String
  end

  it '#last_name should responde to type String' do
    expect(@user.last_name).to be_a String
  end

  it '#email should responde to type String' do
    expect(@user.email).to be_a String
  end
end
