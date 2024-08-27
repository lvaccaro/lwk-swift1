# LWK — Swift Bindings

The [Liquid Wallet Kit](https://github.com/blockstream/lwk) enables mobile developers to integrate Liquid wallet into their apps with a very shallow learning curve. More information can be found here: [blockstream/lwk](https://github.com/blockstream/lwk)

This repository maintains the Blockstream LWK's official [Swift](https://www.swift.org/) bindings.

## 👨‍🔧 Installation

We support integration via the [Swift Package Manager](https://www.swift.org/package-manager/) and via [CocoaPods](https://cocoapods.org/).

### Swift Package Manager

#### Installation via Xcode

Via `File > Add Packages...`, add

```
https://github.com/blockstream/lwk-swift.git
```

as a package dependency in Xcode.

#### Installation via Swift Package Manifest

Add the following to the dependencies array of your `Package.swift`:

``` swift
.package(url: "https://github.com/blockstream/lwk-swift.git", from: "0.8.0"),
```

### CocoaPods

Add the Lwk SDK to your `Podfile` like so:

``` ruby
target '<YourApp' do
  use_frameworks!

  pod 'LiquidWalletKit'
end
```

## 📄 Usage

``` swift
import LiquidWalletKit

// See: https://docs.rs/lwk_bindings
```
