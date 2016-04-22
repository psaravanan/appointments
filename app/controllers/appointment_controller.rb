class AppointmentController < ApplicationController
  def index
  	appoint = Appoint.all
  	 render json: appoint
  	
  end
  def create
  	p'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'
  		p tmp = params[:select_day] + ' ' + params[:appoint][:fromtime]
  	p'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&'

  		p tmp1 = params[:select_day]+ ' '+ params[:appoint][:totime]

  		p'################################################'
  		p  tmp.to_datetime
  		p  tmp1.to_datetime
  	    @appoint = Appoint.create
 	    @appoint.name = params[:appoint][:name]
 	    @appoint.email = params[:appoint][:email]
 	    @appoint.fromtime  = tmp.to_datetime
 	    @appoint.totime = tmp1.to_datetime
 	    @appoint.save
  	    redirect_to root_path
  end

  private
 def appointment_params
 	params.require(:appoint).permit(:name,:email,:fromtime,:totime,:select_day)

 
 end
end
			