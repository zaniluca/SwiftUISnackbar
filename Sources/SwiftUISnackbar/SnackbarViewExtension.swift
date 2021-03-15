import SwiftUI

@available(iOS 14.0, *)
public extension View {
    
    /// Adds a snackbar to the view
    /// - Author: Luca Zani
    ///
    /// - Parameters:
    ///   - isShowing: Binding that lets you control the `show` state of the `Snackbar`
    ///   - title: The bolder text on top
    ///   - text: The body text
    ///   - style: The style of the `Snackbar`, changing this will change the background color
    ///   - actionText: The text of the action button (optional)
    ///   - extraBottomPadding: The additional padding from the bottom of the view (optional)
    ///   - action: The action you want to perform when the user touches the action button (optional)
    ///
    /// - Note: for usage information consider reading the `README.md` on the [Github]() page
    ///
    /// You can use the other view extension (The one with both `title` and `text` as `Text`) to further customize the text apparence
    ///
    /// - Version: 0.1
    ///
    func snackbar(isShowing: Binding<Bool>, title: String, text: String? = nil, style: SnackbarStyle, actionText: String? = nil, extraBottomPadding: CGFloat = 0, action: (() -> Void)? = nil) -> some View {
        
        Snackbar(isShowing: isShowing, presenting: self, title: title, text: text, style: style, extraBottomPadding: extraBottomPadding, actionText: actionText, action: action)
    }
    
    /// Adds a snackbar to the view
    /// - Author: Luca Zani
    ///
    /// - Parameters:
    ///   - isShowing: Binding that lets you control the `show` state of the `Snackbar`
    ///   - title: The bolder text on top
    ///   - text: The body text
    ///   - style: The style of the `Snackbar`, changing this will change the background color
    ///   - actionText: The text of the action button (optional)
    ///   - extraBottomPadding: The additional padding from the bottom of the view (optional)
    ///   - action: The action you want to perform when the user touches the action button (optional)
    ///
    /// - Note: for usage information consider reading the `README.md` on the [Github]() page
    /// - Version: 0.1
    ///
    func snackbar(isShowing: Binding<Bool>, title: Text, text: Text? = nil, style: SnackbarStyle, actionText: String? = nil, extraBottomPadding: CGFloat = 0, action: (() -> Void)? = nil) -> some View {
        
        Snackbar(isShowing: isShowing, presenting: self, title: title, text: text, style: style, extraBottomPadding: extraBottomPadding, actionText: actionText, action: action)
    }
}
