
Pod::Spec.new do |spec|

  spec.name         = "FantasticLabel"
  spec.version      = "1.0.0"
  spec.summary      = "Colorfull label text"
  spec.description  = <<-DESC
                    Change label text color continue
                   DESC
  spec.homepage     = "https://github.com/DarshitPatel9071/FantasticLabel"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Darshit Patel" => "" }
  spec.source       = { :git => "https://github.com/DarshitPatel9071/FantasticLabel.git", :tag => "#{spec.version}"}
  spec.source_files  = 'Color-LBL/**/*.{swift}'
  spec.ios.deployment_target = '12.0'
  spec.swift_versions = "5.0"
end
