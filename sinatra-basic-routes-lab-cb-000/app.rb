require_relative 'config/environment'

class App < Sinatra::Base

  get '/name' do
    "My name is Michael Hohl"
  end

  get '/hometown' do
    "My hometown is rwc."
  end

  get '/favorite-song' do
    "My favorite song is #41 bt dmb."
  end

end
