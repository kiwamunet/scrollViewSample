//
//  view1.swift
//  UIScrollView-Sample
//
//  Created by suzuki_kiwamu on 2015/04/08.
//  Copyright (c) 2015年 hirokazu maezawa. All rights reserved.
//

import UIKit
import Foundation

class view1: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        let bundle = NSBundle(forClass: self.dynamicType)
        var view = bundle.loadNibNamed("view1", owner: nil, options: nil)[0] as view1
        view.frame = self.bounds
        view.autoresizingMask = .FlexibleWidth | .FlexibleHeight
        self.addSubview(view)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeAfterUsingCoder(aDecoder: NSCoder) -> AnyObject? {
        if self.subviews.count == 0 {
            var view = self.loadNib()
            view.setTranslatesAutoresizingMaskIntoConstraints(false)
            let contraints = self.constraints()
            self.removeConstraints(contraints)
            view.addConstraints(contraints)
            return view
        }
        return self
    }
    
    private func loadNib() -> view1 {
        let bundle = NSBundle(forClass: self.dynamicType)
        var view = bundle.loadNibNamed("view1", owner: nil, options: nil)[0] as view1
        return view
    }
    
    
}