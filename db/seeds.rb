# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

subscription1 = Subscription.create!(title: "Green Weekly", status: 1, price: 19.99, frequency: 4)
subscription2 = Subscription.create!(title: "Green BiWeekly", status: 1, price: 12.5, frequency: 2)
subscription3 = Subscription.create!(title: "Oolong Weekly", status: 1, price: 19.99, frequency: 4)

customer1 = Customer.create!(first_name: "Anne", last_name: "Ashley", email: "a@aol.com", address: "here")
  cust_script1_1 = CustomerSubscription.create!( customer: customer1, subscription: subscription1, status: 0, end_date: nil)
  cust_script1_2 = CustomerSubscription.create!( customer: customer1, subscription: subscription1, status: 1, end_date: nil)
  cust_script1_3 = CustomerSubscription.create!( customer: customer1, subscription: subscription3, status: 1, end_date: nil)
customer2 = Customer.create!(first_name: "Blake", last_name: "Black", email: "b@aol.com", address: "there")
customer3 = Customer.create!(first_name: "Clyde", last_name: "Celt", email: "c@aol.com", address: "anywhere")