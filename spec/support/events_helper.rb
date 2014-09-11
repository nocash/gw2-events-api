require "yaml"

module EventsHelper
  FILE_PATH = "data/events.yml"

  def events
    @events ||= YAML.load(events_file)
  end

  def events_file
    @events_file ||= File.open(FILE_PATH)
  end
end
