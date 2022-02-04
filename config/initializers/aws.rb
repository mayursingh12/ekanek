# Aws.config(
#   :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
#   :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
# )
#
# require 'aws-sdk-core'
#
# Aws.config.update(
#   region: ENV['AWS_REGION'],
#   credentials: Aws::Credentials.new(ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'])
# )
# AWS_S3 = Aws::S3::Resource.new
# S3_BUCKET = AWS_S3.bucket(ENV['AWS_BUCKET'])
# S3_BUCKET =  Aws::S3.new.buckets[ENV['AWS_BUCKET']]