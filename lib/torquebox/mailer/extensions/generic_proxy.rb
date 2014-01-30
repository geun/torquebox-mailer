# -*- encoding: utf-8 -*-
module TorqueBox
  module Mailer
    module Extensions
      # A lightweight and generic proxy class that is easily serializable
      class Proxy < BasicObject
        def initialize(performable, target, options = {})
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
