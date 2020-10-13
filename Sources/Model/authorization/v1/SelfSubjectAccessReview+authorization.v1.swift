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

///
/// Generated by Swiftkube:ModelGen
/// Kubernetes v1.18.9
/// authorization.v1.SelfSubjectAccessReview
///

import Foundation

public extension authorization.v1 {

	///
	/// SelfSubjectAccessReview checks whether or the current user can perform an action.  Not filling in a spec.namespace means "in all namespaces".  Self is a special case, because users should always be able to check whether they can perform an action
	///
	struct SelfSubjectAccessReview: KubernetesResource, KubernetesAPIResource, MetadataHavingResource {
		///
		/// APIVersion of this Kubernetes API Resource.
		///
		public static let apiVersion: APIVersion = .authorizationV1
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "authorization.k8s.io/v1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "SelfSubjectAccessReview"
		///
		/// No description
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// Spec holds information about the request being evaluated.  user and groups must be empty
		///
		public var spec: authorization.v1.SelfSubjectAccessReviewSpec
		///
		/// Status is filled in by the server and indicates whether the request is allowed or not
		///
		public var status: authorization.v1.SubjectAccessReviewStatus?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta? = nil,
			spec: authorization.v1.SelfSubjectAccessReviewSpec,
			status: authorization.v1.SubjectAccessReviewStatus? = nil
		) {
			self.metadata = metadata
			self.spec = spec
			self.status = status
		}
	}
}

///
/// Codable conformance
///
extension authorization.v1.SelfSubjectAccessReview {

	private enum CodingKeys: String, CodingKey {
		case metadata = "metadata"
		case spec = "spec"
		case status = "status"
	}

}

