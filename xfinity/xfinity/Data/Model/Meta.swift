/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Meta : Codable {
	let producer : String?
	let is_stackexchange : String?
	let created_date : String?
	let src_options : Src_options?
	let src_domain : String?
	let topic : [String]?
	let signal_from : String?
	let live_date : String?
	let id : String?
	let attribution : String?
	let perl_module : String?
	let src_url : String?
	let dev_date : String?
	let dev_milestone : String?
	let description : String?
	let example_query : String?
	let js_callback_name : String?
	let blockgroup : String?
	let developer : [Developer]?
	let designer : String?
	let src_name : String?
	let src_id : Int?
	let tab : String?
	let name : String?
	let production_state : String?
	let unsafe : Int?
	let status : String?
	let repo : String?
	let maintainer : Maintainer?

	enum CodingKeys: String, CodingKey {

		case producer = "producer"
		case is_stackexchange = "is_stackexchange"
		case created_date = "created_date"
		case src_options = "src_options"
		case src_domain = "src_domain"
		case topic = "topic"
		case signal_from = "signal_from"
		case live_date = "live_date"
		case id = "id"
		case attribution = "attribution"
		case perl_module = "perl_module"
		case src_url = "src_url"
		case dev_date = "dev_date"
		case dev_milestone = "dev_milestone"
		case description = "description"
		case example_query = "example_query"
		case js_callback_name = "js_callback_name"
		case blockgroup = "blockgroup"
		case developer = "developer"
		case designer = "designer"
		case src_name = "src_name"
		case src_id = "src_id"
		case tab = "tab"
		case name = "name"
		case production_state = "production_state"
		case unsafe = "unsafe"
		case status = "status"
		case repo = "repo"
		case maintainer = "maintainer"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		producer = try values.decodeIfPresent(String.self, forKey: .producer)
		is_stackexchange = try values.decodeIfPresent(String.self, forKey: .is_stackexchange)
		created_date = try values.decodeIfPresent(String.self, forKey: .created_date)
		src_options = try values.decodeIfPresent(Src_options.self, forKey: .src_options)
		src_domain = try values.decodeIfPresent(String.self, forKey: .src_domain)
		topic = try values.decodeIfPresent([String].self, forKey: .topic)
		signal_from = try values.decodeIfPresent(String.self, forKey: .signal_from)
		live_date = try values.decodeIfPresent(String.self, forKey: .live_date)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		attribution = try values.decodeIfPresent(String.self, forKey: .attribution)
		perl_module = try values.decodeIfPresent(String.self, forKey: .perl_module)
		src_url = try values.decodeIfPresent(String.self, forKey: .src_url)
		dev_date = try values.decodeIfPresent(String.self, forKey: .dev_date)
		dev_milestone = try values.decodeIfPresent(String.self, forKey: .dev_milestone)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		example_query = try values.decodeIfPresent(String.self, forKey: .example_query)
		js_callback_name = try values.decodeIfPresent(String.self, forKey: .js_callback_name)
		blockgroup = try values.decodeIfPresent(String.self, forKey: .blockgroup)
		developer = try values.decodeIfPresent([Developer].self, forKey: .developer)
		designer = try values.decodeIfPresent(String.self, forKey: .designer)
		src_name = try values.decodeIfPresent(String.self, forKey: .src_name)
		src_id = try values.decodeIfPresent(Int.self, forKey: .src_id)
		tab = try values.decodeIfPresent(String.self, forKey: .tab)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		production_state = try values.decodeIfPresent(String.self, forKey: .production_state)
		unsafe = try values.decodeIfPresent(Int.self, forKey: .unsafe)
		status = try values.decodeIfPresent(String.self, forKey: .status)
		repo = try values.decodeIfPresent(String.self, forKey: .repo)
		maintainer = try values.decodeIfPresent(Maintainer.self, forKey: .maintainer)
	}

}