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
/// auditregistration.v1alpha1.Policy
///

import Foundation

public extension auditregistration.v1alpha1 {

	///
	/// Policy defines the configuration of how audit events are logged
	///
	struct Policy: KubernetesResource {
		///
		/// The Level that all requests are recorded at. available options: None, Metadata, Request, RequestResponse required
		///
		public var level: String
		///
		/// Stages is a list of stages for which events are created.
		///
		public var stages: [String]?
		///
		/// Default memberwise initializer
		///
		public init(
			level: String,
			stages: [String]? = nil
		) {
			self.level = level
			self.stages = stages
		}
	}
}

///
/// Codable conformance
///
extension auditregistration.v1alpha1.Policy {

	private enum CodingKeys: String, CodingKey {

		case level = "level"
		case stages = "stages"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.level = try container.decode(String.self, forKey: .level)
		self.stages = try container.decodeIfPresent([String].self, forKey: .stages)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.level, forKey: .level)
		try container.encode(self.stages, forKey: .stages)
	}

}

