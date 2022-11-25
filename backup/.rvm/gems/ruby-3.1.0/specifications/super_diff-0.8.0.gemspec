# -*- encoding: utf-8 -*-
# stub: super_diff 0.8.0 ruby lib

Gem::Specification.new do |s|
  s.name = "super_diff".freeze
  s.version = "0.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Elliot Winkler".freeze]
  s.date = "2021-05-14"
  s.description = "SuperDiff is a gem that hooks into RSpec to intelligently display the\ndifferences between two data structures of any type.\n".freeze
  s.email = ["elliot.winkler@gmail.com".freeze]
  s.homepage = "https://github.com/mcmire/super_diff".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new([">= 2.4".freeze, "< 4".freeze])
  s.rubygems_version = "3.3.3".freeze
  s.summary = "A better way to view differences between complex data structures in RSpec.".freeze

  s.installed_by_version = "3.3.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<attr_extras>.freeze, [">= 6.2.4"])
    s.add_runtime_dependency(%q<diff-lcs>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<patience_diff>.freeze, [">= 0"])
  else
    s.add_dependency(%q<attr_extras>.freeze, [">= 6.2.4"])
    s.add_dependency(%q<diff-lcs>.freeze, [">= 0"])
    s.add_dependency(%q<patience_diff>.freeze, [">= 0"])
  end
end
