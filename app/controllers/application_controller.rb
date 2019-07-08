
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    "For the Magazine"
  
  end
  
  get '/articles/new' do
    erb :new
  end
  
  post '/articles' do
    @articles = []
    @articles << params[:article], params[:content]
    erb :index
  end
  
  
end
