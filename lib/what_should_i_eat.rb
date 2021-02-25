# frozen_string_literal: true
require "nokogiri"
require "open_uri"

require_relative "what_should_i_eat/version"

module WhatShouldIEat
  class RecipeChooser

    doc = Nokogiri::HTML(URI.open('https://www.edamam.com/search?type=Feeds'))

    search = doc.css(".label")
    puts search

    # list = doc.css(".ingredient")
    # list.each do |n|
    #   puts n.inner_html
    end

  end
