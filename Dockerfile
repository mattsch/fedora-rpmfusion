FROM fedora:latest
MAINTAINER Matthew Schick <matthew.schick@gmail.com>

ARG FEDVER=27

# Add rpmfusion repo, do package updates and installs
RUN dnf install -yq \
    http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-${FEDVER}.noarch.rpm \
    http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-${FEDVER}.noarch.rpm && \
    dnf upgrade -yq && \
    dnf clean all
