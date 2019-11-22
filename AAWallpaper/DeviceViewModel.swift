//
//  DeviceViewModel.swift
//  AAWallpaper
//
//  Created by Chris So on 16/1/2018.
//  Copyright © 2018 AAStocks. All rights reserved.
//

import DeviceKit
import RxSwift
import RxCocoa

struct DeviceViewModel {
    var name = BehaviorRelay<String>(value: "")
    var model = BehaviorRelay<String>(value: "")
    var system = BehaviorRelay<String>(value: "")

    init() {
        let device = Device.current
        name.accept(device.name ?? "iPhone")
        model.accept(device.description)
        system.accept("\(device.systemName ?? "iOS") \(device.systemVersion ?? "")")
    }
}
