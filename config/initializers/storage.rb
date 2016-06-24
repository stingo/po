# This file is not created by default so you might have to create it yourself.

 
CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV["AKIAIKSQ6UQ73NZRBMLQ"],
      aws_secret_access_key: ENV["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"],
      region: 'us-west-2'
  }
  config.fog_directory  = "pout16"
  config.fog_public     = false
end