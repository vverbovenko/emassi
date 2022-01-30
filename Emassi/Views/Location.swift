//
//  Location.swift
//  Emassi
//
//  Created by MacBook Pro on 18.01.2022.
//

import SwiftUI

struct Location: View {
//    @State var ShowDetail = false
//    var hashing = hashKey()
    var body: some View {
        VStack(){
            Button(action:{hashKey()}){
                Text("HASH")
            }
//            if ShowDetail {
//                Text(hashing)
//            }
            }
        }
}

struct Location_Previews: PreviewProvider {
    static var previews: some View {
        Location()
    }
}
