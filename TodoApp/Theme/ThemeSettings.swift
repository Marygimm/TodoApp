//
//  ThemeSettings.swift
//  TodoApp
//
//  Created by Mary Moreira on 26/10/2022.
//

import SwiftUI
// MARK: - THEME CLASS

final public class ThemeSettings: ObservableObject {
  @Published public var themeSettings: Int = UserDefaults.standard.integer(forKey: "Theme") {
    didSet {
      UserDefaults.standard.set(self.themeSettings, forKey: "Theme")
    }
  }
  
  private init() {}
  public static let shared = ThemeSettings()
}

// OLD CODE
//
//class ThemeSettings: ObservableObject {
//  @Published var themeSettings: Int = UserDefaults.standard.integer(forKey: "Theme") {
//    didSet {
//      UserDefaults.standard.set(self.themeSettings, forKey: "Theme")
//    }
//  }
//}
