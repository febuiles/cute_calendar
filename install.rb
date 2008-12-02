require 'fileutils'
css_path = File.join(RAILS_ROOT, "public", "stylesheets", "calendar")
img_path = File.join(RAILS_ROOT, "public", "images", "calendar")

FileUtils.mkdir_p css_path
FileUtils.mkdir_p img_path

FileUtils.cp 
