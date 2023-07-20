#ifndef SIMPLECXX_CONFIG_H
#define SIMPLECXX_CONFIG_H

/* #undef HAVE_SIMPLECXX___INT64 */

/* #undef HAVE_SIMPLECXX_DEBUG */
/* #undef HAVE_SIMPLECXX_SIMPLETPL */

#ifndef SIMPLECXX_DEPRECATED
#  if (__GNUC__ > 3 || (__GNUC__ == 3 && __GNUC_MINOR__ >= 1))
#    define SIMPLECXX_DEPRECATED  __attribute__((__deprecated__))
#  else
#    define SIMPLECXX_DEPRECATED
#  endif
#endif

#ifndef SIMPLECXX_DEPRECATED_MSG
#  if (__GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 5))
#    define SIMPLECXX_DEPRECATED_MSG(MSG)  __attribute__((__deprecated__ (#MSG) ))
#  elif (__GNUC__ > 3 || (__GNUC__ == 3 && __GNUC_MINOR__ >= 1))
#    define SIMPLECXX_DEPRECATED_MSG(MSG)  __attribute__((__deprecated__))
#  else
#    define SIMPLECXX_DEPRECATED_MSG(MSG)
#  endif
#endif


#endif /** SIMPLECXX_CONFIG_H **/
