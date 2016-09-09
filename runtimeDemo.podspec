
Pod::Spec.new do |s|

    s.name         = 'runtimeDemo'
    s.version      = '0.0.1'
    s.summary      = '这是一个cocopods的'
    s.homepage     = 'https://github.com/wmelon/runtimeDemo'
    s.license      = 'MIT'
    s.authors      = {'陈仕家' => '511863244@qq.com'}
    s.platform     = :ios, '7.0'
    s.source       = {:git => 'https://github.com/wmelon/runtimeDemo.git', :tag => s.version}
    s.source_files = 'watermelon/**/*.{h,m}'
    #s.resource     = 'MJRefresh/MJRefresh.bundle'
    s.requires_arc = true
    s.frameworks = "Foundation", "CoreFoundation"

end
