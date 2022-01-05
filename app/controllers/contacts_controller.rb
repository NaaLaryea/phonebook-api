class ContactsController < ApplicationController
    # def index
    #     contacts = Contact.order('created_at DESC');
    #     render json: {status: 'SUCCESS', message: 'Loaded phonebooks', data:contacts}, status: :ok
    # end
    # this above works too but I will come back to it

    def index
        contacts = Contact.all 
        render json: contacts
    end

    def show
        contact = Contact.find(params[:id])
        render json: contact
    end 

    def create
        contact = Contact.new(contact_params)

        if contact.save
            render json: contact
        else 
            render json: {status: 'ERROR', message: 'Contact not created', data:contact.errors}, status: :unprocessed_entry
        end 
    end

    def update
        contact = Contact.find(params[:id])
        contact.update(contact_params)
        render json: contact
    end

    def destroy
        contacts = Contact.all 
        contact = Contact.find(params[:id])
        contact.destroy
        render json: contact
    end
      
    private 
      
    def contact_params
        params.permit(:name, :phone_number)
    end
end
