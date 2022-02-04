class LinksController < ApplicationController

  def show
    @link = Link.find_by_slug(params[:slug])
    render  file: "#{Rails.root}/public/404.html", status: 404, layout: false and return  if @link.nil?

    @link.update_attribute(:clicked, @link.clicked + 1)
    redirect_to @link.url
  end

end