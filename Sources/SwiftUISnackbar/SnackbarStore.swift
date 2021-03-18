import SwiftUI

/// Utility class that's used to interact with a `Snackbar`.
/// It offers a method to **display** the snackbar
/// - Author: Luca Zani
/// Here is how to use it has a `StateObject`
/// ```
/// struct ContentView: View {
///
///     @StateObject var store = SnackbarStore()
///
///     var body: some View {
///         Button("Show Snackbar!") {
///             store.display(title: Text("Hey I'm a title!"), text: Text("I'm a body text"), style: .custom(color: .blue))
///         }
///         .snackbar(isShowing: $store.show, title: store.title, text: store.text, style: store.style)
///
///     }
/// }
/// ```
/// It can also be used has an `@EnvironmentObject` to give other `Views` the possibilty to interact with the same `Snackbar`
/// ```
/// @EnvironmentObject var store: SnackbarStore
/// ```
/// - Important: If you use it has an `@EnvironmentObject` remember to inject it into the view hierarchy with
/// ```
/// .environmentObject(SnackbarStore())
/// ```
/// - Version: 0.1
@available(iOS 14.0, *)
public class SnackbarStore: ObservableObject {
    
    @Published var title: Text = Text("")
    @Published var text: Text? = nil
    @Published var show: Bool = false
    @Published var style: SnackbarStyle = .default
    
    public init() {}
    
    /// Display a snackbar by specifing the title and optionally the text as ´String´
    /// - Author: Luca Zani
    /// - Parameters:
    ///   - title: The bold text you want the `Snackbar` to display on top
    ///   - text: The lighter text that you want displayed under the title (optional)
    ///   - style: The `SnackbarStyle` wich specify the `Snackbar`'s background color
    /// - Version: 0.1
    public func display(title: String, text: String? = nil, style: SnackbarStyle = .default) {
        DispatchQueue.main.async {
            self.title = Text(title)
            self.text = text != nil ? Text(text!) : nil
            self.style = style
            self.show = true
        }
    }
    
    /// Display a snackbar using SwiftUI `Text` object
    /// - Author: Luca Zani
    /// - Parameters:
    ///   - title: The bold text you want the `Snackbar` to display on top
    ///   - text: The lighter text that you want displayed under the title (optional)
    ///   - style: The `SnackbarStyle` wich specify the `Snackbar`'s background color
    /// - Note: You can use this `display()` method to **concatenate** many `Text` objects
    /// ```
    /// .display(title: Text("I'm a title!"), text: Text("Hi I'm a ") + Text("Bold").bold() + Text(" Description!"), style: .default)
    /// ```
    /// - Version: 0.1
    public func display(title: Text, text: Text? = nil, style: SnackbarStyle = .default) {
        DispatchQueue.main.async {
            self.title = title
            self.text = text
            self.style = style
            self.show = true
        }
    }
}

