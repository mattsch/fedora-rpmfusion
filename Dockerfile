FROM fedora:26
MAINTAINER Matthew Schick <matthew.schick@gmail.com>

# Add rpmfusion repo, do package updates and installs
RUN dnf install -yq http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-26.noarch.rpm \
    http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-26.noarch.rpm && \
    rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-rpmfusion-nonfree-fedora-26 && \
    dnf upgrade -yq && \
    dnf clean all
