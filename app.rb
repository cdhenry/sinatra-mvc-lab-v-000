require_relative 'config/environment'

class App < Sinatra::Base
  get '/user_input' do
    erb :user_input
  end

  post '/piglatinized' do
    @text = PigLatinizer.new(:user_text)

    erb :piglatinized
  end
end
