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
/// admissionregistration.v1beta1.RuleWithOperations
///

import Foundation

public extension admissionregistration.v1beta1 {

	///
	/// RuleWithOperations is a tuple of Operations and Resources. It is recommended to make sure that all the tuple expansions are valid.
	///
	struct RuleWithOperations: KubernetesResource {
		///
		/// APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is present, the length of the slice must be one. Required.
		///
		public var apiGroups: [String]?
		///
		/// APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is present, the length of the slice must be one. Required.
		///
		public var apiVersions: [String]?
		///
		/// Operations is the operations the admission hook cares about - CREATE, UPDATE, or * for all operations. If '*' is present, the length of the slice must be one. Required.
		///
		public var operations: [String]?
		///
		/// Resources is a list of resources this rule applies to.
		/// 
		/// For example: 'pods' means pods. 'pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.
		/// 
		/// If wildcard is present, the validation rule will ensure resources do not overlap with each other.
		/// 
		/// Depending on the enclosing object, subresources might not be allowed. Required.
		///
		public var resources: [String]?
		///
		/// scope specifies the scope of this rule. Valid values are "Cluster", "Namespaced", and "*" "Cluster" means that only cluster-scoped resources will match this rule. Namespace API objects are cluster-scoped. "Namespaced" means that only namespaced resources will match this rule. "*" means that there are no scope restrictions. Subresources match the scope of their parent resource. Default is "*".
		///
		public var scope: String?
		///
		/// Default memberwise initializer
		///
		public init(
			apiGroups: [String]? = nil,
			apiVersions: [String]? = nil,
			operations: [String]? = nil,
			resources: [String]? = nil,
			scope: String? = nil
		) {
			self.apiGroups = apiGroups
			self.apiVersions = apiVersions
			self.operations = operations
			self.resources = resources
			self.scope = scope
		}
	}
}

///
/// Codable conformance
///
extension admissionregistration.v1beta1.RuleWithOperations {

	private enum CodingKeys: String, CodingKey {

		case apiGroups = "apiGroups"
		case apiVersions = "apiVersions"
		case operations = "operations"
		case resources = "resources"
		case scope = "scope"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.apiGroups = try container.decodeIfPresent([String].self, forKey: .apiGroups)
		self.apiVersions = try container.decodeIfPresent([String].self, forKey: .apiVersions)
		self.operations = try container.decodeIfPresent([String].self, forKey: .operations)
		self.resources = try container.decodeIfPresent([String].self, forKey: .resources)
		self.scope = try container.decodeIfPresent(String.self, forKey: .scope)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.apiGroups, forKey: .apiGroups)
		try container.encode(self.apiVersions, forKey: .apiVersions)
		try container.encode(self.operations, forKey: .operations)
		try container.encode(self.resources, forKey: .resources)
		try container.encode(self.scope, forKey: .scope)
	}

}

