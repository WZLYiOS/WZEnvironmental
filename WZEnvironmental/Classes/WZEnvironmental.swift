//
//  Environmental.swift
//  WZEnvironmental
//
//  Created by xiaobin liu on 2020/8/12.
//


import UIKit
import Foundation


/// 环境模式
///
/// - debug: 开发环境
/// - adhoc: 预发环境
/// - release: 正式环境
public enum EnvironmentalModel: Int, CaseIterable {
    
    case debug = 1
    case adhoc = 2
    case release = 3
    case test = 4
    
    
    /// 标题
    public var title: String {
        switch self {
        case .debug:
            return "开发环境"
        case .adhoc:
            return "预发环境"
        case .test:
            return "测试环境"
        default:
            return "正式环境"
        }
    }
    
    
    /// allCases
    public static var allCases: [EnvironmentalModel] {
        return [.debug, .adhoc, .release, .test]
    }
}

/// 当前环境key
private let EnvironmentModeKey = "com.wzly.WZEnvironmentMode"

/// MARK - 配置类
public class Environment {
    
    /// 是否是Debug
    public static var isDebug: Bool {
        
        #if DEBUG
        return true
        #elseif ADHOC
        return false
        #else
        return false
        #endif
    }
    
    /// 当前环境
    public static var currentMode: EnvironmentalModel {
        
        #if DEBUG
        guard let result = EnvironmentalModel(rawValue: UserDefaults.standard.integer(forKey: EnvironmentModeKey)) else {
            return EnvironmentalModel.debug
        }
        return result
        #elseif ADHOC
        guard let result = EnvironmentalModel(rawValue: UserDefaults.standard.integer(forKey: EnvironmentModeKey)) else {
            return EnvironmentalModel.adhoc
        }
        return result
        #else
        return EnvironmentalModel.release
        #endif
    }
    
    /// 保存当前环境
    public static func saveCurrent(mode: EnvironmentalModel) {
        UserDefaults.standard.set(mode.rawValue, forKey: EnvironmentModeKey)
        UserDefaults.standard.synchronize()
    }
}
