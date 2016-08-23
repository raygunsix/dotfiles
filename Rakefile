require 'rake'

sublime_settings_dir = "/Users/#{ENV['USER']}/Library/Application Support/Sublime Text 3/Packages/User"

task :install do
  Dir['*'].each do |file|
    next if %w[Rakefile README.md].include? file
    if Dir.exists?(sublime_settings_dir) && file =~ /[A-Za-z]+\.sublime-settings/
      system %Q{ln -s "$PWD/#{file}" "#{sublime_settings_dir}/#{file}"}
    end
    system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
    puts "linked #{file}"
  end
end
