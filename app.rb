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

  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/multiply/:num1/:num2' do
    # Accepts two params(num1 and num2)
    # Returns the product of the two nums
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    @product = @num1 * @num2
    # It is not hard coded 
    "#{@product}"
  end

  # Code your final two routes here:

end
