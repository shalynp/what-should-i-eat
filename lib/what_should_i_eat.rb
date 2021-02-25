# frozen_string_literal: true

require "what_should_i_eat/printing"
require "http"
require 'json'

require_relative "what_should_i_eat/version"

module WhatShouldIEat
  def self.pick

  result = HTTP.get('https://www.edamam.com/search?type=Feeds').to_s
  recipes = JSON.parse(result)

  name = recipes.first['items'].first['label']
  url =  recipes.first['items'].first['url']

  print "Dinner Tonight: #{name}\n#{url}"

  Printing.print name, url

  end
end

  # Let’s make a to-do list for our gem:
  # Bundle the gem
  # Make an HTTP GET request
  # Parse the returned text as JSON and save it into a variable
  # Pick out a recipe from the variable
  # Print that recipe to the screen
