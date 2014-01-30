# -*- encoding: utf-8 -*-
module TorqueBox
  # Main module for TorqueBox::Mailer
  module Mailer
    def self.hook_rails!
      if defined?(::ActionMailer)
        ::ActionMailer::Base.extend TorqueBox::Mailer::Extensions::ActionMailer
      end
    end

    # Initializer for TorqueBox::Mailer to hook into ActionMailer/Rails
    class Rails < ::Rails::Engine
      initializer 'torquebox-mailer' do
        TorqueBox::Mailer.hook_rails!
      end
    end if defined?(::Rails)
  end
end
