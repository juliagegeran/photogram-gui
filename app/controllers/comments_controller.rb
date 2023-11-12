class CommentsController < ApplicationController
  def add
    new_comment = Comment.new
    new_comment.body = params.fetch("new_comment")
    new_comment.author_id = params.fetch("new_author_id")
    new_comment.photo_id = params.fetch("new_photo_id")

    new_comment.save

    redirect_to("/photos/#{new_comment.photo_id}")
  end
end
