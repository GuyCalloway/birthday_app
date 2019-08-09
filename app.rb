require 'sinatra'
require_relative './lib/calculator'

class Birthday < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/input' do
    session[:birthday] = params[:birthday]
    session[:player] = params[:player]
    redirect '/birthday'
  end

  get '/birthday' do
     @player = session[:player]
     @birthday = session[:birthday]
     @date = Time.now
     @date1 = "#{sprintf('%02i',@date.month)}-#{sprintf('%02i',@date.day)}"
     if @date1 == @birthday.to_s[5...10]
       erb :birthday_page
     else
       @days = count_day(@birthday)
       erb :birthday
     end
  end



end
