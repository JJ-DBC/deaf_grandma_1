get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end


post '/grandma' do
  if params[:user_input] == params[:user_input].upcase
    @grandma = "Oh yaaa 1964 was a helluva year"
  else 
    @grandma = "Speak up, kiddo!"
  end
  redirect to("/?grandma=#{@grandma}")
end
