#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAXW 4096
#define WLEN 64

struct entry { char w[WLEN]; int n; };
static struct entry e[MAXW];
static int ne;

static void add(const char *w) {
    for (int i = 0; i < ne; i++)
        if (!strcmp(e[i].w, w)) { e[i].n++; return; }
    if (ne < MAXW) { strncpy(e[ne].w, w, WLEN - 1); e[ne++].n = 1; }
}

static int cmp(const void *a, const void *b) {
    const struct entry *x = a, *y = b;
    return x->n != y->n ? y->n - x->n : strcmp(x->w, y->w);
}

int main(void) {
    char w[WLEN];
    int l = 0, ch;
    while ((ch = getchar()) != EOF) {
        if (isalpha(ch)) { if (l < WLEN - 1) w[l++] = (char)tolower(ch); }
        else if (l) { w[l] = 0; add(w); l = 0; }
    }
    if (l) { w[l] = 0; add(w); }
    qsort(e, ne, sizeof e[0], cmp);
    for (int i = 0; i < ne && i < 3; i++) printf("%s %d\n", e[i].w, e[i].n);
    return 0;
}
