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
/// core.v1.Endpoints
///

import Foundation

public extension core.v1 {

	///
	/// Endpoints is a collection of endpoints that implement the actual service. Example:
	///   Name: "mysvc",
	///   Subsets: [
	///     {
	///       Addresses: [{"ip": "10.10.1.1"}, {"ip": "10.10.2.2"}],
	///       Ports: [{"name": "a", "port": 8675}, {"name": "b", "port": 309}]
	///     },
	///     {
	///       Addresses: [{"ip": "10.10.3.3"}],
	///       Ports: [{"name": "a", "port": 93}, {"name": "b", "port": 76}]
	///     },
	///  ]
	///
	struct Endpoints: KubernetesAPIResource, MetadataHavingResource, NamespacedResource,
				ReadableResource, ListableResource, CreatableResource, ReplaceableResource, DeletableResource, CollectionDeletableResource {
		///
		/// ListableResource.List associated type
		///
		public typealias List = core.v1.EndpointsList
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "v1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "Endpoints"
		///
		/// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// The set of all endpoints is the union of all subsets. Addresses are placed into subsets according to the IPs they share. A single address with multiple ports, some of which are ready and some of which are not (because they come from different containers) will result in the address being displayed in different subsets for the different ports. No address will appear in both Addresses and NotReadyAddresses in the same subset. Sets of addresses and ports that comprise a service.
		///
		public var subsets: [core.v1.EndpointSubset]?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta? = nil,
			subsets: [core.v1.EndpointSubset]? = nil
		) {
			self.metadata = metadata
			self.subsets = subsets
		}
	}
}

///
/// Codable conformance
///
extension core.v1.Endpoints {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case metadata = "metadata"
		case subsets = "subsets"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ObjectMeta.self, forKey: .metadata)
		self.subsets = try container.decodeIfPresent([core.v1.EndpointSubset].self, forKey: .subsets)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.apiVersion, forKey: .apiVersion)
		try container.encode(self.kind, forKey: .kind)
		try container.encode(self.metadata, forKey: .metadata)
		try container.encode(self.subsets, forKey: .subsets)
	}

}

