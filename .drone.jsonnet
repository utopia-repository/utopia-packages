# Pipeline template
local test_with(release, use_network=false) = {
    kind: "pipeline",
    type: "docker",
    name: "build-check-" + release,
    steps: [
        {
            name: "build",
            image: "debian:" + release,
            commands: [
                "apt-get update",
                "apt-get -yy install dpkg-dev debhelper gpg",
                "./build",
            ]
        },
        {
            name: "check-installability",
            image: "debian:" + release,
            commands: [
                "apt-get update",
                "apt-get -yy install dose-distcheck wget apt-utils dpkg-dev",
                "./check-installability " + release
            ]
        }
    ]
};

[
    test_with("stable"),
    test_with("testing"),
    test_with("unstable"),
]
