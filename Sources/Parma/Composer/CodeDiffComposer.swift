//
//  File.swift
//  
//
//  Created by David's MBP16 on 16.04.22.
//

import SwiftUI

class CodeDiffComposer: BlockElementComposer {
    
//    func text(in context: ComposingContext, render: ParmaRenderable) -> Text? {
//        context.concatenatedText
//        render.codeDiffLine(<#T##text: Text##Text#>)
//    }
    
    func view(in context: ComposingContext, render: ParmaRenderable) -> AnyView {
        let codeLines = context.texts.map { render.codeDiffLine($0) }
        let view = VStack(alignment: .leading, spacing: 0) {
            ForEach(0..<codeLines.count, id: \.self) { index in
                codeLines[index]
            }
        }
        
        return render.codeDiffBlock(view: AnyView(view))
    }
}
