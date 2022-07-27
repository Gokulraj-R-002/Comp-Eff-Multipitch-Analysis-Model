function x2 = PeriodicityDetection(x_low, x_high, k)
    x2 = ifft((abs(fft(x_low))).^k + (abs(fft(x_high))).^k);

end

