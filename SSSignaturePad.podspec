
Pod::Spec.new do |spec|

  spec.name         = "SSSignaturePad"
  spec.version      = "1.0.0"
  spec.summary      = "A signature pad"
  spec.description  = "A signature pad which can be used in SwiftUI App."
  spec.homepage     = "https://github.com/SimformSolutionsPvtLtd/SSSignaturePad"
  spec.license      = "MIT"
  spec.author       = { "Simform Solutions" => "developer@simform.com" }
  spec.platform = :ios, "15.0"
  spec.source       = { :git => "https://github.com/SimformSolutionsPvtLtd/SSSignaturePad.git", :tag => spec.version }
  spec.source_files = 'SSSignaturePad/**/*.swift'
  spec.swift_version = "5.0"
  spec.static_framework = true
end
