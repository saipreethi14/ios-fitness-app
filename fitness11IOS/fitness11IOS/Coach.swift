//
//  Coach.swift
//  fitness11IOS
//
//  Created by Vinith kumar Tatipally on 2022-01-09.
//

import SwiftUI
import Firebase

struct Coach: View {
    
    @State var name: [String] = []
    @State var EmailID: [String] = []
    @State var age: [String] = []
    @State var imag: [String] = []
    @State var proficient1: [String] = []

    var body: some View {
        NavigationView{
            VStack{
 
                List(0..<name.count,id: \.self) { i in
                    ZStack{
                    
                Image(imag[i])
                    }
                    VStack{
                Text("Name: " + name[i])
                    Text("Age: " + age[i])
                    Text("Email ID: " + EmailID[i])
                    Text("PROficient: " + proficient1[i])
                    
                    
                    
                    
                }
            }

        }.onAppear(perform: dataretrive)
    }
    }
    func dataretrive(){
        let db = Firestore.firestore()
        db.collection("Coach").addSnapshotListener {(snap , err) in
            if err != nil{
                print("there is an Error")
                return
            }
            for i in snap!.documentChanges{
                let documentId = i.document.documentID
                let username = i.document.get("name")
                let email = i.document.get("Email ID")
                let Age = i.document.get("Age")
                let image = i.document.get("image")
                let proficient = i.document.get("proficient")
                DispatchQueue.main.async{
                    name.append("\(username!)")
                    EmailID.append("\(email!)")
                    age.append("\(Age!)")
                    imag.append("\(image!)")
                    proficient1.append("\(proficient!)")
                    
                    print(username)
                }
            }
            
        }
    }
}

struct Coach_Previews: PreviewProvider {
    static var previews: some View {
        Coach()
    }
}
