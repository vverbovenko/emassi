//
//  ExpertsList.swift
//  Emassi
//
//  Created by MacBook Pro on 21.01.2022.
//

import SwiftUI

struct ExpertsList: View {
    @State var search: String = ""
    @State private var offset = CGFloat.zero
    @State private var closeOffset = CGFloat.zero
    @State private var openOffset = CGFloat.zero
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                NavigationView{
                    //ZStack{
                        VStack{
                            //Header
                            HStack{
                                NavigationLink(
                                    destination: Category().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                                    label: {
                                        Image(systemName: "chevron.left")
                                            .foregroundColor(.black)
                                        
                                    })
                                
                                NavigationLink(
                                    destination: MakeApplication().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                                    label: {
                                    Text("Оформить заявку")
                                        .font(.headline)
                                        .fontWeight(.regular)
                                        .frame(maxWidth:.infinity, minHeight: 40, alignment: .center)
                                        .foregroundColor(.white)
                                        .background(Color(#colorLiteral(red: 0.412, green: 0.631, blue: 0.675, alpha: 1)))
                                        .cornerRadius(10)
                                })
                                
                                Button(action: {
                                    self.offset = self.openOffset
                                }){
                                    Image(systemName: "line.3.horizontal")
                                        .foregroundColor(.black)
                                }
                            }
                            
                            
                            .padding(10)
                            //Category
                            VStack{
                                ScrollView(){
                                    NavigationLink(
                                        destination: AboutExpert().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                                        label:{
                                            HStack{
                                                Image("avatar")
                                                    .resizable()
                                                    .frame(width: 80, height:100)
                                                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                                                VStack(alignment:.leading){
                                                    Text("Дьяченко Антон Игоревич")
                                                        .font(.headline)
                                                    
                                                    Text("Репетитор по математике")
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
                                                    Spacer()
                                                }
                                                
                                                
                                                Spacer()
                                                
                                                VStack(alignment: .trailing){
                                                    
                                                            Image(systemName: "chevron.right")
                                                                .foregroundColor(.black)
                                                            
                                                        
                                                }
                                                
                                            }
                                            .padding(10)
                                            .frame(maxWidth:.infinity, minHeight: 50, alignment: .center)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.925, green: 0.953, blue: 0.961))
                                            .cornerRadius(10)
                                        }
                                    )
                                    
                                    NavigationLink(
                                        destination: AboutExpert().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                                        label:{
                                            HStack{
                                                Image("avatar")
                                                    .resizable()
                                                    .frame(width: 80, height:100)
                                                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                                                VStack(alignment:.leading){
                                                    Text("Дьяченко Антон Игоревич")
                                                        .font(.headline)
                                                    
                                                    Text("Репетитор по математике")
                                                    HStack{
                                                        Image(systemName: "star.fill")
                                                            .foregroundColor(Color.yellow)
                                                        Image(systemName: "star.fill")
                                                            .foregroundColor(Color.yellow)
                                                        Image(systemName: "star.fill")
                                                            .foregroundColor(Color.yellow)
                                                        Image(systemName: "star.fill")
                                                            .foregroundColor(Color.gray)
                                                        
                                                        Image(systemName: "star.fill")
                                                            .foregroundColor(Color.gray)
                                       
                                                    }
                                                    Spacer()
                                                }
                                                
                                                
                                                Spacer()
                                                
                                                VStack(alignment: .trailing){
                                                    
                                                            Image(systemName: "chevron.right")
                                                                .foregroundColor(.black)
                                                            
                                                        
                                                }
                                                
                                            }
                                            .padding(10)
                                            .frame(maxWidth:.infinity, minHeight: 50, alignment: .center)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.925, green: 0.953, blue: 0.961))
                                            .cornerRadius(10)
                                        }
                                    )
                                            
                                        
                                    
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

struct ExpertsList_Previews: PreviewProvider {
    static var previews: some View {
        ExpertsList()
    }
}
