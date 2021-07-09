require 'rake'

task :install do
  Dir['*'].each do |file|
    system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
    puts "linked #{file}"
  end
end
