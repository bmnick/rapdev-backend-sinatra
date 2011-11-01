require 'sinatra/base'
require 'haml'
require 'sass'
require File.expand_path(File.join(File.dirname(__FILE__), "game"))

class RapDevBackend < Sinatra::Base
  configure do
    set :root, File.join(File.dirname(__FILE__), '..')
    set :views, Proc.new { File.join(root, "views") }
    set :public_folder, Proc.new { File.join(root, "public") }
    
    set :haml, :format => :html5
    
    GAME = Game.new
  end
  
  get '/' do
    @board = GAME.board
    @winning = GAME.win?
    haml :index
  end
  
  post '/move' do
    x = params[:x_pos].to_i
    y = params[:y_pos].to_i
    c = params[:character]
    
    GAME.make_move c, x, y
    
    redirect '/', 301
  end
  
  get '/style.css' do
		sass :style
	end
end