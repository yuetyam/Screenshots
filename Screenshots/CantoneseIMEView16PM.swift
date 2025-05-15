#if os(iOS)

import SwiftUI

struct CantoneseIMEView16PM: View {
        @State private var inputText: String = ""
        var body: some View {
                List {
                        Section {
                                VStack(spacing: 16) {
                                        HStack {
                                                Spacer()
                                                Text(verbatim: "粵語輸入法")
                                                        .lineLimit(1)
                                                        .minimumScaleFactor(0.5)
                                                        .font(.significant)
                                                        .meshGradientForeground()
                                                Spacer()
                                        }
                                        .padding(.vertical, 32)
                                        HStack(spacing: 0) {
                                                Spacer()
                                                Text(verbatim: "我手寫我口")
                                                Spacer()
                                        }
                                        .font(.master)
                                        HStack(spacing: 0) {
                                                Spacer()
                                                Text(verbatim: "粵語拼音")
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
        CantoneseIMEView16PM()
}

extension View {
        func meshGradientForeground() -> some View {
                return self.foregroundStyle(
                        MeshGradient(width: 3, height: 3, points: [
                                .init(0, 0), .init(0.5, 0), .init(1, 0),
                                .init(0, 0.5), .init(0.5, 0.5), .init(1, 0.5),
                                .init(0, 1), .init(0.5, 1), .init(1, 1)
                        ], colors: [
                                .red, .purple, .indigo,
                                .orange, .gray, .blue,
                                .yellow, .green, .mint
                        ])
                )
        }
}

struct ColorCircles: View {
        var body: some View {
                VStack(spacing: 16) {
                        HStack {
                                Spacer()
                                Circle().fill(Color.red).frame(width: 100, height: 100)
                                Spacer()
                                Circle().fill(Color.green).frame(width: 100, height: 100)
                                Spacer()
                        }
                        HStack {
                                Spacer()
                                Circle().fill(Color.blue).frame(width: 100, height: 100)
                                Spacer()
                                Circle().fill(Color.yellow).frame(width: 100, height: 100)
                                Spacer()
                        }
                }
        }
}

struct AltColorCircles: View {
        var body: some View {
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

#endif
