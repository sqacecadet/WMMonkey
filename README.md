# README

##Key Requirement: Perform cost control of a company.

##Models
 - [x] Spents 
 - [x] Wallets
 - [x] User authentication with devise

##Features:
 - [x] Simple Approval workflow
 - SMS Sending with a link to approval spent
 - [x] Adminstrate Admin dashboard 
 - Email summary to managers for approvals.
 - All operations needs to be documented.

##UI:
 - Bootstrap

##Gemfile Pack
- Authentication
  - gem 'devise'  
- UI  
  - gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6' - UI
- Growl notification
  - gem "gritter", "1.2.0"
- Admin Dashboard
  - gem "administrate", github: "pablo-co/administrate", branch: "rails5"
- Seed Data
  - gem 'faker', '~> 1.6', '>= 1.6.6'
  - 
- TDD
  - gem 'rspec'
  - gem 'rspec-rails', '~> 3.0'
  - gem 'capybara'
  - gem 'database_cleaner'
  - gem 'factory_girl_rails', '~> 4.7'
