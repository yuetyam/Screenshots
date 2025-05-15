#if os(iOS)

import SwiftUI


struct SchemeView16PM: View {
        @State private var inputText: String = ""
        var body: some View {
                List {
                        Section {
                                VStack(spacing: 16) {
                                        HStack {
                                                Spacer()
                                                Text(verbatim: "粵語拼音")
                                                        .lineLimit(1)
                                                        .minimumScaleFactor(0.5)
                                                        .font(.significant)
                                                        .meshGradientForeground()
                                                Spacer()
                                        }
                                        .padding(.vertical, 32)
                                        HStack(spacing: 0) {
                                                Spacer()
                                                Text(verbatim: "採用「香港語言學學會")
                                                Spacer()
                                        }
                                        HStack(spacing: 0) {
                                                Spacer()
                                                Text(verbatim: "粵語拼音方案」")
                                                Spacer()
                                        }
                                        HStack(spacing: 0) {
                                                Spacer()
                                                Text(verbatim: "兼容各種習慣拼寫串法")
                                                Spacer()
                                        }
                                }
                                .font(.specific(size: 26))
                                .padding(.bottom, 32)
                                .padding(.vertical, 42)
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
        SchemeView16PM()
}

#endif
