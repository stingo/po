
CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'xxx', 
    :aws_access_key_id      => 'xxx', 
    :aws_secret_access_key  => 'xxx', 
    #:region                 => 'us-east-1'
  }
  config.fog_directory  = 'xxx'
  config.fog_public     = false 
  config.fog_attributes = {'xxx'}
  config.storage = :fog
end
