FROM chromedp/headless-shell:latest

# Switch to Chinese mirror for faster package downloads
RUN sed -i 's|deb.debian.org|mirrors.tuna.tsinghua.edu.cn|g' /etc/apt/sources.list.d/debian.sources || true && \
    sed -i 's|security.debian.org|mirrors.tuna.tsinghua.edu.cn|g' /etc/apt/sources.list.d/debian.sources || true

# Install fontconfig + CJK fonts
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        fontconfig \
        fonts-noto-cjk \
        fonts-wqy-microhei \
    && fc-cache -fv \
    && rm -rf /var/lib/apt/lists/*

# Verify fonts are installed
RUN fc-list :lang=zh | head -5
