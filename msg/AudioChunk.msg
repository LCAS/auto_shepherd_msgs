# whistle_interfaces/msg/AudioChunk.msg
#
# A single block (“chunk”) of raw PCM audio that downstream nodes
# can feed straight to NumPy or sounddevice.
# Shape conceptually:   frames  ×  channels   (float32)
# Stored flattened in row-major order:  [ch0_f0, ch1_f0, ch0_f1, ch1_f1, …]

std_msgs/Header header        # ROS time stamp at publish moment

# ─── Audio data ────────────────────────────────────────────────
float32[] data                # Flattened PCM samples, range −1.0 … +1.0
uint32    channels            # 1 = mono, 2 = stereo, etc.
uint32    frames              # How many time-steps (rows) are in this chunk

# ─── Time scale ────────────────────────────────────────────────
uint32    sample_rate         # Samples per second, Hz (e.g. 48 000)

# ─── Frequency band represented in this stream ────────────────
# Useful when the signal has already been band-limited before capture.
uint32    frequency_max       # Highest frequency present in the signal, Hz
uint32    frequency_min       # Lowest  frequency present in the signal, Hz
bool      frequency_row0_high # If true: row 0 is the highest frequency (frequency_max at the top)
                              # If false: row 0 is the lowest frequency (frequency_min at the top)

