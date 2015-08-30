# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'youdao_fanyi_api/version'

Gem::Specification.new do |spec|
  spec.name          = "youdao_fanyi_api"
  spec.version       = YoudaoFanyiAPI::VERSION
  spec.authors       = ["delta"]
  spec.email         = ["delta4d@gmail.com"]
  spec.license       = 'MIT'

  spec.summary       = %q{a ruby wrapper for youdao fanyi api}
  spec.description   = %q{a ruby wrapper for youdao fanyi api}
  spec.homepage      = "https://github.com/delta4d/youdao_fanyi_api"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
