require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :avatar_url => "Avatar Url",
        :phone_numbers => "Phone Numbers",
        :type => "Type"
      ),
      Contact.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :avatar_url => "Avatar Url",
        :phone_numbers => "Phone Numbers",
        :type => "Type"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Avatar Url".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Numbers".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
