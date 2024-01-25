//
//  Coordinator.swift
//  Architecture_mvc
//
//  Created by Cristian guillermo Romero garcia on 24/01/24.
//

import Foundation
import UIKit

protocol Coordinator{
    var viewController: UIViewController? {get}
    var navigationController: UINavigationController? {get}
    
    func start()
}

extension Coordinator{
    var viewController: UIViewController? {nil}
    var navigationController: UINavigationController? {nil}
}
