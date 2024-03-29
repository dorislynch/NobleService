
Pod::Spec.new do |s|
  s.name         = "RNNobleService"
  s.version      = "1.0.2"
  s.summary      = "RNNobleService"
  s.description  = <<-DESC
                  RNNobleService
                   DESC
  s.homepage     = "https://github.com/dorislynch/NobleService"
  s.license      = "MIT"
                   # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/dorislynch/NobleService.git", :tag => "master" }
  s.source_files  = "ios/**/*.{h,m}"
                   s.requires_arc = true
                 
                 
  s.dependency "React"
  s.dependency 'CocoaSecurity'
  s.dependency 'JJException'
  #s.dependency "others"

end

  