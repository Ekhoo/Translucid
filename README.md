![Translucid](https://github.com/Ekhoo/Translucid/blob/master/Source/Asset/translucid.png)

[![Version](https://img.shields.io/cocoapods/v/Translucid.svg?style=flat)](http://cocoapods.org/pods/Translucid)
[![License](https://img.shields.io/cocoapods/l/Translucid.svg?style=flat)](http://cocoapods.org/pods/Translucid)
[![Platform](https://img.shields.io/cocoapods/p/Translucid.svg?style=flat)](http://cocoapods.org/pods/Translucid)
![](https://img.shields.io/badge/Supported-iOS8-4BC51D.svg?style=flat-square)
![](https://img.shields.io/badge/Swift 2-compatible-4BC51D.svg?style=flat-square)

Simple and light weight UIView that animate text with an image.

# Demo
![Translucid](https://github.com/Ekhoo/Translucid/blob/master/Example/Resources/demo.gif)

# Installation
## CocoaPods
Translucid is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Translucid", '~> 0.0.1'
```

# Usage
```swift
    override func loadView() {
        super.loadView()
        
        let starWars: Translucid = Translucid(frame: self.view.bounds)
        starWars.font = UIFont(name: "Starjedi", size: 20)!
        starWars.text = "Star Wars"
        starWars.backgroundImage = UIImage(named: "stars")
        
        self.view.addSubview(starWars)
        
        starWars.animate()
    }
```

# Author
Lucas Ortis:
- me@lucas-ortis.com
- [@LucasEkhoo](https://twitter.com/LucasEkhoo)
- [Linkedin](https://fr.linkedin.com/in/lucasortis)

# License

Translucid is available under the MIT license. See the LICENSE file for more info.
