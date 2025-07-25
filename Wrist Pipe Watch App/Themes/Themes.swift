//
//  Themes.swift
//  Wrist Pipe Watch App
//
//  Created by David Freeman on 2/26/24.
//

import Foundation

//0-999
let ColorThemes: [any Theme] = [
    BlackTheme(),           //0
    BlueTheme(),            //1
    RedTheme(),             //2
    PurpleTheme(),          //3
    GreenTheme(),           //4
    OrangeTheme(),          //5
    YellowTheme(),          //6
    PinkTheme(),            //7
//    BrownTheme(),           //8
]

//1000-2999
let BHSThemes: [any Theme] = [
    BHSTheme(),             //1000
    SPEBSQSATheme(),        //1001
    CARTheme(),             //1002
    NSCTheme(),             //1003
    CSDTheme(),             //1004
    EVGTheme(),             //1005
    FWDTheme(),             //1006
    ILLTheme(),             //1007
    JADTheme(),             //1008
    LOLTheme(),             //1009
    MADTheme(),             //1010
    NEDTheme(),             //1011
    ONTTheme(),             //1012
    PIOTheme(),             //1013
    RMDTheme(),             //1014
    SLDTheme(),             //1015
    SHDTheme(),             //1016
    SWDTheme(),             //1017
    SUNTheme(),             //1018
]
+ CARThemes + NSCThemes + CSDThemes + EVGThemes
+ FWDThemes + ILLThemes + JADThemes + LOLThemes
+ MADThemes + NEDThemes + ONTThemes + PIOThemes
+ RMDThemes + SLDThemes + SHDThemes + SWDThemes
+ SUNThemes

//1100-1199
let CARThemes: [any Theme] = [
    GreatRiverVoicesTheme(),        //1100
    CircleCitySoundTheme(),         //1101
    ThoroughbredTheme(),            //1102
]

//1200-1299
let NSCThemes: [any Theme] = [
    PalmettoTheme(),                //1200
    HCATheme(),                     //1201
    GoldStandardTheme(),            //1202
    THETheme(),                     //1203
    OakCityTheme(),                 //1204
    LOTSTheme(),                    //1205
]

//1300-1399
let CSDThemes: [any Theme] = [
    CodyChoraliersTheme(),          //1300
    AOHTheme(),                     //1301
    CentralStandardTheme(),         //1302
    RecruitsTheme(),                //1303
    SmorgasTheme(),                 //1304
    LittleAppleTheme(),             //1305
    HOATheme(),                     //1306
    PathfinderTheme(),              //1307
    VisionsTheme(),                 //1308
]

//1400-1499
let EVGThemes: [any Theme] = [
    PDXTheme(),                     //1400
    VocalSummitTheme(),             //1401
    BoiseChordsTheme(),             //1402
    NWSoundTheme(),                 //1403
    SenateAiresTheme(),             //1404
    TVSTheme(),                     //1405
]

//1500-1599
let FWDThemes: [any Theme] = [
    WestminsterTheme(),             //1500
    FogCityTheme(),                 //1501
    MOHTheme(),                     //1502
    PCHTheme(),                     //1503
    SWVATheme(),                    //1504
    PhoeniciansTheme(),             //1505
    FCHTheme(),                     //1506
]

//1600-1699
let ILLThemes: [any Theme] = [
    SOITheme(),                     //1600
    NewTradTheme(),                 //1601
    WTCTheme(),                     //1602
]

//1700-1799
let JADThemes: [any Theme] = [
    SGCTheme(),                     //1700
    VocalConfluenceTheme(),         //1701
    SingingBuckeyesTheme(),         //1702
    MOITheme(),                     //1703
]

//1800-1899
let LOLThemes: [any Theme] = [
    MVETheme(),                     //1800
    ForwardHarmonyTheme(),          //1801
    GNUTheme(),                     //1802
    CommodoresTheme(),              //1803
    GPHTheme(),                     //1804
]

//1900-1999
let MADThemes: [any Theme] = [
    ParksideTheme(),                //1900
    AlexandriaHarmonizersTheme(),   //1901
    VOGTheme(),                     //1902
    EastCoastTheme(),               //1903
    MVTheme(),                      //1904
    SirensTheme(),                  //1905
    TrueNorthTheme(),               //1906
]

//2000-2099
let NEDThemes: [any Theme] = [
    VRTheme(),                      //2000
    VocaMotionTheme(),              //2001
    VoicesUnitedTheme(),            //2002
    NBCTheme(),                     //2003
    CCSTheme(),                     //2004
]

//2100-2199
let ONTThemes: [any Theme] = [
    HarmonyLeagueTheme(),           //2100
    GOHTheme(),                     //2101
    CCCTheme(),                     //2102
    HarbourtownTheme(),             //2103
    TNLTheme(),                     //2104
    VoicesUnlimitedTheme(),         //2105
]

//2200-2299
let PIOThemes: [any Theme] = [
    GreatLakesTheme(),              //2200
    CityLightsTheme(),              //2201
    CapCityTheme(),                 //2202
]

//2300-2399
let RMDThemes: [any Theme] = [
    SOTRTheme(),                    //2300
    SaltairesTheme(),               //2301
    LPCTheme(),                     //2302
    TimberTheme(),                  //2303
]

//2400-2499
let SLDThemes: [any Theme] = [
    HarmColTheme(),                 //2400
    SouthernTheme(),                //2401
]

//2500-2599
let SHDThemes: [any Theme] = [
    CrimPrideTheme(),               //2500
    ChooChooTheme(),                //2501
    SOTNTheme(),                    //2502
    RSVPTheme(),                    //2503
    MusicCityTheme(),               //2504
    SMCTheme(),                     //2505
    AVPTheme(),                     //2506
]

//2600-2699
let SWDThemes: [any Theme] = [
    SpaceCityTheme(),               //2600
    PrismTheme(),                   //2601
    AcaFedTheme(),                  //2602
    VSOOTheme(),                    //2603
    MarcsmenTheme(),                //2604
    VocalMajorityTheme(),           //2605
    SBSWTheme(),                    //2606
]

//2700-2799
let SUNThemes: [any Theme] = [
    BOCTheme(),                     //2700
    OBCTheme(),                     //2701
    OrlandoHarmonyTheme(),          //2702
    HOHTheme(),                     //2703
    HOFTheme(),                     //2704
    HDTheme(),                      //2705
]

//3000-3999
let CauseThemes: [any Theme] = [
    UnityTheme(),           //3000
    PrideTheme(),           //3001
    TransTheme(),           //3002
    EIHTheme(),             //3003
]

let Themes: [any Theme] = ColorThemes + BHSThemes + CauseThemes
