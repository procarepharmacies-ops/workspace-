#!/bin/bash
# MPV Media Player Installation Script - Full Features
# Installs MPV with ALL audio, video, and codec features

set -e

echo "=========================================="
echo "MPV Complete Installation with All Features"
echo "=========================================="
echo ""

# Update package list
echo "[1/3] Updating package repository..."
sudo apt-get update -y > /dev/null 2>&1

# Install MPV with all recommended dependencies and codecs
echo "[2/3] Installing MPV with full feature set..."
sudo apt-get install -y \
  mpv \
  yt-dlp \
  ffmpeg \
  libavcodec-extra \
  libbluray2 \
  libdvdnav4 \
  libcdio19t64 \
  libcdio-cdda2t64 \
  libcdio-paranoia2t64 \
  libcaca0 \
  libsixel1 \
  liblua5.2-0 \
  libmujs3 \
  libplacebo338 \
  librubberband2 \
  libzimg2 \
  libuchardet0 \
  libass9 \
  libva-drm2 \
  libva-wayland2 \
  libva-x11-2 \
  libvdpau1 \
  libvulkan1 \
  libpipewire-0.3-0t64 \
  libpulse0 \
  libjack-jackd2-0 \
  libsdl2-2.0-0 \
  > /dev/null 2>&1

echo "[3/3] Verifying installation..."
mpv_version=$(mpv --version 2>&1 | head -1)
echo ""
echo "✓ Installation completed successfully!"
echo ""
echo "Version info:"
echo "$mpv_version"
echo ""

echo "=========================================="
echo "INSTALLED FEATURES:"
echo "=========================================="
echo ""
echo "Core Features:"
echo "  • Video playback (MP4, MKV, WebM, AVI, etc.)"
echo "  • Audio playback (MP3, AAC, FLAC, OGG, WAV, etc.)"
echo "  • YouTube streaming (via yt-dlp)"
echo "  • Subtitles (SSA, ASS, SRT, VTT)"
echo "  • Playlist support"
echo ""
echo "Media Formats:"
echo "  • H.264, H.265/HEVC, VP8, VP9 (video)"
echo "  • MP3, AAC, AC3, DTS, FLAC (audio)"
echo "  • Blu-ray playback (libbluray2)"
echo "  • DVD playback (libdvdnav4)"
echo "  • CD audio playback (libcdio)"
echo ""
echo "Audio Backends:"
echo "  • PulseAudio (libpulse0)"
echo "  • JACK (libjack-jackd2-0)"
echo "  • PipeWire (libpipewire-0.3-0t64)"
echo "  • ALSA"
echo ""
echo "Video Output:"
echo "  • X11 (libva-x11-2)"
echo "  • Wayland (libva-wayland2)"
echo "  • OpenGL"
echo "  • Vulkan rendering"
echo ""
echo "Hardware Acceleration:"
echo "  • VA-API (Intel/AMD GPUs)"
echo "  • VDPAU (NVIDIA legacy)"
echo "  • libplacebo GPU shaders"
echo ""
echo "Scripting & Extensions:"
echo "  • Lua scripting (liblua5.2-0)"
echo "  • JavaScript support (libmujs3)"
echo ""
echo "Advanced Features:"
echo "  • Terminal graphics (libcaca0, libsixel1)"
echo "  • Lossless color management (liblcms2-2)"
echo "  • Audio scaling (librubberband2)"
echo "  • Zooming/scaling (libzimg2)"
echo "  • Character detection (libuchardet0)"
echo ""
echo "=========================================="
echo "USAGE EXAMPLES:"
echo "=========================================="
echo ""
echo "  # Play a local file:"
echo "  mpv video.mp4"
echo ""
echo "  # Play YouTube video:"
echo "  mpv 'https://www.youtube.com/watch?v=VIDEO_ID'"
echo ""
echo "  # Play DVD:"
echo "  mpv dvd://"
echo ""
echo "  # Play Blu-ray:"
echo "  mpv bd://"
echo ""
echo "  # Fullscreen with volume 80%:"
echo "  mpv --fullscreen --volume=80 video.mkv"
echo ""
echo "  # See all options:"
echo "  man mpv"
echo ""
