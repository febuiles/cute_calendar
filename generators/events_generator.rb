class EventsGenerator < Rails::Generator::Base
  def manifest
    record do |m|

      m.file "models/event.rb", "app/models/event.rb"
      m.migration_template "migrate/create_events.rb", "db/migrate"

      m.readme "INSTALL"
    end
  end

  def file_name
    "create_events"
  end

end
