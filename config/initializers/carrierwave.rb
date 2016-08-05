
CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => "xx",
      :aws_secret_access_key  => "xx",
      :host                   => "s3-eu-west-1.amazonaws.com",
      :region                 => 'us-east-1' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = "xx"
end

