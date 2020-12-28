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
/// apiextensions.v1beta1.CustomResourceSubresourceScale
///

import Foundation

public extension apiextensions.v1beta1 {

	///
	/// CustomResourceSubresourceScale defines how to serve the scale subresource for CustomResources.
	///
	struct CustomResourceSubresourceScale: KubernetesResource {
		///
		/// labelSelectorPath defines the JSON path inside of a custom resource that corresponds to Scale `status.selector`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status` or `.spec`. Must be set to work with HorizontalPodAutoscaler. The field pointed by this JSON path must be a string field (not a complex selector struct) which contains a serialized label selector in string form. More info: https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the custom resource, the `status.selector` value in the `/scale` subresource will default to the empty string.
		///
		public var labelSelectorPath: String?
		///
		/// specReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `spec.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.spec`. If there is no value under the given path in the custom resource, the `/scale` subresource will return an error on GET.
		///
		public var specReplicasPath: String
		///
		/// statusReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `status.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status`. If there is no value under the given path in the custom resource, the `status.replicas` value in the `/scale` subresource will default to 0.
		///
		public var statusReplicasPath: String
		///
		/// Default memberwise initializer
		///
		public init(
			labelSelectorPath: String? = nil,
			specReplicasPath: String,
			statusReplicasPath: String
		) {
			self.labelSelectorPath = labelSelectorPath
			self.specReplicasPath = specReplicasPath
			self.statusReplicasPath = statusReplicasPath
		}
	}
}

///
/// Codable conformance
///
extension apiextensions.v1beta1.CustomResourceSubresourceScale {

	private enum CodingKeys: String, CodingKey {

		case labelSelectorPath = "labelSelectorPath"
		case specReplicasPath = "specReplicasPath"
		case statusReplicasPath = "statusReplicasPath"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.labelSelectorPath = try container.decodeIfPresent(String.self, forKey: .labelSelectorPath)
		self.specReplicasPath = try container.decode(String.self, forKey: .specReplicasPath)
		self.statusReplicasPath = try container.decode(String.self, forKey: .statusReplicasPath)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.labelSelectorPath, forKey: .labelSelectorPath)
		try container.encode(self.specReplicasPath, forKey: .specReplicasPath)
		try container.encode(self.statusReplicasPath, forKey: .statusReplicasPath)
	}

}

