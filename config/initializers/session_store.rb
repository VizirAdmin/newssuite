# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_newssuite_session',
  :secret      => '6a3d0fc5087e9d254a038193910793793f2fb084dc626ef53974fce579fcaf0462457847e3c65cf1b233c45823728f1d68559ea46e71d2da6215443985a94e97'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
