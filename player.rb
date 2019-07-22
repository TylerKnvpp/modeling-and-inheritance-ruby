class Player

    @@all_players = []

    def initialize(number, name, height, position, rating, ppg, team)
        @number = number
        @name = name
        @height = height
        @position = position
        @rating = rating
        @ppg = ppg
        @team = team
        @@all_players << self
    end

    def self.all_players
        @@all_players
    end

    def name
        @name
    end

    def rating
        @rating
    end

    def height
        @height
    end

    def team 
        @team
    end


    def self.user_options
        puts "Enter one of the following to return data: "
        puts "fpn - to find player by name"
        puts "hrp - to return the highest rated player"
        puts "tp - to return the tallest player"
        puts "bsf - to return the best starting five roster combining all players"
        puts "pbt - to return players by selected team"

    end

    def self.find_player_by_name
        puts "Enter player's name: "
        user_input_pbn = gets.chomp
        Player.all_players.select {|i| i.name == user_input_pbn}
    end


    #star player
    def self.highest_rated_player
        Player.all_players.max_by {|i| i.rating}.name
    end

    #tallest player
    def self.tallest_player
        Player.all_players.max_by{|i| i.height}.name
    end

    #best starting 5
    def self.best_starting_five
        Player.all_players.max_by(5){|i| i.rating}.map{|i| i.name}
    end

    #find players by team
    def self.players_by_team
        puts "Enter one of the following acronyms to return a list of players by team: "
        puts "lal - Los Angeles Lakers"
        puts "hr - Houston Rockets"
        user_input_st = gets.chomp
        #needs a conditional
            Player.all_players.find_all {|i|i.team == user_input_st}
    end

    #sorted list of highest rated players by team
    def self.rated_list_by_team
        results = players_by_team.sort_by{|i| i.rating}.reverse
        results.map{|i| i.name}
    end

end

