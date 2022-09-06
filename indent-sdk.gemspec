Gem::Specification.new do |spec|
  spec.name          = 'grpc-demo'
  spec.version       = '1.0.0'
  spec.authors       = ['Indent Inc']
  spec.email         = 'support@indent.com'

  spec.summary       = 'Client for using Indent.com APIs'
  spec.description   = 'Allows access to the Indent.com API including creating, approving and revoking Petitionspec.'
  spec.homepage      = 'https://github.com/indentapis/indent-ruby'
  spec.license       = 'Apache-2.0'

  spec.require_paths = ['lib']
  spec.files         = Dir["lib/**/*.*"] + %w(indent-sdk.gemspec Gemfile LICENSE README.md)

  spec.add_dependency 'grpc'
end