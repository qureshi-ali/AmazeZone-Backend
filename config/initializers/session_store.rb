if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_amazezone', domain: 'amazezone-json-api'
  else
    Rails.application.config.session_store :cookie_store, key: '_amazezone'
  end