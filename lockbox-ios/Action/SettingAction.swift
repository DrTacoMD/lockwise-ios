/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

import Foundation
import UIKit

enum SettingAction: Action {
    case autoLockTime(timeout: Setting.AutoLock)
    case itemListSort(sort: Setting.ItemListSort)
    case preferredBrowser(browser: Setting.PreferredBrowser)
    case recordUsageData(enabled: Bool)
    case reset
    case forceLock(enabled: Bool) // Used when the "Lock Now" button is tapped
}

extension SettingAction: TelemetryAction {
    var eventMethod: TelemetryEventMethod {
        return .settingChanged
    }

    var eventObject: TelemetryEventObject {
        switch self {
        case .autoLockTime:
            return .settingsAutolockTime
        case .preferredBrowser:
            return .settingsPreferredBrowser
        case .reset:
            return .settingsReset
        case .recordUsageData:
            return .settingsRecordUsageData
        case .itemListSort:
            return .settingsItemListSort
        case .forceLock:
            return .forceLock
        }
    }

    var value: String? {
        switch self {
        case .autoLockTime(let timeout):
            let timeoutString = String(timeout.rawValue)
            return timeoutString
        case .preferredBrowser(let browser):
            let browserString = String(browser.rawValue)
            return browserString
        case .recordUsageData(let enabled):
            let enabledString = String(enabled)
            return enabledString
        case .itemListSort(let sort):
            return sort == .alphabetically ?
                Setting.ItemListSort.alphabetically.rawValue : Setting.ItemListSort.recentlyUsed.rawValue
        case .reset:
            return nil
        case .forceLock(let enabled):
            return String(enabled)
        }
    }

    var extras: [String: Any?]? {
        return nil
    }
}

extension SettingAction: Equatable {
    static func ==(lhs: SettingAction, rhs: SettingAction) -> Bool {
        switch (lhs, rhs) {
        case (.autoLockTime(let lhTimeout), .autoLockTime(let rhTimeout)):
            return lhTimeout == rhTimeout
        case (.preferredBrowser(let lhBrowser), .preferredBrowser(let rhBrowser)):
            return lhBrowser == rhBrowser
        case (.recordUsageData(let lhEnabled), .recordUsageData(let rhEnabled)):
            return lhEnabled == rhEnabled
        case (.itemListSort(let lhSort), .itemListSort(let rhSort)):
            return lhSort == rhSort
        case (.reset, .reset):
            return true
        case (.forceLock(let lhEnabled), .forceLock(let rhEnabled)):
            return lhEnabled == rhEnabled
        default:
            return false
        }
    }
}

extension Setting.AutoLock {
    func toString() -> String {
        switch self {
        case .OneMinute:
            return Localized.string.autoLockOneMinute
        case .FiveMinutes:
            return Localized.string.autoLockFiveMinutes
        case .FifteenMinutes:
            return Localized.string.autoLockFifteenMinutes
        case .ThirtyMinutes:
            return Localized.string.autoLockThirtyMinutes
        case .OneHour:
            return Localized.string.autoLockOneHour
        case .TwelveHours:
            return Localized.string.autoLockTwelveHours
        case .TwentyFourHours:
            return Localized.string.autoLockTwentyFourHours
        case .Never:
            return Localized.string.autoLockNever
        }
    }
}

extension Setting {
    enum PreferredBrowser: String {
        case Chrome
        case Firefox
        case Focus
        case Safari
        case Klar

        func getPreferredBrowserDeeplink(url: String) -> URL? {
            guard let encodedString = url.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) else { return nil }

            switch self {
            case .Safari:
                return URL(string: url)
            case .Firefox:
                return URL(string: "firefox://open-url?url=\(encodedString)")
            case .Focus:
                return URL(string: "firefox-focus://open-url?url=\(encodedString)")
            case .Chrome:
                let split = url.split(separator: ":", maxSplits: 1, omittingEmptySubsequences: false)
                let urlWithoutScheme = split[1]
                let chromeScheme = split[0] == "http" ? "googlechrome:" : "googlechromes:"
                return URL(string: "\(chromeScheme)\(urlWithoutScheme)")
            case .Klar:
                return URL(string: "firefox-klar://open-url?url=\(encodedString)")
            }
        }

        func canOpenBrowser(application: OpenUrlProtocol = UIApplication.shared) -> Bool {
            if let url = self.getPreferredBrowserDeeplink(url: "http://mozilla.org") {
                return application.canOpenURL(url)
            }

            return false
        }

        func openUrl(url: String,
                     application: OpenUrlProtocol = UIApplication.shared,
                     completion: ((Bool) -> Swift.Void)? = nil) {
            if let urlToOpen = self.getPreferredBrowserDeeplink(url: url) {
                application.open(urlToOpen, options: [:], completionHandler: completion)
            }
        }

        func toString() -> String {
            switch self {
            case .Safari:
                return Localized.string.settingsBrowserSafari
            case .Chrome:
                return Localized.string.settingsBrowserChrome
            case .Firefox:
                return Localized.string.settingsBrowserFirefox
            case .Focus:
                return Localized.string.settingsBrowserFocus
            case .Klar:
                return Localized.string.settingsBrowserKlar
            }
        }
    }
}
