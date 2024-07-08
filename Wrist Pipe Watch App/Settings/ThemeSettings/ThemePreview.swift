//
//  ThemePreview.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/6/24.
//

import SwiftUI

struct ThemePreview: View {
    @AppStorage(UserDefaultsKeys().theme) private var selectedTheme = 0
    @AppStorage(UserDefaultsKeys().showImage) private var showImage = true
    @State var theme: any Theme
    @Binding var path: [Int]
    @State var selectedPitch: Double = 0.0
    @State var showImagePreview: Bool = true
    @State var showSaveButton: Bool = true
    
    let saveButtonOffset: Double = Screen().getSaveButtonOffset()
    
    var body: some View {
        ZStack {
            PitchRing(selectedPitch: $selectedPitch, theme: $theme)
            PitchSelector(selectedPitch: $selectedPitch, theme: $theme, showImage: $showImagePreview)
            if showSaveButton {
                ZStack() {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.ultraThinMaterial)
                    VStack {
                        Button("Save") {
                            selectedTheme = theme.id
                            showImage = showImagePreview
                            path.removeAll()
                        }
                        .padding()
                        Spacer()
                    }
                }
                .offset(y: saveButtonOffset)
            }
        }
        .focusable(true)
        .digitalCrownRotation($selectedPitch,
            from: 0, through: 12.001, by: 1,
            sensitivity: .low, isContinuous: true, isHapticFeedbackEnabled: true
        )
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AnyView(theme.getBackground()))
        .onChange(of: selectedPitch, { _,newVal in }) //needed for some reason
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button { withAnimation(.easeInOut(duration: 0.75)) { showImagePreview.toggle() } } label: {
                    showImagePreview && theme.logo != nil
                    ? Image(systemName: "photo.circle").foregroundStyle(Color.white)
                    : Image("photo.circle.slash").foregroundStyle(Color.white)
                }
                .contentTransition(.symbolEffect(.replace))
                .disabled(theme.logo == nil)
            }
        }
    }
}

#Preview {
    struct ThemePreview_Preview: View {
        @State var theme = SPEBSQSATheme()
        @State var path: [Int] = []
        
        var body: some View {
            NavigationView {
                ThemePreview(theme: theme, path: $path)
            }
        }
    }
    
    return ThemePreview_Preview()
}
