require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:

  get '/goodbye/:name' do
    status = 200
    @name = params[:name]
    erb :goodbye
  end

  get '/multiply/:num1/:num2' do
    status = 200
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    #binding.pry
    @num = @num1 * @num2
    erb :multiply
  end

end