# whistle_interfaces/msg/AudioChunk.msg
#
# One block of audio samples, already in the shape that
# sounddevice’s callback expects (frames × channels, float32)

std_msgs/Header header        # timestamp = publishing time
uint32          sample_rate   # Hz (e.g. 44100)
uint32          frames        # number of frames in this chunk
uint32          channels      # 1 = mono, 2 = stereo …
float32[]       data          # flatten(frames × channels)
