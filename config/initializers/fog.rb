# Be sure to restart your server when you modify this file.

CarrierWave.configure do |config|
  config.fog_credentials = {

       :provider               => 'AWS',
       :aws_access_key_id      => "A",
       :aws_secret_access_key  => "4",
       :region                 => 'Ireland' # Change this for different AWS region. Default is 'us-east-1'

  }
  config.fog_directory  = "pout16"
end