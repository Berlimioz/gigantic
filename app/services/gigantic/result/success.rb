module Gigantic
  module Result
    class Success < OpenStruct
      def success?
        true
      end
    end
  end
end

