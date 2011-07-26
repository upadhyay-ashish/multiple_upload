# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ks_upload_session',
  :secret      => '75846ff05939661dc2fc497fc97fa2aa5abc01ac890967d61dd0cc6d2467719a44b69eccaea34fd9cb12c16269387c25c3b213614db8009e96ceb3f87fe26ccf'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
