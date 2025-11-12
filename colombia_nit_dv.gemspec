# frozen_string_literal: true

require_relative "lib/colombia_nit_dv/version"

Gem::Specification.new do |spec|
  spec.name                  = "colombia_nit_dv"
  spec.version               = ColombiaNitDv::VERSION
  spec.authors               = ["Eduardo Mendoza"]
  spec.email                 = ["eduardoalfonsom88@gmail.com"]

  spec.summary               = "Calcula el dígito de verificación del NIT colombiano."
  spec.description           = "Gema pequeña y sin dependencias que implementa el algoritmo oficial usado en Colombia (DIAN/RUES) para calcular el dígito de verificación (DV) del NIT."
  spec.homepage              = "https://github.com/eduardo-m88/colombia_nit_dv"
  spec.license               = "MIT"
  spec.required_ruby_version = ">= 2.5"

  # Si vas a publicar en rubygems.org, NO necesitas allowed_push_host
  # spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"]   = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"]   = "#{spec.homepage}/blob/main/CHANGELOG.md"

  # Archivos que entran en la gema
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

end
