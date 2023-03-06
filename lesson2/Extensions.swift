//
//  Extensions.swift
//  lesson2
//
//  Created by Andrii Zozulych on 06.03.2023.
//

import Foundation
import UIKit

extension UIButton {
    func touchIn() {
        UIView.animate(withDuration: 0.8, delay: 0, options: [.allowUserInteraction, .curveEaseOut]) {
            self.transform = .init(scaleX: 0.8, y: 0.8)
        }
    }
    
    func touchEnd() {
        UIView.animate(withDuration: 0.8, delay: 0, options: [.allowUserInteraction, .curveEaseOut]) {
            self.transform = .identity
        }
    }
    
    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        touchIn()
    }
    
    open override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        touchEnd()
    }
}
