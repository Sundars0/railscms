class ApplicationController < ActionController::Base
  before_filter :getPageNav, :getjumbotron, :getblocks
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def getPageNav
    @pageNav = Page.where("menu_display = true && is_published = true").order(:order => :asc)    
  end

  def getjumbotron
    @jumbotron = Block.where("position = 'jumbotron'")
  end

  def getblocks
    @blocks = Block.where("position = 'block'")
  end
end
