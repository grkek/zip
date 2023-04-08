require "yaml"

module Zip
  module Models
    abstract struct Address
      include YAML::Serializable
    end
  end
end
