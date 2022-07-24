//
//  PackList.swift
//  Flashcards2
//
//  Created by Mark Phillips on 17/04/2022.
//

import SwiftUI

struct PackList: View {
    var selectedPack: [words] = WordLists.allwords
    var body: some View {
       
        NavigationView{
            List(selectedPack, id: \.id){ cardPack in
                NavigationLink(destination:ContentView(selectedWords: cardPack), label: {
                        Image(systemName:"note.text")
                            .resizable()
                            .scaledToFit()
                            .frame(width:50)
                    
                        VStack(alignment:.leading, spacing: 5){
                               
                               Text(cardPack.wordList)
                                    .fontWeight(.semibold)
                            
                                Text(cardPack.wordDetails)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .lineLimit(2)
                                    
                            }
                            
                            
                        })
                }
                .navigationTitle("Card Decks")
                
        }
        
            
        }

}

struct PackList_Previews: PreviewProvider {
    static var previews: some View {       
        PackList()
            .previewInterfaceOrientation(.portrait)
    }
}
