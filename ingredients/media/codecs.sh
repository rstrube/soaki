#!/bin/bash
#|#./ingredients/media/codecs.sh #Codecs for Audio, Images, and Video

# Please see: https://wiki.archlinux.org/title/Codecs_and_containers

# Audio Codecs (Lossless)
# FLAC: flac
# WavPak: wavpack
paru -S --noconfirm --needed flac wavpack

# Audio Codecs (Lossy)
# AAC: Encode = faac, Decode = faad2
# ATSC A/52: a52dec
# MPEG-1/MP3: Enocde = lame, Decode = libmad
# Musepack: libmpcdec
# Opus: opus
# Vorbis: libvorbis
paru -S --noconfirm --needed faac faad2 a52dec lame libmad libmpcdec opus libvorbis

# Speech Codes
# AMR: opencore-amr
# Speex: speex
paru -S --noconfirm --needed opencore-amr speex

# Image Codecs
# JPEG 2000: jasper
# WebP: libwebp
# AVIF: libavif
# HEIF: libheif
paru -S --noconfirm --needed jasper libwebp libavif libheif

# Video Codecs
# AV1: dav1d (decode)
# DV: libdv
# Dirac: schroedinger
# H.265: x265
# H.264: x264
# MPEG-1, MPEG-2: libmpeg2
# MPEG-4: xvidcore
# Theora: libtheora
# VP8, VP9: libvpx
paru -S --noconfirm --needed dav1d libdv schroedinger x265 x264 libmpeg2 xvidcore libtheora libvpx
