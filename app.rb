require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/translated' do
    @translation = PigLatinizer.new.piglatinize(params[:user_phrase])
    erb :translated
  end

end
