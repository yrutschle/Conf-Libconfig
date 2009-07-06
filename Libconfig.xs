// vi:filetype=c

#ifdef __cplusplus
extern "C" {
#endif

#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "libconfig.h"

#ifdef __cplusplus
}
#endif

typedef struct config_t Conf_Libconfig;
Conf_Libconfig *conf;

MODULE = Conf::Libconfig     PACKAGE = Conf::Libconfig	PREFIX=libconfig_
PROTOTYPES: DISABLE

Conf_Libconfig *
config_init()
	CODE:
		config_init(conf);
		RETVAL = conf;
	OUTPUT:
		RETVAL

int
config_read_file(config, filename)
	Conf_Libconfig *config
	const char *filename

int
config_lookup_int(config, path, value)
	const Conf_Libconfig *config
	const char *path
	long *value



