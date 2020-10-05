//
//  CategoryType.swift
//  HealthKitReporter
//
//  Created by Florian on 05.10.20.
//

import Foundation
import HealthKit

public enum CategoryType: Int, Original {
    public typealias Object = HKCategoryType
    
    case sleepAnalysis
    case appleStandHour
    case sexualActivity
    case intermenstrualBleeding
    case menstrualFlow
    case ovulationTestResult
    case cervicalMucusQuality
    case audioExposureEvent

    public func asOriginal() throws -> Object {
        switch self {
        case .sleepAnalysis:
            return HKObjectType.categoryType(forIdentifier: .sleepAnalysis)!
        case .appleStandHour:
            return HKObjectType.categoryType(forIdentifier: .appleStandHour)!
        case .sexualActivity:
            return HKObjectType.categoryType(forIdentifier: .sexualActivity)!
        case .intermenstrualBleeding:
            return HKObjectType.categoryType(forIdentifier: .intermenstrualBleeding)!
        case .menstrualFlow:
            return HKObjectType.categoryType(forIdentifier: .menstrualFlow)!
        case .ovulationTestResult:
            return HKObjectType.categoryType(forIdentifier: .ovulationTestResult)!
        case .cervicalMucusQuality:
            return HKObjectType.categoryType(forIdentifier: .cervicalMucusQuality)!
        case .audioExposureEvent:
            if #available(iOS 13.0, *) {
                return HKObjectType.categoryType(forIdentifier: .audioExposureEvent)!
            } else {
                throw HealthKitError.notAvailable(
                    "Not available in iOS lower than iOS 13.0"
                )
            }
        }
    }
}
