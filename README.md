# Resume

Pure LaTeX resume with automated PDF generation via GitHub Actions and local Podman testing.

## How it works

1. Edit `resume.tex` (your resume content and styling are in this single file).
2. Push to `main` (or open a PR).
3. GitHub Actions automatically compiles `resume.pdf` using XeLaTeX.
4. Download the PDF from **Actions → workflow run → Artifacts**.

## Local build (Recommended)

To compile the PDF locally on your Mac using Podman (ensures exact parity with GitHub Actions):

```bash
# Simply run the Makefile
make build
```

This will spin up a lightweight container, compile `resume.tex`, output `resume.pdf`, and clean up.

## Files

| File | Purpose |
|---|---|
| `resume.tex` | Your resume source code and content (edit this) |
| `Makefile` | Local build script using Podman |
| `.github/workflows/build-resume.yml` | GitHub Actions CI pipeline |
