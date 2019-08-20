
Pod::Spec.new do |spec|
  spec.name         = "NetWorkCustom"
  spec.version      = "0.0.2"
  spec.summary      = "NetWorkCustom项目所有的工具类,以及基类,第三方框架 BaseHanTalk."
  spec.description  = <<-DESC
                    NetWorkCustom项目所有的工具类,以及基类,第三方框架 BaseHanTalk的详细描述
                   DESC

  spec.homepage     = "https://github.com/zhanglexiaoge/NetWorkCustom.git"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  #spec.license      = "MIT (example)"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  spec.author             = { "ios张乐" => "759908500@qq.com" }
  spec.ios.deployment_target = "9.0"
  spec.source       = { :git => "https://github.com/zhanglexiaoge/NetWorkCustom.git", :tag => "#{spec.version}" }

  spec.source_files  = "NetWorkCustom/Class/**/*"
# spec.resource_bundles = {
#    'NetWorkCustom' => ['NetWorkCustom/Assets/*']
#  }

  spec.frameworks = "UIKit"
  spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  spec.dependency "ReactiveObjC"
  spec.dependency "JSONModel"


end
