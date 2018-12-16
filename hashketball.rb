# Write your code here!
require "pry"

def game_hash
 game_hash = {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black","White"],  
    :players => {
      "Alan Anderson" => {
        :number => 0,  
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1 
      }, 
      "Reggie Evans" => {
        :number => 30,  
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7 
      }, 
      "Brook Lopez" => {
        :number => 11,  
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15 
      }, 
      "Mason Plumlee" => {
        :number => 1,  
        :shoe => 19,
        :points => 26,
        :rebounds => 12,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5 
      }, 
      "Jason Terry" => {
        :number => 31,  
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1
      }
    }
  },
  
  :away => {
    :team_name => "Charlotte Hornets",
    :colors  => ["Turquoise", "Purple"],
    :players => {
      "Jeff Adrien" => {
        :number => 4, 
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2 
      },
      "Bismak Biyombo" => {
        :number => 0, 
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 7,
        :blocks => 15,
        :slam_dunks => 10 
      },
      "DeSagna Diop" => {
        :number => 2, 
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5 
      },
      "Ben Gordon" => {
        :number => 8, 
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0
      },
      "Brendan Haywood" => {
        :number => 33, 
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 22,
        :blocks => 5,
        :slam_dunks => 12 
      }
    }
  }
  }
end


# def num_points_scored(name)
#   updated_score = []
#   game_hash.each do |key, value|
#     value.each do |attribute, data|
#       binding.pry
#       if attribute == :players
#         data.each do |person, item|
#           if person == name
#           item.each do |data, score|
#           if data == :points
#             updated_score << score
#           end 
#         end
#       end
#     end
#   end
# end
# end
# updated_score.join.to_i
# end

# def shoe_size(name)
#   shoe_num = []
#   game_hash.each do |key, value|
#     value.each do |attribute, data|
#       if attribute == :players
#         data.each do |element, item|
#         if element == name 
#           item.each do |el, number|
#             if el == :shoe 
#               shoe_num << number
#             end
#           end
#         end
#       end
#     end
#   end
#   end
# shoe_num.join.to_i
# end
 
# def team_colors(team)
#   home_items = game_hash[:home]
#   away_items = game_hash[:away]

#   if team == home_items[:team_name] 
#     home_items[:colors]
#   elsif team == away_items[:team_name]
#     away_items[:colors]       
#   end
# end
 
# def team_names
#   both_teams = [] 
#     both_teams << game_hash[:home][:team_name]
#     both_teams << game_hash[:away][:team_name]
#   both_teams
# end

# def player_numbers(team)
#   jersey_number = []
#     if team == game_hash[:home][:team_name]
#       game_hash[:home][:players].each do |key, value|
#         value.each do |attribute, data|    
#         jersey_number << data if attribute == :number
#         end
#       end
#     elsif team == game_hash[:away][:team_name]
#       game_hash[:away][:players].each do |key, value|
#         value.each do |attribute, data|    
#         jersey_number << data if attribute == :number
#         end
#       end
#     end
  
#   jersey_number   
# end

# def player_stats(name)
#   game_hash.each do |key,value|
#     value.each do |attribute, data|
#       if attribute == :players
#         data.each do |player, stats|
#         if player == name
#         return stats
#         end
#         end
#       end
#     end
#   end
# end 

# def big_shoe_rebounds
# shoe_size = []
#   game_hash.each do |key,value|
#     value.each do |attribute, data|
#       if attribute == :players
#       data.each do |player, stats|
#       stats.each do |item, num|
#         if item == :shoe     
#           shoe_size << num
#         end
#       end
#       end
#       end
#     end
#   end  
#   biggest = shoe_size.max

#   def find_player(biggest)
#     name = []
#     game_hash.each do |key,value|
#       value.each do |attribute, data|
#         if attribute == :players
#         data.each do |player, stats|
#           stats.each do |item, num|
#           if item == :shoe  && num == biggest
#             name << player
#           end
#           end
#           player_name = name.join
#           if player == player_name
#             stats.each do |k, v|
#               if k == :rebounds
#                 return v
#               end
#             end
#         end
#         end
#         end
#       end
#   end
#   end
#   find_player(biggest)
# end


#Refactor
def num_points_scored(name)
  result = nil
  game_hash.each do |base, team_data|
    team_data.each do |data,info|
      if data == :players 
        info.each do |player, player_data|
          if player == name
            player_data.each do |attribute, number|
              result = number if attribute == :points
            end
          end
        end
      end
    end
  end
  result
end 


def shoe_size(name)
  result = nil
  game_hash.each do |base, team_data|
    team_data.each do |data,info|
      if data == :players 
        info.each do |player, player_data|
          if player == name
            player_data.each do |attribute, number|
              result = number if attribute == :shoe
            end
          end
        end
      end
    end
  end
  result
end


def team_colors(team)
  game_hash.map do |base, team_data|
    if team_data[:team_name] == team
      team_data[:colors]
    end
  end.compact.flatten
end


def team_names
  team_array = []
    team_array << game_hash[:home][:team_name]
    team_array <<  game_hash[:away][:team_name]
end


def player_numbers(team)
  number = []
  game_hash.each do  |base, team_data|
    if team_data[:team_name] == team 
      team_data[:players].each do |player, data|
        number << data[:number]
      end
    end
  end
  number
end


def player_stats(name)
  game_hash.each do |base, team_data|
    team_data[:players].each do |player, data|
      if player == name
        return data
      end
    end
  end
end

def big_shoe_rebounds
  shoe_size = []
  rebound_arr = []
  game_hash.each do |base, team_data|
    team_data.each do |data,info|
      if data == :players
        info.each do |player, details|
           shoe_size << details[:shoe]
           rebound_arr << details[:rebounds]
        end
      end
    end
  end
  index = shoe_size.index(shoe_size.max)
  rebound_arr[index]
end


#Bonus
def most_points_scored
  points_arr = []
  players_arr = []
  game_hash.each do |base, team_data|
    team_data.each do |data,info|
      if data == :players
        info.each do |player, details|
           points_arr << details[:points]
           players_arr << player
        end
      end
    end
  end
  index = points_arr.index(points_arr.max)
  players_arr[index]
end

def winning_team
  home_score = []
  away_score = []
  game_hash.each do |base, team_data|
    team_data.each do |data,info|
      if data == :players
        info.each do |player, details|
           home_score << details[:points] if base == :home
           away_score << details[:points] if base == :away
        end
      end
    end
  end
  
  #calcurate scores each team
  def calc(score_arr)
    score_arr.inject {|sum, num| sum += num}
  end
 
  if calc(home_score) > calc(away_score)
    game_hash[:home][:team_name]
  else
    game_hash[:away][:team_name]
  end
end

def player_with_longest_name
  name_length = []
  player_arr = []
  game_hash.each do |base, team_data|
    team_data.each do |data,info|
      if data == :players
        info.each do |player, details|
           name_length << player.length
           player_arr << player
        end
      end
    end
  end
  index = name_length.index(name_length.max)
  player_arr[index]
end

#Super Bonus
def long_name_steals_a_ton?
  steals_arr = []
  player_arr = []
  game_hash.each do |base, team_data|
    team_data.each do |data,info|
      if data == :players
        info.each do |player, details|
           steals_arr << details[:steals]  
           player_arr << player 
        end
      end
    end
  end
  index = player_arr.index(player_with_longest_name)
  if steals_arr.max == steals_arr[index]
    true
  else 
    false
  end
end





      









