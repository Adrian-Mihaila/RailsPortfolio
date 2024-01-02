require "x"
require 'net/http'
require 'uri'
require 'json'

module SocialTool
  def self.twitter_search
    x_credentials = {
      api_key:             ENV.fetch("TWITTER_CONSUMER_KEY"),
      api_key_secret:      ENV.fetch("TWITTER_CONSUMER_SECRET"),
      access_token:        ENV.fetch("TWITTER_ACCESS_TOKEN"),
      access_token_secret: ENV.fetch("TWITTER_ACCESS_SECRET"),
      bearer_token:        ENV.fetch("TWITTER_BEARER_TOKEN"),
    }

    begin
      x_client = X::Client.new(**x_credentials)

      search_query = "#coding"

      uri = URI.parse("https://api.twitter.com/2/tweets/search/recent?query=#{URI.encode_www_form_component(search_query)}&max_results=6")
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true

      request = Net::HTTP::Get.new(uri)
      request["Authorization"] = "Bearer #{x_client.bearer_token}"

      response = http.request(request)
      parsed_response = JSON.parse(response.body)

    rescue X::Forbidden => e
      puts "Forbidden Error: #{e.message}"
    rescue StandardError => e
      puts "Error: #{e.message}"
    end
  end
end
