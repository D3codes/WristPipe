//
//  ThemePreview.swift
//  Wrist Pipe
//
//  Created by David Freeman on 7/6/24.
//

import SwiftUI
import TipKit

struct ThemePreview: View {
    @AppStorage(UserDefaultsKeys().theme) private var selectedTheme = 0
    @AppStorage(UserDefaultsKeys().showImage) private var showImage = true
    @State var theme: any Theme
    @Binding var path: [Int]
    @State var selectedPitch: Double = 0.0
    @State var showImagePreview: Bool = true
    @State var showSaveButton: Bool = true
    
    let saveButtonOffset: Double = Screen().getSaveButtonOffset()
    
    private let toggleImageTip = ToggleImageTip()
    
    var body: some View {
        ZStack {
            PitchSelector(selectedPitch: $selectedPitch, theme: $theme, showImage: $showImagePreview)
            PitchRing(selectedPitch: $selectedPitch, theme: $theme)
            if showSaveButton {
                ZStack {
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
            TipView(toggleImageTip)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
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
                Button {
                    withAnimation(.easeInOut(duration: 0.75)) { showImagePreview.toggle() }
                    ToggleImageTip.alreadyDiscovered = true
                } label: {
                    showImagePreview && theme.logo != nil
                    ? Image("custom.photo.circle").foregroundStyle(Color.white)
                    : Image("custom.photo.circle.slash").foregroundStyle(Color.white)
                }
                .contentTransition(.symbolEffect(.replace))
                .disabled(theme.logo == nil)
            }
        }
        .onAppear(perform: {
            if theme.logo != nil {
                ToggleImageTip.themeSelected.sendDonation()
            }
        })
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
