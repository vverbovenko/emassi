//
//  Category.swift
//  Emassi
//
//  Created by MacBook Pro on 18.01.2022.
//

import SwiftUI

struct Category: View {
    
    @State var search: String = ""
    @State private var offset = CGFloat.zero
    @State private var closeOffset = CGFloat.zero
    @State private var openOffset = CGFloat.zero
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                NavigationView{
                    VStack{
                        //Header
                        HStack{
                            NavigationLink(
                                destination: CategoryList().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                                label: {
                                    Image(systemName: "chevron.left")
                                        .foregroundColor(.black)
                                    
                                })
                            
                            
                            TextField("Поиск", text: $search)
                                .padding(5)
                                .foregroundColor(.gray)
                                .background(Color(red:192.0/255.0, green:192.0/255.0, blue:192.0/255.0, opacity:0.4))
                                .cornerRadius(10)
                            
                                .preferredColorScheme(.light)
                                .multilineTextAlignment(.leading)
                                .scaledToFit()
                            
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
                            NavigationLink(
                                destination: CategoryList().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                                label: {
                                    Text("Категория")
                                    
                                        .font(.title)
                                        .bold()
                                        .frame(maxWidth:.infinity, minHeight: 150, alignment: .center)
                                        .foregroundColor(.white)
                                        .background(Color.red)
                                        .cornerRadius(10)
                                    
                                }
                            )
                        }
                        //List
                        ScrollView{
                            NavigationLink(
                                destination: ExpertsList().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                                label:{
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("Android разработчик")
                                                .font(.headline)
                                            
                                            Text("11 235 результатов")
                                            
                                        }
                                        .padding(10)
                                        
                                        Spacer()
                                        
                                        VStack(alignment: .trailing){
                                            
                                                    Image(systemName: "chevron.right")
                                                        .foregroundColor(.black)
                                                    
                                                
                                        }
                                        .padding(10)
                                    }
                                    .frame(maxWidth:.infinity, minHeight: 50, alignment: .center)
                                    .foregroundColor(.white)
                                    .background(Color(#colorLiteral(red: 0.412, green: 0.631, blue: 0.675, alpha: 0.6)))
                                    .cornerRadius(10)
                                }
                            )
                            
                            NavigationLink(
                                destination: ExpertsList().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                                label:{
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("Android разработчик")
                                                .font(.headline)
                                            
                                            Text("11 235 результатов")
                                            
                                        }
                                        .padding(10)
                                        
                                        Spacer()
                                        
                                        VStack(alignment: .trailing){
                                            
                                                    Image(systemName: "chevron.right")
                                                        .foregroundColor(.black)
                                                  
                                        }
                                        .padding(10)
                                    }
                                    .frame(maxWidth:.infinity, minHeight: 50, alignment: .center)
                                    .foregroundColor(.white)
                                    .background(Color(#colorLiteral(red: 0.412, green: 0.631, blue: 0.675, alpha: 0.6)))
                                    .cornerRadius(10)
                                }
                            )
                            
                            NavigationLink(
                                destination: ExpertsList().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                                label:{
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("Android разработчик")
                                                .font(.headline)
                                            
                                            Text("11 235 результатов")
                                            
                                        }
                                        .padding(10)
                                        
                                        Spacer()
                                        
                                        VStack(alignment: .trailing){
                                            
                                                    Image(systemName: "chevron.right")
                                                        .foregroundColor(.black)
                                                    
                                              
                                        }
                                        .padding(10)
                                    }
                                    .frame(maxWidth:.infinity, minHeight: 50, alignment: .center)
                                    .foregroundColor(.white)
                                    .background(Color(#colorLiteral(red: 0.412, green: 0.631, blue: 0.675, alpha: 0.6)))
                                    .cornerRadius(10)
                                }
                            )
                            
                            
                            
                            Spacer()
                        }
                    }
                    .padding(10)
                    .navigationBarHidden(true)
                    .navigationBarTitle("")
                    
                    Color.gray.opacity(
                        Double((self.closeOffset - self.offset)/self.closeOffset) - 0.4
                    )
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

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        Category()
    }
}
