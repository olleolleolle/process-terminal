
require_relative "lib/process/terminal/version"

Gem::Specification.new do |spec|
	spec.name = "process-terminal"
	spec.version = Process::Terminal::VERSION
	spec.authors = ["Samuel Williams"]
	spec.email = ["samuel.williams@oriontransfer.co.nz"]
	
	spec.summary = %q{Provide access to libc terminal funtions.}
	spec.homepage = "https://github.com/ioquatix/process-terminal"
	spec.license = "MIT"
	
	# Specify which files should be added to the gem when it is released.
	# The `git ls-files -z` loads the files in the RubyGem that have been added into git.
	spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
		`git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
	end
	
	spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
	spec.require_paths = ["lib"]
	
	spec.add_dependency "ffi"
	
	spec.add_development_dependency "covered"
	spec.add_development_dependency "bundler"
	spec.add_development_dependency "rake", "~> 10.0"
	spec.add_development_dependency "rspec", "~> 3.0"
end
