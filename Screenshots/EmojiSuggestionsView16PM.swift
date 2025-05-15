#if os(iOS)

import SwiftUI


struct EmojiSuggestionsView16PM: View {
        @State private var inputText: String = ""
        var body: some View {
                List {
                        Section {
                                VStack(spacing: 16) {
                                        HStack {
                                                Spacer()
                                                Text(verbatim: "粵語 Emoji")
                                                        .lineLimit(1)
                                                        .minimumScaleFactor(0.5)
                                                        .font(.significant)
                                                        .meshGradientForeground()
                                                Spacer()
                                        }
                                        .padding(.vertical, 32)
                                        HStack(spacing: 0) {
                                                Spacer()
                                                Text(verbatim: "更契合粵語嘅 Emoji 建議")
                                                Spacer()
                                        }
                                        .font(.master)
                                        HStack(spacing: 0) {
                                                Spacer()
                                                Text(verbatim: "輸入 daai cung 即出 🐅")
                                                Spacer()
                                        }
                                        .font(.master)
                                }
                                .padding(.bottom, 32)
                                .padding(.vertical, 64)
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
        EmojiSuggestionsView16PM()
}

#endif
