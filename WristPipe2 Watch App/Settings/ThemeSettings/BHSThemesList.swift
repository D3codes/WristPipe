//
//  BHSThemesList.swift
//  WristPipe2 Watch App
//
//  Created by David Freeman on 3/24/24.
//

import SwiftUI

struct BHSThemesList: View {
    @AppStorage("theme") private var selectedTheme = 0
    
    var body: some View {
        List {
            Section() {
                Button(action: { selectedTheme = BHSTheme().id }, label: {
                    HStack {
                        Image("BHSlogo")
                            .resizable()
                            .frame(width: 60, height: 60)
                        Text("BHS")
                    }
                })
                Button(action: { selectedTheme = SPEBSQSATheme().id }, label: {
                    HStack {
                        Image("SPEBSQSAlogo")
                            .resizable()
                            .frame(width: 60, height: 60)
                        Text("SPEBSQSA")
                    }
                })
            }
            Section(header: Text("Districts")) {                
                NavigationLink { ThemeList(themes: CARThemes) } label: {
                    Image("logo_district_CAR")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Cardinal District") //CAR
                }
                NavigationLink { ThemeList(themes: NSCThemes) } label: {
                    Image("logo_district_NSC")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Carolinas District") //NSC
                }
                NavigationLink { ThemeList(themes: CSDThemes) } label: {
                    Image("logo_district_CSD")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Central States District") //CSD
                }
                NavigationLink { ThemeList(themes: EVGThemes) } label: {
                    Image("logo_district_EVG")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Evergreen District") //EVG
                }
                NavigationLink { ThemeList(themes: FWDThemes) } label: {
                    Image("logo_district_FWD")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Far Western District") //FWD
                }
                NavigationLink { ThemeList(themes: ILLThemes) } label: {
                    Image("logo_district_ILL")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Illinois District") //ILL
                }
                NavigationLink { ThemeList(themes: JADThemes) } label: {
                    Image("logo_district_JAD")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Johnny Appleseed District") //JAD
                }
                NavigationLink { ThemeList(themes: LOLThemes) } label: {
                    Image("logo_district_LOL")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .background(.white)
                        .clipShape(.circle)
                    Text("Land O' Lakes District") //LOL
                }
                NavigationLink { ThemeList(themes: MADThemes) } label: {
                    Image("logo_district_MAD")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Mid-Atlantic District") //MAD
                }
                NavigationLink { ThemeList(themes: NEDThemes) } label: {
                    Image("logo_district_NED")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Northeastern District") //NED
                }
                NavigationLink { ThemeList(themes: ONTThemes) } label: {
                    Image("logo_district_ONT")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Ontario District") //ONT
                }
                NavigationLink { ThemeList(themes: PIOThemes) } label: {
                    Image("logo_district_PIO")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Pioneer District") //PIO
                }
                NavigationLink { ThemeList(themes: RMDThemes) } label: {
                    Image("logo_district_RMD")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Rocky Mountain District") //RMD
                }
                NavigationLink { ThemeList(themes: SLDThemes) } label: {
                    Image("logo_district_SLD")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Seneca Land District") //SLD
                }
                NavigationLink { ThemeList(themes: SHDThemes) } label: {
                    Image("logo_district_SHD")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Southeastern Harmony District") //SHD
                }
                NavigationLink { ThemeList(themes: SWDThemes) } label: {
                    Image("logo_district_SWD")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Southwestern District") //SWD
                }
                NavigationLink { ThemeList(themes: SUNThemes) } label: {
                    Image("logo_district_SUN")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .background(.white)
                        .clipShape(.circle)
                    Text("Sunshine District") //SUN
                }
            }
        }
    }
}

#Preview {
    BHSThemesList()
}
