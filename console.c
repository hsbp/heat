#include <stdio.h>
#include <stdlib.h>

int main() {
	while (1) {
		int i = getchar();
		if (i == '0' || i == '1') {
			char cmd[1024];

			sprintf(cmd, "sudo /opt/heat/set.sh %c", i);
			fprintf(stderr, "executing '%s'\n", cmd);
			system(cmd);
		}
	}
}
