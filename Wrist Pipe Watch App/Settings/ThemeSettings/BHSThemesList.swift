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
                NavigationLink { ThemeList(themes: CARThemes, path: $path) } label: {
//                    Image("logo_district_CAR")
//                        .resizable()
//                        .frame(width: 50, height: 50)
                    Text("Cardinal District") //CAR
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: NSCThemes, path: $path) } label: {
//                    Image("logo_district_NSC")
//                        .resizable()
//                        .frame(width: 50, height: 50)
                    Text("Carolinas District") //NSC
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: CSDThemes, path: $path) } label: {
//                    Image("logo_district_CSD")
//                        .resizable()
//                        .frame(width: 50, height: 50)
                    Text("Central States District") //CSD
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: EVGThemes, path: $path) } label: {
//                    Image("logo_district_EVG")
//                        .resizable()
//                        .frame(width: 50, height: 50)
                    Text("Evergreen District") //EVG
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: FWDThemes, path: $path) } label: {
//                    Image("logo_district_FWD")
//                        .resizable()
//                        .frame(width: 50, height: 50)
                    Text("Far Western District") //FWD
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: ILLThemes, path: $path) } label: {
//                    Image("logo_district_ILL")
//                        .resizable()
//                        .frame(width: 50, height: 50)
                    Text("Illinois District") //ILL
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: JADThemes, path: $path) } label: {
//                    Image("logo_district_JAD")
//                        .resizable()
//                        .frame(width: 50, height: 50)
                    Text("Johnny Appleseed District") //JAD
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: LOLThemes, path: $path) } label: {
//                    Image("logo_district_LOL")
//                        .resizable()
//                        .background(.white)
//                        .clipShape(.circle)
//                        .frame(width: 50, height: 50)
//                        .padding(.vertical)
//                        .padding(.trailing)
                    Text("Land O' Lakes District") //LOL
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: MADThemes, path: $path) } label: {
//                    Image("logo_district_MAD")
//                        .resizable()
//                        .frame(width: 50, height: 50)
                    Text("Mid-Atlantic District") //MAD
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: NEDThemes, path: $path) } label: {
//                    Image("logo_district_NED")
//                        .resizable()
//                        .frame(width: 50, height: 50)
                    Text("Northeastern District") //NED
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: ONTThemes, path: $path) } label: {
//                    Image("logo_district_ONT")
//                        .resizable()
//                        .frame(width: 50, height: 50)
                    Text("Ontario District") //ONT
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: PIOThemes, path: $path) } label: {
//                    Image("logo_district_PIO")
//                        .resizable()
//                        .frame(width: 50, height: 50)
                    Text("Pioneer District") //PIO
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: RMDThemes, path: $path) } label: {
//                    Image("logo_district_RMD")
//                        .resizable()
//                        .frame(width: 50, height: 50)
                    Text("Rocky Mountain District") //RMD
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: SLDThemes, path: $path) } label: {
//                    Image("logo_district_SLD")
//                        .resizable()
//                        .frame(width: 50, height: 50)
                    Text("Seneca Land District") //SLD
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: SHDThemes, path: $path) } label: {
//                    Image("logo_district_SHD")
//                        .resizable()
//                        .frame(width: 50, height: 50)
                    Text("Southeastern Harmony District") //SHD
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: SWDThemes, path: $path) } label: {
//                    Image("logo_district_SWD")
//                        .resizable()
//                        .frame(width: 50, height: 50)
                    Text("Southwestern District") //SWD
                        .frame(minWidth: 120, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                NavigationLink { ThemeList(themes: SUNThemes, path: $path) } label: {
//                    Image("logo_district_SUN")
//                        .resizable()
//                        .background(.white)
//                        .clipShape(.circle)
//                        .frame(width: 50, height: 50)
//                        .padding(.vertical)
//                        .padding(.trailing)
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
