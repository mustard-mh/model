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
/// core.v1.NFSVolumeSource
///

import Foundation

public extension core.v1 {

	///
	/// Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support ownership management or SELinux relabeling.
	///
	struct NFSVolumeSource: KubernetesResource {
		///
		/// Path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
		///
		public var path: String
		///
		/// ReadOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
		///
		public var readOnly: Bool?
		///
		/// Server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
		///
		public var server: String
		///
		/// Default memberwise initializer
		///
		public init(
			path: String,
			readOnly: Bool? = nil,
			server: String
		) {
			self.path = path
			self.readOnly = readOnly
			self.server = server
		}
	}
}

///
/// Codable conformance
///
extension core.v1.NFSVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case path = "path"
		case readOnly = "readOnly"
		case server = "server"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.path = try container.decode(String.self, forKey: .path)
		self.readOnly = try container.decodeIfPresent(Bool.self, forKey: .readOnly)
		self.server = try container.decode(String.self, forKey: .server)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.path, forKey: .path)
		try container.encode(self.readOnly, forKey: .readOnly)
		try container.encode(self.server, forKey: .server)
	}

}

