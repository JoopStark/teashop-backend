require "rails_helper"

describe "customer subscription requests" do
  describe "#create" do
    it "creates a join table connecting subscriptions with customers" do
      load_test_data

      params = {
                  customer: @customer1,
                  subscription: @subscription1,
                  status: 0, 
                  end_date: nil
                  }
      headers = {"CONTENT_TYPE" => "application/json"}

      post api_v1_customer_subscriptions_path, headers: headers, params: JSON.generate(params)
      created_customer_subscription = CustomerSubscription.last

      expect(response).to be_successful
      expect(created_customer_subscription).to be_a Object
      expect(created_customer_subscription.id).to be_a(Integer)
      expect(created_customer_subscription.customer_id).to be_a(Integer)
      expect(created_customer_subscription.subscription_id).to be_a(Integer)
      expect(created_customer_subscription.subscription_id).to be_a(Integer)
      expect(created_customer_subscription.end_date).to eq(nil)
      expect(created_customer_subscription.status).to eq(1)
    end
  end

  describe "#delete" do 
    it "can remove user" do
      load_test_data

      cs_params = {
                  id: @cust_script1_1.id,
                  first_name: @customer1.first_name,
                  last_name: @customer1.last_name, 
                  subscription_name: @subscription1.title
                  }
      headers = {"CONTENT_TYPE" => "application/json"}

      expect(@cust_script1_1).to be_a(Object)
      
      delete api_v1_customer_subscription_path(@cust_script1_1.id), headers: headers, params: JSON.generate(cs_params)

      expect(response).to be_successful
      expect(response.body).to eq("Customer #{@customer1.first_name} #{@customer1.last_name} subscription to #{@subscription1.title} has been removed")
      expect(CustomerSubscription.all.count).to eq(2)
    end
  end

  describe "#index" do
    it "will display customers subscriptions by customer" do
      load_test_data

      customer_params = {customer_id: @customer1.id}
      headers = {"CONTENT_TYPE" => "application/json"}

      get api_v1_customer_subscriptions_path, headers: headers, params: customer_params

      expect(response).to be_successful
      
      customer_scripts = JSON.parse(response.body, symbolize_names: true)

      expect(customer_scripts[:data][0][:attributes][:status]).to eq(0)
      expect(customer_scripts[:data][1][:attributes][:status]).to eq(1)
    end
  end 
end

