<p align="center" >
	<img src="/Images/logo_2048_2048.png" alt="Start" title="Start" width="300px" height="300px">
</p>

<p align="center">
	<a href="https://swift.org">
		<img src="https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat">
	</a>
	<a href="https://cocoapods.org">
		<img src="https://img.shields.io/cocoapods/v/Start.svg">
	</a>
	<a href="https://cocoapods.org">
		<img src="https://img.shields.io/cocoapods/dt/Start.svg">
	</a>
	<a href="https://tldrlegal.com/license/mit-license">
		<img src="https://img.shields.io/badge/License-Apache 2.0-blue.svg?style=flat">
	</a>
</p>

## At a Glance

`Start` is a tool that handles different things occurring on app launch.

## How To Get Started

- Copy content of `Source` folder to your project.

or

- Use `Start` cocoapod

## Requirements

* iOS 9 and later
* Xcode 9 and later
* Swift 4

## Usage

### Launch count

In your `AppDelegate`, increment the number of launches stored by `Start` library:

```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    // ...
    
    Start.launches.increment()
    
    // ...
    
    return true
}
```

Now you can retrieve number of app's launches:

```swift
let launchCount = Start.launches.count
```

It's very easy to check if the app is launched for the first time:

```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    // ...
    
    Start.launches.increment()
    
    // ...
    
    switch Start.launches.count {
    case 1:
        // The first launch
        break
    default:
        // Not the first launch
        break
    }
    
    // ...
    
    return true
}
```

Sometimes you might need to reset the number of launches:

```swift
Start.launches.reset()
```

## License

`Start` is available under the Apache 2.0 license. See the [LICENSE](./LICENSE) file for more info.
