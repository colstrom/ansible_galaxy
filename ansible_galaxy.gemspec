# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: ansible_galaxy 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "ansible_galaxy"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Chris Olstrom"]
  s.date = "2015-07-09"
  s.description = "Provides convenient access to the Galaxy API"
  s.email = "chris@olstrom.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "lib/ansible_galaxy.rb",
    "lib/ansible_galaxy/api.rb",
    "lib/ansible_galaxy/exceptions.rb",
    "lib/ansible_galaxy/me.rb",
    "lib/ansible_galaxy/roles.rb",
    "spec/ansible_galaxy_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/colstrom/ansible_galaxy"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5"
  s.summary = "Ruby wrapper for the Ansible Galaxy HTTP API"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<contracts>, ["~> 0.10"])
      s.add_runtime_dependency(%q<terminal-announce>, ["~> 1.0.0"])
      s.add_runtime_dependency(%q<typhoeus>, ["~> 0.7.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.3.0"])
      s.add_development_dependency(%q<yard>, ["~> 0.7"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<reek>, ["~> 1.2.8"])
      s.add_development_dependency(%q<roodi>, ["~> 2.1.0"])
    else
      s.add_dependency(%q<contracts>, ["~> 0.10"])
      s.add_dependency(%q<terminal-announce>, ["~> 1.0.0"])
      s.add_dependency(%q<typhoeus>, ["~> 0.7.0"])
      s.add_dependency(%q<rspec>, ["~> 3.3.0"])
      s.add_dependency(%q<yard>, ["~> 0.7"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<reek>, ["~> 1.2.8"])
      s.add_dependency(%q<roodi>, ["~> 2.1.0"])
    end
  else
    s.add_dependency(%q<contracts>, ["~> 0.10"])
    s.add_dependency(%q<terminal-announce>, ["~> 1.0.0"])
    s.add_dependency(%q<typhoeus>, ["~> 0.7.0"])
    s.add_dependency(%q<rspec>, ["~> 3.3.0"])
    s.add_dependency(%q<yard>, ["~> 0.7"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<reek>, ["~> 1.2.8"])
    s.add_dependency(%q<roodi>, ["~> 2.1.0"])
  end
end
