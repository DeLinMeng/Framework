
# Podfile
platform:ios,'11.0'
use_frameworks!

def rx_pod

  pod 'RxSwift', '~> 5.0'
  pod 'RxCocoa', '~> 5.0'
  pod "SwiftMonkeyPaws"
  pod 'ReactiveCocoa', '~> 10.1'
  
end

#workspace 'DesignPatterns'
#project 'DesignPatterns'

target 'DesignPatterns' do
    
    rx_pod
    
    # RxTests 和 RxBlocking 将在单元/集成测试中起到重要作用
    target 'DesignPatternsTests' do
        pod 'RxBlocking', '~> 5.0'
        pod 'RxTest', '~> 5.0'
        pod "SwiftMonkey"
    end

    target 'DesignPatternsUITests' do
        pod "SwiftMonkey"
    end
    
end







