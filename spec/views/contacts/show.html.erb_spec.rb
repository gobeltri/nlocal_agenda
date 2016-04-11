require 'rails_helper'

RSpec.describe "contacts/show", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :avatar_url => "Avatar Url",
      :phone_numbers => "Phone Numbers",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Avatar Url/)
    expect(rendered).to match(/Phone Numbers/)
    expect(rendered).to match(/Type/)
  end
end
