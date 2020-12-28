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
/// storage.v1.VolumeAttachmentSource
///

import Foundation

public extension storage.v1 {

	///
	/// VolumeAttachmentSource represents a volume that should be attached. Right now only PersistenVolumes can be attached via external attacher, in future we may allow also inline volumes in pods. Exactly one member can be set.
	///
	struct VolumeAttachmentSource: KubernetesResource {
		///
		/// inlineVolumeSpec contains all the information necessary to attach a persistent volume defined by a pod's inline VolumeSource. This field is populated only for the CSIMigration feature. It contains translated fields from a pod's inline VolumeSource to a PersistentVolumeSpec. This field is alpha-level and is only honored by servers that enabled the CSIMigration feature.
		///
		public var inlineVolumeSpec: core.v1.PersistentVolumeSpec?
		///
		/// Name of the persistent volume to attach.
		///
		public var persistentVolumeName: String?
		///
		/// Default memberwise initializer
		///
		public init(
			inlineVolumeSpec: core.v1.PersistentVolumeSpec? = nil,
			persistentVolumeName: String? = nil
		) {
			self.inlineVolumeSpec = inlineVolumeSpec
			self.persistentVolumeName = persistentVolumeName
		}
	}
}

///
/// Codable conformance
///
extension storage.v1.VolumeAttachmentSource {

	private enum CodingKeys: String, CodingKey {

		case inlineVolumeSpec = "inlineVolumeSpec"
		case persistentVolumeName = "persistentVolumeName"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.inlineVolumeSpec = try container.decodeIfPresent(core.v1.PersistentVolumeSpec.self, forKey: .inlineVolumeSpec)
		self.persistentVolumeName = try container.decodeIfPresent(String.self, forKey: .persistentVolumeName)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.inlineVolumeSpec, forKey: .inlineVolumeSpec)
		try container.encode(self.persistentVolumeName, forKey: .persistentVolumeName)
	}

}

