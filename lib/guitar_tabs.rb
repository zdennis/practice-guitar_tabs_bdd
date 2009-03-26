dir = File.dirname(__FILE__)
Dir[File.join(dir, 'guitar_tabs/*.rb')].each do |f|
  require f
end
