//
//  BHSThemesList.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 3/24/24.
//

import SwiftUI

struct BHSThemesList: View {
    @AppStorage(UserDefaultsKeys().theme) private var selectedTheme = 0
    @Binding var path: [Int]
    
    var body: some View {
        List {
            Section() {
                NavigationLink { ThemePreview(theme: BHSTheme(), path: $path) } label: {
                    HStack {
                        Text("BHS")
                        Spacer()
                        if selectedTheme == BHSTheme().id {
                            Image(systemName: "checkmark")
                                .foregroundStyle(.green)
                        }
                    }
                }
                NavigationLink { ThemePreview(theme: SPEBSQSATheme(), path: $path) } label: {
                    HStack {
                        Text("SPEBSQSA")
                        Spacer()
                        if selectedTheme == SPEBSQSATheme().id {
                            Image(systemName: "checkmark")
                                .foregroundStyle(.green)
                        }
                    }
                }
            }
            Section(header: Text("Districts")) {                
                NavigationLink { ThemeList(topLevelThemes: [CARTheme()], themes: CARThemes, themesHeader: "Choruses", path: $path) } label: {
                    Text("Cardinal District") //CAR
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(topLevelThemes: [NSCTheme()], themes: NSCThemes, themesHeader: "Choruses", path: $path) } label: {
                    Text("Carolinas District") //NSC
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(topLevelThemes: [CSDTheme()], themes: CSDThemes, themesHeader: "Choruses", path: $path) } label: {
                    Text("Central States District") //CSD
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(topLevelThemes: [EVGTheme()], themes: EVGThemes, themesHeader: "Choruses", path: $path) } label: {
                    Text("Evergreen District") //EVG
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(topLevelThemes: [FWDTheme()], themes: FWDThemes, themesHeader: "Choruses", path: $path) } label: {
                    Text("Far Western District") //FWD
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(topLevelThemes: [ILLTheme()], themes: ILLThemes, themesHeader: "Choruses", path: $path) } label: {
                    Text("Illinois District") //ILL
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(topLevelThemes: [JADTheme()], themes: JADThemes, themesHeader: "Choruses", path: $path) } label: {
                    Text("Johnny Appleseed District") //JAD
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(topLevelThemes: [LOLTheme()], themes: LOLThemes, themesHeader: "Choruses", path: $path) } label: {
                    Text("Land O' Lakes District") //LOL
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(topLevelThemes: [MADTheme()], themes: MADThemes, themesHeader: "Choruses", path: $path) } label: {
                    Text("Mid-Atlantic District") //MAD
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(topLevelThemes: [NEDTheme()], themes: NEDThemes, themesHeader: "Choruses", path: $path) } label: {
                    Text("Northeastern District") //NED
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(topLevelThemes: [ONTTheme()], themes: ONTThemes, themesHeader: "Choruses", path: $path) } label: {
                    Text("Ontario District") //ONT
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: PIOThemes, themesHeader: "Choruses", path: $path) } label: {
                    Text("Pioneer District") //PIO
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: RMDThemes, themesHeader: "Choruses", path: $path) } label: {
                    Text("Rocky Mountain District") //RMD
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: SLDThemes, themesHeader: "Choruses", path: $path) } label: {
                    Text("Seneca Land District") //SLD
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: SHDThemes, themesHeader: "Choruses", path: $path) } label: {
                    Text("Southeastern Harmony District") //SHD
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: SWDThemes, themesHeader: "Choruses", path: $path) } label: {
                    Text("Southwestern District") //SWD
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: SUNThemes, themesHeader: "Choruses", path: $path) } label: {
                    Text("Sunshine District") //SUN
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
            }
        }
    }
}

#Preview {
    struct BHSThemesList_Preview: View {
        @State var path = [Int]()
            
        var body: some View {
            BHSThemesList(path: $path)
        }
    }
        
    return BHSThemesList_Preview()
}
