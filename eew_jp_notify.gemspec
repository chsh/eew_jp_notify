# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{eew_jp_notify}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["CHIKURA Shinsaku"]
  s.date = %q{2011-03-16}
  s.default_executable = %q{eew_jp_notify}
  s.description = %q{Show @eew_jp tweets to Growl using Twitter Streaming API.}
  s.email = %q{chsh@thinq.jp}
  s.executables = ["eew_jp_notify"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/eew_jp_notify",
    "eew_jp_notify.gemspec",
    "lib/eew_jp_notify.rb",
    "lib/eew_jp_notify/cli.rb",
    "lib/eew_jp_notify/main.rb",
    "spec/eew_jp_notify_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/chsh/eew_jp_notify}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{Show @eew_jp tweets to Growl using Twitter Streaming API.}
  s.test_files = [
    "spec/eew_jp_notify_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<tweetstream>, [">= 0"])
      s.add_runtime_dependency(%q<meow>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<tweetstream>, [">= 0"])
      s.add_dependency(%q<meow>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<tweetstream>, [">= 0"])
    s.add_dependency(%q<meow>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end
