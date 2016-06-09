# Be sure to restart your server when you modify this file.


CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => "AWS",
    :aws_access_key_id      => ENV[''],
    :aws_secret_access_key  => ENV['']
  }

  config.fog_directory  = ENV['pout16']
  config.fog_public     = false
  config.fog_region     = ENV['Ireland']
end