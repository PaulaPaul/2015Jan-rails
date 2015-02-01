class PagesController < ApplicationController
  def home
    @Home = Home.new
    @message = ""
    if Date.today == @Home.birthday
      @message = "Happy Birthday!!!"
    end
  end
end
