# This file is not created by default so you might have to create it yourself.

CarrierWave.configure do |config|

  # Use local storage if in development or test
  if Rails.env.development? || Rails.env.test?
    CarrierWave.configure do |config|
      config.storage = :file
    end
  end

  # Use AWS storage if in production
  if Rails.env.production?
    CarrierWave.configure do |config|
      config.storage = :fog
    end
  end

  config.fog_credentials = {
    provider:              'AWS',
      aws_access_key_id:     ENV["AKIAIKSQ6UQ73NZRBMLQ"],
      aws_secret_access_key: ENV["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"],
      region: 'Ireland'                        # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'pout16'               # required
  #config.fog_host       = 'https://assets.example.com'           # optional, defaults to nil
  #config.fog_public     = false                                  # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end

CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => Rails.application.secrets.amazon_access_key_id,
      :aws_secret_access_key  => Rails.application.secrets.amazon_secret_access_key,
      :region                 => 'us-west-1' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = "pout16"
end
 
