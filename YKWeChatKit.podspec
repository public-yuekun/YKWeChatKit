#
#  Be sure to run `pod spec lint YKWeChatAPI.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

    s.name         = "YKWeChatKit"
    s.version      = "1.0.0"
    s.summary      = "微信SDK自己方便使用"

    s.homepage     = "https://open.weixin.qq.com"
    s.license      = { :type => "MIT", :file => "LICENSE" }



    s.author       = { "Yue Kun" => "git_yuekun@163.com" }
    s.source       = { :git => "https://github.com/public-yuekun/YKWeChatKit.git", :tag => "1.0.0" }



    s.platform     = :ios, '8.0'

    s.source_files  = "YKWeChatKit", "YKWeChatKit/SDK"
    s.vendored_libraries  = 'YKWeChatKit/SDK/libWeChatSDK.a'
    s.public_header_files = 'YKWeChatKit/*.h', 'YKWeChatKit/SDK/*.h'

    # s.public_header_files = "Classes/**/*.h"

    s.frameworks = "SystemConfiguration", "Security", "CoreTelephony", "CFNetwork"
    s.libraries = "z", "sqlite3.0", "c++"

    s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC -all_load' }

    # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    #
    #  If your library depends on compiler flags you can set them in the xcconfig hash
    #  where they will only apply to your library. If you depend on other Podspecs
    #  you can include multiple dependencies to ensure it works.

    # s.requires_arc = true

    # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
    # s.dependency "JSONKit", "~> 1.4"

end
