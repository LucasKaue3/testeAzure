require 'httparty'
require 'pry'
require 'cucumber'
require_relative 'data.rb'

$env = (ENV['ENV'] || 'qa')

$viacep_url = {
  'qa' => 'http://viacep.com.br/ws/'
}

World(DataLoad)
