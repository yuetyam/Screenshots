#if os(iOS)

import SwiftUI


struct TextView16PM: View {
        var body: some View {
                ZStack {
                        Color.white.ignoresSafeArea()
                        VStack(alignment: .leading, spacing: 18) {
                                Text(verbatim: "iOS").font(.system(size: 64, weight: .medium))
                                Text(verbatim: "粵拼輸入法").font(Font.specific(size: 64, bolder: true))
                                Text(verbatim: "更新").font(Font.specific(size: 64, bolder: true))
                        }
                        // .font(.system(size: 60, weight: .semibold))
                }
        }
}


#Preview {
        TextView16PM()
}

#endif
