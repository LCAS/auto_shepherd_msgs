# Spectrogram.msg
sensor_msgs/Image raw_spectrogram
float32           window_duration   # seconds per STFT window (n_fft)
int32             sample_rate       # Hz
int32             chunk_size
