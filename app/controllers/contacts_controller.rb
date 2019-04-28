class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end
    
    def create
        @contact = Contact.new(contacts_params)
        # @contact = Contact.new(contacts_params)
        if @contact.save
            redirect_to new_contact_path, notice: "お問い合わせいただきありがとうございます"
        end
    end
    
    private def contacts_params
        params.require(:contact).permit(:name, :email, :content)
   
    end
end