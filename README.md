# linkdup
create links between duplicate files

linkdup is a command line tool to find duplicate files, based in its hashes
(MD5 or SHA256).

The main goal of the linkdup is create **relative symlinks** to duplicate files.
This is the main differential of the linkdup. However, it can create absolute
links too, as the most similar commands.

Optionally, linkdup allows recursive searches and can set a maximum file size to
analize. The link creation is optional; without this resource, linkdup will show
the duplicated files and exit.

## Syntax

```
linkdup - create links between duplicate files

Usage: linkdup [-h|--help] [-V] [-v] [-r] [-s|-S] [-2] [-l SIZE] -d DIRECTORY

  -h, --help    Show this help.
  -V            Show version.
  -v            Verbose. Works with -s or -S only.
  -r            Recursive.
  -s            Create relative symlinks. Do not use with -S.
  -S            Create absolute symlinks. Do not use with -s.
  -2            Use SHA256 hash instead of MD5 (MD5 is default, is faster).
  -l SIZE       The max file size used in search. Can be used bytes or 'k'
                for kilobyte, 'm' for megabytes and 'g' for gigabytes.
  -d DIRECTORY  Directory to be inspected. This option is MANDATORY.

Without the -s or -S options, linkdup will only show the duplicate files.

Example: linkdup -r -s -d /test
```

## License

This project is under BSD-3-Clause.
