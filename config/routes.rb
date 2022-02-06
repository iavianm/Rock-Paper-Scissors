Rails.application.routes.draw do
  root 'games#show'
  put 'choice' => 'games#result'
end
