//
//  StrikethroughComposer.swift
//  
//
//  Created by David's MBP16 on 09.04.22.
//

import SwiftUI

struct StrikethroughComposer: InlineElementComposer {
    func text(in context: ComposingContext, render: ParmaRenderable) -> Text {
        render.strikethrough(textView: context.concatenatedText)
    }
}
