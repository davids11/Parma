//
//  ListType.swift
//  Parma
//
//  Created by leonard on 8/15/20.
//
//  Copyright (c) 2020 Leonard Chan <wxclx98@gmail.com>
//
//  MIT license, see LICENSE file for details

import Foundation

/// The types for markdown list.
public enum ListType: String {
    case ordered, bullet
}

extension ListType {
    
    public func value(for index: [Int], delimiter: String) -> String {
        switch self {
        case .bullet:
            return index.count % 2 == 1 ? "•" : "◦"
        case .ordered:
            return index
                .map({ String($0) })
                .joined(separator: ".")
                .appending(delimiter)
        }
    }
}
