# Be sure to restart your server when you modify this file.

Fp::Application.config.session_store :cookie_store, :key => '_fp_session',:secret => '15af2ebf75028709267b24bd6c3fb16ec7b864cd16bfc39265e2e47c9400896b6113bda3f427a91fde726ae8c1e4deaae6e62123bffd52837ee24da265aa0f2b'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
Fp::Application.config.session_store :active_record_store
