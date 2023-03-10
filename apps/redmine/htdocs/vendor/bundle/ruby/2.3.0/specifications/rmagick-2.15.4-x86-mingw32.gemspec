# -*- encoding: utf-8 -*-
# stub: rmagick 2.15.4 x86-mingw32 lib ext deprecated

Gem::Specification.new do |s|
  s.name = "rmagick".freeze
  s.version = "2.15.4"
  s.platform = "x86-mingw32".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze, "ext".freeze, "deprecated".freeze]
  s.authors = ["Tim Hunter".freeze, "Omer Bar-or".freeze, "Benjamin Thomas".freeze, "Moncef Maiza".freeze]
  s.date = "2017-05-12"
  s.description = "RMagick is an interface between Ruby and ImageMagick.".freeze
  s.email = "github@benjaminfleischer.com".freeze
  s.homepage = "https://github.com/rmagick/rmagick".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.5".freeze)
  s.requirements = ["ImageMagick 6.4.9 or later".freeze]
  s.rubyforge_project = "rmagick".freeze
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Ruby binding to ImageMagick".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake-compiler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.2.0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.33.0"])
      s.add_development_dependency(%q<test-unit>.freeze, ["~> 2"])
    else
      s.add_dependency(%q<rake-compiler>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.2.0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.33.0"])
      s.add_dependency(%q<test-unit>.freeze, ["~> 2"])
    end
  else
    s.add_dependency(%q<rake-compiler>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.2.0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.33.0"])
    s.add_dependency(%q<test-unit>.freeze, ["~> 2"])
  end
end
