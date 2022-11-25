baseruby="/Users/edsonma/.rbenv/shims/ruby --disable=gems"
_\
=begin
_=
ruby="${RUBY-$baseruby}"
case "$ruby" in "echo "*) $ruby; exit $?;; esac
case "$0" in /*) r=-r"$0";; *) r=-r"./$0";; esac
exec $ruby "$r" "$@"
=end
=baseruby
class Object
  remove_const :CROSS_COMPILING if defined?(CROSS_COMPILING)
  CROSS_COMPILING = RUBY_PLATFORM
  constants.grep(/^RUBY_/) {|n| remove_const n}
  RUBY_VERSION = "3.1.0"
  RUBY_RELEASE_DATE = "2021-12-25"
  RUBY_PLATFORM = "x86_64-darwin21"
  RUBY_PATCHLEVEL = 0
  RUBY_REVISION = "fb4df44d1670e9d25aef6b235a7281199a177edb"
  RUBY_COPYRIGHT = "ruby - Copyright (C) 1993-2021 Yukihiro Matsumoto"
  RUBY_ENGINE = "ruby"
  RUBY_ENGINE_VERSION = "3.1.0"
  RUBY_DESCRIPTION = RubyVM.const_defined?(:JIT) && RubyVM::MJIT.enabled? ?
    nil :
    "ruby 3.1.0p0 (2021-12-25 revision fb4df44d16) [x86_64-darwin21]"
end
builddir = File.dirname(File.expand_path(__FILE__))
srcdir = "."
top_srcdir = File.realpath(srcdir, builddir)
fake = File.join(top_srcdir, "tool/fake.rb")
eval(File.binread(fake), nil, fake)
ropt = "-r#{__FILE__}"
["RUBYOPT"].each do |flag|
  opt = ENV[flag]
  opt = opt ? ([ropt] | opt.b.split(/\s+/)).join(" ") : ropt
  ENV[flag] = opt
end
