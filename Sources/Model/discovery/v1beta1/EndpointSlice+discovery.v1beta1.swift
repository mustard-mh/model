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
/// discovery.v1beta1.EndpointSlice
///

import Foundation

public extension discovery.v1beta1 {

	///
	/// EndpointSlice represents a subset of the endpoints that implement a service. For a given service there may be multiple EndpointSlice objects, selected by labels, which must be joined to produce the full set of endpoints.
	///
	struct EndpointSlice: KubernetesResource, KubernetesAPIResource, MetadataHavingResource, ListableResource {
		///
		/// ListableResource.List associated type
		///
		public typealias List = discovery.v1beta1.EndpointSliceList
		///
		/// The type of the associated KubernetesResourceList
		///
		public static let listType: List.Type = discovery.v1beta1.EndpointSliceList.self
		///
		/// APIVersion of this Kubernetes API Resource.
		///
		public static let apiVersion: APIVersion = .discoveryV1Beta1
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "discovery.k8s.io/v1beta1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "EndpointSlice"
		///
		/// Standard object's metadata.
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// addressType specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. This field is immutable after creation. The following address types are currently supported: * IPv4: Represents an IPv4 Address. * IPv6: Represents an IPv6 Address. * FQDN: Represents a Fully Qualified Domain Name.
		///
		public var addressType: String
		///
		/// endpoints is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints.
		///
		public var endpoints: [discovery.v1beta1.Endpoint]
		///
		/// ports specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. When ports is empty, it indicates that there are no defined ports. When a port is defined with a nil port value, it indicates "all ports". Each slice may include a maximum of 100 ports.
		///
		public var ports: [discovery.v1beta1.EndpointPort]?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta? = nil,
			addressType: String,
			endpoints: [discovery.v1beta1.Endpoint],
			ports: [discovery.v1beta1.EndpointPort]? = nil
		) {
			self.metadata = metadata
			self.addressType = addressType
			self.endpoints = endpoints
			self.ports = ports
		}
	}
}

///
/// Codable conformance
///
extension discovery.v1beta1.EndpointSlice {

	private enum CodingKeys: String, CodingKey {
		case metadata = "metadata"
		case addressType = "addressType"
		case endpoints = "endpoints"
		case ports = "ports"
	}

}

