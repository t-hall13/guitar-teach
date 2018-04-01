# -*- encoding: utf-8 -*-
# stub: bootstrap-modal-rails 2.2.5 ruby lib

Gem::Specification.new do |s|
  s.name = "bootstrap-modal-rails"
  s.version = "2.2.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Vicente Reig"]
  s.date = "2014-04-29"
  s.description = "Rails gemified bootstrap-modal extension"
  s.email = ["vicente.reig@gmail.com"]
  s.homepage = "http://github.com/vicentereig/bootstrap-modal-rails"
  s.rubygems_version = "2.5.1"
  s.summary = "Rails gemified bootstrap-modal extension by Jordan Schroter."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 3.1"])
    else
      s.add_dependency(%q<railties>, [">= 3.1"])
    end
  else
    s.add_dependency(%q<railties>, [">= 3.1"])
  end
end
