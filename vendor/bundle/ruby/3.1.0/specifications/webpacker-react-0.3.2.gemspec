# -*- encoding: utf-8 -*-
# stub: webpacker-react 0.3.2 ruby lib

Gem::Specification.new do |s|
  s.name = "webpacker-react".freeze
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Renaud Chaput".freeze]
  s.bindir = "exe".freeze
  s.date = "2017-09-12"
  s.email = ["renchap@gmail.com".freeze]
  s.homepage = "https://github.com/renchap/webpacker-react".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "3.3.7".freeze
  s.summary = "Provides React integration for Webpacker".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<webpacker>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.13"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_development_dependency(%q<capybara>.freeze, [">= 0"])
    s.add_development_dependency(%q<poltergeist>.freeze, [">= 0"])
  else
    s.add_dependency(%q<webpacker>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.13"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_dependency(%q<capybara>.freeze, [">= 0"])
    s.add_dependency(%q<poltergeist>.freeze, [">= 0"])
  end
end
