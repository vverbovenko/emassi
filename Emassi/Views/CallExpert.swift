//
//  CallExpert.swift
//  Emassi
//
//  Created by MacBook Pro on 22.01.2022.
//

import SwiftUI

struct CallExpert: View {
    
    @State private var offset = CGFloat.zero
    @State private var closeOffset = CGFloat.zero
    @State private var openOffset = CGFloat.zero
    
    @State var dateFrom : String = ""
    @State var dateTo : String = ""
    @State var timeFrom : String = ""
    @State var timeTo : String = ""
    @State var applicationPrice : String = ""
    @State var applicationPhone : String = ""
    @State var applicationAddress : String = ""
    @State var applicationComments : String = ""

    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                NavigationView{
                    //ZStack{
                        VStack{
                            //Header
                            HStack{
                                NavigationLink(
                                    destination: ExpertsList().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                                    label: {
                                        Image(systemName: "chevron.left")
                                            .foregroundColor(.black)
                                        
                                    })
                                
                                    Text("Оформить вызов")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .frame(maxWidth:.infinity, minHeight: 40, alignment: .center)
                                        
                                
                                Button(action: {
                                    self.offset = self.openOffset
                                }){
                                    Image(systemName: "line.3.horizontal")
                                        .foregroundColor(.black)
                                }
                            }
                            
                            .padding(.horizontal, 5)
                            //Input
                            VStack(){
                                Text("Дата вызова")
                                    .foregroundColor(.gray)
                                
                                HStack(){
                                    TextField("", text: $dateFrom)
                                        .padding(10)
                                        .textFieldStyle(PlainTextFieldStyle())
                                        .multilineTextAlignment(.leading)
                                        .cornerRadius(10)
                                                        .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray))
                                        .textContentType(.dateTime)
                                    
                                    
                                    Text("До")
                                        .foregroundColor(.gray)
                                    
                                    TextField("", text: $dateTo)
                                        .padding(10)
                                        .textFieldStyle(PlainTextFieldStyle())
                                        .multilineTextAlignment(.leading)
                                        .cornerRadius(10)
                                                        .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray))
                                        .textContentType(.dateTime)
                                
                                    
                                    
                                }
                                
                        
                            }
                            
                            VStack(){
                                Text("Время вызова")
                                    .foregroundColor(.gray)
                                
                                HStack(){
                                    TextField("", text: $timeFrom)
                                        .padding(10)
                                        .textFieldStyle(PlainTextFieldStyle())
                                        .multilineTextAlignment(.leading)
                                        .cornerRadius(10)
                                                        .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray))
                                        .textContentType(.dateTime)
                                    
                                    Text("До")
                                        .foregroundColor(.gray)
                                    
                                    TextField("", text: $timeTo)
                                        .padding(10)
                                        .textFieldStyle(PlainTextFieldStyle())
                                        .multilineTextAlignment(.leading)
                                        .cornerRadius(10)
                                                        .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray))
                                        .textContentType(.dateTime)
                                
                                    
                                    
                                }
                                
                        
                            }
                            
                            VStack(alignment:.leading){
                                Text("Сумма оплаты")
                                    .foregroundColor(.gray)
                                
                                TextField("", text: $applicationPrice)
                                    .padding(10)
                                    .textFieldStyle(PlainTextFieldStyle())
                                    .multilineTextAlignment(.leading)
                                    .cornerRadius(10)
                                                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray))
                                    
                            }
                            
                            VStack(alignment:.leading){
                                Text("Номер телефона")
                                    .foregroundColor(.gray)
                                
                                TextField("", text: $applicationPhone)
                                    .padding(10)
                                    .textFieldStyle(PlainTextFieldStyle())
                                    .multilineTextAlignment(.leading)
                                    .cornerRadius(10)
                                                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray))
                                    .textContentType(.telephoneNumber)
                            }
                            
                            VStack(alignment:.leading){
                                Text("Адрес вызова")
                                    .foregroundColor(.gray)
                                
                                TextField("", text: $applicationAddress)
                                    .padding(10)
                                    .textFieldStyle(PlainTextFieldStyle())
                                    .multilineTextAlignment(.leading)
                                    .cornerRadius(10)
                                                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray))
                                    
                            }
                            
                            VStack(alignment:.leading){
                                Text("Комментарии")
                                    .foregroundColor(.gray)
                                
                                TextField("",text: $applicationComments)
                                    .padding(10)
                                    .frame(minHeight:150)
                                    .textFieldStyle(PlainTextFieldStyle())
                                    .multilineTextAlignment(.leading)
                                    .cornerRadius(10)
                                                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray))
                                
                            }
                            
                           Spacer()
                            
                            VStack{
                                Button(action: {}){
                                    Text("Добавить фото")
                                        .font(.headline)
                                        .fontWeight(.regular)
                                        .frame(maxWidth:.infinity, minHeight: 40, alignment: .center)
                                        .foregroundColor(.white)
                                        .background(Color(#colorLiteral(red: 0.412, green: 0.631, blue: 0.675, alpha: 1)))
                                        .cornerRadius(10)
                                }
                            }
                        }
                        
                        
                        
                        .padding(10)
                        .navigationBarHidden(true)
                        .navigationBarTitle("")
                        
                        Color.gray.opacity(
                            Double((self.closeOffset - self.offset)/self.closeOffset) - 0.4
                        )
                   // }
                }
            }
            MenuView()
                .background(Color.white)
                .frame(width: geometry.size.width * 0.7)
                .onAppear(perform: {
                    self.offset = geometry.size.width
                    self.closeOffset = self.offset
                    self.openOffset = geometry.size.width - geometry.size.width * 0.7
                })
                .offset(x: self.offset)
                .animation(.default)
            
                .gesture(DragGesture(minimumDistance: 5)
                            .onChanged{ value in
                    if (self.offset > self.openOffset) {
                        self.offset = self.closeOffset + value.translation.width
                    }
                }
                            .onEnded { value in
                    if (value.translation.width < 0) {
                        self.offset = self.openOffset
                    } else {
                        self.offset = self.closeOffset
                    }
                }
                )
        }
        
    }
}

struct CallExpert_Previews: PreviewProvider {
    static var previews: some View {
        CallExpert()
    }
}
