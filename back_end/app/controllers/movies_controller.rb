
class MoviesController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        movies = Movie.all;
        render json: movies; 
    end

    def create
        movie = Movie.find_by(movie_title:params[:movie][:title]) 
        type = params[:movie][:type] == "thumbs_up" ? "thumbs_up" : "thumbs_down"
        # binding.pry 
        if movie == nil
            if type == "thumbs_up"
           movie =  Movie.create(movie_title:params[:movie][:title], thumbs_up: 1)
            elsif type == "thumbs_down"
           movie = Movie.create(movie_title:params[:movie][:title], thumbs_down: 1)
            end
        elsif movie != nil
          if type == "thumbs_up"
            valid_num = movie.thumbs_down > 0 ? movie.thumbs_down -=1 : 0;
            movie.update(thumbs_up: movie.thumbs_up +=1, thumbs_down: valid_num)
          elsif type == "thumbs_down"
            valid_num = movie.thumbs_up > 0 ? movie.thumbs_up -=1 : 0; 
            movie.update(thumbs_down: movie.thumbs_down+=1, thumbs_up: valid_num)
          end 
        end
        render json: movie
    end
    
    end



