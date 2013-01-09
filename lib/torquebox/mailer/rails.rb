module TorqueBox
  module Mailer
    def self.hook_rails!
      if defined?(::ActionMailer)
        ::ActionMailer::Base.extend(TorqueBox::Mailer::Extensions::ActionMailer)
      end
    end

    class Rails < ::Rails::Engine
      initializer 'torquebox-mailer' do
        TorqueBox::Mailer.hook_rails!
      end
    end if defined?(::Rails)
  end
end