#if os(iOS)

import SwiftUI

struct CangjieReverseLookupView16PM: View {
        @State private var inputText: String = ""
        var body: some View {
                List {
                        Section {
                                VStack(spacing: 16) {
                                        HStack {
                                                Spacer()
                                                Text(verbatim: "倉頡反查粵拼")
                                                        .lineLimit(1)
                                                        .minimumScaleFactor(0.5)
                                                        .font(.significant)
                                                        .meshGradientForeground()
                                                Spacer()
                                        }
                                        .padding(.vertical, 36)
                                        HStack(spacing: 0) {
                                                Spacer()
                                                Text(verbatim: "先輸入 ")
                                                Text(verbatim: "v")
                                                        .font(.title.monospaced())
                                                        .foregroundStyle(Color.accentColor)
                                                Text(verbatim: " 再輸入倉頡碼")
                                                Spacer()
                                        }
                                        .font(.master)
                                        HStack(spacing: 0) {
                                                Spacer()
                                                Text(verbatim: "候選詞會提示對應嘅粵拼")
                                                Spacer()
                                        }
                                        .font(.master)
                                }
                                .padding(.bottom, 30)
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
        CangjieReverseLookupView16PM()
}

#endif
