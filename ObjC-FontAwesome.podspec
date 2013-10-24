Pod::Spec.new do |s|
  s.name         = "ObjC-FontAwesome"
  s.version      = "1.0"
  s.summary      = "FontAwesome 4.0 Wrapper for iOS and OS X."
  s.homepage     = "https://www.producteev.com"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.authors      = { "Alex Usbergo" => "alexakadrone@gmail.com", "Jerome Miglino" => "jerome.miglino@gmail.com", "Thibaut Jarosz" => "thibaut.jarosz@gmail.com" }

  s.source       = { :git => "https://github.com/Producteev/objc-fontawesome.git", :tag => s.version.to_s }

  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.7'

  s.source_files = 'FontAwesome/*.{h,m}'
  s.public_header_files = 'FontAwesome/*.h'

  s.ios.resources = "FontAwesome/Resources/**/*.ttf"
  s.osx.resources = "FontAwesome/Resources/Fonts"
  s.requires_arc = true
end
