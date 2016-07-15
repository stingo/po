CarrierWave.configure do |config|
  config.fog_credentials = {
      provider:               'AWS',
      aws_access_key_id:      'xxxx',
      aws_secret_access_key:  'xxxxxx',
      endpoint:                "https://s3.amazonaws.com",
      region:                 'eu-west-1', 
  }
  config.fog_directory  = 'xxxxx'
end