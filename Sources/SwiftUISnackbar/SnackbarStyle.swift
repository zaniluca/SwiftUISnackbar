import SwiftUI

/// Specifies the `Snackbar`'s background color
/// - `.default`:  the app's accent color
/// - `.warning`: ocra
/// - `.error`: red
/// - `.custom(_: Color)`:  lets you specify the color you want
/// - Author: Luca Zani
/// - Version: 0.1
@available(iOS 14.0, *)
public enum SnackbarStyle {
    case `default`
    case warning
    case error
    case custom(_ color: Color)
}
