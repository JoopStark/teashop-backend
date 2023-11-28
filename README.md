# README
# Teashop:</br>
What is Teashop:</br>
Is is a simple tea subscription with Ruby API backend.

Contributors:
- Joop Stark
  - LinkedIn: [Joop Stark](https://www.linkedin.com/in/joop-stark/)
  - GitHub: [JoopStark](https://github.com/JoopStark) </br>


API endpoints
- `GET "/api/v1/customer_subscriptions/<customer_id>"`</br>
  Access all customer_subscriptions(enabled/disabled) for customer</br>
  Requires: customer_id(in uri)</br></br>
- `POST "/api/v1/customer_subscriptions/"`</br>
  Create a customer_subscription</br>
  Requires: customer_id, subscription_id, status(in body) </br></br>
- `DELETE "/api/v1/customer_subscriptions/<customer_subscription_id>"`</br>
  Remove a customer_subscription</br>
  Requires: customer_id(in uri), first_name, last_name, subscription_title(in body)</br></br>


Architecture: </br>
  Teashop follows Service Oriented Architecture(SOA) as the frontend and backend are disconnected in such a way that other services could be added. If other backend services were added they would not affect adjacent backend APIs. The services in the backend would not need to be coupled to each other, so if one failed the others would be fine.

Install: </bt>
- Save to a directory
- Use bash or zsh to move into Teashop-backend
- In terminals `bundle install`
- In terminals `rails db:{drop,create,migrate,seed}`
- In terminals `rails server`
- By default he backend runs on `http://localhost:3000/` 

