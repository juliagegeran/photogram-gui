class PhotosController < ApplicationController
  def index
    render(:template => "photos_templates/index")
  end

  def add
    new_photo = Photo.new
    new_photo.image = params.fetch("new_image")
    new_photo.caption = params.fetch("new_caption")
    new_photo.owner_id = params.fetch("new_owner_id")

    new_photo.save

    redirect_to("/photos/#{new_photo.id}")
  end

  def show
    photo_id = params.fetch("photo_id")
    @photo_record = Photo.where(:id => photo_id).first
    render(:template => "photos_templates/show")
  end

  def modify
    photo_id = params.fetch("photo_id")
    photo_record = Photo.where(:id => photo_id).first
    photo_record.image = params.fetch("new_image")
    photo_record.caption = params.fetch("new_caption")

    photo_record.save

    redirect_to("/photos/#{photo_id}")
  end

  def delete
    photo_id = params.fetch("photo_id")
    photo_record = Photo.where(:id => photo_id).first
    photo_record.destroy

    redirect_to("/photos")
  end

end
