#if os(iOS)

import SwiftUI


struct DarkModeView16PM: View {
        @State private var inputText: String = ""
        var body: some View {
                List {
                        Section {
                                VStack(spacing: 16) {
                                        HStack {
                                                Spacer()
                                                Text(verbatim: "深色模式")
                                                        .lineLimit(1)
                                                        .minimumScaleFactor(0.5)
                                                        .font(.significant)
                                                        .meshGradientForeground()
                                                Spacer()
                                        }
                                        .padding(.vertical, 32)
                                        HStack(spacing: 0) {
                                                Spacer()
                                                Text(verbatim: "鍵盤介面乾淨企理")
                                                Spacer()
                                        }
                                        HStack(spacing: 0) {
                                                Spacer()
                                                Text(verbatim: "與系統融爲一體")
                                                Spacer()
                                        }
                                        HStack(spacing: 0) {
                                                Spacer()
                                                Text(verbatim: "渾然天成")
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
                                VStack(spacing: 32) {
                                        HStack {
                                                Spacer()
                                                Circle().fill(Color.red.opacity(0.5)).frame(width: 64, height: 64)
                                                Spacer()
                                                Circle().fill(Color.green.opacity(0.5)).frame(width: 64, height: 64)
                                                Spacer()
                                        }
                                        HStack {
                                                Spacer()
                                                Circle().fill(Color.blue.opacity(0.5)).frame(width: 64, height: 64)
                                                Spacer()
                                                Circle().fill(Color.yellow.opacity(0.5)).frame(width: 64, height: 64)
                                                Spacer()
                                        }
                                }
                                .padding(.vertical, 32)
                        }
                }
        }
}


#Preview {
        DarkModeView16PM()
}

#endif
