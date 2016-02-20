def app_folders
  Dir.glob(File.join(File.realpath(File.join(File.dirname(__FILE__), '..', 'apps')), '*')).select { |path| File.directory?(path) }
end