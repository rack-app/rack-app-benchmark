desc "bundle update for every application"
task :update do
  app_folders.each do |folder|
    cmd = "cd #{folder} && bundle install && bundle update"
    run_system_command(cmd)
  end
  $stdout.puts('All set!')
end
