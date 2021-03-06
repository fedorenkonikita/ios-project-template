//
//  SharedSorage.swift
//  {{cookiecutter.app_name}}
//
//  Created by {{cookiecutter.lead_dev}} on {% now 'local', '%d.%m.%Y' %}.
//  Copyright © {% now 'local', '%Y' %} {{cookiecutter.company_name}}. All rights reserved.
//

import Foundation

final class SharedSorage: KeyValueStoring {
    // MARK: - KeyValueStoring
    func getData(key: String) -> Data? {
        return UserDefaults.standard.value(forKey: key) as? Data
    }
    
    func set(key: String, value: Data) {
        UserDefaults.standard.set(value, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    func get(key: String) -> String? {
        return UserDefaults.standard.value(forKey: key) as? String
    }
    
    func set(key: String, value: String) {
        UserDefaults.standard.set(value, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    func remove(key: String) {
        UserDefaults.standard.set(nil, forKey: key)
    }
}
