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
/// core.v1.PortworxVolumeSource
///

import Foundation

public extension core.v1 {

	///
	/// PortworxVolumeSource represents a Portworx volume resource.
	///
	struct PortworxVolumeSource: KubernetesResource {
		///
		/// FSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.
		///
		public var fsType: String?
		///
		/// Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
		///
		public var readOnly: Bool?
		///
		/// VolumeID uniquely identifies a Portworx volume
		///
		public var volumeID: String
		///
		/// Default memberwise initializer
		///
		public init(
			fsType: String? = nil,
			readOnly: Bool? = nil,
			volumeID: String
		) {
			self.fsType = fsType
			self.readOnly = readOnly
			self.volumeID = volumeID
		}
	}
}

///
/// Codable conformance
///
extension core.v1.PortworxVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case fsType = "fsType"
		case readOnly = "readOnly"
		case volumeID = "volumeID"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.fsType = try container.decodeIfPresent(String.self, forKey: .fsType)
		self.readOnly = try container.decodeIfPresent(Bool.self, forKey: .readOnly)
		self.volumeID = try container.decode(String.self, forKey: .volumeID)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.fsType, forKey: .fsType)
		try container.encode(self.readOnly, forKey: .readOnly)
		try container.encode(self.volumeID, forKey: .volumeID)
	}

}

