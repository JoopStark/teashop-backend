class CustomerSubscriptionRelationshipSerializer
  include JSONAPI::Serializer
  belongs_to :subscription
  
  attributes :id, :customer_id, :subscription_id, :status, :end_date

end