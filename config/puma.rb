=begin

Puma configuration as per

https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server

=end


# Heroku says "With a typical Rails memory footprint, you can expect
# to run 2-4 Puma worker processes on a free, hobby or standard-1x
# dyno." but we typically use 2X dynos, so I'm going to guess 5 here.

workers Integer(ENV['WEB_CONCURRENCY'] || 2)


# Not sure how to set the threads so we'll leave in the defaults
# recommended in the Heroku page

threads_count = Integer(ENV['MAX_THREADS'] || 5)
threads threads_count, threads_count

preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 3000
environment ENV['RACK_ENV'] || 'development'

on_worker_boot do
  # Worker specific setup for Rails 4.1+
  # See: https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server#on-worker-boot
  # @sidekiq_pid ||= spawn('bundle exec sidekiq -c 2 -q default -q mailers')

  ActiveRecord::Base.establish_connection
end



