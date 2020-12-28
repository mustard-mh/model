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
/// coordination.v1.LeaseList
///

import Foundation

public extension coordination.v1 {

	///
	/// LeaseList is a list of Lease objects.
	///
	struct LeaseList: KubernetesResource, KubernetesResourceList {
		///
		/// KubernetesResourceList.Item associated type
		///
		public typealias Item = coordination.v1.Lease
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "coordination.k8s.io/v1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "LeaseList"
		///
		/// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
		///
		public var metadata: meta.v1.ListMeta?
		///
		/// Items is a list of schema objects.
		///
		public var items: [coordination.v1.Lease]
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ListMeta? = nil,
			items: [coordination.v1.Lease]
		) {
			self.metadata = metadata
			self.items = items
		}
	}
}

///
/// Codable conformance
///
extension coordination.v1.LeaseList {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case metadata = "metadata"
		case items = "items"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ListMeta.self, forKey: .metadata)
		self.items = try container.decode([coordination.v1.Lease].self, forKey: .items)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.apiVersion, forKey: .apiVersion)
		try container.encode(self.kind, forKey: .kind)
		try container.encode(self.metadata, forKey: .metadata)
		try container.encode(self.items, forKey: .items)
	}

}

///
/// Sequence iterator for KubernetesResourceList items
///
extension coordination.v1.LeaseList: Sequence {

	public typealias Element = coordination.v1.Lease

	public func makeIterator() -> AnyIterator<coordination.v1.Lease> {
		return AnyIterator(self.items.makeIterator())
	}
}

