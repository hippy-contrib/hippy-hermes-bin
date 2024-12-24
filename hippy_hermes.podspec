Pod::Spec.new do |s|
  s.name         = 'hippy_hermes'
  s.version      = '1.0.1'
  s.summary      = 'hermes engine for hippy'
  s.description  = 'version of hermes 0.76'
  s.homepage     = 'https://git.woa.com/raycgwang/hippy_hermes'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Author' => 'author@example.com' }
  s.source       = { :git => 'https://git.woa.com/raycgwang/hippy_hermes.git', :tag => s.version.to_s }
  s.platform     = :ios, '11.0'
  s.source_files = 'NoDebugger/destroot/**/*.{h,m,swift}'
  s.public_header_files = "NoDebugger/destroot/include/**/*.h"
  s.header_mappings_dir = "NoDebugger/destroot/include"
  
  s.pod_target_xcconfig = {
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++17',
    'HEADER_SEARCH_PATHS' => '$(PODS_TARGET_SRCROOT)/NoDebugger/destroot/include',
    'GCC_ENABLE_CPP_EXCEPTIONS' => true,
    'GCC_ENABLE_CPP_RTTI' => true,
  }
  s.ios.vendored_frameworks = "NoDebugger/destroot/Library/Frameworks/universal/hermes.xcframework"
end
