# coding: utf-8
require 'rake/clean'

task :default => []

VERSION="v0.5.0"

desc "Gera versão #{VERSION}"
task :release => [:clean] do
  system "limarka"
  system "git tag -a #{VERSION} -m \"Gerando versão #{VERSION}\""
  system "git push && git push --tags"
end

PREAMBULO="templates/preambulo.tex"
PRETEXTUAL = "templates/pretextual.tex"
POSTEXTUAL = "templates/postextual.tex"
CLEAN.include(["xxx-*",PREAMBULO,PRETEXTUAL,POSTEXTUAL,"templates/configuracao.yaml",'tmp'])

desc "Compila imagens dos códigos R"
task :r

FileList['imagens/**/*.R'].each do |source|
  rpdf = source.ext('pdf')
  file rpdf => source do |t|
    rm_rf "Rplots.pdf"
    sh "R --no-save < #{t.source}"
    mv "Rplots.pdf","#{t.name}"
  end
  task :r => rpdf
end
