# CD — Compiler Design Lab Programs

Short C, Lex and YACC programs for Compiler Design lab practice.

## Structure
- `01_symbol_table.c` through `18_*.c/.l`: single-file programs.
- Programs requiring both Lex and YACC keep source files in `lex/` and `yacc/` folders.

## Requirements (Ubuntu/Kali Linux)
```bash
sudo apt update
sudo apt install gcc flex bison
```

## Compile C files
```bash
gcc 01_symbol_table.c -o symbol_table
./symbol_table
```

## Compile a standalone Lex program
Run from the `CD` folder:
```bash
flex 02_lexical_analyzer.l
gcc lex.yy.c -o lexical -lfl
./lexical
```

## Compile a Lex + YACC program
Run these commands from the relevant program folder, e.g. `CD/04_calculator`:
```bash
yacc -d yacc/calculator.y
flex -o lex.yy.c lex/calculator.l
gcc y.tab.c lex.yy.c -o calculator -lfl
./calculator
```
For other paired programs, substitute the matching source and output filenames.

## File-processing Lex programs
Compile the `.l` file, then pass a text file as an argument:
```bash
flex 15_vowels_consonants_file.l
gcc lex.yy.c -o count -lfl
./count sample.txt
```

## Notes
- Program 8 prints the FIRST sets for the specified grammar; it is a grammar-specific shortcut, not a general FIRST-set generator.
- YACC generates bottom-up parsers. Program 9 is an expression recognizer, not a top-down parser.
- Program 13 uses a small predefined list of nouns and verbs for demonstration.
- Program 14 prints three-address code for the fixed expression `a = b + c * d`.
- Program 18 recognizes arithmetic operators; Programs 4 and 10 evaluate expressions.
