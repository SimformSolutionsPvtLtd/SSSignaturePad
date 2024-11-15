Pod::Spec.new do |s|
  s.name         = 'SSSignaturePad'
  s.version      = '1.0.0'
  s.summary      = 'A signature pad'
  s.description  = <<-DESC
                   A signature pad which can be used in SwiftUI apps.
                   DESC
  s.homepage     = 'https://github.com/SimformSolutionsPvtLtd/SSSignaturePad'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'Simform Solutions' => 'developer@simform.com' }
  s.social_media_url = 'https://twitter.com/Simform'
  
  s.platforms    = { :ios => '15.0' }
  s.ios.deployment_target = '15.0'
  
  s.source       = { :git => 'https://github.com/SimformSolutionsPvtLtd/SSSignaturePad.git', :tag => s.version }
  s.source_files = 'SSSignaturePad/**/*.swift'
  s.swift_versions = ['5.0']
  s.swift_version  = '5.0'
  s.static_framework = true

end
