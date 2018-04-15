//
//  CodeEditorManager.swift
//  LiveCodeEditor
//
//  Created by Thom Jordan on 6/23/17.
//  Copyright © 2017 Thom Jordan. All rights reserved.
//

import Foundation
import MGSFragaria

public class CodeEditorManager  {
    
    let fragaria = MGSFragaria()
    
    public init() { }
    
    public func setDelegate(_ object: Any!) {
        
        fragaria.setObject( object, forKey: MGSFODelegate)
    }
    
    public func useSyntax(_ syndef: String) {
        
        fragaria.setObject( syndef, forKey: MGSFOSyntaxDefinitionName)
    }
    
    public func embed(in view: NSView!) {
        
        fragaria.embed( in: view )
    }
    
    public func setSyntaxColoringDelegate(_ object: Any!) {
        
        fragaria.setObject( object, forKey: MGSFOSyntaxColouringDelegate)
    }
    
    public func setText(_ str: String) {
        
        fragaria.setString(str)
    }
    
    public func getText() -> String {
        
        guard let text = fragaria.string() else { return "" }
        
        return text
    }
}

