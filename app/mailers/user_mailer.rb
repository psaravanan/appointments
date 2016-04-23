class UserMailer < ApplicationMailer
   default from: "prabhakaran.rex.ibz.test@gmail.com"
   
    def mailer_send(appoint)
   		@appoint = appoint
   	mail(:to => @appoint.email, :subject=>"Registered")

   	
   end
end
