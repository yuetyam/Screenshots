#if os(iOS)

import SwiftUI

struct InputField16PM: View {
        @State private var inputText: String = ""
        var body: some View {
                List {
                        Section {
                                Color.clear.frame(height: 384)
                        }
                        Section {
                                TextField("Input Text Field", text: $inputText).font(.common)
                        }
                        Section {
                                ColorCircles()
                        }
                }
        }
}

#Preview {
        InputField16PM()
}

#endif
