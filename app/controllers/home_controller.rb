class HomeController < ApplicationController

  def index
    @feed_entries = FeedEntry.all(:select => "title,author,url,published_at", :order => "published_at DESC").paginate(:per_page => 10, :page => params[:page])
    respond_to do |format|
      format.html
      format.xml   { render :xml => @feed_entries }
      format.rss   { @feed_entries = FeedEntry.all(:order => "published_at DESC", :limit => 10) }
    end
  end

end

