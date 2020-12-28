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
/// apiregistration.v1beta1.APIService
///

import Foundation

public extension apiregistration.v1beta1 {

	///
	/// APIService represents a server for a particular GroupVersion. Name must be "version.group".
	///
	struct APIService: KubernetesAPIResource, MetadataHavingResource, ClusterScopedResource,
				ReadableResource, ListableResource, CreatableResource, ReplaceableResource, DeletableResource, CollectionDeletableResource {
		///
		/// ListableResource.List associated type
		///
		public typealias List = apiregistration.v1beta1.APIServiceList
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "apiregistration.k8s.io/v1beta1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "APIService"
		///
		/// No description
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// Spec contains information for locating and communicating with a server
		///
		public var spec: apiregistration.v1beta1.APIServiceSpec?
		///
		/// Status contains derived information about an API server
		///
		public var status: apiregistration.v1beta1.APIServiceStatus?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta? = nil,
			spec: apiregistration.v1beta1.APIServiceSpec? = nil,
			status: apiregistration.v1beta1.APIServiceStatus? = nil
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
extension apiregistration.v1beta1.APIService {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case metadata = "metadata"
		case spec = "spec"
		case status = "status"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ObjectMeta.self, forKey: .metadata)
		self.spec = try container.decodeIfPresent(apiregistration.v1beta1.APIServiceSpec.self, forKey: .spec)
		self.status = try container.decodeIfPresent(apiregistration.v1beta1.APIServiceStatus.self, forKey: .status)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.apiVersion, forKey: .apiVersion)
		try container.encode(self.kind, forKey: .kind)
		try container.encode(self.metadata, forKey: .metadata)
		try container.encode(self.spec, forKey: .spec)
		try container.encode(self.status, forKey: .status)
	}

}

