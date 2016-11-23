#include "glk.h"
#include "glkstart.h"
glkunix_argumentlist_t glkunix_arguments[] = {
  { NULL, glkunix_arg_End, NULL }
};
int glkunix_startup_code(glkunix_startup_t *data)
{
  return TRUE;
}
void glk_main()
{
  glk_exit();
}
