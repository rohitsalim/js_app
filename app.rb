require "sinatra"
require "koala"

FACEBOOK_SCOPE = 'user_likes,user_photos,user_photo_video_tags'

unless ENV["FACEBOOK_APP_ID"] && ENV["FACEBOOK_SECRET"]
	abort("missing env vars: please set FACEBOOK_APP_ID and FACEBOOK_SECRET with your app credentials")
end

# Scope defines what permissions that we are asking

get "/" do
	@app_id = ENV["FACEBOOK_APP_ID"]
	erb :jssdkouth2
end