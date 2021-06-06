//
//  WhichIsBigger.swift
//  math
//
//  Created by Yao Wang on 6/5/21.
//

import SwiftUI

struct WhichIsBigger: View {
    @State var num1 = ""
    @State var num2 = ""
    var body: some View {
        HStack {
            
            TextField("First Number", text: $num1).multilineTextAlignment(.trailing).border(Color.red, width: 2).padding()
            if let v1 = Double(num1), let v2 = Double(num2) {
                if v1==v2 {
                    Text(" = ")
                }
                else if v1 > v2 {
                    Text(" > ")
                }
                else {
                    Text(" < ")
                }
            } else {
                Text( " ? " )
            }
            TextField("Second Number", text: $num2).border(Color.green, width: 2).padding()
        }

    }
}

struct WhichIsBigger_Previews: PreviewProvider {
    static var previews: some View {
        WhichIsBigger()
    }
}
