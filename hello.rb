require 'rubygems'
require 'ramaze'

class MainController < Ramaze::Controller
	def index
		'Hello, world'
	end
end

port = `ps ux | grep #{$$}`.match(/\-p (\d+)/)[1]
Ramaze.start :adapter => :thin, :port => port
