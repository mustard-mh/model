//
// Copyright 2020 Swiftkube Project
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

///
/// Generated by Swiftkube:ModelGen
/// Kubernetes v1.18.13
/// authorization.v1.NonResourceRule
///

import Foundation

public extension authorization.v1 {

	///
	/// NonResourceRule holds information that describes a rule for the non-resource
	///
	struct NonResourceRule: KubernetesResource {
		///
		/// NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  "*" means all.
		///
		public var nonResourceURLs: [String]?
		///
		/// Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  "*" means all.
		///
		public var verbs: [String]
		///
		/// Default memberwise initializer
		///
		public init(
			nonResourceURLs: [String]? = nil,
			verbs: [String]
		) {
			self.nonResourceURLs = nonResourceURLs
			self.verbs = verbs
		}
	}
}

///
/// Codable conformance
///
extension authorization.v1.NonResourceRule {

	private enum CodingKeys: String, CodingKey {

		case nonResourceURLs = "nonResourceURLs"
		case verbs = "verbs"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.nonResourceURLs = try container.decodeIfPresent([String].self, forKey: .nonResourceURLs)
		self.verbs = try container.decode([String].self, forKey: .verbs)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.nonResourceURLs, forKey: .nonResourceURLs)
		try container.encode(self.verbs, forKey: .verbs)
	}

}

