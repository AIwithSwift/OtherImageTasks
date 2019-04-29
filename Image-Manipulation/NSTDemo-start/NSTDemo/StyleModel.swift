//
//  StyleModel.swift
//  NSTDemo
//
//  Created by Mars Geldard on 4/3/19.
//  Copyright © 2019 Mars and Paris. All rights reserved.
//

import UIKit
import CoreML

enum StyleModel: String, CaseIterable {
    case flip = "Upside Down"

    // =====================================================================
    // TODO: add new properties
    // =====================================================================
    
    static var styles: [StyleModel] { return self.allCases }
    
    init(index: Int) { self = StyleModel.styles[index] }
    
    var name: String { return self.rawValue }
    var styleIndex: Int { return StyleModel.styles.firstIndex(of: self)! }
}
