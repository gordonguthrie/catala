#!/bin/ash

# stop on first failure
set -e

cp /share/gleam.ml compiler/plugins
opam exec -- make plugins
mkdir -p ~/catala/_build/default/lib/catala/plugins
cp ~/catala/_build/default/compiler/plugins/elixir.* ~/catala/_build/default/lib/catala/plugins
cp /share/gleam_tutorial.catala_en examples/tutorial_en/
FILE="examples/tutorial_en/elixir_tutorial.ex"
if [ -f "$FILE" ]; then
	rm $FILE
fi
make -C examples/tutorial_en/ elixir_tutorial.ex

cp $FILE /share/catala_transpiler/src