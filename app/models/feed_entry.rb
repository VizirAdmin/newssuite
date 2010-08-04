class FeedEntry < ActiveRecord::Base

  def self.update_from_feed
    feed = Feedzirra::Feed.fetch_and_parse("http://www.google.com/reader/public/atom/user%2F13996845518381598850%2Fbundle%2FNews%20Suite")
    add_entries(feed.entries)
  end

private

  def self.add_entries(entries)
    entries.each do |entry|
      summary = create_summary(entry)
      unless exists? :guid => entry.id
        create!(
          :title        => entry.title,
          :author       => entry.author,
          :summary      => summary,
          :url          => entry.url,
          :published_at => entry.published,
          :guid         => entry.id
        )
      end
    end
  end
  
  def self.create_summary(entry)
    "Escrito por <i>#{entry.author}</i>. Confira em:<br> <a href=\"#{entry.url}\">#{entry.title}</a>"
  end

end

