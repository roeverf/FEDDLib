tribits_repository_define_packages(
  SimpleCxx           feddlib/simple_cxx          PT
  core                feddlib/core                PT
  # MixedLang         packages/mixed_lang         PT
  #InsertedPkg        InsertedPkg                 ST
  #WithSubpackages    packages/with_subpackages   PT
  #WrapExternal       packages/wrap_external      ST
  )

tribits_disable_package_on_platforms(WrapExternal Windows)
tribits_allow_missing_external_packages(InsertedPkg)
