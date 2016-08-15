CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS', 
    :aws_access_key_id      => 'AAAAAAAAAAAAAAAAAAAA', 
    :aws_secret_access_key  => '+hhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 
    #:region                 => 'us-east-1'
  }
  config.fog_directory  = 'prchersput'
  config.fog_public     = false 
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
  config.storage = :fog
end