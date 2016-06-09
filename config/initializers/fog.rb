# Be sure to restart your server when you modify this file.

CarrierWave.configure do |config|
  config.fog_credentials = {

       :provider               => 'AWS',
       :aws_access_key_id      => "AKIAIKSQ6UQ73NZRBMLQ",
       :aws_secret_access_key  => "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 ",
       :region                 => 'Ireland' # Change this for different AWS region. Default is 'us-east-1'

  }
  config.fog_directory  = "pout16"
end
