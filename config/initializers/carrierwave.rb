CarrierWave.configure do |config|
  config.storage    = :aws
  config.aws_bucket = ENV['S3_BUCKET_NAME']
  config.aws_acl    = 'public-read'
  # config.asset_host = 'https://s3-us-east-1.amazonaws.com'
  # config.aws_authenticated_url_expiration = 60 * 60 * 24 * 365

  # Set custom options such as cache control to leverage browser caching

  config.aws_credentials = {
    access_key_id:     ENV['AWS_ACCESS_KEY_ID'],
    secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    region:            ENV['AWS_REGION'] # Required
  }

  # Optional: Signing of download urls, e.g. for serving private
  # content through CloudFront.
  # config.aws_signer = -> (unsigned_url, options) { Aws::CF::Signer.sign_url unsigned_url, options }
end
