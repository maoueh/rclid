# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rclid/version'

Gem::Specification.new do |gem|
  gem.name          = "rclid"
  gem.version       = Rclid::VERSION
  gem.authors       = ["Matthieu Vachon"]
  gem.email         = ["matthieu.o.vachon@gmail.com"]
  gem.summary       = "Rapid Command Line Interface Development library"
  gem.description = <<-EOS
    As its name implies, the goal of this gem is to provide you with a light
    structure to create command line interfaces like a breeze.

    Focusing on rapid development, creating basic single command line application
    or a more complex one using composite subcommands is achieve in light speed.

    If you have ideas that would reduce even more development time and could
    be that this library, come discuss it with me by creating an issue on
    github.com.
  EOS

  gem.homepage      = "https://github.com/maoueh/rclid"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/) - [".gitattributes", ".gitignore"]
  gem.test_files    = gem.files.grep(%r{^(test|gem|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "bundler", "~> 1.3"
  gem.add_development_dependency "rake"
end
