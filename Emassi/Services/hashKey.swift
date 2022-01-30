//
//  hashKey.swift
//  Emassi
//
//  Created by MacBook Pro on 21.01.2022.
//
import CryptoKit
import Foundation

func hashKey (){
    
let apikey = "api_c21c39e97c8c58d2909c4b6fbdb7d3c5"
let skey = "skey_f19da651f0c2f96afb46b37f6e80a939"
let email = "silent_mail@bk.ru"
let password = "DtybfvbY881991"


let inputHash = email + password
let inputData = Data(inputHash.utf8)

let hashed = SHA256.hash(data: inputData)
let hashString = hashed.compactMap { String(format: "%02x", $0) }.joined()

let skeyData = SymmetricKey(data: Data(skey.utf8))
let sign = HMAC<SHA256>.authenticationCode(for: Data(hashString.utf8), using: skeyData)
    
print(sign)
}
