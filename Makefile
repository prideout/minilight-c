ARG = scenes/cornellbox.ml.txt

release:
	cmake -H. -B.release -DCMAKE_BUILD_TYPE=Release
	cmake --build .release -- -j minilight

debug:
	cmake -H. -B.debug -DCMAKE_BUILD_TYPE=Debug
	cmake --build .debug -- -j minilight
	.debug/minilight $(ARG)

run: release
	.release/minilight $(ARG)

run_debug: debug
	cmake --build .debug -- -j minilight
	lldb -o run -- .debug/minilight $(ARG)

clean:
	rm -rf .release .debug
