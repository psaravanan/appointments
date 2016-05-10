class SettingsController < ApplicationController

  def index
  	 @setting = Setting.all.present? ? Setting.last : Setting.new
    
  end
 def new
		@setting = Setting.new
	end

  def create


		@setting = Setting.new(setting_params)
		@setting.save
		redirect_to  settings_path
	end

  def update
		@setting = Setting.find(params[:id])
		@setting.update_attributes(setting_params)
		redirect_to  settings_path
	end

	def availableappointment
		@setting = Setting.last		
	end
 
	private
  
  def setting_params
    params.require(:setting).permit(:email, :interval,:available)
  end

end
