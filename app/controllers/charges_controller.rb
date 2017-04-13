class ChargesController < ApplicationController
    
    def new
        
    end
    
    def create
       #Amount in cents
       @amount = 2500
       
       customer = Stripe::Customer.create(
           :email => params[:stripeEmail],
           :source => params[:stripeToken]
           )
           
        charge = Stripe::Charge.create(
            :customer => customer.id,
            :amount => @amount,
            :description => 'Rails Stripe customer',
            :currency => 'usd'
            )
            
                rescue Stripe::CardError(message)
                    flash[:error]= message
                    redirect_to new_charge_path
    end
    
end
