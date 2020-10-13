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
/// networking.v1.NetworkPolicy
///

import Foundation

public extension networking.v1 {

	///
	/// NetworkPolicy describes what network traffic is allowed for a set of Pods
	///
	struct NetworkPolicy: KubernetesResource, KubernetesAPIResource, MetadataHavingResource, ListableResource {
		///
		/// ListableResource.List associated type
		///
		public typealias List = networking.v1.NetworkPolicyList
		///
		/// The type of the associated KubernetesResourceList
		///
		public static let listType: List.Type = networking.v1.NetworkPolicyList.self
		///
		/// APIVersion of this Kubernetes API Resource.
		///
		public static let apiVersion: APIVersion = .networkingV1
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "networking.k8s.io/v1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "NetworkPolicy"
		///
		/// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// Specification of the desired behavior for this NetworkPolicy.
		///
		public var spec: networking.v1.NetworkPolicySpec?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta? = nil,
			spec: networking.v1.NetworkPolicySpec? = nil
		) {
			self.metadata = metadata
			self.spec = spec
		}
	}
}

///
/// Codable conformance
///
extension networking.v1.NetworkPolicy {

	private enum CodingKeys: String, CodingKey {
		case metadata = "metadata"
		case spec = "spec"
	}

}

