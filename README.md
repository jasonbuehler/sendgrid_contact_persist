# sendgrid_contact_persist

A microservice for persisting SendGrid contacts.

## Usage
```
gem install sendgrid_contact_persist
```

You need to set SENDGRID_API_KEY on your environment for api authorization. Once you have your key set
you can call the service. 

### Service API
You can pass either a single email or a list of emails to persist:
```
SendgridContactPersist "email@email.com"
SendgridContactPersist ["email1@email.com", "email2@email.com"]
```

You can also pass custom fields to be applied to all of the emails you are persisting. You must define the custom fields
on Sendgrid's Admin Marketing interface before using them here. 
```
SendgridContactPersist "email@email.com", foo: :bar
```
