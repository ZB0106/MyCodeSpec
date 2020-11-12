
#Pod::Spec.new do |spec|
Pod::Spec.new do |s|

  s.name         = "cocoaStudy"
  s.version      = "0.1.4"
  s.summary      = "summary for study cocoapods"
  s.homepage     = "https://github.com/ZB0106/MyGitCode.git"
  s.author             = { "rzb16@sina.com" => "rzb16@sina.com" }
  s.platform     = :ios
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/ZB0106/MyGitCode.git", :tag => "#{s.version}" }
  s.source_files  = "CocoapodsStudy/Sources/**/*.swift"
  s.requires_arc = true
#  #子部件
  s.subspec 'ZB_Swift_Base' do |xb|
  xb.source_files = 'CocoapodsStudy/Sources/ZB_Swift_Base/*.swift'
  xb.frameworks = 'UIKit', 'Foundation'
  xb.dependency 'MJRefresh'
  xb.dependency 'SnapKit'
  
  end

  s.swift_versions = ['5.1', '5.2', '5.3']
#由于需要依赖的三方库都是静态库,如果这里不指定本库为静态库,则cocoapods中默认会编译成动态库,而此动态库中依赖了静态库,会导致编译失败, 因此这里需要指定编译成静态库
  s.static_framework = true

end
