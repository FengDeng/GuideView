Pod::Spec.new do |s|
s.name             = "GuideView"
s.version          = "1.0.0"
s.summary          = "引导页"
s.description      = <<-DESC

轻巧的引导页

DESC
s.license = 'MIT'
s.author           = { "邓锋" => "704292743@qq.com" }
s.homepage         = "https://github.com/FengDeng/GuideView"
s.source           = { :git => "git@github.com:FengDeng/GuideView.git",:tag => s.version}
s.platform     = :ios, '8.0'
s.requires_arc = true

s.source_files = 'Classes/*.swift'
s.resources = ["Resources/*.png"]
s.frameworks = 'Foundation','UIKit'


end
