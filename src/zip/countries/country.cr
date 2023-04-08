module Zip
  module Countries
    abstract struct Country
      abstract def address_definitions : String
      abstract def find(code : String) : Models::Address?
      abstract def find!(code : String) : Models::Address
    end
  end
end
