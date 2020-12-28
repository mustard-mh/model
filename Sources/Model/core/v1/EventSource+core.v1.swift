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
/// core.v1.EventSource
///

import Foundation

public extension core.v1 {

	///
	/// EventSource contains information for an event.
	///
	struct EventSource: KubernetesResource {
		///
		/// Component from which the event is generated.
		///
		public var component: String?
		///
		/// Node name on which the event is generated.
		///
		public var host: String?
		///
		/// Default memberwise initializer
		///
		public init(
			component: String? = nil,
			host: String? = nil
		) {
			self.component = component
			self.host = host
		}
	}
}

///
/// Codable conformance
///
extension core.v1.EventSource {

	private enum CodingKeys: String, CodingKey {

		case component = "component"
		case host = "host"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.component = try container.decodeIfPresent(String.self, forKey: .component)
		self.host = try container.decodeIfPresent(String.self, forKey: .host)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.component, forKey: .component)
		try container.encode(self.host, forKey: .host)
	}

}

