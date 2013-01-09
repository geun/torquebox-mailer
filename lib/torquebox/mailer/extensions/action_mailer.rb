require "torquebox/mailer/extensions/generic_proxy"

module TorqueBox
  module Mailer
    module Extensions
      class DelayedMailer
        include TorqueBox::Messaging::Backgroundable
        always_background :perform

        def self.perform(target, method_name, *args)
          msg = target.send(method_name, *args)
          msg.deliver if msg && (msg.to || msg.cc || msg.bcc) && msg.from
        end
      end

      module ActionMailer
        def delay(options={})
          Proxy.new(DelayedMailer, self, options)
        end
      end
    end
  end
end