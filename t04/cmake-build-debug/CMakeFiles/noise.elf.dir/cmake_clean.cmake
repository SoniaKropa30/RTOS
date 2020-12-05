file(REMOVE_RECURSE
  "bootloader/bootloader.bin"
  "bootloader/bootloader.elf"
  "bootloader/bootloader.map"
  "config/sdkconfig.cmake"
  "config/sdkconfig.h"
  "flash_project_args"
  "noise.bin"
  "noise.map"
  "project_elf_src_esp32.c"
  "CMakeFiles/noise.elf.dir/project_elf_src_esp32.c.obj"
  "noise.elf"
  "noise.elf.pdb"
  "project_elf_src_esp32.c"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/noise.elf.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
