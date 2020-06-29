require_relative "./star_trek/version"
require_relative "./star_trek/cli"
require_relative "./star_trek/series"
require_relative "./star_trek/apiget"
require_relative "./star_trek/seasons"
require_relative "./star_trek/episodes"

require 'pry'
require 'rest-client'
require 'json'

module StarTrek
  class Error < StandardError; end
  # Your code goes here...
end
