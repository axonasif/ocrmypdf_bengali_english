FROM jbarlow83/ocrmypdf@sha256:04dae34fe27694c4cac3cfb42f9670370f06a4607b5d5a8f1e02090d7fbfda32

RUN apt update -yq && apt install -yq curl \
    && cd /usr/share/tesseract-ocr/*/tessdata \
    && curl -LO https://github.com/tesseract-ocr/tessdata_best/raw/main/ben.traineddata \
                https://github.com/tesseract-ocr/tessdata_best/raw/main/eng.traineddata