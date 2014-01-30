# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'torquebox/mailer/version'

Gem::Specification.new do |gem|
  gem.name          = "torquebox-mailer"
  gem.version       = Torquebox::Mailer::VERSION
  gem.authors       = ["Morton Jonuschat"]
  gem.email         = ["m.jonuschat@mojocode.de"]
  gem.description   = %q{Easily send email in the background using TorqueBox Backgroundable and ActionMailer}
  gem.summary       = %q{Async mail delivery for ActionMailer in TorqueBox}
  gem.homepage      = "https://github.com/yabawock/torquebox-mailer"
  gem.license       = "LGPL-3.0"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "torquebox-messaging", ">= 2.3.2"
  gem.add_dependency "actionmailer",        ">= 3.0.0"
end