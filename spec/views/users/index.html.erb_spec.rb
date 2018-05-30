require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    @users = WillPaginate::Collection.new(4,10,0)

    3.times do
      @users << User.create!(first_name: "First Name", last_name: "Last Name", email: "Email")
    end
    assign(:users, @users)
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: "First Name".to_s, count: 3
    assert_select "tr>td", text: "Last Name".to_s, count: 3
    assert_select "tr>td", text: "Email".to_s, count: 3
  end
end
