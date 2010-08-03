xml.instruct! :xml, :version=>"1.0"
xml.rss(:version=>"2.0"){
  xml.channel{
    xml.title("News Suite")
    xml.link("http://newssuite.heroku.com/")
    xml.description("Centralizando o conteúdo produzido pela comunidade Brasileira de Teste e Qualidade de Software")
    xml.language('en-uk')
      for entry in @feed_entries
        xml.item do
          xml.title(entry.title)
          xml.description(entry.summary)     
          xml.author(entry.author)               
          xml.pubDate(entry.published_at.strftime("%a, %d %b %Y %H:%M:%S %z"))
          xml.link(entry.url)
          xml.guid(entry.guid)
        end
      end
  }
}
