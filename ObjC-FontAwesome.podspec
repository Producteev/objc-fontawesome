#
# Be sure to run `pod spec lint ObjC-FontAwesome.podspec' to ensure this is a
# valid spec.
#
# Remove all comments before submitting the spec. Optional attributes are commented.
#
# For details see: https://github.com/CocoaPods/CocoaPods/wiki/The-podspec-format
#
Pod::Spec.new do |s|
  s.name         = "ObjC-FontAwesome"
  s.version      = "0.1.1"
  s.summary      = "FontAwesome Wrapper for iOS and OS X."
  s.homepage     = "http://www.producteev.com"
  s.license      = { :type => 'Creative Commons (CC BY 3.0)', :file => 'LICENSE' }

  s.authors      = { "Alex Usbergo" => "alexakadrone@gmail.com", "Thibaut Jarosz" => "thibaut.jarosz@gmail.com" }

  s.source       = { :git => "https://github.com/Producteev/objc-fontawesome.git", :tag => s.version.to_s }

  s.ios.deployment_target = '4.3'
  s.osx.deployment_target = '10.7'

  s.source_files = 'FontAwesome/*.{h,m}'
  s.public_header_files = 'FontAwesome/*.h'

  s.ios.resources = "FontAwesome/Resources/**/*.ttf"
  s.osx.resources = "FontAwesome/Resources/Fonts"
  s.requires_arc = true
end
