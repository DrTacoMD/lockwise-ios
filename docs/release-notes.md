# Release Notes

## 1.7.3 (Build 4110)

_Date: 2020-04-19__

Additions: Previous version (1.7.2) salt and plain text header database changes resulted in a failed local database migration for some users.  This version includes a fix to remedy an inaccessible local database to prevent users from being stuck on a purple screen or empty login list.

All changes since version 1.7.2:

- Lockwise block on purple screen during launch #1201
- Resolve local database access issues #1202

## 1.7.2 (Build 4087)

_Date: 2020-02-18_

Additions: Integrated new Glean framework, fixes SQLite database crash by updating to Application Services version 0.48.3 and incorporating database salt and plain text header changes, fixes issue where user is automatically logged in again after deleting and reinstalling the app, fixes issue where login is not deleted when tapping the "delete" button, fixes issue where domain name does not show when autofilling if iOS user has dark mode enabled

All changes since version 1.7.1:

- Update Localization Strings (#1160, #1177)
- Resolve SQLite database crash in Credential Provider (#1170, #1176, #1189, #1190, #1181, #1180)
- Use new Telemetry SDK (Glean) on iOS (#1129)
- Autofill Credential Provider domain names in Dark Mode (#1182)
- Delete button non-responsive (#1188)
- User still logged in after uninstalling/reinstalling the app (#955)

## 1.7.1 (Build 3997)

_Date: 2019-12-12_

Additions: Updates to FAQ links, Feature Flags for new feature development
We fixed bugs related to: launch crashes, data in telemetry events, test fixes

All changes since version 1.7.0:

- Update FAQ links (#1093)
- Launch crash due to expired auth token (#1147)
- Telemetry event data (#1158)
- Bad phrasing in preferred browser setting screen (#1101)
- Add Feature Flags (#1095)
- Compilation error for XCUITests due to incorrect compilation flag (#1143)
- New FxA page causing tests to fail (#1153)

## 1.7.0 (Build 3902)

_Date: 2019-11-19_

New Feature: Swipe to delete a credential on the login list screen
We fixed bugs related to: iOS 13 layout and navigation bar issues, keyboard dismissal when viewing login list

All changes since last build and version 1.6.2:

- Add universal links (#1100)
- Add swipe to delete functionality on login list screen (#938)
- Add telemetry to opening external websites and add sync telemetry (#1087) (#1090)
- update codebase for Xcode 11.2.1 and Swift 5.1.2 (#1099)
- bump application-services to v0.42.3 (#1099)
- update RxSwift to most recent version built with Swift 5 (#1099)
- fix navigation bar color and size issues caused by changes in iOS 13 on both iPhone and iPad (#1097)
- fix issue where logins do not appear on first launch due to iOS 13 change where traitCollectionDidChange is no longer called on initial view layout (#1106)
- keyboard dismissal bug when viewing login list (#1123)
- import new localization strings from pontoon (#1140)

## 1.7.0 (Build 3871)

_Date: 2019-11-15_

New Feature: Swipe to delete a credential on the login list screen
We fixed bugs related to: iOS 13 layout and navigation bar issues, keyboard dismissal when viewing login list

All changes since last build and version 1.6.2:

- Add universal links (#1100)
- Add swipe to delete functionality on login list screen (#938)
- Add telemetry to opening external websites and add sync telemetry (#1087) (#1090)
- update codebase for Xcode 11.2.1 and Swift 5.1.2 (#1099)
- bump application-services to v0.42.3 (#1099)
- update RxSwift to most recent version built with Swift 5 (#1099)
- fix navigation bar color and size issues caused by changes in iOS 13 on both iPhone and iPad (#1097)
- fix issue where logins do not appear on first launch due to iOS 13 change where traitCollectionDidChange is no longer called on initial view layout (#1106)
- keyboard dismissal bug when viewing login list (#1123)

## 1.6.2 (Build 3616)

_Date: 2019-06-26_

We fixed bugs related to: signing in, syncing, and translations.

Changes since the last build:

- import the latest fr and de translations (#1067)
- bump application-services to v0.32.1 (#1068)

All changes since version 1.6.1:

- migrate to Swift 5 (#1037)
- update application-services to 0.31.2 (#1050)
- implement a sync timeout (#1045)
- hide password after navigating away (#1049)
- increase cancel button width in AutoFill list view (#1048)
- improve error handling and reporting for better troubleshooting (#1038)
- added minimal support for when no network is available (#1054)
- display the translated string for text view in onboarding (#1057) 
- import the latest fr and de translations (#1067)
- bump application-services to v0.32.1 (#1068)

## 1.6.2 (Build 3598)

_Date: 2019-06-24_

We fixed bugs related to: signing in, syncing, and translations.

Changes since the last build:

- added minimal support for when no network is available (#1054)
- display the translated string for text view in onboarding (#1057) 

All changes since version 1.6.1:

- migrate to Swift 5 (#1037)
- update application-services to 0.31.2 (#1050)
- implement a sync timeout (#1045)
- hide password after navigating away (#1049)
- increase cancel button width in AutoFill list view (#1048)
- improve error handling and reporting for better troubleshooting (#1038)
- added minimal support for when no network is available (#1054)
- display the translated string for text view in onboarding (#1057) 

## 1.6.2 (Build 3548)

_Date: 2019-06-11_

We fixed bugs related to: signing in, syncing, and translations.

Changes since version 1.6.1:

- migrate to Swift 5 (#1037)
- update application-services to 0.31.2 (#1050)
- implement a sync timeout (#1045)
- hide password after navigating away (#1049)
- increase cancel button width in AutoFill list view (#1048)
- improve error handling and reporting for better troubleshooting (#1038)

## 1.6.1 (Build 3457)

_Date: 2019-05-30_

We fixed some bugs around signing in, syncing, translations, and the AutoFill experience.

Changes since version 1.6.0:

- added more detail to logging of errors and crashes (#1020)
- updated to latest application-services version (#1019)
- foreground / background fixes (#1023)
- localization fixes (#1026 #1030 #1027 #992 #1032)
- improve AutoFill state checking (#1031)

## 1.6.0 (Build 3352)

_Date: 2019-05-22_

Firefox Lockbox is now Firefox Lockwise! With the new name also comes a new look!

Changes since last the last build for version 1.6.0:

- toggle password to hidden on backgrounding (#995) 
- fix issue where locking only happens once per app lifecycle (#1003) 

All changes for version 1.6.0:

- re-brand to Lockwise (#958 and #979)
- change to app-services dependency (#974)
- fix for datastore (#970)
- remove button to direct to settings when logging in (#996) 
- toggle password to hidden on backgrounding (#995) 
- fix issue where locking only happens once per app lifecycle (#1003) 

## 1.6.0 (Build 3339)

_Date: 2019-05-21_

Firefox Lockbox is now Firefox Lockwise! With the new name also comes a new look!

Changes in this version:

- re-brand to Lockwise (#958 and #979)
- change to app-services dependency (#974)
- fix for datastore (#970)
- remove button to direct to settings when logging in (#996) 

## 1.5.2 (Build 3338)

_Date: 2019-05-21_

A bug fix around unlocking during AutoFill.

- autolock respected and reset properly in autofill contexts (#993)
- remove button to direct to settings when logging in (#996)

## 1.5.1 (Build 3310)

_Date: 2019-05-17_

Attempts to fix a bug with signing in and syncing logins. Some users may be required to sign in again. Apologies for the inconvenience.

- log errors outside of debug, push errored state, handle fxa errors (#990)


## 1.5.0 (Build 3240)

_Date: 2019-05-10_

This is a major update because we changed how sign in and sync works behind the scenes. You shouldn't notice it but it was a big deal.

We also fixed a few little bugs along the way.

**Fourth TestFlight build**

New since the last build:

- remove gray bar at bottom of tall screens (#948)
- improved UI transitions (#951) 
- improved strings for localizing (#952)
- improved syncstate (#956)
- autofill fixes (#961)

All other changes since the previous release:

- fix backgrounding / foregrounding problems with lock (#936)
- make updates for product name use in strings and starting to prep for localization
- fix autofill to work with new logins library (#928)
- only autolock in the background (#916)
- fix recurring web address (#932)
- integrate a-s logins (#891)
- use mozillaappservices.framework (#911)
- update RxSwift and MappaMundi dependencies (#912)
- fix app start up when there's no network (#905)

## 1.5.0 (Build 3135)

_Date: 2019-05-01_

Third TestFlight build testing the new logins library from application-services.

- fix backgrounding / foregrounding problems with lock (#936)
- make updates for product name use in strings and starting to prep for localization

## 1.5.0 (Build 3088)

_Date: 2019-04-26_

Second TestFlight build testing the new logins library from application-services.

- fix autofill to work with new logins library (#928)
- only autolock in the background (#916)
- fix recurring web address (#932)

## 1.5.0 (Build 2999)

_Date: 2019-04-19_

First TestFlight build testing the new logins library from application-services. Known issue: autofill doesn't work.

- integrate a-s logins (#891)
- use mozillaappservices.framework (#911)
- update RxSwift and MappaMundi dependencies (#912)
- fix app start up when there's no network (#905)

## 1.4.1 (Build 2943)

_Date: 2019-04-03_

We made minor fixes to visual inconsistencies between the iPhone and iPad.

"Thanks" as always to the contributors who have helped along the way!

## 1.4.0 (Build 2908)

_Date: 2019-03-11_

This is a big update and we hope you enjoy it! Here's are the two major changes:

1. We've improved the search experience to use newer iOS features to help keep it stable and working consistently (which means we now require you use iOS 11).

2. We added iPad support so you can browse your logins in a full-screen app. On top of that, you can drag-and-drop your usernames and passwords into websites and apps if you use multitasking mode (Split View, Slide Over).

A big "thanks" to all the contributors that helped along the way!

## 1.4.0 (Build 2880)

_Date: 2019-02-22_

This is a big update and we hope you enjoy it! Here's are the two major changes:

1. We've improved the search experience to use newer iOS features to help keep it stable and working consistently (which means we now require you use iOS 11).

2. We added iPad support so you can browse your logins in a full-screen app. On top of that, you can drag-and-drop your usernames and passwords into websites and apps if you use multitasking mode (Split View, Slide Over).

A big "thanks" to all the contributors that helped along the way!

## 1.4.0 (Build 2769)

_Date: 2019-01-08_

We've improved the search experience (and coming soon: added iPad support)! This is a big update and we hope you enjoy it. Here's the full list of changes:

- Updated the search experience to leverage built-in iOS features to help keep it stable and working consistently (which means we now require iOS 11)

A big "thanks" to all the contributors that helped along the way!

## 1.3.3 (Build 2731)

_Date: 2018-12-19_

We fixed more bugs and added some (hopefully) helpful icons to the item detail view. You should see some slight improvements but nothing major. Here's the full list of changes:

- We added icons to show that you can open the webpage and/or copy the username and password with one tap
- We fully close the database so it can't crash in the background, this means you should see AutoFill work more reliably
- If you don't have any saved logins in your Firefox Account and try to enable AutoFill, we gracefully stop trying to set that up for you (since there's nothing to set up yet!)
- We also updated some underlying libraries to keep up with other fixes and improvements

A big "thanks" to all the contributors that helped along the way!

## 1.3.3 (Build 2717)

_Date: 2018-12-17_

We fixed more bugs! You should see some slight improvements but nothing major.

Here's the full list of changes:

- Upgrade to RxSwift, application services dependencies
- Add Copy and Open icons to item detail screen
- Properly close DB when app is backgrounded

## 1.3.2 (Build 2635)

_Date: 2018-11-03_

We fixed more bugs! You should see some slight improvements but nothing major.

Here's the full list of changes:

- Login list scrolls to top after changing the sort order
- AutoFill Instructions now looks better on smaller screens
- AutoFill Instructions video now doesn't stop your audio
- "Lock Now" button overrides the autolock timer setting
- Updated Adjust and Telemetry


## 1.3.2 (Build 2520)

_Date: 2018-10-30_

We fixed more bugs! You should see some slight improvements but nothing major.

Here's the full list of changes:

- Login list scrolls to top after changing the sort order
- AutoFill Instructions now looks better on smaller screens
- AutoFill Instructions video now doesn't stop your audio
- "Lock Now" button overrides the autolock timer setting
- Updated Adjust and Telemetry


## 1.3.1 (Build 2517)

_Date: 2018-10-10_

We fixed some bugs! The big ones are related to "Disconnecting" your Firefox Account (signing out) and the new AutoFill feature.

Here's the full list of changes:

 - If you "Disconnect" your Firefox Account then sign in again, you won't get stuck seeing the “No matching entries” error message
 - We also made it so if you sign in with a different account, you don't accidentally see the items from the first account
 - The app now presents Touch ID or Face ID upon app launch so you don't have to to do an extra tap to unlock
 - Additional steps are taken to not display multiple overlays at one time so it's clear what's been copied
 - Help text was added to the credential search when using AutoFill so you know exactly what to do
 - Instructions on how to setup AutoFill for iOS 12 users was added to onboarding and in the Settings screen

A big "thanks" to all the contributors that helped along the way!

## 1.3.1 (Build 2428)

We fixed some bugs related to "Disconnecting" (signing out) and the new AutoFill feature.

Here's the full list of changes:

- If you "Disconnect" then sign-in, you won't get stuck seeing the “No matching entries” error message
- We also made it so if you sign-in with a different account, you don't accidentally see the items from the first account

## 1.3 (Build 2362)

_Date: 2018-09-15_

With iOS 12 you can automatically fill your usernames and passwords from Firefox Lockbox into apps and websites.

Be sure to enable AutoFill after updating to iOS 12 from within Settings under the "Passwords & Accounts" section.

## 1.3 (Build 2349)

_Date: 2018-09-14_

With iOS 12 you can automatically fill your usernames and passwords from Firefox Lockbox into apps and websites.

Be sure to enable AutoFill after updating to iOS 12 from within Settings under the "Passwords & Accounts" section.

## 1.3 (Build 2340)

_Date: 2018-09-14_

With iOS 12 you can automatically fill your usernames and passwords from Firefox Lockbox into apps and websites.

Be sure to enable AutoFill after updating to iOS 12 from within Settings under the "Passwords & Accounts" section.

## 1.3 (Build 2320)

_Date: 2018-09-14_

With iOS 12 you can automatically fill your usernames and passwords from Firefox Lockbox into apps and websites.

Be sure to enable AutoFill after updating to iOS 12 from within Settings under the "Passwords & Accounts" section.

## 1.3 (Build 2294)

_Date: 2018-09-13_

With iOS 12 you can automatically fill your usernames and passwords from Firefox Lockbox into apps and websites.

Be sure to enable AutoFill after updating to iOS 12 from within Settings under the "Passwords & Accounts" section.

## 1.2 (Build 2016)

_Date: 2018-08-27_

**PLEASE NOTE: YOU MAY EXPERIENCE A CRASH!** We're aware of an issue when you open the app it immediately crashes (and are working to gather more data and fix it). If this does happen, please re-open the app and continue testing everything else from there. Thank you!

It's been a month since our launch and we've been working hard to replace the old way of logging in with Firefox Accounts and fixing some bugs. For new users, they'll encounter a smoother and clearer experience. For existing users with the app already installed, you'll just need to sign in once again.

Here's the full list of changes:

- Introduced the OAuth login flow to replace the "old" way of signing in
- Added a "migration path" so users with the app sign back in and store data properly
- The app clears your local storage and cache when you disconnect your account
- You can now "pull to refresh" to force a sync when looking at an empty list
- We fixed some alignment bugs for iPhone SEs running iOS 10
- The autolock feature has been hardened as to when and how it locks the app
- The app no longer dynamically adjusts the navigation bar sizes so it can be usable
- If you type a very long search term you can "Cancel" and clear it as expected now
- We improved the small arrows next to links
- You can now "Ask a Question" from the settings screen to contact us directly

Thanks to all our open source contributors that helped make this release possible.

## 1.2 (Build 1939)

_Date: 2018-08-22_

It's been a month since our launch and we've been working hard to replace the old way of logging in with Firefox Accounts and fixing some bugs. For new users, they'll encounter a smoother and clearer experience. For existing users with the app already installed, you'll just need to sign in once again.

Here's the full list of changes:

- Introduced the OAuth login flow to replace the "old" way of signing in
- Added a "migration path" so users with the app sign back in and store data properly
- The app clears your local storage and cache when you disconnect your account
- You can now "pull to refresh" to force a sync when looking at an empty list
- We fixed some alignment bugs for iPhone SEs running iOS 10
- The autolock feature has been hardened as to when and how it locks the app
- The app no longer dynamically adjusts the navigation bar sizes so it can be usable

Thanks to all our open source contributors that helped make this release possible.

## 1.1.1 (Build 1717)

_Date: 2018-07-26_

It's been two weeks since our initial public launch, and one week since we opened up to all countries. Thanks to everyone's feedback we have some minor changes and bug fixes for you in this update.

We made some changes to autolocking and want your help testing it! Please let us know if you find anything unexpected.

We also added Klar as a browser option instead of Focus, when available. Can all you German users with Klar installed please make sure it works OK?

Here's the full list of changes:

- The autolock timer pauses when on a webpage so it doesn't lock when submitting feedback or reading FAQs
- Updated the app icon to an improved version
- You can pick Klar as your preferred browser (instead of Focus) if its available on your device
- We added the app version to the settings screen and feedback survey so we can know what you're running
- Fixed a visual bug on the "Preferred Browser" table
- Added ability to "Lock Now" for users without a device passcode set
- Added more autolock timer options: 15 and 30 minutes
- Fixed a Firefox Account bug related to server configuration
- Fixed it so you return to the "Confirm Your Email" state and screen even if your app fully quits instead of starting everything over

Please note: we intentionally skipped from version 1.0 all the way to 1.1.1 for various reasons.

## 1.1.1 (Build 1663)

_Date: 2018-07-18_

We made some changes to autolocking and want your help testing it! Please let us know if you find anything unexpected.

We also added Klar as a browser option instead of Focus, when available. Can all you German users with Klar installed please make sure it works OK?

We also show the app version number in the settings screen and add it the feedback survey so folks can easily tell us which version of the app they're using.

Here's the full list of changes:

- Added more autolock timer options: 15 and 30 minutes
- The autolock timer now also pauses when viewing a webpage so it doesn't lock when submitting feedback or reading FAQs
- You can pick Klar as your preferred browser (instead of Focus) if its available on your device
- Updated the app icon to an improved version

## 1.1 (Build 1552)

_Date: 2018-06-29_

**This version was submitted to Apple.**

EASY ACCESS

- Firefox Lockbox makes it easy to access the passwords you already saved in Firefox across all your devices.
- Get your passwords on your mobile device with one simple app
- Auto import the passwords you already saved in the browser
- One touch to copy your username and password to get into apps and websites
- Open any website from the app to get into your accounts quickly

PERSONAL TO YOU

- Personalized features to keep your accounts safe and personal to just you, without added hurdles.
- Your personal Firefox Account gets you access to all your browser saved logins
- Use your face or touch to unlock the app (safe to just you)
- Keep your passwords safe with an automatic timer which locks the app
- Set the browser you want to open your website URLs

TRUSTED

- Firefox Lockbox is created by Mozilla the independent, non-profit who advocates for Internet privacy and protection for you and everyone.
- Mozilla believes that individuals’ security and privacy on the Internet are fundamental and must not be treated as optional.

## 1.1 (Build 1552)

_Date: 2018-06-28_

What's NEW? We fixed a few bugs around when the app automatically locks. Please test this out and continue using it before we submit to Apple.

## 1.1 (Build 1539)

_Date: 2018-07-27_

In addition to the "no entries after upgrade" bug fix, we are putting finishing touches together before we submit to Apple for public release...

What's NEW? Dynamic text size support, a "no entries found" state when no filter results, and Welcome screen layout fixes for iPhone SE.

## 1.1 (Build 1490)

_Date: 2018-06-21_

**Did you upgrade last week and see an empty list? Sorry! We fixed that...**

The last version was approved for the App Store! So we fixed some bugs and did a little more. We will submit another version for the public release shortly so please keep testing and help us make sure this is still stable.

What's NEW? Improved accessibility, better indicators and buttons, list sorting bug fixes, and a new "welcome" screen on first run.

## 1.1 (Build 1473)

_Date: 2018-05-31_

The last version was approved for the App Store! So we fixed some bugs and did a little more. We will submit another version for the public release shortly so please keep testing and help us make sure this is still stable.

What's NEW? Improved accessibility, better indicators and buttons, list sorting bug fixes, and a new "welcome" screen on first run.

## 1.0 (Build 1387)

**This version will be submitted to the App Store!**

What's NEW? Fixes to unlocking mechanisms, all links are linked up, and improved accessibility.

Features and functionality include:

- signing in with Firefox Accounts to see your real "Saved Logins" data from Firefox
- automatic locking with biometrics (Touch ID / Face ID) to prevent access to your data
- searching and sorting items
- pull to manually refresh your list of items
- user-friendly item titles to help with readability
- showing/hiding passwords
- copying usernames and passwords to the pasteboard (which expire after 60 seconds)
- opening web addresses in your preferred web browser
- meaningful instructions when you need to confirm your sign in, or if you have no items
- Telemetry for event tracking (no personally-identifiable information is collected)

## 1.0 (Build 1343)

_Date: 2018-05-25_

What's NEW? We added pull-to-refresh in the list view, a state that tells you if we're waiting on you to click a confirmation link in your email, and slightly better "pretty" title logic.

This build DOES include:

- signing in with Firefox Accounts to see your real "Saved Logins" data from Firefox
- automatic locking with biometrics (Touch ID / Face ID) to prevent access to your data
- searching and sorting items
- pull to manually refresh your list of items
- user-friendly item titles to help with readability
- showing/hiding passwords
- copying usernames and passwords to the pasteboard (which expire after 60 seconds)
- opening web addresses in your preferred web browser
- meaningful instructions when you need to confirm your sign in, or if you have no items
- Telemetry for event tracking (no personally-identifiable information is collected)

This build DOES NOT include:

- the remaining links to final FAQ content and instructions (#172)
- creating, updating or deleting entries (that's intentional)

Join us at [https://github.com/mozilla-lockwise/lockwise-ios/issues][1] to find any of the above items or report new issues you encounter.

## 1.0 (Build 1280)

_Date: 2018-05-23_

What's NEW? We polished the interface (colors!), squashed some bugs (lock timer!), and improved the experience for those users (unsafely!) using a device without a passcode. If your app appears empty, there is one good reason and we're working on it but check your email for a confirmation link.

This build DOES include:

- signing in with Firefox Accounts to see your real "Saved Logins" data from Firefox
- automatic locking with biometrics (Touch ID / Face ID) to prevent access to your data
- searching and sorting items
- user-friendly item titles to help with readability
- showing/hiding passwords
- copying usernames and passwords to the pasteboard (which expire after 60 seconds)
- opening web addresses in your preferred web browser
- meaningful instructions when you have no items found
- Telemetry for event tracking (no personally-identifiable information is collected)

This build DOES NOT include:

- an alert when we're stuck waiting on you to confirm your Firefox Accounts sign in (#417)
- a few more links to real FAQ content and instructions (#172)
- creating, updating or deleting entries (that's intentional)

Join us at [https://github.com/mozilla-lockwise/lockwise-ios/issues][1] to find any of the above items or report new issues you encounter.

## 1.0 (Build 1189)

_Date: 2018-05-18_

What's NEW? We squashed a bunch of bugs (timed locking works much better now) and added a few improvements (user-friendly titles and a sync indicator that doesn't interrupt you). To recap...

This build DOES include:

- signing in with Firefox Accounts to see your real "Saved Logins" data from Firefox
- automatic locking with biometrics (Touch ID / Face ID) to prevent access to your data
- searching and sorting items
- user-friendly item titles to help with readability
- showing/hiding passwords
- copying usernames and passwords to the pasteboard (which expire after 60 seconds)
- opening web addresses in your preferred web browser
- Telemetry for event tracking (no personally-identifiable information is collected).

This build DOES NOT include:

- links to real FAQ content (#172 and #340)
- meaningful instructions when no items are found (#44)

Some KNOWN ISSUES include:

- you may sign in and receive a "confirmation" email but the app wont tell you that you need to go find that email, thus your list appears empty - please go find that email (#328)
- if you delete the app and re-install it, your app may crash once (#374)
- the autolocking timer was working inconsistently and may not have automatically locked the app, please keep testing this!

Join us at [https://github.com/mozilla-lockwise/lockwise-ios/issues][1] to find any of the above items or report new issues you encounter.

## 1.0 (Build 1128)

_Date: 2018-05-14_

This build DOES include: signing in with Firefox Accounts to see your real "Saved Logins" data from Firefox; automatic locking with biometrics (Touch ID / Face ID) to prevent access to your data; searching and sorting items; showing/hiding passwords; copying usernames and passwords to the pasteboard (which expire after 60 seconds); opening web addresses in your preferred web browser; Telemetry for event tracking (no personally-identifiable information is collected).

This build DOES NOT include: user-friendly item titles (#193); links to real FAQ content (#172 and #340); proper visual placeholders when an initial sync is occurring (#233) or when no items are found (#44).

Some KNOWN ISSUES include: you may sign in and get a "confirmation" email, the app doesn't tell you that you need to go find that email so your list appears empty - go find that email and "Confirm" your sign ins, please (#328); the autolock timer doesn't automatically lock your app (#356); when navigating away from the list view and a sync occurs in the background the app will pop you back into the list view (#347); the search/filter keyboard is immediately dismissed after the first and second character you type (#351). Don't worry, we'll get these fixed soon!

Please also note: the app may crash on first run — just open it again and please let us know if you encounter this or anything unexpected. We believe we squashed all kinds of bugs related to first run and sign in but need your help making sure.

## 1.0 (Build 742)

_Date: 2018-04-24_

This build includes: sign in with Firefox Accounts, sign out to "lock", search and sort items, show/hide passwords, copy username and password to pasteboard (expires after 60 seconds), open web addresses in preferred web browser.

This build does NOT include: actual Sync data (test data only), Face ID nor Touch ID biometrics to unlock, onboarding instructions, FAQ content.

Please note: the only data loaded into the app is hard-coded test data (not real Sync data)

[1]: https://github.com/mozilla-lockwise/lockwise-ios/issues
