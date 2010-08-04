class FeedEntry < ActiveRecord::Base

  def self.update_from_feed
    feed = Feedzirra::Feed.fetch_and_parse("http://www.google.com/reader/public/atom/user%2F13996845518381598850%2Fbundle%2FNews%20Suite")
    add_entries(feed.entries)
  end

private

  def self.add_entries(entries)
    entries.each do |entry|
      unless exists? :guid => entry.id
        create!(
          :title        => entry.title,
          :author       => entry.author,
          :summary      => entry.summary,
          :url          => entry.url,
          :published_at => entry.published,
          :guid         => entry.id
        )
      end
    end
  end

end

