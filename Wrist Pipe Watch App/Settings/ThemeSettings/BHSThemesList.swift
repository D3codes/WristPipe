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
                Button(action: {
                    selectedTheme = BHSTheme().id
                    path.removeAll()
                }, label: {
                    HStack {
                        Image("BHSlogo")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.vertical)
                            .padding(.trailing)
                        Text("BHS")
                    }
                })
                Button(action: {
                    selectedTheme = SPEBSQSATheme().id
                    path.removeAll()
                }, label: {
                    HStack {
                        Image("SPEBSQSAlogo")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.vertical)
                            .padding(.trailing)
                        Text("SPEBSQSA")
                    }
                })
            }
            Section(header: Text("Districts")) {                
                NavigationLink { ThemeList(themes: CARThemes, path: $path) } label: {
                    Image("logo_district_CAR")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Cardinal District") //CAR
                }
                NavigationLink { ThemeList(themes: NSCThemes, path: $path) } label: {
                    Image("logo_district_NSC")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Carolinas District") //NSC
                }
                NavigationLink { ThemeList(themes: CSDThemes, path: $path) } label: {
                    Image("logo_district_CSD")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Central States District") //CSD
                }
                NavigationLink { ThemeList(themes: EVGThemes, path: $path) } label: {
                    Image("logo_district_EVG")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Evergreen District") //EVG
                }
                NavigationLink { ThemeList(themes: FWDThemes, path: $path) } label: {
                    Image("logo_district_FWD")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Far Western District") //FWD
                }
                NavigationLink { ThemeList(themes: ILLThemes, path: $path) } label: {
                    Image("logo_district_ILL")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Illinois District") //ILL
                }
                NavigationLink { ThemeList(themes: JADThemes, path: $path) } label: {
                    Image("logo_district_JAD")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Johnny Appleseed District") //JAD
                }
                NavigationLink { ThemeList(themes: LOLThemes, path: $path) } label: {
                    Image("logo_district_LOL")
                        .resizable()
                        .background(.white)
                        .clipShape(.circle)
                        .frame(width: 50, height: 50)
                        .padding(.vertical)
                        .padding(.trailing)
                    Text("Land O' Lakes District") //LOL
                }
                NavigationLink { ThemeList(themes: MADThemes, path: $path) } label: {
                    Image("logo_district_MAD")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Mid-Atlantic District") //MAD
                }
                NavigationLink { ThemeList(themes: NEDThemes, path: $path) } label: {
                    Image("logo_district_NED")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Northeastern District") //NED
                }
                NavigationLink { ThemeList(themes: ONTThemes, path: $path) } label: {
                    Image("logo_district_ONT")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Ontario District") //ONT
                }
                NavigationLink { ThemeList(themes: PIOThemes, path: $path) } label: {
                    Image("logo_district_PIO")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Pioneer District") //PIO
                }
                NavigationLink { ThemeList(themes: RMDThemes, path: $path) } label: {
                    Image("logo_district_RMD")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Rocky Mountain District") //RMD
                }
                NavigationLink { ThemeList(themes: SLDThemes, path: $path) } label: {
                    Image("logo_district_SLD")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Seneca Land District") //SLD
                }
                NavigationLink { ThemeList(themes: SHDThemes, path: $path) } label: {
                    Image("logo_district_SHD")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Southeastern Harmony District") //SHD
                }
                NavigationLink { ThemeList(themes: SWDThemes, path: $path) } label: {
                    Image("logo_district_SWD")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Southwestern District") //SWD
                }
                NavigationLink { ThemeList(themes: SUNThemes, path: $path) } label: {
                    Image("logo_district_SUN")
                        .resizable()
                        .background(.white)
                        .clipShape(.circle)
                        .frame(width: 50, height: 50)
                        .padding(.vertical)
                        .padding(.trailing)
                    Text("Sunshine District") //SUN
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
