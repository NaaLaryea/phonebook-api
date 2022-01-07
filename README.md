# PHONEBOOK APPLICATION
This is a basic phonebook (contact) application.

In this application, a user is able to create a contact list made up of a contact name and a phone number.

This is a Rails API only application, where a user is able to create a contact, view a list of contacts, view an individual contact, update and delete a contact.

## Project Setup
Make sure to have the following installed:
- [Ruby](https://www.ruby-lang.org/en/): version 2.7.2

### Clone the application onto your local environment using this command:
 $ git clone https://github.com:NaaLaryea/phonebook-api.git

### Run the following commands:
### 1. Install gems in the Gemfile
 $ bundle install

### 2. Creates database for the application
 $ rails db:create

### 3. Creates tables in database
 $ rails db:migrate

### 4. Seed data
 $ rails db:seed

### 5. Runs application server (http://localhost:3000)
 $ rails server

### Tests
 To test out the application:

### 1. Open rails console
 $ rails c

### 2. To view list of all contacts in phonebook
 $ Contact.all 

### 3. To view a specific contact inside phonebook list
 $ Contact.find(params[:id]) #where id here is the id for the specific contact you want

### 4. To create a new contact 
 $ Contact.create(contact_params)

### 5. To update a particular contact
 first find the contact you want to update (by id):
 $ Contact.find(params[:id])

then you can update that particular contact

### 6. To destroy (delete) a contact
 $ Contact.destroy(params[:id])


## Authors

* **Dorcas Adjeley Laryea** - *Initial work* - [NaaLaryea](https://github.com/NaaLaryea)
