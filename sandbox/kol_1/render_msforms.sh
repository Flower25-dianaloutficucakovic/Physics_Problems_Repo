#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

require_cmd() {
  if ! command -v "$1" >/dev/null 2>&1; then
    echo "Missing required command: $1" >&2
    exit 1
  fi
}

render_one() {
  local tex_name="$1"
  local pdf_name="$2"
  local png_dir="$3"
  local png_prefix="$4"

  mkdir -p "$SCRIPT_DIR/$png_dir"
  rm -f "$SCRIPT_DIR/$png_dir"/"$png_prefix"-*.png

  pdflatex -interaction=nonstopmode -output-directory "$SCRIPT_DIR" "$SCRIPT_DIR/$tex_name"
  pdftoppm -png -r 200 "$SCRIPT_DIR/$pdf_name" "$SCRIPT_DIR/$png_dir/$png_prefix"
}

require_cmd pdflatex
require_cmd pdftoppm

render_one "kol_1_msforms.tex" "kol_1_msforms.pdf" "png" "kol_1_question"
render_one "kol_1_en_msforms.tex" "kol_1_en_msforms.pdf" "png_en" "kol_1_en_question"

echo "Generated:"
echo "  $SCRIPT_DIR/kol_1_msforms.pdf"
echo "  $SCRIPT_DIR/png/"
echo "  $SCRIPT_DIR/kol_1_en_msforms.pdf"
echo "  $SCRIPT_DIR/png_en/"
