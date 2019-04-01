/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct SimpsonDataModel : Codable {
	let meta : Meta?
	let imageIsLogo : Int?
	let definitionURL : String?
	let entity : String?
	let results : [String]?
	let definition : String?
	let image : String?
	let abstractText : String?
	let infobox : String?
	let type : String?
	let abstract : String?
	let imageWidth : Int?
	let redirect : String?
	let definitionSource : String?
	let abstractSource : String?
	let heading : String?
	let imageHeight : Int?
	let relatedTopics : [RelatedTopics]?
	let abstractURL : String?
	let answer : String?
	let answerType : String?

	enum CodingKeys: String, CodingKey {

		case meta = "meta"
		case imageIsLogo = "ImageIsLogo"
		case definitionURL = "DefinitionURL"
		case entity = "Entity"
		case results = "Results"
		case definition = "Definition"
		case image = "Image"
		case abstractText = "AbstractText"
		case infobox = "Infobox"
		case type = "Type"
		case abstract = "Abstract"
		case imageWidth = "ImageWidth"
		case redirect = "Redirect"
		case definitionSource = "DefinitionSource"
		case abstractSource = "AbstractSource"
		case heading = "Heading"
		case imageHeight = "ImageHeight"
		case relatedTopics = "RelatedTopics"
		case abstractURL = "AbstractURL"
		case answer = "Answer"
		case answerType = "AnswerType"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		meta = try values.decodeIfPresent(Meta.self, forKey: .meta)
        imageIsLogo = try values.decodeIfPresent(Int.self, forKey: .imageIsLogo)
        definitionURL = try values.decodeIfPresent(String.self, forKey: .definitionURL)
        entity = try values.decodeIfPresent(String.self, forKey: .entity)
        results = try values.decodeIfPresent([String].self, forKey: .results)
        definition = try values.decodeIfPresent(String.self, forKey: .definition)
        image = try values.decodeIfPresent(String.self, forKey: .image)
        abstractText = try values.decodeIfPresent(String.self, forKey: .abstractText)
        infobox = try values.decodeIfPresent(String.self, forKey: .infobox)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        abstract = try values.decodeIfPresent(String.self, forKey: .abstract)
		imageWidth = try values.decodeIfPresent(Int.self, forKey: .imageWidth)
		redirect = try values.decodeIfPresent(String.self, forKey: .redirect)
		definitionSource = try values.decodeIfPresent(String.self, forKey: .definitionSource)
		abstractSource = try values.decodeIfPresent(String.self, forKey: .abstractSource)
		heading = try values.decodeIfPresent(String.self, forKey: .heading)
		imageHeight = try values.decodeIfPresent(Int.self, forKey: .imageHeight)
		relatedTopics = try values.decodeIfPresent([RelatedTopics].self, forKey: .relatedTopics)
		abstractURL = try values.decodeIfPresent(String.self, forKey: .abstractURL)
		answer = try values.decodeIfPresent(String.self, forKey: .answer)
		answerType = try values.decodeIfPresent(String.self, forKey: .answerType)
	}

}
