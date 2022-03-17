//
//  RegisterModal.swift
//  AuthApi
//
//  Created by FicodeMacBookAir on 20/02/22.
//

import Foundation
struct RegisterModal: Encodable {
    let name: String
    let email: String
    let password: String
}
