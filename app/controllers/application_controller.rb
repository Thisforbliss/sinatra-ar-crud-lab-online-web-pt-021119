
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
  
  
  get '/articles' do
    @articles = Article.all
    erb :index
  end
  
  post '/articles' do
    @content = Article.create(title: params[:title], content: params[:content])
    binding.pry
  end
  
  
  
end
