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

public extension apiregistration.v1 {

	///
	/// ServiceReference holds a reference to Service.legacy.k8s.io
	///
	struct ServiceReference: KubernetesResource {
		///
		/// Name is the name of the service
		///
		public var name: String?
		///
		/// Namespace is the namespace of the service
		///
		public var namespace: String?
		///
		/// If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
		///
		public var port: Int32?
		///
		/// Default memberwise initializer
		///
		public init(
			name: String? = nil,
			namespace: String? = nil,
			port: Int32? = nil
		) {
			self.name = name
			self.namespace = namespace
			self.port = port
		}
	}
}
