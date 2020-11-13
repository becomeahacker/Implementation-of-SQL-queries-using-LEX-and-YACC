
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     SELECT = 258,
     UPDATE = 259,
     INSERT_INTO = 260,
     VALUES = 261,
     SET = 262,
     FROM = 263,
     WHERE = 264,
     ORDER = 265,
     BY = 266,
     ASC = 267,
     DESC = 268,
     LIMIT = 269,
     AND = 270,
     OR = 271,
     DEFAULT = 272,
     BETWEEN = 273,
     EXIT = 274,
     KEYWORD = 275,
     IDENTIFIER = 276,
     STRING_LITERAL = 277,
     NEGATIVE_DIGIT = 278,
     POSITIVE_DIGIT = 279,
     FLOAT = 280,
     DATE = 281,
     COMPARISION_OPERATOR = 282,
     UMINUS = 283
   };
#endif
/* Tokens.  */
#define SELECT 258
#define UPDATE 259
#define INSERT_INTO 260
#define VALUES 261
#define SET 262
#define FROM 263
#define WHERE 264
#define ORDER 265
#define BY 266
#define ASC 267
#define DESC 268
#define LIMIT 269
#define AND 270
#define OR 271
#define DEFAULT 272
#define BETWEEN 273
#define EXIT 274
#define KEYWORD 275
#define IDENTIFIER 276
#define STRING_LITERAL 277
#define NEGATIVE_DIGIT 278
#define POSITIVE_DIGIT 279
#define FLOAT 280
#define DATE 281
#define COMPARISION_OPERATOR 282
#define UMINUS 283




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


