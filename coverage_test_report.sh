run_coverage() {
  # shellcheck disable=SC2034
  STATE=$1
  flutter pub run remove_from_coverage:remove_from_coverage -f coverage/lcov.info -r '(.gr?|.freezed|_services?|_helpers?|_controller_view|_search_delegate).dart$'

  genhtml -o coverage coverage/lcov.info -q
}

if flutter test --coverage test; then
  run_coverage true
else
  run_coverage false
  exit 1
fi
