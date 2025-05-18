#if os(iOS)

import SwiftUI

struct PinyinReverseLookupView16PM: View {
        @State private var inputText: String = ""
        var body: some View {
                List {
                        Section {
                                VStack(spacing: 16) {
                                        HStack {
                                                Spacer()
                                                Text(verbatim: "普通話拼音反查粵拼")
                                                        .lineLimit(1)
                                                        .minimumScaleFactor(0.5)
                                                        .font(.significant)
                                                        .meshGradientForeground()
                                                Spacer()
                                        }
                                        .padding(.vertical, 40)
                                        HStack(spacing: 0) {
                                                Spacer()
                                                Text(verbatim: "先輸入 ")
                                                        .lineLimit(1)
                                                        .minimumScaleFactor(0.5)
                                                Text(verbatim: "r")
                                                        .font(.title.monospaced())
                                                        .foregroundStyle(Color.accentColor)
                                                Text(verbatim: " 再輸入普通話拼音")
                                                        .lineLimit(1)
                                                        .minimumScaleFactor(0.5)
                                                Spacer()
                                        }
                                        .font(.master)
                                        HStack(spacing: 0) {
                                                Spacer()
                                                Text(verbatim: "候選詞會標示對應嘅粵拼")
                                                Spacer()
                                        }
                                        .font(.master)
                                }
                                .padding(.bottom, 36)
                                .padding(.vertical, 60)
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
        PinyinReverseLookupView16PM()
}

#endif
