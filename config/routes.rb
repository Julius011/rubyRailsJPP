Rails.application.routes.draw do
  root to: "main#index"
  get "main/index", to: "main#index"
  post "main/save", to: "main#save"
  delete "main/erase_history", to: "main#erase_history"
  post 'trigger_texting_task', to: 'main#trigger_texting_task'
end