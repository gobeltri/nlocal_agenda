require 'rails_helper'

RSpec.describe Contact, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "has a valid factory" do
  	FactoryGirl.create(:contact).should be_valid
  end
  it "is invalid without a firstname" do
  	FactoryGirl.build(:contact, first_name: nil).should_not be_valid
  end
  it "is invalid without a lastname" do
  	FactoryGirl.build(:contact, last_name: nil).should_not be_valid
  end
  it "is invalid without an email" do
  	FactoryGirl.build(:contact, email: nil).should_not be_valid
  end
  it "does not allow duplicate emails" do
  	test_contact = FactoryGirl.create(:contact)
  	FactoryGirl.build(:contact, email: test_contact.email).should_not be_valid
  end
end
