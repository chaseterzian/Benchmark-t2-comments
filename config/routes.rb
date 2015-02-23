Rails.application.routes.draw do
  resources :musics
  root 'musics#thelist'
end

##### Line 2 -
##### in the terminal:  rails g model Music song:string artist:string
##### is what made it possible for me to manually type "resources :musics" above,
##### and then have all the routes automatically made for me
##### "rake routes" in the terminal allows me to check if they were
##### sucessfully created.

##### Line 3 -
##### I added this because I wanted it to go directly to the "thelist.html.erb"
##### view when you load localhost:3000 in the browser.  "thelist.html.erb"
##### is another view I added in addition to the other normal views, and I had
##### to define in the "musics_controller.rb" in the same way that I defined
##### the index - see the controller for more details.
