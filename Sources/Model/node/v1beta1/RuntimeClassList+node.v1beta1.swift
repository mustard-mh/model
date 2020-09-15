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

public extension node.v1beta1 {

	///
	/// RuntimeClassList is a list of RuntimeClass objects.
	///
	struct RuntimeClassList: KubernetesResource, KubernetesResourceList {

		public typealias Resource = node.v1beta1.RuntimeClass
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "node.k8s.io/v1beta1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "RuntimeClassList"
		///
		/// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
		///
		public var metadata: meta.v1.ListMeta?
		///
		/// Items is a list of schema objects.
		///
		public var items: [node.v1beta1.RuntimeClass]
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ListMeta? = nil,
			items: [node.v1beta1.RuntimeClass]
		) {
			self.metadata = metadata
			self.items = items
		}
	}
}

extension node.v1beta1.RuntimeClassList: Sequence {

	public typealias Element = node.v1beta1.RuntimeClass

	public func makeIterator() -> AnyIterator<node.v1beta1.RuntimeClass> {
		return AnyIterator(self.items.makeIterator())
	}
}
