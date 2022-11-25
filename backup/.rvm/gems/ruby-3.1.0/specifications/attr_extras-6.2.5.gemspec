# -*- encoding: utf-8 -*-
# stub: attr_extras 6.2.5 ruby lib

Gem::Specification.new do |s|
  s.name = "attr_extras".freeze
  s.version = "6.2.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "rubygems_mfa_required" => "true" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Henrik Nyh".freeze, "Joakim Kolsj\u00F6".freeze, "Tomas Skogberg".freeze, "Victor Arias".freeze, "Ola K".freeze]
  s.date = "2021-11-19"
  s.email = ["henrik@nyh.se".freeze]
  s.homepage = "https://github.com/barsoom/attr_extras".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.3".freeze
  s.summary = "Takes some boilerplate out of Ruby with methods like attr_initialize.".freeze

  s.installed_by_version = "3.3.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<minitest>.freeze, [">= 5"])
    s.add_development_dependency(%q<m>.freeze, ["~> 1.5.1"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  else
    s.add_dependency(%q<minitest>.freeze, [">= 5"])
    s.add_dependency(%q<m>.freeze, ["~> 1.5.1"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
