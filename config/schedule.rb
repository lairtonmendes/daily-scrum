# set configuration to run the command with -l bash -i necessary to rvm
env 'PATH', ENV['PATH']
set :job_template, "bash -l -i -c ':job'"

# set cron job to 8am rake reply_send_m sending emails for responses morning 'dailies'  	
every 1.day, :at => '8am' do
  rake 'reply_send_m', :environment => 'development' 
  rake 'reply_send_m', :environment => 'production'
end

# set cron job to 4pm rake reply_send_m sending emails for responses afternoon 'dailies'
every 1.day, :at => '4pm' do
  rake 'reply_send_t', :environment => 'development'
  rake 'reply_send_t', :environment => 'production' 
end
