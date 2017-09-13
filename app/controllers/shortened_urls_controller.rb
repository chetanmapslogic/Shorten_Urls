class ShortenedUrlsController < ApplicationController
	def create
		if params[:shortened_url][:url].present?
			shortUrl = ShortenedUrl.generate(params[:shortened_url][:url])
			redirect_to  short_url_path(shortUrl.unique_key)
		else
			redirect_to root_url
		end
	end

	def your_short_url	
		@uniqKey = ShortenedUrl.find_by_unique_key(params[:id])
		if @uniqKey.blank?
			redirect_to root_url
		end
	end

	def convert
		@uniqKey = ShortenedUrl.find_by_unique_key(params[:unique_key])
		if @uniqKey.present?
			# increment the count of shortened url used 
			@uniqKey.increment!(:use_count)

			# 301 redirect to the destination url
			head :moved_permanently, :location => @uniqKey.url
		else
			# if we don't find the shortened url, redirect to the root
			head :moved_permanently, :location => root_url
		end

	end
end
