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
/// core.v1.NamespaceCondition
///

import Foundation

public extension core.v1 {

	///
	/// NamespaceCondition contains details about state of namespace.
	///
	struct NamespaceCondition: KubernetesResource {
		///
		/// No description
		///
		public var lastTransitionTime: Date?
		///
		/// No description
		///
		public var message: String?
		///
		/// No description
		///
		public var reason: String?
		///
		/// Status of the condition, one of True, False, Unknown.
		///
		public var status: String
		///
		/// Type of namespace controller condition.
		///
		public var type: String
		///
		/// Default memberwise initializer
		///
		public init(
			lastTransitionTime: Date? = nil,
			message: String? = nil,
			reason: String? = nil,
			status: String,
			type: String
		) {
			self.lastTransitionTime = lastTransitionTime
			self.message = message
			self.reason = reason
			self.status = status
			self.type = type
		}
	}
}

///
/// Codable conformance
///
extension core.v1.NamespaceCondition {

	private enum CodingKeys: String, CodingKey {

		case lastTransitionTime = "lastTransitionTime"
		case message = "message"
		case reason = "reason"
		case status = "status"
		case type = "type"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.lastTransitionTime = try container.decodeIfPresent(Date.self, forKey: .lastTransitionTime)
		self.message = try container.decodeIfPresent(String.self, forKey: .message)
		self.reason = try container.decodeIfPresent(String.self, forKey: .reason)
		self.status = try container.decode(String.self, forKey: .status)
		self.type = try container.decode(String.self, forKey: .type)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.lastTransitionTime, forKey: .lastTransitionTime)
		try container.encode(self.message, forKey: .message)
		try container.encode(self.reason, forKey: .reason)
		try container.encode(self.status, forKey: .status)
		try container.encode(self.type, forKey: .type)
	}

}

