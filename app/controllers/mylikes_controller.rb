class MylikesController < ApplicationController
  def index
  @likes = Like.all


    render("mylikes/index.html.erb")
  end
end
