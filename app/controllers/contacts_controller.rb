class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end
    
    def create
        @contact = Contact.new(contacts_params)
        if @contact.save
            render action: 'new'
        end
    end
    
    private def contacts_params
        params.require(:contact).permit(:name, :email, :content)
    end
end