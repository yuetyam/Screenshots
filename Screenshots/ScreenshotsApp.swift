import SwiftUI

#if os(iOS)

@main
struct ScreenshotsApp: App {
        var body: some Scene {
                WindowGroup {
                        InputField16PM()
                }
        }
}

#else

@main
struct ScreenshotsApp: App {
        var body: some Scene {
                WindowGroup {
                        Text(verbatim: "placeholder")
                }
        }
}

#endif
