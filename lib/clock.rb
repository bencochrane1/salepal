# require 'config/boot'
# require 'config/environment'

require File.expand_path('../../config/boot',        __FILE__)
require File.expand_path('../../config/environment', __FILE__)
require 'email_job'
require 'clockwork'


module Clockwork

  handler do |job|
    puts "Running #{job}"
  end

  # handler receives the time when job is prepared to run in the 2nd argument
  # handler do |job, time|
  #   puts "Running #{job}, at #{time}"
  # end

  # every(10.seconds, 'frequent.job')
  # every(3.minutes, 'less.frequent.job')
  every(1.hour, 'hourly.job') { EmailJob.fetch }
  # puts "this is clockwork"
  # every(1.seconds, puts "this is clockwork")
  # every(1.day, 'midnight.job', :at => '00:00')
end