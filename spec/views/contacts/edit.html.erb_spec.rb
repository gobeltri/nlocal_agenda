require 'rails_helper'

RSpec.describe "contacts/edit", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :avatar_url => "MyString",
      :phone_numbers => "MyString",
      :type => ""
    ))
  end

  it "renders the edit contact form" do
    render

    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do

      assert_select "input#contact_first_name[name=?]", "contact[first_name]"

      assert_select "input#contact_last_name[name=?]", "contact[last_name]"

      assert_select "input#contact_email[name=?]", "contact[email]"

      assert_select "input#contact_avatar_url[name=?]", "contact[avatar_url]"

      assert_select "input#contact_phone_numbers[name=?]", "contact[phone_numbers]"

      assert_select "input#contact_type[name=?]", "contact[type]"
    end
  end
end
