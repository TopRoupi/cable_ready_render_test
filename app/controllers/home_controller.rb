class HomeController < ApplicationController
  include CableReady::Broadcaster

  def index
  end
end
