//
//  PlusAndMinus.swift
//  math
//
//  Created by Yao Wang on 5/12/21.
//

import SwiftUI

struct PlusAndMinus: View {
    @State var number1 = ""
    @State var number2 = ""
    
    @State var answer = ""
    
    @State private var showPlus = true
    
    func plus(_ numberA: String, _ numberB: String) {
        let sum = (Int(number1) ?? 0) + (Int(numberB) ?? 0)
        answer = String(sum)
    }
    
    func minus(_ numberA: String, _ numberB: String) {
        let substract = (Int(number1) ?? 0)  -  (Int(numberB) ?? 0)
        answer = String(substract)
    }
    
    
    var body: some View {
        HStack(alignment: .bottom) {
            Spacer()
            VStack(alignment: .trailing){
                HStack {
                    Toggle("", isOn: $showPlus)
                    if showPlus {
                        Text("+")
                    } else {
                        Text("-")
                    }
                }
                
                Button(action: {
                    if showPlus {
                        plus(number1, number2)
                    } else {
                        minus(number1, number2)
                    }
 
                }, label: {
                    Text("Answer").padding(EdgeInsets(top: 2, leading: 10, bottom: 2, trailing: 10)).border(Color.blue, width: 1)
                })
                
            }
            
            
            
            VStack(alignment: .trailing){
                TextField("First Number", text: $number1).padding().keyboardType(.numberPad).multilineTextAlignment(.trailing)
                TextField("Second Number", text: $number2 ).padding().keyboardType(.numberPad).multilineTextAlignment(.trailing)
                
                Divider()
                
                Text(answer).multilineTextAlignment(.trailing)
            }
        }.padding()
        
        
    }
}

struct PlusAndMinus_Previews: PreviewProvider {
    static var previews: some View {
        PlusAndMinus()
    }
}
