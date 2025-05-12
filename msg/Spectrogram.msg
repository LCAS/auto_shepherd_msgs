# Spectrogram.msg
# A snapshot of a spectrogram plus just enough numbers to say
# “what row is what frequency?” and “what column is what time?”

sensor_msgs/Image raw_spectrogram   # 2-D picture: rows = frequencies, columns = time steps

# ---- Time-axis (left-to-right) information ----
float32 window_duration   # Length of the STFT analysis window in seconds
                          #   (e.g. 0.025 means each slice listens to 25 ms of audio)

int32   sample_rate       # How fast the audio was recorded, in samples per second (Hz)
                          #   Needed to turn any “number of samples” into real seconds

int32   chunk_size        # Hop size between one column and the next, in *samples*
                          #   Time between columns = chunk_size / sample_rate

# ---- Frequency-axis (top-to-bottom) information ----
int32   frequency_max     # Frequency (Hz) of the first row shown in the image
int32   frequency_min     # Frequency (Hz) of the last row shown in the image

bool    frequency_row0_high  # If true: row 0 is the highest frequency (frequency_max at the top)
                             # If false: row 0 is the lowest frequency (frequency_min at the top)

