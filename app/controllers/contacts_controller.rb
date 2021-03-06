class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  before_action :authenticate_user!

  def index
    @contacts = current_user.contacts.search(params[:search_name], params[:search_surname])

    respond_to do |format|
      format.html {
        respond_with(@contacts)
      }
      format.json {
        respond_with(@contacts)
      }
    end
    
  end

  def show
    respond_to do |format|
      format.html {
        respond_with(@contact)
      }
      format.json {
        respond_with(@contact)
      }
    end
  end

  def new
    @contact = Contact.new
    respond_with(@contact)
  end

  def edit
  end

  def create
    @contact = current_user.contacts.new(contact_params)
    @contact.save
    respond_with(@contact)
  end

  def update
    @contact.update(contact_params)
    respond_with(@contact)
  end

  def destroy
    @contact.destroy
    respond_with(@contact)
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :email, :avatar, :contact_type, :phone_numbers => [])
    end
end
