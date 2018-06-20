# -*- encoding: utf-8 -*-
# stub: aws-sdk-kinesisvideoarchivedmedia 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "aws-sdk-kinesisvideoarchivedmedia"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-kinesisvideoarchivedmedia/CHANGELOG.md", "source_code_uri" => "https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-kinesisvideoarchivedmedia" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["Amazon Web Services"]
  s.date = "2017-11-29"
  s.description = "Official AWS Ruby gem for Amazon Kinesis Video Streams Archived Media (Kinesis Video Archived Media). This gem is part of the AWS SDK for Ruby."
  s.email = ["trevrowe@amazon.com"]
  s.homepage = "http://github.com/aws/aws-sdk-ruby"
  s.licenses = ["Apache-2.0"]
  s.rubygems_version = "2.5.1"
  s.summary = "AWS SDK for Ruby - Kinesis Video Archived Media"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<aws-sdk-core>, ["~> 3"])
      s.add_runtime_dependency(%q<aws-sigv4>, ["~> 1.0"])
    else
      s.add_dependency(%q<aws-sdk-core>, ["~> 3"])
      s.add_dependency(%q<aws-sigv4>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<aws-sdk-core>, ["~> 3"])
    s.add_dependency(%q<aws-sigv4>, ["~> 1.0"])
  end
end
