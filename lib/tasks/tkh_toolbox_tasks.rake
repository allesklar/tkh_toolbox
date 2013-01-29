namespace :tkh_toolbox do
  
  desc "Create locale files"
  task :setup do
    system 'rails g tkh_toolbox:create_or_update_locales -f'
  end
  
  desc "Update locale files"
  task :update do
    system 'rails g tkh_toolbox:create_or_update_locales -f'
  end
end