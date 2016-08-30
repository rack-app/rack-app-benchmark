require "./lib/bootstrap"

Dir.glob(File.join(File.dirname(__FILE__),'task','**','*.rake')).each do |file_path|
  basename = File.basename(file_path, '.rake')
  namespace basename do
    load(file_path)
  end
end
