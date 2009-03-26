require 'rake/rdoctask'
require 'spec'
require 'spec/rake/spectask'

desc "Run all features in features directory" 
task :features do
  system "cucumber -p default features/"
end

desc "Run all specs in spec directory"
Spec::Rake::SpecTask.new do |t|
  t.spec_opts = ['--options', "#{File.dirname(__FILE__)}/spec/spec.opts"]
  t.spec_files = FileList['spec/**/*_spec.rb']
end

desc "Run all specs in spec directory with RCov"
Spec::Rake::SpecTask.new(:rcov) do |t|
  t.spec_opts = ['--options', "#{File.dirname(__FILE__)}/spec/spec.opts"]
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.rcov = true
  t.rcov_opts = lambda do
    IO.readlines(File.dirname(__FILE__) + "/spec/rcov.opts").map {|l| l.chomp.split " "}.flatten
  end
end

desc "Generate RDoc"
task :docs => :clobber_docs do
  system "hanna --title 'guitar_tabs_bdd API Documentation'"
end

desc "Run specs using jruby"
task "spec:jruby" do
  result = system "jruby -S rake spec"
  raise "JRuby tests failed" unless result
end

desc "Run each spec in isolation to test for dependency issues"
task :spec_deps do
  Dir["spec/**/*_spec.rb"].each do |test|
    if !system("spec #{test} &> /dev/null")
      puts "Dependency Issues: #{test}"
    end
  end
end
      
task :default => :spec
