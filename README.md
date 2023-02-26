# SwiftUISnackbar

> A simple and ready to use Snackbar for your SwiftUI Application

![SWIFTUI](https://img.shields.io/badge/Framework-SwiftUI-blue)
![SPM](https://img.shields.io/badge/spm-compatible-brightgreen.svg?style=flat)

## Screenshots

<img width="1280" alt="cover" src="https://user-images.githubusercontent.com/59318963/111759375-ccac0280-889d-11eb-9c84-87fd835698d9.png">

## Installation (SPM)

1. Open Xcode
2. Go to `File > Swift Packages > Add package dependency`
3. Add it by pasting this link `https://github.com/zaniluca/SwiftUISnackbar`
4. Select the `Version` you want to add, the `Branch` or even the single `Commit`

## Docs

To add a `Snackbar` to your `SwiftUI View` you must first import the package

```swift
import SwiftUISnackbar
```

Then to use it just add to your view the custom View's method `.snackbar`

```swift
Text("Hello, World!")
   .snackbar(...)
}
```

### View props

To set the values on the `Snackbar` you can either define them individually like so

```swift
import SwiftUI
import SwiftUISnackbar

struct YourView: View {

    var title: String = "Snackbar Title"
    var text: String = "Hi I'm the Snackbar's text"
    @State var show: Bool = true

    var body: some View {
        Text("Hello, World!")
            .snackbar(isShowing: $show, title: title, text: text, style: .custom(.blue))
    }
}
```

## SnackbarStore

Or by using the Wrapper `SnackbarStore` that you can use to interact with the `Snackbar`

You can use it as a `@StateObject` or as an `@EnvironmentObject` so that you can use it by injecting it in the `View Hierarchy` making it accessible from any children view

### @StateObject

```swift
struct MyView: View {

    @StateObject var store = SnackbarStore()

    var body: some View {
        Text("Hello, World!")
            .snackbar(isShowing: $store.show, title: store.title, text: store.text, style: store.style, actionText: store.actionText, action: store.action)
    }
}
```

### @EnvironmentObject

Remember to inject it in the `View Hierarchy` like so

```swift
MyView()
    .environmentObject(SnackbarStore())
```

And the you can use it normally

```swift
struct MyView: View {

    @EnvironmentObject var store: SnackbarStore

    var body: some View {
        Text("Hello, World!")
            .snackbar(isShowing: $store.show, title: store.title, text: store.text, style: store.style, actionText: store.actionText, action: store.action)
    }
}
```

# Result Screenshot

<img width="720" alt="Schermata 2021-03-19 alle 12 04 50" src="https://user-images.githubusercontent.com/59318963/111770956-5adab580-88ab-11eb-9abe-a262fea171a5.png">

## Release History

- 1.0.0 - 01/10/2021
  - First release 🎉
  - Support for markdown inside Text (only iOS15)

#### Pre-releases:

- 0.0.2 - 18/03/2021
  - Dismiss on tap
  - Set dismiss timer
- 0.0.1 - 15/03/2021
  - First relase

## Meta

Luca Zani – [@zaniluca\_](https://twitter.com/zaniluca_) – zani.luca@icloud.com

Distributed under the MIT license. See `LICENSE` for more information.

[https://github.com/zaniluca](https://github.com/zaniluca)
