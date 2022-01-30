//
//  Profile.swift
//  Emassi
//
//  Created by MacBook Pro on 22.01.2022.
//

import SwiftUI

struct Profile: View {
    
    @State private var offset = CGFloat.zero
    @State private var closeOffset = CGFloat.zero
    @State private var openOffset = CGFloat.zero
    
    @State var name:String = ""
    @State var email:String = ""
    @State var phoneNumber:String = ""
    @State var address:String = ""
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                NavigationView{
                    //ZStack{
                    VStack{
                        //Header
                        HStack{
                            NavigationLink(
                                destination: CategoryList().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                                label: {
                                    Image(systemName: "chevron.left")
                                        .foregroundColor(.black)
                                    
                                })
                            
                            Text("")
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
                        
                        
                        .padding(.horizontal,10)
                        //Category
                        VStack{
                            ScrollView{
                                VStack(alignment:.leading){
                                    VStack(alignment:.center){
                                        
                                        Image(systemName:"person.fill")
                                            .resizable()
                                            .foregroundColor(.gray)
                                            .frame(width: 100, height:100)
                                            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                                        
                                        
                                        VStack(alignment:.center){
                                            Button(action:{}){
                                                Text("Изменить фото профиля")
                                                    .foregroundColor(Color(red: 0.412, green: 0.631, blue: 0.674))
                                            }
                                            HStack{
                                                Image(systemName: "star.fill")
                                                    .foregroundColor(Color.yellow)
                                                Image(systemName: "star.fill")
                                                    .foregroundColor(Color.yellow)
                                                Image(systemName: "star.fill")
                                                    .foregroundColor(Color.yellow)
                                                Image(systemName: "star.fill")
                                                    .foregroundColor(Color.yellow)
                                                Image(systemName: "star.fill")
                                                    .foregroundColor(Color.gray)
                                                Text("4.0")
                                            }
                                            
                                        }
                                    }
                                    .padding(10)
                                    .frame(maxWidth:.infinity, minHeight: 50, alignment:.center)
                                    .foregroundColor(.black)
                                    
                                    VStack(alignment:.leading, spacing:0){
                                        Text("ФИО")
                                            .foregroundColor(.gray)
                                            .padding(.horizontal,10)

                                        TextField("",text:$name)
                                            .frame(maxWidth:.infinity, alignment:.leading)
                                            .padding(10)
                                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                                    }
                                    
                                    VStack(alignment:.leading, spacing:0){
                                        Text("E-mail")
                                            .foregroundColor(.gray)
                                            .padding(.horizontal,10)
                                        
                                        TextField("",text:$email)
                                            .frame(maxWidth:.infinity, alignment:.leading)
                                            .padding(10)
                                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                                    }
                                    
                                    VStack(alignment:.leading, spacing:0){
                                        Text("Номер телефона")
                                            .foregroundColor(.gray)
                                            .padding(.horizontal,10)
                                        
                                        TextField("",text:$phoneNumber)
                                            .frame(maxWidth:.infinity, alignment:.leading)
                                            .padding(10)
                                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                                    }
                                    
                                    VStack(alignment:.leading, spacing:0){
                                        Text("Адрес")
                                            .foregroundColor(.gray)
                                            .padding(.horizontal,10)
                                        
                                        TextField("",text:$address)
                                            .frame(maxWidth:.infinity, alignment:.leading)
                                            .padding(10)
                                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                                    }
                                    
                                    VStack(alignment:.leading, spacing:0){
                                        Text("21 оценка")
                                            .foregroundColor(.black)
                                            .frame(maxWidth:.infinity, alignment:.leading)
                                            .padding(10)
                                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                                    }
                                    .padding(.top,10)
                                    
                                    VStack(alignment:.leading, spacing:0){
                                        HStack{
                                            Image(systemName: "star.fill")
                                                .foregroundColor(Color.yellow)
                                            Image(systemName: "star.fill")
                                                .foregroundColor(Color.yellow)
                                            Image(systemName: "star.fill")
                                                .foregroundColor(Color.yellow)
                                            Image(systemName: "star.fill")
                                                .foregroundColor(Color.yellow)
                                            Image(systemName: "star.fill")
                                                .foregroundColor(Color.gray)
                                        }
                                            .foregroundColor(.black)
                                            .frame(maxWidth:.infinity, alignment:.leading)
                                            .padding(10)
                                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                                    }
                                }
                                
                                
                                
                                
                                
                            }
                            
                            VStack{
                                Button(action:{}) {
                                    Text("Сохранить")
                                        .font(.headline)
                                        .fontWeight(.regular)
                                        .frame(maxWidth:.infinity, minHeight: 40, alignment: .center)
                                        .foregroundColor(.white)
                                        .background(Color(#colorLiteral(red: 0.412, green: 0.631, blue: 0.675, alpha: 1)))
                                        .cornerRadius(10)
                                }
                                
                            }
                            
                            
                        }
                        .padding(.horizontal,10)
                        Spacer()
                    }
                    
                    
                    
                    
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

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
