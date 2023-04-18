Rails.application.routes.draw do
  get("/", { controller: "users", action: "index" })

  get("/users", { controller: "users", action: "index" })
  
  get("/users/:username", { controller: "users", action: "show"})

  get("/users/insert_user_record", { controller: "users", action: "new"})


  # get("/insert_user_record", { controller: "users", action: "new_user" })





  get("/photos", { controller: "photos",  action: "index" })
end
