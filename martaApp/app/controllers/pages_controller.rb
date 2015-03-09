class PagesController < ApplicationController
  include ApplicationHelper
  
  def home
  end

  def yourBuses
    # the passed parameter is set to an instance variable
    @station = params[:station]
    # here we pull the real-time info from MARTA, and put it in a hash. Copy and paste the URL and get familiar with what data is in there.
    @results = JSON.parse(open("http://developer.itsmarta.com/BRDRestService/BRDRestService.svc/GetAllBus").read)
    # use the application helper
    hash_and_msg_generator(@results, @station)
  end
  
end
