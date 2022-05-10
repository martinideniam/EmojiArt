//
//  EmojiArtModel.Background.swift
//  EmojiArt
//
//  Created by Vladislav Gorovenko on 10.05.2022.
//

import Foundation

extension EmojiArtModel {
    enum Background {
        case blank
        case url(URL)
        case imageData(Data)
        
        var url: URL? {
            switch self {
                case .url(let url): return url
                default: return nil
            }
        }
        
        var imageData: Data? {
            switch self {
                case .imageData(let data): return data
                default: return nil
            }
        }
    }
}
