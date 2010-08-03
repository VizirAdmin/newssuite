task :cron => :environment do
   puts "Updating feed..."
   FeedEntry.update_from_feed
   puts "done."
end

