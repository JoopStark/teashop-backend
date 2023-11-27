class Api::V1::CustomerSubscriptionsController < ApplicationController
  def create 
    render CustomerSubscriptionFacade.create(params)
  end
  
  def destroy
    render CustomerSubscriptionFacade.delete(params)
  end

  def index
    render CustomerSubscriptionFacade.index(params[:customer_id])
  end
end