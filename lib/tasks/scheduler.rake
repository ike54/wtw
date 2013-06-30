desc "This task is called by the Heroku cron add-on"
task :call_page => :environment do
   url = URI.parse('http://wtwings.com/')
   Net::HTTP.get(uri)
 end