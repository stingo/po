CarrierWave.configure do |config|
  config.fog_credentials = {
      provider:               'AWS',
      aws_access_key_id:      'AKIAIXZR4IFGYBB7B7IQ',
      aws_secret_access_key:  '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',
      endpoint:                "https://s3.amazonaws.com",
      region:                 'eu-west-1', 
  }
  config.fog_directory  = 'pout2016246'
end