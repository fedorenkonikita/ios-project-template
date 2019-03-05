//
//  RootRootRouter.swift
//  {{cookiecutter.app_name}}
//
//  Created by {{cookiecutter.lead_dev}} on {% now 'local', '%d.%m.%Y' %}.
//  Copyright © 2018 {{cookiecutter.company_name}}. All rights reserved.
//

import UIKit

class RootRouter: RootRouterInput {
	weak var view: UIViewController?
    weak var splash: UIViewController?
    weak var verification: UIViewController?
    weak var blockScreen: UIViewController?

    var childs = NSPointerArray.weakObjects()
}

extension RootRouter {
}
