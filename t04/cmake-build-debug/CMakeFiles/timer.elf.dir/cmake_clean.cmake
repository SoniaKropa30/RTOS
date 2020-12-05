file(REMOVE_RECURSE
  "bootloader/bootloader.bin"
  "bootloader/bootloader.elf"
  "bootloader/bootloader.map"
  "config/sdkconfig.cmake"
  "config/sdkconfig.h"
  "flash_project_args"
  "project_elf_src_esp32.c"
  "timer.bin"
  "timer.map"
  "CMakeFiles/timer.elf.dir/project_elf_src_esp32.c.obj"
  "project_elf_src_esp32.c"
  "timer.elf"
  "timer.elf.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/timer.elf.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
