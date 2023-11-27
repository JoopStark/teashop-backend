class CustomerSubscriptionFacade
  def self.create(params)
    customer_subscription = CustomerSubscription.create(customer_id: params[:customer_id],
                                                        subscription_id: params[:subscription_id],
                                                        status: 1)
    {json: CustomerSubscriptionSerializer.new(customer_subscription), status: 201}
  end

  def self.delete(params)
    CustomerSubscription.delete(params[:id])
    {json: "Customer #{params[:first_name]} #{params[:last_name]} subscription to #{params[:subscription_name]} has been removed" }
  end

  def self.index(customer_id)
    options = {include:["subscription"]}
    data = Customer.find(customer_id)
                   .customer_subscriptions
    {json: CustomerSubscriptionRelationshipSerializer.new(data, options)}
  end
end