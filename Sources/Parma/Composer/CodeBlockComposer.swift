//
//  File.swift
//  
//
//  Created by David's MBP16 on 22.02.22.
//

import SwiftUI

struct CodeBlockComposer: BlockElementComposer {
    func view(in context: ComposingContext, render: ParmaRenderable) -> AnyView {
        render.codeBlock(codeBlock: context.foundCharacters)
    }
}
