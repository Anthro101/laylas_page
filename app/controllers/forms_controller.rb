class FormsController < ApplicationController

  def index
  	@form = Form.all
  end

   def show
   	response.content_type = "text/plain" 
  	render "forms/#{params[:name]}", layout:false
   end

   def template
   	render "forms/#{params[:name]}", layout:true
  end
end