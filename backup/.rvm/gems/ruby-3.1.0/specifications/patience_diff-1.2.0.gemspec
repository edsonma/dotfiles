# -*- encoding: utf-8 -*-
# stub: patience_diff 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "patience_diff".freeze
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "homepage_uri" => "http://github.com/watt/ruby_patience_diff" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Andrew Watt".freeze]
  s.date = "2021-02-28"
  s.description = "A Ruby implementation of the Patience diff algorithm.\n\nPatience Diff creates more readable diffs than other algorithms in some cases, particularly when much of the content has changed between the documents being compared. There's a great explanation and example [here][example].\n\nPatience diff was originally written by Bram Cohen and is used in the [Bazaar][bazaar] version control system. This version is loosely based off the Python implementation in Bazaar.\n\n[example]: http://alfedenzo.livejournal.com/170301.html\n[bazaar]: http://bazaar.canonical.com/".freeze
  s.email = ["andrew@wattornot.com".freeze]
  s.executables = ["patience_diff".freeze]
  s.extra_rdoc_files = ["History.txt".freeze, "Manifest.txt".freeze, "README.md".freeze]
  s.files = ["History.txt".freeze, "Manifest.txt".freeze, "README.md".freeze, "bin/patience_diff".freeze]
  s.homepage = "http://github.com/watt/ruby_patience_diff".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--main".freeze, "README.md".freeze]
  s.rubygems_version = "3.3.3".freeze
  s.summary = "A Ruby implementation of the Patience diff algorithm".freeze

  s.installed_by_version = "3.3.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<optimist>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<rdoc>.freeze, [">= 4.0", "< 7"])
    s.add_development_dependency(%q<hoe>.freeze, ["~> 3.22"])
  else
    s.add_dependency(%q<optimist>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rdoc>.freeze, [">= 4.0", "< 7"])
    s.add_dependency(%q<hoe>.freeze, ["~> 3.22"])
  end
end
