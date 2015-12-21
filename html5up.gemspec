Gem::Specification.new do |s|
  s.name          = 'html5up'
  s.version       = '0.0.1'
  s.summary       = "HTML5UP download tool"
  s.description   = "Create and manage HTML5UP projects"
  s.authors       = ["Robert Qualls"]
  s.email         = 'robert@robertqualls.com'
  s.homepage      = 'https://github.com/rlqualls/html5up-ruby'
  s.files         = Dir.glob("{lib}/**/*.rb") + ["README.md", "LICENSE", "Rakefile", "html5up.gemspec"]
  s.require_paths = ["lib"]
  s.bindir        = "bin"
  s.executables  << "html5up"
  s.license       = "Apache 2.0"
  s.has_rdoc      = false
  s.required_ruby_version = '>= 1.9.0'
end
