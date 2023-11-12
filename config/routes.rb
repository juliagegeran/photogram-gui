Rails.application.routes.draw do

  #home page
  get("/", {:controller => "users", :action => "home"})

  #list of users
   get("/users", {:controller => "users", :action => "index"})

  #add a new user
  post("/add_new_user", {:controller => "users", :action => "add"})

  #details of each user
  get("users/:username", {:controller => "users", :action =>"show"})

  #update user details
  post("/update_user_details/:old_username", {:controller => "users", :action => "modify"})

  # #list of photos
  # get("/photos", {:controller => "photos", :action => "index"})

  # #add a new photo
  # post("/add_new_photo", {:controller => "photos", :action => "add"})

  # #details of each photo
  # get("/photos/:photo_id", {:controller=> "photos", :action => "show"})

  # #delete a photo
  # get("/delete_photo/:photo_id", {:controller => "photos", :action => "delete"})

  # #update a photo
  # post("/update_photo", {:controller => "photos", :action =>"update"})

  # #add a new comment
  # post("add_new_comment", {:controller => "comments", :action => "add"})
end
