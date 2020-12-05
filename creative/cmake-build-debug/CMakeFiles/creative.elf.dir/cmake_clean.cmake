file(REMOVE_RECURSE
  "bootloader/bootloader.bin"
  "bootloader/bootloader.elf"
  "bootloader/bootloader.map"
  "config/sdkconfig.cmake"
  "config/sdkconfig.h"
  "creative.bin"
  "creative.map"
  "flash_project_args"
  "project_elf_src_esp32.c"
  "CMakeFiles/creative.elf.dir/project_elf_src_esp32.c.obj"
  "creative.elf"
  "creative.elf.pdb"
  "project_elf_src_esp32.c"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/creative.elf.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
