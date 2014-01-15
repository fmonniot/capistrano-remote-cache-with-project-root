# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Matteo Collina", "Association MiNET"]
  gem.email         = ["matteo.collina@gmail.com"]
  gem.description   = %q{Capistrano Strategy for deployment of a project in a subdirectory}
  gem.summary       = %q{Capistrano Strategy for deployment of a project in a subdirectory}
  gem.homepage      = "www.minet.net"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "capistrano-remote-cache-with-project-root"
  gem.require_paths = ["lib"]
  gem.version       = "0.1"


  if gem.respond_to? :specification_version then
    gem.specification_version = 3
    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      gem.add_runtime_dependency(%q<capistrano>, [">= 2.7"])
    else
      gem.add_dependency(%q<capistrano>, [">= 2.7"])
    end
  else
    gem.add_dependency(%q<capistrano>, [">= 2.7"])
  end
end
