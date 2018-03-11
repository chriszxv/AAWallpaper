//
//  DeviceViewModel.swift
//  AAWallpaper
//
//  Created by Chris So on 16/1/2018.
//  Copyright © 2018 AAStocks. All rights reserved.
//

import DeviceKit
import RxSwift

struct DeviceViewModel {
        
    var name = Variable<String>("")
    var model = Variable<String>("")
    var system = Variable<String>("")
    
    init() {
        let device = Device()
        self.name.value = device.name;
        self.model.value = device.description;
        self.system.value = "\(device.systemName) \(device.systemVersion)"
    }

}

