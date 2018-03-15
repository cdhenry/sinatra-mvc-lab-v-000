require_relative 'config/environment'

class App < Sinatra::Base
  get '/user_input' do
    erb :user_input
  end

  post '/piglatinized' do
    @piglatinized_text = PigLatinizer.new.piglatinize(:user_input)

    erb :piglatinized
  end
end
