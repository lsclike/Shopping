module ErrorHandle
  class Handlers
    class << self
      def raise_common_error(condition, message)
        condition.tap do |c|
          raise CommonError, message unless c
        end
      end
    end
  end
end