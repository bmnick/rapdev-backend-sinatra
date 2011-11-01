require 'sinatra/base'
require 'haml'
require 'sass'
require File.expand_path(File.join(File.dirname(__FILE__), "game"))

class RapDevBackend < Sinatra::Base
  configure do
    set :root, File.join(File.dirname(__FILE__), '..')
    
    set :haml, :format => :html5
    
    GAMES = Array.new
  end
  
  get '/' do
    @games = GAMES
    haml :index
  end
  
  get '/new_game' do
    GAMES << Game.new(GAMES.count)
    
    redirect '/', 303
  end
  
  get '/game/:id' do |id|
    if GAMES.size > id.to_i
      game = GAMES[id.to_i]
      
      @board = game.board
      @winning = game.win?
      @game_id = game.id
      
      haml :game
    else
      GAMES.to_s
      # haml :notfound
    end
  end
  
  post '/game/:id/move' do |id|
    if GAMES.size > id.to_i
      game = GAMES[id.to_i]
      
      xpos = params[:x_pos].to_i
      ypos = params[:y_pos].to_i
      char = params[:character]
    
      game.make_move char, xpos, ypos
    
      redirect game_path(id), 303
    else
      haml :notfound
    end
  end
  
  get '/style.css' do
		sass :style
	end
	
	private
	  def game_path id
	   "/game/#{id}"
	  end
end