require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @hero1 = Hero.new(params[:team][:members])
      @hero2 = Hero.new(params[:team][:members])
      @hero3 = Hero.new(params[:team][:members])

      erb :team
    end

end
