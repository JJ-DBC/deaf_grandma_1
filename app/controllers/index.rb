get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end



post '/grandma' do
  if params[:user_input] == params[:user_input].upcase
    proceed with convo
  else 
    "Sorry sonny can't hear you"
  erb :index
end

# post '/grandma/:user_input' do
#   erb :index
# end  
