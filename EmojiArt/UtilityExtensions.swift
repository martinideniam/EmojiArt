//
//  UtilityExtensions.swift
//  EmojiArt
//
//  Created by Vladislav Gorovenko on 10.05.2022.
//

import SwiftUI

extension Collection where Element: Identifiable {
    func index(_ element: Element) -> Self.Index? {
        firstIndex(where: { $0.id == element.id })
    }
}
