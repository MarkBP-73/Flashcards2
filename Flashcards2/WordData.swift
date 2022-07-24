//
//  WordData.swift
//  Flashcards2
//
//  Created by Mark Phillips on 09/04/2022.
//

import SwiftUI

struct words: Identifiable {
    let id =  UUID()
    let wordList: String
    let wordDetails: String
    let wordData: [String]
    let wordDataCoded:[Word]
}

struct Word {
    let syllables: [CodedString]
}

struct CodedString: Identifiable {
    let id = UUID()
    let highlight: Color
    let wodpart: String
}


struct WordLists {
    static let allwords = [
        words(wordList: "First 100",
              wordDetails: "These are the first 100 most common words.",
              wordData: ["the","be","of","and","a","to","in","he","have","it","that","for","they","I","with","as","not","on","she","at","this","we","you","by","do","but","from","one","all","will","there","make","when","can","if","no","so","what","time","up","go","about","then","into","could","are","asked","back","big","called","came","children","come","dad","day","don't","down","get","got","had","help","her","him","his","here","house","I'm","is","it's","just","like","little","look","looked","made","me","Mr","Mrs","mum","my","now","off","oh","old","people","put","said","saw","see","some","their","them","then","there","too","very","was","went","were","with","your"],
              wordDataCoded: [
                Word(syllables: [CodedString(highlight:.black, wodpart: "the")]), Word(syllables: [CodedString(highlight: .black, wodpart:"be")]), Word(syllables: [CodedString(highlight: .black, wodpart: "of")]),
                Word(syllables: [CodedString(highlight: .black, wodpart:"and")]), Word(syllables: [CodedString(highlight: .black, wodpart: "a")]), Word(syllables: [CodedString(highlight: .black, wodpart: "to")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "in")]), Word(syllables: [CodedString(highlight: .black, wodpart: "he")]), Word(syllables: [CodedString(highlight: .black, wodpart: "have")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "it")]), Word(syllables: [CodedString(highlight: .black, wodpart: "th"),CodedString(highlight: .red, wodpart: "at")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "f"),CodedString(highlight: .red, wodpart: "or")]),
                Word(syllables: [CodedString(highlight: .red, wodpart: "th"),CodedString(highlight: .black, wodpart: "ey")]),Word(syllables: [CodedString(highlight: .black, wodpart: "I")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "w"),CodedString(highlight: .red, wodpart: "in")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "as")]), Word(syllables: [CodedString(highlight: .black, wodpart: "n"),CodedString(highlight: .red, wodpart: "ot")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "on")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "she")]),Word(syllables: [CodedString(highlight: .black, wodpart: "at")]), Word(syllables: [CodedString(highlight: .red, wodpart: "th"),CodedString(highlight: .black, wodpart: "is")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "we")]), Word(syllables: [CodedString(highlight: .black, wodpart: "you")]), Word(syllables: [CodedString(highlight: .black, wodpart: "by")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "do")]), Word(syllables: [CodedString(highlight: .black, wodpart: "b"),CodedString(highlight: .red, wodpart: "ut")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "from")]),Word(syllables: [CodedString(highlight: .black, wodpart: "one")]), Word(syllables: [CodedString(highlight: .black, wodpart: "all")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "w"),CodedString(highlight: .red, wodpart: "ill")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "there")]),Word(syllables: [CodedString(highlight: .black, wodpart: "m"),CodedString(highlight: .red, wodpart: "ake")]),Word(syllables: [CodedString(highlight: .black, wodpart: "when")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "c"),CodedString(highlight: .red, wodpart: "an")]),Word(syllables: [CodedString(highlight: .black, wodpart: "if")]),Word(syllables: [CodedString(highlight: .black, wodpart: "no")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "so")]),Word(syllables: [CodedString(highlight: .black, wodpart: "wh"),CodedString(highlight: .red, wodpart: "at")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "t"),CodedString(highlight: .black, wodpart: "ime")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "up")]), Word(syllables: [CodedString(highlight: .black, wodpart: "go")]),Word(syllables: [CodedString(highlight: .black, wodpart: "ab"),CodedString(highlight: .red, wodpart: "out")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "then")]),Word(syllables: [CodedString(highlight: .black, wodpart: "in"),CodedString(highlight: .red, wodpart: "to")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "c"),CodedString(highlight: .red, wodpart: "ould")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "are")]),Word(syllables: [CodedString(highlight: .black, wodpart: "ask"),CodedString(highlight: .red, wodpart: "ed")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "b"),CodedString(highlight: .black, wodpart: "ack")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "b"),CodedString(highlight: .red, wodpart: "ig")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "c"),CodedString(highlight: .red, wodpart: "all"),CodedString(highlight: .black, wodpart: "ed")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "c"),CodedString(highlight: .red, wodpart: "ame")]),Word(syllables: [CodedString(highlight: .red, wodpart: "child"),CodedString(highlight: .black, wodpart: "ren")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "c"),CodedString(highlight: .black, wodpart: "ome")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "dad")]),Word(syllables: [CodedString(highlight: .black, wodpart: "d"),CodedString(highlight: .red, wodpart: "ay")]), Word(syllables: [CodedString(highlight: .black, wodpart: "don't")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "d"),CodedString(highlight: .red, wodpart: "own")]),Word(syllables: [CodedString(highlight: .black, wodpart: "g"),CodedString(highlight: .black, wodpart: "et")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "g"),CodedString(highlight: .red, wodpart: "ot")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "had")]),Word(syllables: [CodedString(highlight: .black, wodpart: "h"),CodedString(highlight: .red, wodpart: "elp")]), Word(syllables: [CodedString(highlight: .black, wodpart: "her")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "him")]),Word(syllables: [CodedString(highlight: .black, wodpart: "his")]), Word(syllables: [CodedString(highlight: .black, wodpart: "here")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "h"),CodedString(highlight: .red, wodpart: "ouse")]),Word(syllables: [CodedString(highlight: .black, wodpart: "I'm")]), Word(syllables: [CodedString(highlight: .black, wodpart: "is")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "it's")]),Word(syllables: [CodedString(highlight: .black, wodpart: "j"),CodedString(highlight: .black, wodpart: "ust")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "l"),CodedString(highlight: .red, wodpart: "ike")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "little")]),Word(syllables: [CodedString(highlight: .black, wodpart: "l"),CodedString(highlight: .red, wodpart: "oo"),CodedString(highlight: .black, wodpart: "k")]),
                Word(syllables: [CodedString(highlight: .red, wodpart: "look"),CodedString(highlight: .black, wodpart: "ed")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "m"),CodedString(highlight: .red, wodpart: "ade")]),Word(syllables: [CodedString(highlight: .black, wodpart: "me")]), Word(syllables: [CodedString(highlight: .black, wodpart: "Mr")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "Mrs")]),Word(syllables: [CodedString(highlight: .black, wodpart: "my")]), Word(syllables: [CodedString(highlight: .black, wodpart: "mum")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "my")]),Word(syllables: [CodedString(highlight: .black, wodpart: "off")]), Word(syllables: [CodedString(highlight: .black, wodpart: "now")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "oh")]),Word(syllables: [CodedString(highlight: .black, wodpart: "old")]), Word(syllables: [CodedString(highlight: .black, wodpart: "people")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "put")]),Word(syllables: [CodedString(highlight: .black, wodpart: "said")]), Word(syllables: [CodedString(highlight: .black, wodpart: "saw")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "see")]),Word(syllables: [CodedString(highlight: .black, wodpart: "s"),CodedString(highlight: .red, wodpart: "ome")]), Word(syllables: [CodedString(highlight: .black, wodpart: "their")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "them")]),Word(syllables: [CodedString(highlight: .black, wodpart: "then")]), Word(syllables: [CodedString(highlight: .black, wodpart: "there")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "t"),CodedString(highlight: .black, wodpart: "oo")]),Word(syllables: [CodedString(highlight: .black, wodpart: "very")]), Word(syllables: [CodedString(highlight: .black, wodpart: "was")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "were")]),Word(syllables: [CodedString(highlight: .black, wodpart: "w"),CodedString(highlight: .black, wodpart: "ent")]), Word(syllables: [CodedString(highlight: .black, wodpart: "with")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "your")])
              ]
                ),
        
        words(wordList: "Second 100",
              wordDetails: "These are the second 100 most common words.",
              wordData: ["water","away","good","want","over","how","did","man","going","where","would","or","took","school","think","home","who","didn't","ran","know","bear","can't","again","cat","long","things","new","after","wanted","eat","everyone","our","two","has","yes","play","take","thought","dog","well","find","more","I'll","round","tree","magic","shouted","us","other","food","fox","through","way","been","stop","must","red","door","right","sea","these","began","boy","animals","never","next","first","work","lots","need","that's","baby","fish","gave","mouse","something","bed","may","still","found","live","say","soon","night","narrator","small","car","couldn't","three","head","king","town","I've","around","every","garden","fast","only","many","laughed"],
              wordDataCoded: [
                Word(syllables: [CodedString(highlight: .black, wodpart: "wat"),CodedString(highlight: .red, wodpart: "er")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "a"),CodedString(highlight: .red, wodpart: "way")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "g"),CodedString(highlight: .black, wodpart: "oo"),CodedString(highlight: .black, wodpart: "d")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "want")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "ov"),CodedString(highlight: .red, wodpart: "er")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "h"),CodedString(highlight: .red, wodpart: "ow")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "did")]), Word(syllables: [CodedString(highlight: .black, wodpart: "man")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "go"),CodedString(highlight: .black, wodpart: "ing")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "where")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "w"),CodedString(highlight: .red, wodpart: "ould")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "or")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "t"),CodedString(highlight: .red, wodpart: "oo"),CodedString(highlight: .black, wodpart: "k")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "sch"),CodedString(highlight: .red, wodpart: "oo"),CodedString(highlight: .black, wodpart: "l")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "th"),CodedString(highlight: .red, wodpart: "ink")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "h"),CodedString(highlight: .red, wodpart: "ome")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "who")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "did"),CodedString(highlight: .red, wodpart: "n't")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "r"),CodedString(highlight: .red, wodpart: "an")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "know")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "b"),CodedString(highlight: .red, wodpart: "ear")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "ca"),CodedString(highlight: .red, wodpart: "n't")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "a"),CodedString(highlight: .red, wodpart: "gain")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "c"),CodedString(highlight: .red, wodpart: "at")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "l"),CodedString(highlight: .red, wodpart: "ong")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "th"),CodedString(highlight: .red, wodpart: "ing"),CodedString(highlight: .black, wodpart: "s")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "n"),CodedString(highlight: .red, wodpart: "ew")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "every"),CodedString(highlight: .red, wodpart: "one")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "our")]),Word(syllables: [CodedString(highlight: .black, wodpart: "two")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "has")]),Word(syllables: [CodedString(highlight: .black, wodpart: "yes")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "play")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "t"),CodedString(highlight: .red, wodpart: "ake")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "th"),CodedString(highlight: .red, wodpart: "ought")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "dog")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "w"),CodedString(highlight: .red, wodpart: "ell")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "f"),CodedString(highlight: .red, wodpart: "ind")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "m"),CodedString(highlight: .red, wodpart: "ore")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "I'll")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "r"),CodedString(highlight: .red, wodpart: "ound")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "tree")]),Word(syllables: [CodedString(highlight: .black, wodpart: "magic")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "shout"),CodedString(highlight: .red, wodpart: "ed")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "us")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "o"),CodedString(highlight: .red, wodpart: "th"),CodedString(highlight: .black, wodpart: "er")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "f"),CodedString(highlight: .red, wodpart: "oo"),CodedString(highlight: .black, wodpart: "d")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "fox")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "through")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "w"),CodedString(highlight: .red, wodpart: "ay")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "b"),CodedString(highlight: .black, wodpart: "een")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "stop")]),Word(syllables: [CodedString(highlight: .black, wodpart: "must")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "red")]),Word(syllables: [CodedString(highlight: .black, wodpart: "door")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "r"),CodedString(highlight: .red, wodpart: "ight")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "sea")]),Word(syllables: [CodedString(highlight: .black, wodpart: "these")]),
                Word(syllables: [CodedString(highlight: .red, wodpart: "be"),CodedString(highlight: .black, wodpart: "gan")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "b"),CodedString(highlight: .red, wodpart: "oy")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "animals")]), Word(syllables: [CodedString(highlight: .black, wodpart: "never")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "next")]),Word(syllables: [CodedString(highlight: .black, wodpart: "first")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "work")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "lots")]),Word(syllables: [CodedString(highlight: .black, wodpart: "need")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "that's")]),
                Word(syllables: [CodedString(highlight: .black, wodpart:"baby")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "f"),CodedString(highlight: .red, wodpart: "ish")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "g"),CodedString(highlight: .red, wodpart: "ave")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "m"),CodedString(highlight: .red, wodpart: "ouse")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "some"),CodedString(highlight: .red, wodpart: "thing")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "bed")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "m"),CodedString(highlight: .red, wodpart: "ay")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "s"),CodedString(highlight: .red, wodpart: "till")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "f"),CodedString(highlight: .red, wodpart: "ound")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "live")]),Word(syllables: [CodedString(highlight: .black, wodpart: "s"),CodedString(highlight: .red, wodpart: "ay")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "s"),CodedString(highlight: .red, wodpart: "oo"),CodedString(highlight: .black, wodpart: "n")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "n"),CodedString(highlight: .red, wodpart: "ight")]),Word(syllables: [CodedString(highlight: .black, wodpart: "sm"),CodedString(highlight: .red, wodpart: "all")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "car")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "c"),CodedString(highlight: .red, wodpart: "ould"),CodedString(highlight: .black, wodpart: "n't")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "three")]), Word(syllables: [CodedString(highlight: .black, wodpart: "head")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "k"),CodedString(highlight: .red, wodpart: "ing")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "t"),CodedString(highlight: .red, wodpart: "own")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "I've")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "a"),CodedString(highlight: .red, wodpart: "round")]),
                Word(syllables: [CodedString(highlight: .red, wodpart: "ever"),CodedString(highlight: .black, wodpart: "y")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "gar"),CodedString(highlight: .red, wodpart: "den")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "fast")]),Word(syllables: [CodedString(highlight: .black, wodpart: "only")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "many")]),
                Word(syllables: [CodedString(highlight: .black, wodpart: "l"),CodedString(highlight: .red, wodpart: "augh"),CodedString(highlight: .black, wodpart: "ed")])
              ]
             )
    
    
    ]
}


