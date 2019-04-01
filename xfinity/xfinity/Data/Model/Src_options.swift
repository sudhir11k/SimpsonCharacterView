/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Src_options : Codable {
	let skip_image_name : Int?
	let directory : String?
	let src_info : String?
	let is_mediawiki : Int?
	let skip_abstract : Int?
	let skip_end : String?
	let is_fanon : Int?
	let is_wikipedia : Int?
	let skip_abstract_paren : Int?
	let skip_icon : Int?
	let skip_qr : String?
	let min_abstract_length : String?
	let language : String?
	let source_skip : String?

	enum CodingKeys: String, CodingKey {

		case skip_image_name = "skip_image_name"
		case directory = "directory"
		case src_info = "src_info"
		case is_mediawiki = "is_mediawiki"
		case skip_abstract = "skip_abstract"
		case skip_end = "skip_end"
		case is_fanon = "is_fanon"
		case is_wikipedia = "is_wikipedia"
		case skip_abstract_paren = "skip_abstract_paren"
		case skip_icon = "skip_icon"
		case skip_qr = "skip_qr"
		case min_abstract_length = "min_abstract_length"
		case language = "language"
		case source_skip = "source_skip"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		skip_image_name = try values.decodeIfPresent(Int.self, forKey: .skip_image_name)
		directory = try values.decodeIfPresent(String.self, forKey: .directory)
		src_info = try values.decodeIfPresent(String.self, forKey: .src_info)
		is_mediawiki = try values.decodeIfPresent(Int.self, forKey: .is_mediawiki)
		skip_abstract = try values.decodeIfPresent(Int.self, forKey: .skip_abstract)
		skip_end = try values.decodeIfPresent(String.self, forKey: .skip_end)
		is_fanon = try values.decodeIfPresent(Int.self, forKey: .is_fanon)
		is_wikipedia = try values.decodeIfPresent(Int.self, forKey: .is_wikipedia)
		skip_abstract_paren = try values.decodeIfPresent(Int.self, forKey: .skip_abstract_paren)
		skip_icon = try values.decodeIfPresent(Int.self, forKey: .skip_icon)
		skip_qr = try values.decodeIfPresent(String.self, forKey: .skip_qr)
		min_abstract_length = try values.decodeIfPresent(String.self, forKey: .min_abstract_length)
		language = try values.decodeIfPresent(String.self, forKey: .language)
		source_skip = try values.decodeIfPresent(String.self, forKey: .source_skip)
	}

}