module ApplicationHelper

	def has_image_login(provider)
		providers = [:google_oauth2, :twitter]
		providers.each do |registered|
			if registered == provider
				return true
			end
		end
		false
	end

	def login_image(provider)
		if provider == :google_oauth2
			return "google_button"
		elsif provider == :twitter
			return "twitter_logo"
		end
	end

end
