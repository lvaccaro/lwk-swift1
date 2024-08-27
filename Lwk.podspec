Pod::Spec.new do |spec|
    spec.name                   = "LiquidWalletKit"
    spec.version                = "0.8.0"
    spec.license                = { :type => "MIT OR BSD-2-Clause" }
    spec.summary                = "Swift bindings to the Liquid Wallet Kit"
    spec.homepage               = "https://blockstream.com"
    spec.documentation_url      = "https://docs.rs/lwk_bindings"
    spec.source                 = { :git => 'https://github.com/blockstream/lwk-swift.git', :tag => spec.version }
    spec.ios.deployment_target  = "14.0"
    spec.source_files           = [
      "Sources/LiquidWalletKit/*.swift", 
      "Sources/LiquidWalletKit/**/*.swift"
    ]
    spec.static_framework       = true
  
    spec.dependency "lwkFFI", "= #{spec.version}"
  end