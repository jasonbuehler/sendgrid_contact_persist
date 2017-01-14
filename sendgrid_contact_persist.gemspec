# -*- encoding: utf-8 -*-
require File.expand_path("../lib/sendgrid_contact_persist/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'sendgrid_contact_persist'
  s.version     = SendgridContactPersist::VERSION 
  s.date        = '2017-01-11'
  s.platform    = Gem::Platform::RUBY
  s.summary     = "A microservice for persisting contacts to Sendgrid."
  s.description = "A microservice for persisting contacts to Sendgrid."
  s.authors     = ["Jason Buehler"]
  s.email       = 'jason.c.buehler@gmail.com'
  s.files       = `git ls-files`.split("\n")

  s.homepage    = 'http://rubygems.org/gems/sendgrid_contact_persist'
  s.license     = 'MIT'

  s.add_runtime_dependency "rest-client"
	s.add_development_dependency "bundler", ">= 1.0.0"
	s.require_path = 'lib'
end

