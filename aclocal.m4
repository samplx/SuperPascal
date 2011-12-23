#
# Check for GNU Pascal Compiler
#
AC_DEFUN([LOCAL_PROG_GPC],[
AC_REQUIRE([AC_EXEEXT])dnl
AC_PATH_PROG(GPC, gpc$EXEEXT, none)
if test "$GPC"x = "none"x; then
    AC_MSG_ERROR([GNU pascal compiler (gpc) was not found])
fi
])

#
# Check for LaTeX, warn if not found
AC_DEFUN([LOCAL_PROG_LATEX],[
AC_REQUIRE([AC_EXEEXT])dnl
AC_PATH_PROG(LATEX, latex$EXEEXT, true)
if test "$LATEX"x = "true"x; then
    AC_MSG_WARN([LaTeX was not found.
                    Documentation will not be created.])
fi
])
