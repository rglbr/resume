.PHONY: build clean

IMAGE = pandoc/extra:latest

build:
	@echo "Compiling LaTeX resume using Podman..."
	podman run --arch amd64 --rm -v "$(PWD):/data" -w /data --entrypoint xelatex $(IMAGE) resume.tex
	@echo "Done! Generated resume.pdf"

clean:
	rm -f resume.aux resume.log resume.out resume.pdf
