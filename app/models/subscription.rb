class Subscription < ApplicationRecord
  enum status: ["disabled", "enabled"]
end