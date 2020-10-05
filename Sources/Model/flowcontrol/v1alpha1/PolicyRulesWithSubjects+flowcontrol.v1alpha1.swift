//
// Copyright 2020 Iskandar Abudiab (iabudiab.dev)
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

import Foundation

public extension flowcontrol.v1alpha1 {

	///
	/// PolicyRulesWithSubjects prescribes a test that applies to a request to an apiserver. The test considers the subject making the request, the verb being requested, and the resource to be acted upon. This PolicyRulesWithSubjects matches a request if and only if both (a) at least one member of subjects matches the request and (b) at least one member of resourceRules or nonResourceRules matches the request.
	///
	struct PolicyRulesWithSubjects: KubernetesResource {
		///
		/// `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
		///
		public var nonResourceRules: [flowcontrol.v1alpha1.NonResourcePolicyRule]?
		///
		/// `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
		///
		public var resourceRules: [flowcontrol.v1alpha1.ResourcePolicyRule]?
		///
		/// subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
		///
		public var subjects: [flowcontrol.v1alpha1.Subject]
		///
		/// Default memberwise initializer
		///
		public init(
			nonResourceRules: [flowcontrol.v1alpha1.NonResourcePolicyRule]? = nil,
			resourceRules: [flowcontrol.v1alpha1.ResourcePolicyRule]? = nil,
			subjects: [flowcontrol.v1alpha1.Subject]
		) {
			self.nonResourceRules = nonResourceRules
			self.resourceRules = resourceRules
			self.subjects = subjects
		}
	}
}

///
/// Codable conformance
///
extension flowcontrol.v1alpha1.PolicyRulesWithSubjects {

	private enum CodingKeys: String, CodingKey {
		case nonResourceRules = "nonResourceRules"
		case resourceRules = "resourceRules"
		case subjects = "subjects"
	}

}
