# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sparse_matrix/version'

Gem::Specification.new do |spec|
  spec.name          = "sparse_matrix"
  spec.version       = SparseMatrix::VERSION
  spec.authors       = ["KevinRobayna","JoseAntonio"]
  spec.email         = ["k3vinaso@gmail.com","alu0100696691@ull.edu.es"]
  spec.description   = %q{Build a sparse matrix from dense matrix}
  spec.summary       = %q{sparse matrix}
  spec.homepage      = "https://github.com/kevinrobayna/SparseMatrix"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "guard-gitpusher"

end
