desc "This task is called by the Heroku cron add-on"
task :alive => :environment do
   url = URI.parse('http://wtwings.com/')
   Net::HTTP.get(uri)
 end