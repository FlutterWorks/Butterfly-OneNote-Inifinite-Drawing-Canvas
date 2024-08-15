FLUTTER_VERSION=$(cat ../FLUTTER_VERSION)
BUTTERFLY_FLAVOR=$([[ "$BUTTERFLY_NIGHTLY" == "true" ]] && echo "nightly" || echo "stable")
if [ "$BUTTERFLY_NIGHTLY" = "true" ]; then cp -r web_nightly/** web; fi && if cd flutter; then git pull && cd ..; else git clone https://github.com/flutter/flutter.git -b $FLUTTER_VERSION; fi && flutter/bin/flutter config --enable-web && flutter/bin/flutter build web --wasm --release --dart-define=FLUTTER_WEB_CANVASKIT_URL=/canvaskit/ --dart-define=flavor=$BUTTERFLY_FLAVOR