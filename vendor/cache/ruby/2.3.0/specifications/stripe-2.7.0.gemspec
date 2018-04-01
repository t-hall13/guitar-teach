# -*- encoding: utf-8 -*-
# stub: stripe 2.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "stripe"
  s.version = "2.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Stripe"]
  s.date = "2017-04-26"
  s.description = "Stripe is the easiest way to accept payments online.  See https://stripe.com for details."
  s.email = "support@stripe.com"
  s.executables = ["stripe-console"]
  s.files = ["bin/stripe-console"]
  s.homepage = "https://stripe.com/docs/api/ruby"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.5.1"
  s.summary = "Ruby bindings for the Stripe API"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, ["~> 0.9"])
    else
      s.add_dependency(%q<faraday>, ["~> 0.9"])
    end
  else
    s.add_dependency(%q<faraday>, ["~> 0.9"])
  end
end
