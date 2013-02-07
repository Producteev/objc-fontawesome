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
  s.version      = "0.0.1"
  s.summary      = "FontAwesome Wrapper for iOS and OS X."
  s.homepage     = "http://www.producteev.com"

  s.author       = { "Thibaut Jarosz" => "thibaut.jarosz@gmail.com" }

  s.source       = { :git => "https://github.com/thibaut-jarosz/objc-fontawesome.git" }

  s.ios.deployment_target = '4.3'
  s.osx.deployment_target = '10.7'

  s.source_files = 'FontAwesome/*.{h,m}'
  s.public_header_files = 'FontAwesome/*.h'

  s.ios.resources = "FontAwesome/Resources/**/*.ttf"
  s.osx.resources = "FontAwesome/Resources"
  s.requires_arc = true
end
