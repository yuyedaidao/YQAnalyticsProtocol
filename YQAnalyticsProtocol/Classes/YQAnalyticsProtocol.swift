//
//  YQAnalyticsProtocol.swift
//  YQAnalyticsProtocol
//
//  Created by 王叶庆 on 2019/6/9.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

public protocol YQAnalyticsProtocol {
    func beginPageView(_ viewController: UIViewController)
    func endPageView(_ viewController: UIViewController)
}

open class YQAnalyticsManager {
    public static let shared = YQAnalyticsManager()
    private var actor: YQAnalyticsProtocol?
    private init() {}
    public func register(_ actor: YQAnalyticsProtocol) {
        self.actor = actor
    }
    public func getActor() -> YQAnalyticsProtocol {
        guard let actor = self.actor else {
            fatalError("请先注册一个YQAnalyticsProtocol的实例")
        }
        return actor
    }
}
