# -*- encoding: utf-8 -*-
require 'torquebox/mailer/extensions/generic_proxy'

module TorqueBox
  module Mailer
    module Extensions
      # Torquebox Processor that performs the background sending
      # Should only be used by the public Torquebox::Mailer API
      class DelayedMailer
        include TorqueBox::Messaging::Backgroundable
        always_background :perform

        def self.perform(target, method_name, *args)
          msg = target.send(method_name, *args)
          msg.deliver if msg && (msg.to || msg.cc || msg.bcc) && msg.from
        end
      end

      # Extension module for ActionMailer that holds the public API
      module ActionMailer
        def delay(options = {})
          Proxy.new(DelayedMailer, self, options)
        end
      end
    end
  end
end
