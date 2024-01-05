// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import '@hotwired/turbo-rails'
import 'bootstrap'
import 'controllers'
import "popper"
import 'cocoon'
require('jquery')
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
//= require jquery
//= require rails-ujs
//= require_tree .
// Add this line to include Cocoon JavaScript
require("cocoon-js")





