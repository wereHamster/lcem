# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_lce_session',
  :secret      => 'a382d23e2d26ed70d90e72b605804b6ce85ef8b93f93b3436623da71c494ec0f0b88fb601757563c5c946b7a495a025146bc9c572b25ff53ba358654a297a2bd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
