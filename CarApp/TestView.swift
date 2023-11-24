import SwiftUI

class CarModel {
    var name: String
    var background: String
    var specifications: [String: String]

    init(name: String, background: String, specifications: [String: String]) {
        self.name = name
        self.background = background
        self.specifications = specifications
    }
}

class CarBrand {
    var logo: String
    var image: String
    var name: String
    var models: [CarModel]

    init(logo: String, image: String, name: String, models: [CarModel]) {
        self.logo = logo
        self.image = image
        self.name = name
        self.models = models
    }
}

struct CarView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    let brands: [CarBrand] = [
        CarBrand(logo: "Merc", image: "Merc Wall",name: "Mercedes", models: [
            CarModel(name: "C 300", background: "c63", specifications: ["Engine": "2.0L 4 Cylinder", "Horsepower": "255", "Torque": "296 lb-ft", "0-100 km/hr": "6.0 s", "MSRP": "$58,600 CAD"]),
            CarModel(name: "E 450", background: "E Class", specifications: ["Engine": "3.0L inline 6 Cylinder", "Horsepower": "362", "Torque": "369 lb-ft", "0-100 km/hr": "4.8 s", "MSRP": "$79,900 CAD"]),
            CarModel(name: "S 580", background: "Sclass", specifications: ["Engine": "4.0L V8 Biturbo", "Horsepower": "496", "Torque": "516 lb-ft", "0-100 km/hr": "4.4 s", "MSRP": "$155,800 CAD"])
        ])
        ,
        CarBrand(logo: "Bmw", image: "Bmw wall", name: "BMW", models: [
            CarModel(name: "330i", background: "M3", specifications: ["Engine": "2.0L 4 Cylinder", "Horsepower": "255", "Torque": "296 lb-ft", "0-100 km/hr": "6.0 s", "MSRP": "$58,600 CAD"]),
            CarModel(name: "540i", background: "M5", specifications: ["Engine": "3.0L inline 6 Cylinder", "Horsepower": "362", "Torque": "369 lb-ft", "0-100 km/hr": "4.8 s", "MSRP": "$79,900 CAD"]),
            CarModel(name: "760i", background: "7 Series", specifications: ["Engine": "4.0L V8 Biturbo", "Horsepower": "496", "Torque": "516 lb-ft", "0-100 km/hr": "4.4 s", "MSRP": "$155,800 CAD"])
        ])
        ,
        CarBrand(logo: "Ferrari", image: "Ferrari Wall", name: "Ferrari", models: [
            CarModel(name: "F8 Tributo", background: "F8", specifications: ["Engine": "3.9L V8", "Horsepower": "710", "Torque": "568 lb-ft", "0-100 km/hr": "2.9 s", "MSRP": "$279,000 CAD"]),
            CarModel(name: "812 GTS", background: "812", specifications: ["Engine": "6.5L V12", "Horsepower": "799", "Torque": "529 lb-ft", "0-100 km/hr": "3.0 s", "MSRP": "$400,000 CAD"]),
            CarModel(name: "SF90 Stradale", background: "sf90", specifications: ["Engine": "4.0L Hybrid V8", "Horsepower": "968", "Torque": "590 lb-ft", "0-100 km/hr": "2.5 s", "MSRP": "$518,000 CAD"])
        ])
        ,
        CarBrand(logo: "Lamborghini", image: "Lamb Wall", name: "Lamborghini", models: [
            CarModel(name: "Huracan", background: "Huracan", specifications: ["Engine": "5.2L V10", "Horsepower": "602", "Torque": "413 lb-ft", "0-100 km/hr": "3.2 s", "MSRP": "$250,000 CAD"]),
            CarModel(name: "Aventador", background: "svj", specifications: ["Engine": "6.5L V12", "Horsepower": "769", "Torque": "531 lb-ft", "0-100 km/hr": "2.8 s", "MSRP": "$464,000 CAD"]),
            CarModel(name: "Urus", background: "urus", specifications: ["Engine": "4.0L Twin-Turbo V8", "Horsepower": "657", "Torque": "627 lb-ft", "0-100 km/hr": "3.5 s", "MSRP": "$270,000 CAD"])
        ])
        ,
        CarBrand(logo: "Porsche", image: "Porsche Wall ", name: "Porsche", models: [
            CarModel(name: "911 Turbo S", background: "911", specifications: ["Engine": "3.7L Flat 6", "Horsepower": "640", "Torque": "590 lb-ft", "0-100 km/hr": "2.7 s", "MSRP": "$290,000 CAD"]),
            CarModel(name: "718 Cayman", background: "718", specifications: ["Engine": "2.0L Flat 4", "Horsepower": "300", "Torque": "280 lb-ft", "0-100 km/hr": "5.1 s", "MSRP": "$76,000 CAD"]),
            CarModel(name: "Taycan Turbo S", background: "Taycan", specifications: ["Engine": "Electric", "Horsepower": "751", "Torque": "774 lb-ft", "0-100 km/hr": "2.8 s", "MSRP": "$226,500 CAD"])
        ]),
        CarBrand(logo: "Mclaren", image: "Mclaren Wall", name: "McLaren", models: [
            CarModel(name: "GT", background: "GT", specifications: ["Engine": "4.0L V8", "Horsepower": "612", "Torque": "465 lb-ft", "0-100 km/hr": "3.2 s", "MSRP": "$265,000 CAD"]),
            CarModel(name: "765lt", background: "765", specifications: ["Engine": "4.0L V8", "Horsepower": "755", "Torque": "590 lb-ft", "0-100 km/hr": "2.8 s", "MSRP": "$405,000 CAD"]),
            CarModel(name: "Artura", background: "Artura", specifications: ["Engine": "3.0L Hybrid V6", "Horsepower": "671", "Torque": "531 lb-ft", "0-100 km/hr": "3.0 s", "MSRP": "$305,000 CAD"])
        ])
    ]

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    Text("Car Brands")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                    Spacer()
                }
                List(brands, id: \.name) { brand in
                    NavigationLink(destination: CarBrandView(brand: brand)) {
                        
                        
                        HStack {
                            Image(brand.logo)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 90, height: 90)
                                
                              
                            
                            Text(brand.name)
                                .foregroundColor(.white)
                                .font(.title2)
                                .padding()
                            Spacer()
                            
                            Image(systemName: "arrow.right.circle.fill")
                                .foregroundColor(.white)
                                .font(.title)
                            
                            
                          
                        }
                    }
                    .foregroundColor(.black)
                    .listRowBackground(Color(red: 29 / 255.0, green: 28 / 255.0, blue: 31 / 255.0).opacity(0.8))
                    
                }
            }
            .background(Color.black)
            .scrollContentBackground(.hidden)
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct CarBrandView: View {
    let brand: CarBrand
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView{
            ZStack {
                Image(brand.image)
                    .resizable()
                    .ignoresSafeArea()
                    .opacity(0.6)
                    
                VStack {
                    HStack {
                        // Back navigation
                        Spacer()
                            .navigationBarBackButtonHidden(true)
                            .toolbar(content: {
                                ToolbarItem(placement: .navigationBarLeading) {
                                    Button(action: {
                                        presentationMode.wrappedValue.dismiss()
                                    }, label: {
                                        Image(systemName: "arrow.left.circle.fill")
                                            .foregroundColor(.white)
                                            .font(.title2)
                                            .padding()
                                    })
                                }
                            })
                        
                        Text(brand.name)
                            .foregroundColor(.white)
                            .font(.title)
                            .bold()
                        Spacer()
                    }
                    List(brand.models, id: \.name) { model in
                        ZStack{
                            NavigationLink(destination: CarModelView(model: model)) {
                                
                                HStack {
                                    Text(model.name)
                                        .foregroundColor(.white)
                                        .font(.title2)
                                    Spacer()
                                    Image(systemName: "arrow.right.circle.fill")
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .padding()
                                }
                               
                            }
                        }
                        .foregroundColor(Color(red: 29 / 255.0, green: 28 / 255.0, blue: 31 / 255.0))
                        .listRowBackground(Color(red: 29 / 255.0, green: 28 / 255.0, blue: 31 / 255.0).opacity(0.8))
                        
                    }
                }
            }
            .background(Color.black)
            .scrollContentBackground(.hidden)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct CarModelView: View {
    let model: CarModel
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView{
            ZStack {
                Image(model.background)
                    .resizable()
                    .ignoresSafeArea()
                    .opacity(0.5)
                VStack {
                    HStack{
                        //back navigation
                        Spacer()
                            .navigationBarBackButtonHidden(true)
                            .toolbar(content: {
                                ToolbarItem (placement: .navigationBarLeading)  {
                                    
                                    Button(action: {
                                        presentationMode.wrappedValue.dismiss()
                                    }, label: {
                                        Image(systemName: "arrow.left.circle.fill")
                                            .foregroundColor(.white)
                                            .font(.title2)
                                            .padding()
                                    })
                                }
                            })
                        
                        
                        Text(model.name)
                            .foregroundColor(.white)
                            .font(.title)
                            .bold()
                        
                        Spacer()
                        
                    }
                    Spacer()
                    
                    let specificationOrder = ["Engine", "Horsepower", "Torque", "0-100 km/hr", "MSRP"]

                    VStack {
                        ForEach(specificationOrder, id: \.self) { key in
                            if let value = model.specifications[key] {
                                HStack {
                                    Text("\(key):")
                                        .foregroundColor(.black)
                                        .bold()
                                    Spacer()
                                    Text(value)
                                        .foregroundColor(.black)
                                }
                                .padding(20)
                            }
                        }
                    }
                    .padding()
                    .font(.title2)
                    .foregroundColor(.black)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding()
                    .opacity(0.7)
                    Spacer()



                }
                
            }
            .background(Color.black)
            .scrollContentBackground(.hidden)
        }
        .navigationBarBackButtonHidden(true)
    }
}


struct CarView_Previews: PreviewProvider {
    static var previews: some View {
        CarView()
    }
}
