class SubscriptionSerializer
  include JSONAPI::Serializer
  attributes :id, :title, :status, :price, :frequency
end