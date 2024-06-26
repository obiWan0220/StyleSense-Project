//
//  AppDelegate.swift
//  StyleSense Assistant
//
//  Created by Michael Obi on 4/3/24.
//

import ParseSwift
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    initializeParse()
    return true
  }

  // MARK: UISceneSession Lifecycle

  func application(
    _ application: UIApplication,
    configurationForConnecting connectingSceneSession: UISceneSession,
    options: UIScene.ConnectionOptions
  ) -> UISceneConfiguration {
    return UISceneConfiguration(
      name: "Default Configuration", sessionRole: connectingSceneSession.role)
  }

  func application(
    _ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>
  ) {}

  private func initializeParse() {
    ParseSwift.initialize(
      applicationId: SecretManager.shared.getValue(for: .applicationId),
      clientKey: SecretManager.shared.getValue(for: .clientKey),
      serverURL: URL(string: "https://parseapi.back4app.com")!
    )
  }

}
