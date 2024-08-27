Pod::Spec.new do |spec|
    spec.name                   = "lwkFFI"
    spec.version                = "0.8.0"
    spec.license                = { :type => "MIT OR BSD-2-Clause" }
    spec.summary                = "Low-level bindings to the Liquid Wallet Kit Rust API"
    spec.homepage               = "https://blockstream.com"
    spec.authors                = { "Blockstream" }
    spec.documentation_url      = "https://docs.rs/lwk_bindings"
    spec.source                 = { :http => "https://github.com/blockstream/lwk/releases/download/bindings_0.8.0/lwk.xcframework.zip" }
    spec.ios.deployment_target  = "14.0"
    spec.vendored_frameworks    = "lwkFFI.xcframework"
  end