//
//  ComplicationController.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 12/14/19.
//  Copyright © 2019 David Freeman. All rights reserved.
//

import ClockKit


class ComplicationController: NSObject, CLKComplicationDataSource {
    
    func getComplicationDescriptors(handler: @escaping ([CLKComplicationDescriptor]) -> Void) {
        
        let mySupportedFamilies = CLKComplicationFamily.allCases

        // Create the condition descriptor.
        let launchDescriptor = CLKComplicationDescriptor(
            identifier: "launchWP",
            displayName: "Wrist Pipe",
            supportedFamilies: mySupportedFamilies)
        
        // Call the handler and pass an array of descriptors.
        handler([launchDescriptor])
    }
    
    // MARK: - Timeline Configuration
    
    func getSupportedTimeTravelDirections(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimeTravelDirections) -> Void) {
        handler([.forward, .backward])
    }
    
    func getTimelineStartDate(for complication: CLKComplication, withHandler handler: @escaping (Date?) -> Void) {
        handler(nil)
    }
    
    func getTimelineEndDate(for complication: CLKComplication, withHandler handler: @escaping (Date?) -> Void) {
        handler(nil)
    }
    
    func getPrivacyBehavior(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationPrivacyBehavior) -> Void) {
        handler(.showOnLockScreen)
    }
    
    // MARK: - Timeline Population
    
    func getCurrentTimelineEntry(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimelineEntry?) -> Void) {
        // Call the handler with the current timeline entry
        let nameProvider = CLKSimpleTextProvider(
            text: "Wrist Pipe",
            shortText: "WP")
        
        let ktwwsProvider = CLKSimpleTextProvider(text: "Keep the Whole World Singing!")
        
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 160, weight: .bold, scale: .large)
        let imageProvider = CLKImageProvider(onePieceImage: UIImage(systemName: "circles.hexagonpath.fill")!)
        let largeImageProvider = CLKImageProvider(onePieceImage: UIImage(systemName: "circles.hexagonpath", withConfiguration: largeConfig)!)
        
        let fcLargeConfig = UIImage.SymbolConfiguration(pointSize: 80, weight: .bold, scale: .large)
        let fcImageProvider = CLKFullColorImageProvider(fullColorImage: UIImage(systemName: "circles.hexagonpath.fill")!, tintedImageProvider: CLKImageProvider(onePieceImage: UIImage(systemName: "circles.hexagonpath.fill")!))
        let largeFcImageProvider = CLKFullColorImageProvider(fullColorImage: UIImage(systemName: "circles.hexagonpath", withConfiguration: fcLargeConfig)!, tintedImageProvider: CLKImageProvider(onePieceImage: UIImage(systemName: "circles.hexagonpath", withConfiguration: fcLargeConfig)!))
        
        switch complication.family {
        case .modularSmall:
            let template = CLKComplicationTemplateModularSmallRingImage(imageProvider: imageProvider, fillFraction: 100, ringStyle: CLKComplicationRingStyle.closed)
            handler(CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template))
            break
            
        case .modularLarge:
            let template = CLKComplicationTemplateModularLargeStandardBody(headerTextProvider: nameProvider, body1TextProvider: ktwwsProvider)
            handler(CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template))
            break
            
        case .utilitarianSmall:
            let template = CLKComplicationTemplateUtilitarianSmallRingImage(imageProvider: imageProvider, fillFraction: 100, ringStyle: CLKComplicationRingStyle.closed)
            handler(CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template))
            break
            
        case .utilitarianSmallFlat:
            let template = CLKComplicationTemplateUtilitarianSmallFlat(textProvider: nameProvider, imageProvider: imageProvider)
            handler(CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template))
            break
            
        case .utilitarianLarge:
            let template = CLKComplicationTemplateUtilitarianLargeFlat(textProvider: nameProvider, imageProvider: imageProvider)
            handler(CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template))
            break
            
        case .circularSmall:
            let template = CLKComplicationTemplateCircularSmallRingImage(imageProvider: imageProvider, fillFraction: 100, ringStyle: CLKComplicationRingStyle.closed)
            handler(CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template))
            break
            
        case .extraLarge:
            let template = CLKComplicationTemplateExtraLargeRingImage(imageProvider: largeImageProvider, fillFraction: 100, ringStyle: CLKComplicationRingStyle.closed)
            handler(CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template))
            break
            
        case .graphicCorner:
            let template = CLKComplicationTemplateGraphicCornerTextImage(textProvider: nameProvider, imageProvider: fcImageProvider)
            handler(CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template))
            break
            
        case .graphicBezel:
            let template = CLKComplicationTemplateGraphicBezelCircularText(circularTemplate: CLKComplicationTemplateGraphicCircularImage(imageProvider: fcImageProvider))
            handler(CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template))
            break
            
        case .graphicCircular:
            let template = CLKComplicationTemplateGraphicCircularImage(imageProvider: fcImageProvider)
            handler(CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template))
            break
            
        case .graphicRectangular:
            let template = CLKComplicationTemplateGraphicRectangularStandardBody(headerTextProvider: nameProvider, body1TextProvider: ktwwsProvider)
            handler(CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template))
            break
            
        case .graphicExtraLarge:
            let template = CLKComplicationTemplateGraphicExtraLargeCircularImage(imageProvider: largeFcImageProvider)
            handler(CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template))
            break
            
        @unknown default:
            print("*** Unknown Complication Family: \(complication.family) ***")
        }
    }
    
    func getTimelineEntries(for complication: CLKComplication, before date: Date, limit: Int, withHandler handler: @escaping ([CLKComplicationTimelineEntry]?) -> Void) {
        // Call the handler with the timeline entries prior to the given date
        handler(nil)
    }
    
    func getTimelineEntries(for complication: CLKComplication, after date: Date, limit: Int, withHandler handler: @escaping ([CLKComplicationTimelineEntry]?) -> Void) {
        // Call the handler with the timeline entries after to the given date
        handler(nil)
    }
    
    // MARK: - Placeholder Templates
    
    func getLocalizableSampleTemplate(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTemplate?) -> Void) {
        // This method will be called once per supported complication, and the results will be cached
        let nameProvider = CLKSimpleTextProvider(
            text: "Wrist Pipe",
            shortText: "WP")
        
        let ktwwsProvider = CLKSimpleTextProvider(text: "Keep the Whole World Singing!")
        
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 160, weight: .bold, scale: .large)
        let imageProvider = CLKImageProvider(onePieceImage: UIImage(systemName: "circles.hexagonpath.fill")!)
        let largeImageProvider = CLKImageProvider(onePieceImage: UIImage(systemName: "circles.hexagonpath", withConfiguration: largeConfig)!)
        
        let fcLargeConfig = UIImage.SymbolConfiguration(pointSize: 80, weight: .bold, scale: .large)
        let fcImageProvider = CLKFullColorImageProvider(fullColorImage: UIImage(systemName: "circles.hexagonpath.fill")!, tintedImageProvider: CLKImageProvider(onePieceImage: UIImage(systemName: "circles.hexagonpath.fill")!))
        let largeFcImageProvider = CLKFullColorImageProvider(fullColorImage: UIImage(systemName: "circles.hexagonpath", withConfiguration: fcLargeConfig)!, tintedImageProvider: CLKImageProvider(onePieceImage: UIImage(systemName: "circles.hexagonpath", withConfiguration: fcLargeConfig)!))
        
        switch complication.family {
        case .modularSmall:
            let template = CLKComplicationTemplateModularSmallRingImage(imageProvider: imageProvider, fillFraction: 100, ringStyle: CLKComplicationRingStyle.closed)
            handler(template)
            break
            
        case .modularLarge:
            let template = CLKComplicationTemplateModularLargeStandardBody(headerTextProvider: nameProvider, body1TextProvider: ktwwsProvider)
            handler(template)
            break
            
        case .utilitarianSmall:
            let template = CLKComplicationTemplateUtilitarianSmallRingImage(imageProvider: imageProvider, fillFraction: 100, ringStyle: CLKComplicationRingStyle.closed)
            handler(template)
            break
            
        case .utilitarianSmallFlat:
            let template = CLKComplicationTemplateUtilitarianSmallFlat(textProvider: nameProvider, imageProvider: imageProvider)
            handler(template)
            break
            
        case .utilitarianLarge:
            let template = CLKComplicationTemplateUtilitarianLargeFlat(textProvider: nameProvider, imageProvider: imageProvider)
            handler(template)
            break
            
        case .circularSmall:
            let template = CLKComplicationTemplateCircularSmallRingImage(imageProvider: imageProvider, fillFraction: 100, ringStyle: CLKComplicationRingStyle.closed)
            handler(template)
            break
            
        case .extraLarge:
            let template = CLKComplicationTemplateExtraLargeRingImage(imageProvider: largeImageProvider, fillFraction: 100, ringStyle: CLKComplicationRingStyle.closed)
            handler(template)
            break
            
        case .graphicCorner:
            let template = CLKComplicationTemplateGraphicCornerTextImage(textProvider: nameProvider, imageProvider: fcImageProvider)
            handler(template)
            break
            
        case .graphicBezel:
            let template = CLKComplicationTemplateGraphicBezelCircularText(circularTemplate: CLKComplicationTemplateGraphicCircularImage(imageProvider: fcImageProvider))
            handler(template)
            break
            
        case .graphicCircular:
            let template = CLKComplicationTemplateGraphicCircularImage(imageProvider: fcImageProvider)
            handler(template)
            break
            
        case .graphicRectangular:
            let template = CLKComplicationTemplateGraphicRectangularStandardBody(headerTextProvider: nameProvider, body1TextProvider: ktwwsProvider)
            handler(template)
            break
            
        case .graphicExtraLarge:
            let template = CLKComplicationTemplateGraphicExtraLargeCircularImage(imageProvider: largeFcImageProvider)
            handler(template)
            break
            
        @unknown default:
            print("*** Unknown Complication Family: \(complication.family) ***")
        }
    }
    
}
