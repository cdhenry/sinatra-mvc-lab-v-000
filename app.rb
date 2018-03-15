require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinized' do
    @piglatinized_text = PigLatinizer.new.piglatinize(:user_phrase)

    erb :piglatinized
  end
end
