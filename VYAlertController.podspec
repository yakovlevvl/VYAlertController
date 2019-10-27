
Pod::Spec.new do |spec|

  spec.name         = "VYAlertController"
  spec.version      = "1.0.1"
  spec.summary      = "A simple and easily customizable alert for iOS."
  spec.description  = "VYAlertController is a simple and easily customizable alert written in Swift, which can be used as a UIAlertController replacement."
  spec.homepage     = "https://github.com/yakovlevvl/VYAlertController"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "Vladyslav Yakovlev" => "yakovlev15@icloud.com" }
  spec.platform     = :ios, "10.3"
  spec.source       = { :git => "https://github.com/yakovlevvl/VYAlertController.git", :tag => spec.version }
  spec.source_files  = "VYAlertController/**/*.swift"
  spec.exclude_files = "VYAlertController/Info.plist"
  spec.swift_version = "5.0"

end
