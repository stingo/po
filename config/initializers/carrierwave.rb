CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS', 
    :aws_access_key_id      => 'AKIAIYWRBWFLUKbbYKUA', 
    :aws_secret_access_key  => '+hBqW1mDdBeukdlkLg6P6e8v83lNOvVikbFWgOUr', 
    #:region                 => 'us-east-1'
  }
  config.fog_directory  = 'preachersput'
  config.fog_public     = false 
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
  config.storage = :fog
end