# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_taskmanager_session',
  :secret      => 'e9adc9878121c9d7e2b56afc96fa77c8bc18645d3834826d72426101a0992c0e531cb0933a826e4aa4adc5da6f18333fb586a5acb2416c3eff5e918d39741650'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
