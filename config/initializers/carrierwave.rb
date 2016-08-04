
CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => "AKIAJEOWO72QKUN6YZCA",
      :aws_secret_access_key  => "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",
      :host                   => "s3-eu-west-1.amazonaws.com",
      :region                 => 'us-east-1' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = "pout16"
end

