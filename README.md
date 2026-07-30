# Chrome CJK Docker

Chrome headless-shell with CJK (Chinese/Japanese/Korean) fonts for screenshot rendering.

## Build

Triggered automatically on tag push (`v*`) or manually via GitHub Actions workflow_dispatch.

## Usage

```bash
docker run -d --name chrome-cjk -p 9222:9222 \
  swr.cn-north-4.myhuaweicloud.com/hwstaff_l00392796/chrome-cjk:latest
```

Connect via CDP at `localhost:9222`.
