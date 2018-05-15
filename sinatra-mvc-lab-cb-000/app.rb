require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    text = PigLatinizer.new
    @user_phrase = text.piglatinize(params[:user_text])

    erb :piglatinize
  end

end
