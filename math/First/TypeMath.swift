//
//  TypeMath.swift
//  math
//
//  Created by Yao Wang on 5/12/21.
//

import SwiftUI

struct TypeMath: View {
    @State var message = ""
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text(message).font(.title).border(Color.red, width: 4).padding()
            Divider()
            
            // first row
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                Button(action:{message+=" 1"}){
                    Text("1").frame(width: 40, height: 40)
                        .foregroundColor(.yellow)
                        .background(Color.orange)
                        .clipShape(Circle())
                }
                
                Button(action: {message+=" 2"}) {
                    Text("2").frame(width: 40, height: 40)
                        .foregroundColor(.green)
                        .background(Color.red)
                        .clipShape(Circle())
                    
                }
                Button(action: {message+=" 3"}) {
                    Text("3").frame(width: 40, height: 40)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .clipShape(Circle())
                    
                }
                Button(action: {message+=","}) {
                    Text(",").frame(width: 40, height: 40)
                        .foregroundColor(.black)
                        .background(Color.gray)
                        .clipShape(Circle())                }
                Button(action: {
                    print(self.message)
                        message=""
                    
                }) {
                    Text("delete").frame(width: 40, height: 40)
                        .foregroundColor(.pink)
                        .background(Color.blue)
                        .clipShape(Circle())
                }
            }
            
            // 2nd row
            HStack(alignment: .center, spacing: 20){
                Button(action: {message+=" 4"}) {
                    Text("4").frame(width: 40, height: 40)
                        .foregroundColor(.green)
                        .background(Color.red)
                        .clipShape(Circle())
                }
                Button(action: {
                        message+=" 5"}, label: {
                    Text("5").frame(width: 40, height: 40)
                        .foregroundColor(.green)
                        .background(Color.red)
                        .clipShape(Circle())
                })
                
                Button(action: {
                        message+=" 6"}, label: {
                    Text("6").frame(width: 40, height: 40)
                        .foregroundColor(.green)
                        .background(Color.red)
                        .clipShape(Circle())
                })
                                
                Button(action: {
                    
                    message += " +"
                }) {
                    Text("+").frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.orange)
                        .background(Color.black)
                }
                
                Button(action: {
                    
                    message += " ="
                }) {
                    Text("=").frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.orange)
                        .background(Color.black)            }
                
                
                
            }
            
            // 3rd row
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                Button(action:  {
                    message += " 7"
                }, label: {
                    Text("7").frame(width: 40, height: 40)
                        .foregroundColor(.green)
                        .background(Color.gray)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                })
                Button(action: {
                    message += " 8"
                }, label: {
                    Text("8").frame(width: 40, height: 40)
                        .foregroundColor(.green)
                        .background(Color.gray)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                })
                Button(action: {
                    message += " 9"
                }, label: {
                    Text("9").frame(width: 40, height: 40)
                        .foregroundColor(.green)
                        .background(Color.gray)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                })
                Button(action: {
                    message += " 0"
                }, label: {
                    Text("0").frame(width: 40, height: 40)
                        .foregroundColor(.yellow)
                        .background(Color.blue)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                })
                
                Button(action: {
                    
                    message += " -"
                }) {
                    Text("-").frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.orange)
                        .background(Color.black)                }
            }
            
        }
    }
}

struct TypeMath_Previews: PreviewProvider {
    static var previews: some View {
        TypeMath()
    }
}
