class App < Sinatra::Base
    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]
        @team_members = params[:team][:members]
        @hero_name = []
        @hero_power = []
        @hero_bio = []

        @team_members.each do |info|
            @hero_name << info[:name]
            @hero_power << info[:power]
            @hero_bio << info[:bio]
        end
        erb :team
    end



end