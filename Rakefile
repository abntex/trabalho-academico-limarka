# coding: utf-8
require 'rake/clean'
require 'github_changelog_generator/task'


task :default => []

VERSION="v0.5.0"

GitHubChangelogGenerator::RakeTask.new :changelog do |c|
  c.future_release = VERSION
  c.bug_prefix="**Bugs corrigidos:**"
  c.issue_prefix = "**Issues fechados:**"
  c.enhancement_prefix="**Melhorias implementadas:**"
  c.since_tag="v0.1.2"
end

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
