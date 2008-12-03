require 'fileutils'

# copy assets
css_path = File.join(RAILS_ROOT, "public", "stylesheets", "calendar")
js_path  = File.join(RAILS_ROOT, "public", "javascripts", "calendar")
img_path = File.join(RAILS_ROOT, "public", "images", "calendar")

assets_path = File.join(File.dirname(__FILE__), "lib", "assets")

FileUtils.mkdir_p css_path
FileUtils.mkdir_p img_path
FileUtils.mkdir_p js_path

FileUtils.cp(File.join(assets_path, "javascripts", "facebox.js"), js_path)

%w(red.css blue.css grey.css facebox.css).each do |stylesheet|
  FileUtils.cp(File.join(assets_path, "stylesheets", stylesheet), css_path)
end

Dir[assets_path + "/images/*"].each do |image|
  FileUtils.cp(image, img_path)
end

# create a new Event model with its migration
# TODO: This should use a generator or something
`cd #{RAILS_ROOT} && ruby script/generate model -s --skip-fixture Event title:string description:text date:datetime`
