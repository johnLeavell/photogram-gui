Rails.application.routes.draw do
  get("/", { controller: "users", action: "index" })

  ##user routes
  get("/users", { controller: "users", action: "index" })
  
  get("/users/:username", { controller: "users", action: "show"})

  ##create user
  get("/insert_user_record", { controller: "users", action: "create"})

  ## update user
  get("/update_user/:the_user_id", { controller: "users", action: "update"})





## photo routes
  get("/photos", { controller: "photos",  action: "index" })
end
