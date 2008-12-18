require 'fileutils'

css_path = File.join(RAILS_ROOT, "public", "stylesheets", "calendar")
js_path  = File.join(RAILS_ROOT, "public", "javascripts", "calendar")
img_path = File.join(RAILS_ROOT, "public", "images", "calendar")
partials_path = File.join(RAILS_ROOT, "app", "views", "shared")
generators_path = File.join(RAILS_ROOT, "lib", "generators")

assets_path = File.join(File.dirname(__FILE__), "lib", "assets")
templates_path = File.join(File.dirname(__FILE__), "generators")

# create all the required directories if they don't exist
FileUtils.mkdir_p css_path
FileUtils.mkdir_p img_path
FileUtils.mkdir_p js_path
FileUtils.mkdir_p partials_path
FileUtils.mkdir_p generators_path

# copy all the assets
FileUtils.cp(File.join(assets_path, "javascripts", "jquery.js"), js_path)
FileUtils.cp(File.join(assets_path, "javascripts", "facebox.js"), js_path)
FileUtils.cp(File.join(assets_path, "partials", "_calendar.html.erb"), partials_path)
%w(red.css blue.css grey.css facebox.css).each do |stylesheet|
  FileUtils.cp(File.join(assets_path, "stylesheets", stylesheet), css_path)
end
Dir[assets_path + "/images/*"].each do |image|
  FileUtils.cp(image, img_path)
end

# copy the generator
FileUtils.cp(File.join(templates_path, "events", "events_generator.rb"), generators_path)
