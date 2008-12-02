class CalendarGenerator < Rails::Generator::Base  

  def manifest
    record do |m|
      calendar_themes_dir = "public/stylesheets/calendar"
      m.directory calendar_themes_dir

      # Copy calendar styleshees
      %w(red blue grey).each do |dir|
        m.directory File.join(calendar_themes_dir, dir)
        m.file File.join("#{dir}/style.css"), File.join(calendar_themes_dir, "#{dir}/style.css")
      end
    end
  end
end
