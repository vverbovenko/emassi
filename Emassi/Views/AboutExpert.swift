//
//  AboutExpert.swift
//  Emassi
//
//  Created by MacBook Pro on 22.01.2022.
//

import SwiftUI

struct AboutExpert: View {
    
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
                                destination: ExpertsList().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                                label: {
                                    Image(systemName: "chevron.left")
                                        .foregroundColor(.black)
                                    
                                })
                            
                            Text("О специалисте")
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
                        
                        
                        .padding(10)
                        //Category
                        VStack{
                            HStack{
                                NavigationLink(
                                    destination: CallExpert().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                                    label: {
                                        Text("Вызвать специалиста")
                                            .font(.headline)
                                            .fontWeight(.regular)
                                            .frame( minHeight: 40, alignment: .center)
                                            .padding(.horizontal,10)
                                            .foregroundColor(.white)
                                            .background(Color(#colorLiteral(red: 0.412, green: 0.631, blue: 0.675, alpha: 1)))
                                            .cornerRadius(10)
                                        
                                    })
                                Spacer()
                                Button(action:{})
                                {
                                    Image(systemName: "star")
                                }
                            }
                            
                            ScrollView{
                                VStack(alignment:.leading){
                                    HStack(alignment:.top){
                                        
                                        Image("avatar")
                                            .resizable()
                                            .frame(width: 80, height:100)
                                            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                                        
                                        
                                        VStack(alignment:.leading){
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
                                            Text("Колмышев Сергей Игоревич")
                                                .font(.headline)
                                            
                                            Text("+38 099 29 27 596")
                                            
                                        }
                                    }
                                    .padding(10)
                                    .frame(maxWidth:.infinity, minHeight: 50, alignment: .leading)
                                    .foregroundColor(.black)
                                }
                                
                                VStack(alignment: .leading){
                                    Text("Описание")
                                        .foregroundColor(.gray)
                                    VStack(alignment:.leading){
                                        Text("Сергей, 19 лет, репетитор по математике из киева, Украина, закончил КНУ, факультет ФИЗМАТ.")
                                        
                                        Text("Победитель международных олимпиад по физике и математике.")
                                            .padding(.top,10)
                                    }
                                    
                                    .frame(maxWidth:.infinity, alignment:.leading)
                                    .padding(10)
                                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray))
                                    
                                    
                                    
                                }
                                HStack{
                                    Text("21 отзыв")
                                    
                                    Spacer()
                                    
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
                                
                                .padding(10)
                                
                                .cornerRadius(10)  .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray))
                                
                                HStack{
                                    Text("Выполнено 40 заказов")
                                }
                                .padding(10)
                                .frame(maxWidth:.infinity, alignment:.leading)
                                .cornerRadius(10)  .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray))
                                
                                VStack(alignment:.leading){
                                Text("Последние 5 отзывов")
                                    .foregroundColor(.gray)
                                VStack(alignment:.leading){
                                    VStack(alignment:.leading){
                                    Text("Людмила")
                                        .font(.headline)
                                        Text("Отличный учитель! Сдал ФНО на 200 баллов, готовились на протяжении 5 месяцев")
                                        Divider()}
                                    VStack(alignment:.leading){
                                    Text("Людмила")
                                        .font(.headline)
                                        Text("Отличный учитель! Сдал ФНО на 200 баллов, готовились на протяжении 5 месяцев")
                                        Divider()}
                                    VStack(alignment:.leading){
                                    Text("Людмила")
                                        .font(.headline)
                                        Text("Отличный учитель! Сдал ФНО на 200 баллов, готовились на протяжении 5 месяцев")
                                        Divider()}
                                    VStack(alignment:.leading){
                                    Text("Людмила")
                                        .font(.headline)
                                        Text("Отличный учитель! Сдал ФНО на 200 баллов, готовились на протяжении 5 месяцев")
                                        Divider()}
                                    VStack(alignment:.leading){
                                    Text("Людмила")
                                        .font(.headline)
                                        Text("Отличный учитель! Сдал ФНО на 200 баллов, готовились на протяжении 5 месяцев")}
                                }
                                .padding(10)
                                .frame(maxWidth:.infinity, alignment:.leading)
                                .cornerRadius(10)  .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray))
                            }
                            }
                            
                            VStack{
                                NavigationLink(
                                    destination: AboutExpert().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                                    label: {
                                    Text("Все отзывы")
                                        .font(.headline)
                                        .fontWeight(.regular)
                                        .frame(maxWidth:.infinity, minHeight: 40, alignment: .center)
                                        .foregroundColor(.white)
                                        .background(Color(#colorLiteral(red: 0.412, green: 0.631, blue: 0.675, alpha: 1)))
                                        .cornerRadius(10)
                                })
                                
                                NavigationLink(
                                    destination: AboutExpert().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                                    label: {
                                    Text("Написать Специалисту")
                                        .font(.headline)
                                        .fontWeight(.regular)
                                        .frame(maxWidth:.infinity, minHeight: 40, alignment: .center)
                                        .foregroundColor(.white)
                                        .background(Color(#colorLiteral(red: 0.412, green: 0.631, blue: 0.675, alpha: 1)))
                                        .cornerRadius(10)
                                })
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

struct AboutExpert_Previews: PreviewProvider {
    static var previews: some View {
        AboutExpert()
    }
}
