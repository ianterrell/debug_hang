require_relative "lib/debug_hang/version"

Gem::Specification.new do |spec|
  spec.name        = "debug_hang"
  spec.version     = DebugHang::VERSION
  spec.authors     = ["Ian Terrell"]
  spec.email       = ["cvz5an@virginia.edu"]
  spec.summary     = "Demonstrates debug hang"
    spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.3.1"
end
