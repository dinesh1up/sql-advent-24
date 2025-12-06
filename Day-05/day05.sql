elves - (elf_id: INT, elf_name: VARCHAR)
vacations - (elf_id: INT, start_date: DATE, return_date: DATE)


SELECT
  e.elf_name,
  COALESCE(v.return_date, 'Still resting') AS return_date
FROM elves e
LEFT JOIN vacations v
  ON e.elf_id = v.elf_id
ORDER BY e.elf_id;
