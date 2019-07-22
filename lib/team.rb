class Team

    nba_teams = {
            lal:{
                team_name: "Los Angeles Lakers",
                colors: ["Purple", "Gold"],
                conference: "west",
                wins: 37,
                losses: 45,
                conference_wins: 25,
                conference_losses: 27,
                ppg: 111,
                power_ranking: 3},
            
            :hr => {
                team_name: "Houston Rockets",
                colors: ["Red", "White"],
                conference: "west",
                wins: 53,
                losses: 29,
                conference_wins: 32,
                conference_losses: 20,
                ppg: 114,
                power_ranking: 7 },
            bkn:{
                team_name: "Brookln Nets",
                colors: ["Black", "White"],
                conference: "west",
                wins: 42,
                losses: 40,
                conference_wins: 29,
                conference_losses: 23,
                ppg: 112,
                power_ranking: 10 },
            lac:{
                team_name: "Los Angeles Clippers",
                colors: ["Red", "White", "Blue"],
                conference: "west",
                wins: 48,
                losses: 34,
                conference_wins: 28,
                conference_losses: 24,
                ppg: 115,
                power_ranking: 1 }
            }

    attr_reader :team_name, :colors, :conference
    attr_accessor :team_rating

    @@all_teams = []
    @@roster = []

    def initialize(acronym, team_name, colors, conference, wins, losses, conference_wins, conference_losses, ppg, power_ranking)
        @acronym = acronym
        @team_name = team_name
        @colors = colors
        @conference = conference
        @wins = wins
        @losses = losses
        @conference_wins = conference_wins
        @conference_losses = conference_losses
        @ppg = ppg
        @power_ranking = power_ranking
        @@all_teams << self
    end

    def self.all_teams
        @@all_teams
    end

    def self.user_options    
        puts "Enter one of the following acronyms to return data."
        puts "tbc - get the teams by conference"
        puts "tbr - gets the team with the best record"
        puts "hppg - gets the team with the highest ppg"
        puts "hcr - gets the team with best conference record"
        puts "bl - team with the most losses"
        puts "pr - teams by 2020 power rankings" 
        user_input_uo = gets.chomp
            if user_input_uo == 'tbc'
                team_by_conference
            elsif user_input_uo == 'tbr'
                team_with_best_record
            elsif user_input_uo == 'hppg'
                team_with_highest_ppg
            elsif user_input_uo == 'hcr'
                best_conference_team
            elsif user_input_uo == 'bl'
                biggest_loser
            elsif user_input_uo == 'pr'
                power_rankings
            else
                "please enter one of the options above"
            end
    end

    def self.team_by_conference
        puts "type e for east, w for west: "
        user_input_tbc = gets.chomp
            if user_input_tbc == "e"
                Team.all_teams.select {|i| i.conference == "east"}
            elsif user_input_tbc == "w"
                Team.all_teams.select {|i| i.conference == "west"}
            else
                puts "please enter e or w"
            end
    end

    def team_name
        @team_name
    end

    def wins
        @wins
    end

    def ppg
        @ppg
    end

    def conference_wins
        @conference_wins
    end

    def losses
        @losses
    end

    def power_ranking   
        @power_ranking
    end

    def self.team_with_best_record
        Team.all_teams.max_by {|i| i.wins}.team_name
    end

    def self.team_with_highest_ppg
        Team.all_teams.max_by {|i| i.ppg}.team_name
    end

    def self.best_conference_team
        Team.all_teams.max_by {|i| i.conference_wins}.team_name
    end

    def self.biggest_loser
        Team.all_teams.max_by {|i| i.losses}.team_name
    end

    def self.power_rankings
        Team.all_teams.sort_by {|i| i.power_ranking}.map{|i| i.team_name}
    end
  



    
end