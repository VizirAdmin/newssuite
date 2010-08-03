class HomeController < ApplicationController

  def index
    @feed_entries = FeedEntry.all(:limit => 10)
    respond_to do |format|
      format.html
    end
  end

end

