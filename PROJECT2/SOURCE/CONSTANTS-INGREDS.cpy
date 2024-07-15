      ******************************************************************
      *    LAB | SECOND PART | DELICIOUSSANDWICH
      ******************************************************************
      *    BREADWICH | INGREDIENTS MANAGEMENT
      ******************************************************************
      *    ALL CONSTANTS
      ******************************************************************
      *     V1 | EM ATUALIZA��O | 27.01.2020
      ******************************************************************
       01  SAVE-IT                        PIC X(002).
           88 SAVE-IT-YES                 VALUE "Y" "y".
           88 SAVE-IT-VALID               VALUE "Y" "y" "N" "n".
      *MODULE NAME MAIN
       78 MODULE-NAME-MAIN          VALUE "INGREDIENT MANAGEMENT".
      *MODULE NAME ADD
       78 MODULE-NAME-ADD           VALUE "ADD INGREDIENT ".
      *MODULE NAME ADD MODIFY
       78 MODULE-NAME-MODIFY        VALUE "EDIT INGREDIENT ".
      *MODULE NAME REMOVE
       78 MODULE-NAME-REMOVE        VALUE "DELETE INGREDIENT ".
      *MODULE NAME VIEW
       78 MODULE-NAME-VIEW          VALUE "VIEW INGREDIENT ".
      *MODULE NAME SEARCH
       78 MODULE-NAME-SEARCH        VALUE "SEARCH INGREDIENT".
      *BACK
       78 BACK-EXIT            VALUE " F3 - MAIN MENU ING".
      * MAIN MENU OPTION 1
       78 MAIN-MENU-OPTION1    VALUE "   1 - ADD INGREDIENTS".
      * MAIN MENU OPTION 2
       78 MAIN-MENU-OPTION2    VALUE "   2 - VIEW INGREDIENTS".
      * MAIN MENU OPTION 3
       78 MAIN-MENU-OPTION3    VALUE "   3 - EDIT INGREDIENTS".
      * MAIN MENU OPTION 4
       78 MAIN-MENU-OPTION4    VALUE "   4 - DELETE INGREDIENTS".
      * MAIN MENU OPTION 5
       78 MAIN-MENU-OPTION5    VALUE "   5 - SEARCHES/REPORTS INGREDIENT
      -    "S".
      * MAIN MENU OPTION 6
       78 MAIN-MENU-OPTION6    VALUE "   6 - EXIT".
      *MAIN MENU OPTION CHOICE
       78 MAIN-MENU-CHOICE     VALUE "CHOOSE AN OPTION: ".
      *MAIN MENU ERROR
       78 MAIN-MENU-ERROR
           VALUE "INVALID OPTION, PLEASE SELECT A VALID OPTION. PRESS AN
      -    "Y KEY TO CONTINUE".
      *REGISTER INGREDS MENU OPTION 1
       78 INGREDS-MENU-OPTION1 VALUE "1 - REGISTER INGREDIENTS".
      *REGISTER INGREDS MENU OPTION 2
       78 INGREDS-MENU-OPTION2 VALUE "2 - REGISTER INGREDS USING A CSV
      -    " FILE".
      *REGISTER INGREDS MENU OPTION 3
       78 INGREDS-MENU-OPTION3   VALUE "3 - RETURN TO MAIN MENU".
      *REGISTER INGREDS MENU CHOICE
       78 INGREDS-MENU-CHOICE   VALUE "PLEASE CHOOSE AN OPTION: ".
      *ADD INGREDS MENU ERROR
       78 ADD-INGREDS-MENU-ERROR
           VALUE "INVALID OPTION, PLEASE SELECT A VALID OPTION. PRESS AN
      -    "Y KEY TO CONTINUE".
      *INGREDS ID
       78  SCREEN-INGREDS-ID       VALUE " INGREDIENT ID: ".

      *MANUALLY ADD INGREDS NAME
       78 MANUALLY-ADD-NAME        VALUE "        NAME: ".

       78 MANUALLY-ADD-DESCRIPTION VALUE " DESCRIPTION: ".

       78 MANUALLY-ADD-UN-SUPP VALUE "SUPPLIERS MEASURE UNIT: ".

       78 MANUALLY-ADD-UN-SAND VALUE "SANDWICHS MEASURE UNIT: ".

       78 MANUALLY-ADD-TRESHOLD VALUE "     TRESHOLD QUANTITY: ".


       78 MESSAGE-NAME VALUE "30 CHARS MAX AUTO UPPER-CASE CONVERSION, E
      -    "XTRA SPACES WILL BE REMOVED".

       78 ERROR-NAME VALUE "THE NAME MUST BE FILLED".

       78 MESSAGE-DESCRIPTION VALUE "50 CHARS MAX AUTO UPPER-CASE CONVER
      -    "SION, EXTRA SPACES WILL BE REMOVED".

       78 MESSAGE-ADDRESS VALUE "50 CHARS MAX|AUTO UPPER-CASE|AUTO LINE
      -    "CHANGE AT LINE END|TAB TO MOVE BETWEEN LINES".

       78 MESSAGE-UNIT-SUPPLIER VALUE "UNIT MEASURE USED FOR SUPPLIERS O
      -    "RDERS".

       78 MESSAGE-UNIT-SANDWICH VALUE "UNIT MEASURE USED FOR SANDWICHS C
      -    "OMPOSITION".

       78 MESSAGE-TRESHOLD VALUE "LIMIT VALUE AT WHICH ORDERS FOR THIS I
      -    "NGREDIENT SHOULD BE MADE. BETWEEN 001-999".

       78 MESSAGE-SAVE VALUE "DO YOU WANT TO SAVE THIS INGREDIENT? (Y)ES
      -    " (N)O:".

       78 ERROR-SAVE VALUE "INVALID. ENTER A VALID CHOICE (Y) FOR YES, (
      -    "N) FOR NO".

       78 MESSAGE-WRITE-YES VALUE "INGREDIENT SAVED IN THE DATABASE".

       78 MESSAGE-WRITE-NO VALUE "INGREDIENT NOT SAVED IN THE DATABASE".

       78 ERROR-GET-INGREDID VALUE "INVALID. INGREDIENT ID MUST BE BETWE
      -    "EN 001 AND 999".

       78 MESSAGE-GET-INGRED VALUE "PLEASE INDICATE INGREDIENT ID:".

       78 ERROR-INGRED-NO VALUE "THAT INGREDIENT ID DOESN'T EXIST. PLEAS
      -    "E INSERT A VALID INGREDIENT ID".

       78 MESSAGE-GET-INGREDID VALUE "PLEASE INDICATE INGREDIENT ID:".

       78 ERROR-INGREDID-NO VALUE "THAT INGREDIENT ID DOESN'T EXIST. PLE
      -    "ASE INSERT A VALID INGREDIENT ID".

       78 ERROR-UNIT VALUE "INVALID. MUST BE ALPHABETIC".

       78 MESSAGE-EDIT-ALL VALUE "MOVE BETWEEN THE FIELDS WITH TAB|PRESS
      -    " ENTER WHEN DONE EDITING".

       78 WHAT-TO-EDIT VALUE "WHAT TO EDIT".

       78 EDIT1 VALUE "1 - NAME".

       78 EDIT2 VALUE "2 - DESCRIPTION".

       78 EDIT3 VALUE "3 - UNIT SUPPLIER".

       78 EDIT4 VALUE "4 - UNIT SANDWICH".

       78 EDIT5 VALUE "5 - TRESHOLD".

       78 EDIT8 VALUE "8 - GO BACK".

       78 CHOOSE VALUE "CHOOSE AN OPTION:".

       78 LIST-NEXT-PAGE VALUE "PRESS ANY KEY TO SHOW THE NEXT RECORDS".

       78 VIEW-NEXT-RECORD VALUE "PRESS ANY KEY TO SHOW THE NEXT INGREDI
      -    "ENT".
      *REGISTER INGREDIENT MENU OPTION 1
       78 VIEW-MENU-OPTION1 VALUE "1 - VIEW INGREDIENTS ONE BY ONE".
      *REGISTER INGREDIENT MENU OPTION 2
       78 VIEW-MENU-OPTION2 VALUE "2 - VIEW A SPECIFIC INGREDIENT".
      *REGISTER INGREDIENT MENU OPTION 3
       78 VIEW-MENU-OPTION3   VALUE "3 - MAIN MENU".
      *REGISTER INGREDIENT MENU CHOICE
       78 VIEW-MENU-CHOICE   VALUE "CHOOSE AN OPTION: ".
      *ADD INGREDIENT MENU ERROR
       78 VIEW-INGREDS-MENU-ERROR
           VALUE "INVALID OPTION, PLEASE SELECT A VALID OPTION. PRESS AN
      -    "Y KEY TO CONTINUE".

       78 VIEW-SPECIFIC VALUE "PRESS ANY KEY TO CONTINUE".

       78 VIEW-ALL-INGREDS-NEXT-ONE VALUE "PRESS ANY KEY TO SHOW THE NEX
      -    "T INGREDIENT".

       78 DELETE-INGRED VALUE "ARE YOU SURE YOU WANT TO DELETE THIS INGR
      -    "EDIENT? (Y)ES (N)O:".

       78 DELETE-ERROR
           VALUE "INVALID OPTION, PLEASE SELECT A VALID OPTION. PRESS AN
      -    "Y KEY TO CONTINUE".

       78 DELETE-YES VALUE "INGREDIENT REMOVED FROM THE DATABASE".

       78 DELETE-NO VALUE "INGREDIENT NOT REMOVED FROM THE DATABASE".

       78 EMPTY-LIST VALUE "NO INGREDIENTS REGISTED!".

       78 NO-MORE-INGREDS VALUE "NO MORE INGREDIENTS".

       78 NEXT-PAGE VALUE "F2 - NEXT PAGE".

       78 PAGE-INFO VALUE "F1 - PREVIOUS PAGE | F2 - NEXT PAGE".

       78 LIST-FRAME1 VALUE "ID".

       78 LIST-FRAME2 VALUE "NAME".

       78  EMPTY-RECORDS
           VALUE "THERE ARE NO RECORDS IN THIS FILE".

       78  EMPTY-RECORDS2 VALUE "PRESS ANY KEY TO CONTINUE".

       78 SEARCH-MENU-OPTION1 VALUE "1 - SEARCH INGREDIENTS".
       78 SEARCH-MENU-OPTION2 VALUE "2 - SEARCH INGREDIENTS WITH INVENTO
      -    "RY LOWER THAN TRESHOLD".
       78 SEARCH-MENU-OPTION3 VALUE "3 - CREATE REPORT OF INGREDIENTS".
       78 SEARCH-MENU-OPTION4 VALUE "4 - EXIT".
       78 SEARCH-MENU-CHOICE   VALUE "CHOOSE AN OPTION: ".
       78 SEARCH-INGREDS-MENU-ERROR
           VALUE "INVALID OPTION, PLEASE SELECT A VALID OPTION. PRESS AN
      -    "Y KEY TO CONTINUE".

       78 REPORTID VALUE "ID".
       78 REPORT-NAME VALUE "NAME".
       78 REPORT-UNIT-SANDWICH VALUE "SANDWICH UNIT".
       78 REPORT-UNIT-SUPPLIER VALUE "SUPPLIER UNIT".
       78 REPORT-TRESHOLD VALUE "TRESHOLD".
       78 REPORT-DESCRIPTION    VALUE "DESCRIPTION".
       78 REPORTTITLECONST
           VALUE "B R E A D W I C H   I N G R E D I E N T S   R E P O R
      -    "T".
       78  F1                                   VALUE "1001".
       78  F2                                   VALUE "1002".
       78  F3                                   VALUE "1003".
       78 PAGECONST VALUE "PAGE:".
       78 REPORT-OK VALUE "REPORT CREATED SUCCESSFULLY".

       78  PREVIOUS-PAGE VALUE "F1 - PREVIOUS PAGE".

       78  NEXT-PAGE1 VALUE "     F2 - NEXT PAGE".

       78  LAST-PAGE1 VALUE "          LAST PAGE".

       78  LIST-AGG-FRAME VALUE "ID  |  NAME".

       78  LIST-AGG-FRAME2 VALUE "LIST OF PERIODS OF UNAVAILABILITY".

       78  UNTIL-LIST VALUE "        UNTIL        ".

       78  GET-ING-SEARCH VALUE "                         CHOOSE A VALID
      -    " INGREDIENT ID".

       78  ING-SEARCH-MSGVALUE VALUE " INGREDIENT ID: ".

       78 SEARCH-INVENTORY VALUE " INVENTORY: ".

       78  ERROR-SEARCH
           VALUE "NO RESULTS FOUND | PRESS ANY KEY TO CONTINUE".

       78  NO-MORE-MATCHES VALUE "NO MORE RESULTS HAVE BEEN FOUND | PRES
      -    "S ANY KEY TO CONTINUE".

       78  REP-ING-ID VALUE "INGREDIENT ID:".

       78 REP-ING-NAME VALUE "NAME:".

       78 REP-ING-DESCRIPTION VALUE "DESCRIPTION:".

       78 REP-ING-TRESHOLD VALUE "TRESHOLD:".

       78 REP-ING-UNIT-SUPP VALUE "SUPPLIERS UNIT:".

       78 REP-ING-UNIT-SAND VALUE "SANDWICH UNIT:".


       78  REP-DATE VALUE "DATE:".

       78  REP-TIME VALUE "TIME:".