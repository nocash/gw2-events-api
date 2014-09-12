require "yaml"

class Event
  def self.all
    new.all
  end

  def all
    @events ||= load_events
  end

  private

  def load_events
    filepath = File.expand_path("../../../data/events.yml", __FILE__)
    yaml_file = File.open(filepath)
    YAML.load(yaml_file)
  end
end
