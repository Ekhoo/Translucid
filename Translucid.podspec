Pod::Spec.new do |s|
  s.name         = "Translucid"
  s.version      = "0.0.1"
  s.summary      = "Amazing text animated by an image, written in swift."

  s.description  = "Simple and light weight UIView that animate text with an image."

  s.homepage     = "https://github.com/Ekhoo/Translucid"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Lucas Ortis" => "me@lucas-ortis.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/Ekhoo/Translucid.git", :tag => s.version.to_s }
  s.source_files = "Source/*.swift"
  s.requires_arc = true
end
