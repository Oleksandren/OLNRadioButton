Pod::Spec.new do |s|
s.name             = "OLNRadioButton"
s.version          = "0.1"
s.summary          = "RadioButton Swift"
s.description      = "RadioButton Swift"
s.homepage         = "https://github.com/Oleksandren/OLNRadioButton"
s.license          = 'MIT'
s.author           = { "Oleksandr Nechet" => "oleksandr_en@yahoo.com" }
s.source           = { :git => "https://github.com/Oleksandren/OLNRadioButton.git", :tag => s.version.to_s }
s.platform     = :ios, '9.0'
s.requires_arc = true
s.source_files = 'OLNRadioButton.swift'

end
