require "../address"

module Zip
  module Models
    module UnitedStates
      struct Address < Address
        @[YAML::Field(key: ":state_code")]
        property state_code : String

        @[YAML::Field(key: ":state_name")]
        property state_name : String

        @[YAML::Field(key: ":city")]
        property city : String

        @[YAML::Field(key: ":time_zone")]
        property time_zone : String
      end
    end
  end
end
