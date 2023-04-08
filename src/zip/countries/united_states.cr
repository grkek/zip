require "log"

module Zip
  module Countries
    struct UnitedStates < Country
      def address_definitions : String
        "#{__DIR__}/../data/US.yml"
      end

      def find(code : String) : Models::UnitedStates::Address?
        Models::UnitedStates::Address.from_yaml(YAML.parse(File.read(address_definitions))[code].to_yaml)
      rescue exception
        Log.error(exception: exception) { "An error occured during code lookup" }

        nil
      end

      def find!(code : String) : Models::UnitedStates::Address
        Models::UnitedStates::Address.from_yaml(YAML.parse(File.read(address_definitions))[code].to_yaml)
      end
    end
  end
end
