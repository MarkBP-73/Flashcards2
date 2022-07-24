//
//  ContentView.swift
//  Flashcards2
//
//  Created by Mark Phillips on 22/03/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var cardnext: String = "the"
    @State private var codedcardnext: [CodedString] = [CodedString(highlight: .black, wodpart: "c"),CodedString(highlight: .red, wodpart: "ould")]
    @State private var score: Int = 0
    @State private var cards: Int = 0
    //selectedWords is an argument of ContentView declared below as a words object (see WordData) and is used to pass the selected card deck (from Packlist view) to FCards via Flashcards2App.
    var selectedWords: words
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            
            VStack(alignment: .center){
            
                HStack(alignment: .center, spacing: 200) {
                    // title for score and number of cards
                    Cardstitle(titlelable: "Cards")
                    Cardstitle(titlelable: "Score")
                }
               
            
                HStack(spacing: 200){
                   
                    // actual scores
                    Scores(score:$cards)
                    Scores(score:$score)
                    
                }
                .ignoresSafeArea()
                .padding(.bottom,50)
            
                    VStack(alignment: .center, spacing:60){
                
                        // $cardnext references the @binding variable which is created in the Flashcard Struct.
                            //Flashcard(cardnext: $cardnext)
                        
                        //CodedFlashcard replaces Flashcard when colour coded syllables need to be used.
                            CodedFlashcard(codedcardnext: $codedcardnext)
                
                
                        HStack(alignment: .center, spacing:70){
                            Button {
                                
                            // declaring allwords constant as a string array and assigning to selectedWords.wordData which is an array of strings.
                                //let allwords: [String] = selectedWords.wordData
                                //let size: Int = allwords.endIndex
                                //let randomwordindex = Int.random(in: 0..<size)
                                //cardnext = allwords[randomwordindex]
                                
                            // declaring allcodedwords constant as a word object array, each word object contains a string array of syllables.
                                let allcodedwords: [Word] = selectedWords.wordDataCoded
                                let codedsize: Int = allcodedwords.endIndex
                                let coderandomwordindex = Int.random(in: 0..<codedsize)
                                codedcardnext = syllables(Wordobj: allcodedwords[coderandomwordindex])
                                
                            // increments the score and card when correct answer registered.
                                score+=1
                                cards+=1
                                }
                    
                        label: {
                            Image(systemName: "checkmark.rectangle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                                .background(Color.green)
                                .foregroundColor(.black)
                                .font(.system(size:30,weight: .medium))
                                .cornerRadius(8)
                            }
                    
                        Button {
                        // declaring allwords constant as a string array and assigning to selectedWords.wordData which is an array of strings.
                            // let allwords: [String] = selectedWords.wordData
                            // let size: Int = allwords.endIndex
                            // let randomwordIndex = Int.random(in: 0..<size)
                            // cardnext = allwords[randomwordIndex]
                            
                        // declaring allcodedwords constant as a word object array, each word object contains a string array of syllables.
                            let allcodedwords: [Word] = selectedWords.wordDataCoded
                            let codedsize: Int = allcodedwords.endIndex
                            let codedrandonwordindex = Int.random(in: 0..<codedsize)
                            codedcardnext = syllables(Wordobj: allcodedwords[codedrandonwordindex])
                        // codedcardnext is assigned a word object selected at random from the Word array.
                            //codedcardnext = allcodedwords[randomwordindex]
                            
                        // increments the card ony when incorrect answer registered.
                            cards+=1
                            }
                         
                        label: {
                            Image(systemName: "x.square")
                            .resizable()
                            .frame(width: 100, height: 80)
                            .background(Color.red)
                            .foregroundColor(.black)
                            .font(.system(size:30,weight: .medium))
                            .cornerRadius(8)
                    }
                            
                    
                }
                        Button {
                            score=0
                            cards=0
                            
                        }
                        
                    label: {
                        Text("Reset")
                            .frame(width:130,height: 40)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .font(.system(size:30,weight: .medium))
                            .cornerRadius(8)
                        
                        }
                    }
                Spacer()
            }
                
            

        }
        
    }

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selectedWords: WordLists.allwords[0])
    }
}

struct Flashcard: View {
  @Binding var cardnext: String
    var body: some View {
        Text(cardnext)
            .font(.system(size:80, weight: .medium))
            .frame(width:350, height:200)
           .background(.white)
           .foregroundColor(.black)
           .cornerRadius(10)
           .padding(.bottom,70)
    }
}

struct CodedFlashcard: View {
    @Binding var codedcardnext: [CodedString]
    var body: some View {
        
        HStack(spacing: 0){
            ForEach(codedcardnext) { codedcardnext in
                Text(codedcardnext.wodpart)
                    .foregroundColor(codedcardnext.highlight)
                
            }
                
        }
        .frame(width:350, height:200)
        .font(.system(size:80, weight: .semibold))
        .background(.white)
        .cornerRadius(10)
        .padding(.bottom,10)
    }
}

struct Cardstitle: View {
    var titlelable: String
    var body: some View {
        Text(titlelable)
            .frame(width: 70,height: 50)
            .foregroundColor(.white)
            .font(.system(size:25,weight: .medium))
        
    }
}
    
    struct Scores: View {
        @Binding var score: Int
        var body: some View {
            Text(String(score))
                .frame(width: 70,height: 50)
                .foregroundColor(.white)
                .font(.system(size:25,weight: .medium))
                .padding(.bottom, 10)
            
        }
    }

// syllables function accepts a Word object and returns a [String] of wordParts (i.e. syllables from data structure in WordData file)
    func syllables(Wordobj: Word) -> [CodedString]{
        let wordparts: [CodedString] = Wordobj.syllables
        return wordparts
}

// colorcode function accepts a [String] and returns a colour coded String object of concatenated [String] elements.

func colorcode(syllables: [String]) -> String{
    var codedword: String = ""
    for syllable in syllables{
        codedword += syllable
    }
    return codedword
    
}

