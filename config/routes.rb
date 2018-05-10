Rails.application.routes.draw do
  namespace :api do
    get '/my_name' => 'names#name_in_caps'
    get '/a_name' => 'names#a_game'
    get '/string_guessing' => 'names#string_guessing'
    get '/url_string_guessing/:guess' => 'names#url_segment'
  end
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
end
