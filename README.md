# Jungle

A mini e-commerce application built with Rails 6.1 that utilizes stripe integration, Bootstrap and PostgreSQL. 

## Key Features
  - Stripe integration
  - Admin dashboard to manage products and categories
  - User authentication, session creation and removal
  
## Screenshots

Banner
!["Banner"](https://github.com/JonixB/jungle-rails/blob/master/docs/banner.png?raw=true)

Product List
!["Product List"](https://github.com/JonixB/jungle-rails/blob/master/docs/productlist.png?raw=true)
## Database

Cart
!["Cart"](https://github.com/JonixB/jungle-rails/blob/master/docs/Cart.png?raw=true)

Stripe Payment
!["Stripe Payment"](https://github.com/JonixB/jungle-rails/blob/master/docs/payment.png?raw=true)

Admin dash for adding products
!["Admin dash for adding products"](https://github.com/JonixB/jungle-rails/blob/master/docs/product-dashboard.png?raw=true)

Admin dash for adding categories
!["Admin dash for adding categories"](https://github.com/JonixB/jungle-rails/blob/master/docs/categories.png?raw=true)

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
