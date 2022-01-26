image_build:
	docker build -t lecture_c:develop .
run_image:
	docker run -v $(shell pwd)/src:/workspace/src -it lecture_c:develop bash
