# Copyright 2018 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Bazel providers for Android rules."""

AndroidDeviceScriptFixtureInfo = provider(
    doc = "Provides information required to execute the device script fixture.",
    fields = dict(
        daemon = "Whether the fixture executes as a daemon.",
        fixture_script_path = "The path to the fixture script artifact.",
        runfiles = "All fixture script runfiles.",
        strict_exit = "Whether the a strict exit is required.",
    ),
)

AndroidHostServiceFixtureInfo = provider(
    doc = "Provides information required to execute the host service fixture.",
    fields = dict(
        check_healthz = "Indicates whether or not healthz checking can be done",
        daemon = "Whether the fixture executes as a daemon.",
        executable_path = "The path of the executable artifact.",
        provides_test_args = "Whether the executable provides test args.",
        proxy_name = "Name of the server which should be used as http proxy",
        runfiles = "All host service runfiles.",
        service_names = "List of services, by name, exposed by the fixture.",
    ),
)

AndroidAppsInfo = provider(
    doc = "Provides information about app to install.",
    fields = dict(
        apps = "List of app provider artifacts.",
    ),
)

StarlarkDeviceBrokerInfo = provider(
    doc = "Provides information about the device broker.",
    fields = dict(
        type = "Type of the device broker.",
    ),
)

StarlarkDex2OatInfo = provider(
    doc = "Provides information about dex2oat.",
    fields = dict(
        enabled = "Is dex2oat enabled.",
    ),
)

AndroidDeviceBootActionInfo = provider(
    doc = "Provides outputs for the Boot phase of AndroidDevice",
    fields = dict(
        executable = "Executable Output Script",
        images = "Tarred images of the files in boot phase",
        metadata = "Proto information about the device",
        snapshot = "ram.bin file generated by Snapshot.",
    ),
)

AndroidJavaInfo = provider(
    doc = "Provides outputs for the Android Java Compilation",
    fields = dict(
        aidl = "AndroidIdlInfo",
        aide = "AndroidIdeInfo",
        java = "JavaInfo",
    ),
)

AndroidResInfo = provider(
    doc = "Provides outputs for the Android Resource Processing",
    fields = dict(
        assets = "AndroidAssetInfo",
        manifest = "AndroidManifestInfo",
        resources = "AndroidResourcesInfo",
        r_java = "JavaInfo for R.jar",
        resources_apk = "Android Resources Apk",
    ),
)

AndroidJavaStarlarkInfo = provider(
    doc = "Provides additional Java related information.",
    fields = dict(
        constraints = "The list of constraints supported by the target.",
        neverlink = "Is the JavaInfo marked with as neverlink.",
    ),
)

AndroidFilteredJdepsInfo = provider(
    doc = "Provides a filtered jdeps proto.",
    fields = dict(
        jdeps = "Filtered jdeps",
    ),
)

StarlarkApkInfo = provider(
    doc = "Provides APK outputs of a rule.",
    fields = dict(
        keystore = "Keystore used to sign the APK",
        signed_apk = "Signed APK",
        unsigned_apk = "Unsigned APK",
    ),
)