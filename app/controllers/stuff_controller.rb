class StuffController < ApplicationController

  def index
    @ruby_peeps = Octokit.search_users("location:Indianapolis language:Ruby", :sort => "joined", :order => :asc)[:items]
    @users = @ruby_peeps.map{|u| Octokit.user(u[:id])}
  end

  def show
  end
end
