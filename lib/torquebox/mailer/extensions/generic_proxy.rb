module TorqueBox
  module Mailer
    module Extensions
      class Proxy < BasicObject
        def initialize(performable, target, options={})
          @performable = performable
          @target = target
          @opts = options
        end

        def method_missing(name, *args)
          @performable.perform(@target, name, *args)
        end
      end
    end
  end
end