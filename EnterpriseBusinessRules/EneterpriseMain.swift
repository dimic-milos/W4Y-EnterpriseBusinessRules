//
//  EneterpriseMain.swift
//  EnterpriseBusinessRules
//
//  Created by Dimic Milos on 12/14/19.
//  Copyright © 2019 Dimic Milos. All rights reserved.
//

import Foundation

public protocol EneterpriseMainProtocol {
    var enterpriseUser: EneterpriseUser { get }
}

struct EneterpriseMain: EneterpriseMainProtocol {
    let enterpriseUser = EneterpriseUser(id: UUID())
}
