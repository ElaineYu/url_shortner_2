
#Homepage Display
get '/' do
  # let user create new short URL, display a list of shortened URLs
  @all_urls = Url.all

  erb :index
end


# Create urls
post '/urls' do


  #Save original link to object
  @original_long_url = params[:original_long_url]

  #Get a new short url
  @shortened_url = Url.create_url

  #Creat new url object and save to database
  @new_url_object = Url.new
  @new_url_object.original_long_url = @original_long_url
  @new_url_object.shortened_url = @shortened_url
  @new_url_object.click_count = 0
  @new_url_object.save

  erb :shortened_urls
end


# e.g., /q6bda
get '/:short_url' do
  # redirect to appropriate "long" URL

  @url = Url.find(params[:short_url])
  
  erb :long_url
end
