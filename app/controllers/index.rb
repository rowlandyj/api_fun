get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do
  username = params[:username]
  redirect "/#{username}"
end

get '/:username' do
  @user = params[:username]
  @git = Github.repos.list user: @user
  erb :user_page
end
