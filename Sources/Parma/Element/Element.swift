//
//  Element.swift
//  Parma
//
//  Created by leonard on 8/15/20.
//
//  Copyright (c) 2020 Leonard Chan <wxclx98@gmail.com>
//
//  MIT license, see LICENSE file for details

import Foundation

/// Markdown elements.
public enum Element: Hashable {
    case text, heading, paragraph, list, item, image, strong, strikethrough, emphasis, link, code, unknown, codeBlock, codeDiff, blockQuote
    
    /// If the specific element works as inline.
    var isInline: Bool {
        switch self {
        case .text, .strong, .strikethrough, .emphasis, .link, .code:
            return true
        default:
            return false
        }
    }
    
    /// Get `Element` by string. For example, input "strong" will return `Element.strong`.
    static func element(_ elementText: String) -> Element {
        switch elementText {
        case "text":
            return .text
        case "strong":
            return .strong
        case "strikethrough":
            return .strikethrough
        case "emph":
            return .emphasis
        case "link":
            return .link
        case "code":
            return .code
        case "heading":
            return .heading
        case "paragraph":
            return .paragraph
        case "list":
            return .list
        case "item":
            return .item
        case "image":
            return .image
        case "code_block":
            return .codeBlock
        case "diff":
            return .codeDiff
//        case "block_quote":
//            return Self.blockQuote
        default:
            return .unknown
        }
    }
    
    /// The readable name for the element.
    func name() -> String {
        switch self {
        case .heading:
            return "heading"
        case .paragraph:
            return "paragraph"
        case .list:
            return "list"
        case .item:
            return "item"
        case .image:
            return "image"
        case .text:
            return "text"
        case .strong:
            return "strong"
        case .strikethrough:
            return "strikethrough"
        case .emphasis:
            return "emph"
        case .code:
            return "code"
        case .link:
            return "link"
        case .codeBlock:
            return "code_block"
        case .codeDiff:
            return "diff"
//        case .blockQuote:
//            return "block_quote"
        default:
            return "unknown"
        }
    }
}
