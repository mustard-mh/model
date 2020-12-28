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
/// storage.v1alpha1.VolumeAttachmentSpec
///

import Foundation

public extension storage.v1alpha1 {

	///
	/// VolumeAttachmentSpec is the specification of a VolumeAttachment request.
	///
	struct VolumeAttachmentSpec: KubernetesResource {
		///
		/// Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
		///
		public var attacher: String
		///
		/// The node that the volume should be attached to.
		///
		public var nodeName: String
		///
		/// Source represents the volume that should be attached.
		///
		public var source: storage.v1alpha1.VolumeAttachmentSource
		///
		/// Default memberwise initializer
		///
		public init(
			attacher: String,
			nodeName: String,
			source: storage.v1alpha1.VolumeAttachmentSource
		) {
			self.attacher = attacher
			self.nodeName = nodeName
			self.source = source
		}
	}
}

///
/// Codable conformance
///
extension storage.v1alpha1.VolumeAttachmentSpec {

	private enum CodingKeys: String, CodingKey {

		case attacher = "attacher"
		case nodeName = "nodeName"
		case source = "source"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.attacher = try container.decode(String.self, forKey: .attacher)
		self.nodeName = try container.decode(String.self, forKey: .nodeName)
		self.source = try container.decode(storage.v1alpha1.VolumeAttachmentSource.self, forKey: .source)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.attacher, forKey: .attacher)
		try container.encode(self.nodeName, forKey: .nodeName)
		try container.encode(self.source, forKey: .source)
	}

}

