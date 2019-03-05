//
//  BusinessLayerAssembly.swift
//  {{cookiecutter.app_name}}
//
//  Created by {{cookiecutter.lead_dev}} on {% now 'local', '%d.%m.%Y' %}.
//  Copyright © {% now 'local', '%Y' %} {{cookiecutter.company_name}}. All rights reserved.
//

import Moya
import Swinject

class BusinessLayerAssembly {
    init(parent: Assembler) {
        let assemblies: [Assembly] = [ServicesAssembly(), CoreComponentAssembly(), ProxyAssembly()]
        parent.apply(assemblies: assemblies)
    }
}
