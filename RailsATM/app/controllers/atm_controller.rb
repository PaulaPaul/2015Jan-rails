class AtmController < ApplicationController
 
  def home
    atmaction = params[:atmaction]
    @balance = RailsATM::Application.config.balance
    case atmaction
      when 'withdraw'
        #get the withdrawal amount and update the balance
        @amount = params[:w_amount].to_f
        @message = "" 
        if @balance >= @amount
          @balance = @balance - @amount
          @message = "Withdrawal complete.  Thank you for your business."
        else
          @message = "You don't have enough money!"
        end
      
      when 'deposit'
        #get the withdrawal amount and update the balance
        @amount = params[:d_amount].to_f
        @balance = @balance + @amount
        @message = "Deposit complete.  Thank you for your business."

      when 'balance'
        @balance = RailsATM::Application.config.balance
        @message = "Your balance is: "  + @balance.to_s
    end
    RailsATM::Application.config.message = @message
    RailsATM::Application.config.balance = @balance
  end
end
