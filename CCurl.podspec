Pod::Spec.new do |spec|
  spec.name         = "CCurl"
  spec.summary      = "CCurl for swift via Cocoapods"
  spec.version      = "7.61.0"
  spec.homepage     = "https://github.com/bikram990/CCurl"
  spec.license      = { :type => "Apache", :file => "LICENSE.txt" }
  spec.authors      = { "Bikramjeet Singh" => "bikramjs@in.ibm.com" }
  spec.source       = { :git => "https://github.com/bikram990/CCurl.git", :tag => spec.version.to_s }
  spec.osx.source_files = "Sources/*.h"
  spec.ios.source_files = "Sources/*.h", "ios/**/*.h"
  spec.header_dir = 'curl'
  spec.platform = :osx, :ios
  spec.ios.deployment_target = "9.0"
  spec.osx.deployment_target = "10.10"
  spec.requires_arc = true
  spec.ios.vendored_libraries = "ios/static/*.a"
  spec.ios.public_header_files = "ios/include/**/*.h" , 'Sources/CCurlShim.h'
  spec.osx.public_header_files = 'Sources/CCurlShim.h'
  spec.preserve_paths = 'Sources/module/module.modulemap'
  spec.pod_target_xcconfig = { 'SWIFT_INCLUDE_PATHS' => '"$(PODS_ROOT)/CCurl/Sources/module/**"' }
  spec.xcconfig = { 'SWIFT_INCLUDE_PATHS' => '"$(PODS_ROOT)/CCurl/Sources/module/**"' }
end
