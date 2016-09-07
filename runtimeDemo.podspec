
Pod::Spec.new do |s|
    s.name         = 'runtimeDemo'
    s.summary      = '这是一个测试cocopods的小Demo'
    s.version      = '0.0.1'
    s.license      = { :type => 'MIT', :file => 'LICENSE' }
    s.authors      = { '陈仕家' => '511863244@qq.com' }
    s.social_media_url = 'http://twitter.com/陈仕家'
    s.homepage     = 'https://github.com/wmelon/runtimeDemo'

    s.ios.deployment_target = '6.0'
    s.osx.deployment_target = '10.7'
    s.watchos.deployment_target = '2.0'
    s.tvos.deployment_target = '9.0'

    s.source       = { :git => 'https://github.com/wmelon/runtimeDemo.git', :tag => '0.0.1' }

    s.requires_arc = true
    s.source_files = 'runtimeDemo/*.{h,m}'
    s.public_header_files = 'runtimeDemo/*.{h}'

    s.frameworks = 'Foundation', 'CoreFoundation'

end
