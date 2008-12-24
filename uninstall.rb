require 'fileutils'

css_path = File.join(RAILS_ROOT, "public", "stylesheets", "calendar")
js_path  = File.join(RAILS_ROOT, "public", "javascripts", "calendar")
img_path = File.join(RAILS_ROOT, "public", "images", "calendar")
generators_path = File.join(RAILS_ROOT, "lib", "generators")

FileUtils.rm_rf css_path
FileUtils.rm_rf js_path
FileUtils.rm_rf img_path
FileUtils.rm(File.join(generators_path, "events_generator.rb"))

