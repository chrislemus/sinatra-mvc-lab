require_relative 'config/environment'
# require_relative 'models/piglatinize.rb'

class App < Sinatra::Base
  get('/') {
    erb :user_input
  }

  post('/piglatinize') {
    p = PigLatinizer.new
    @piglatinized = p.piglatinize(params['user_phrase'])
    erb :piglatinized
  }
  
end