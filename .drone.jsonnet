# Pipeline template
local test_with(release, use_network=false) = {
    kind: "pipeline",
    type: "docker",
    name: "build-check-installability-" + release,
    steps: [
        {
            name: "build-check-installability",
            image: "debian:" + release,
            commands: [
                "apt-get update",
                "apt-get -yy install dpkg-dev apt-utils debhelper gpg dose-distcheck wget",
                "./build",
                "./check-installability " + release
            ]
        }
    ]
};

[
    test_with("bullseye"),
    test_with("testing"),
    test_with("unstable"),
]
