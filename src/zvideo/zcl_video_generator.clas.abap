CLASS zcl_video_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_video_generator IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*    // https://www.youtube.com/watch?v=BEbztssJlg8

    GET TIME STAMP FIELD DATA(tsl).
    DATA itab TYPE TABLE OF zvideo.

    itab = VALUE #(

        ( video_uuid = cl_system_uuid=>create_uuid_x16_static(  ) title = |Let's code ABAP  RESTful Application Programming Model (RAP)| url = |https://youtu.be/BEbztssJlg8| description = |In this video we build a SAP YouTube Tutorials App with ABAP| &&
| and the ABAP RESTful Application Programming Model (RAP). You learn how to insert data into a table through an executable ABAP class and how to create all required artifacts to build a Business Service. We customize the UI with metadata extensions| &&
| and we extend the projection view with a Virtual Element to display thumbnails.| local_created_by = sy-uname local_last_changed_by = sy-uname  local_created_at = tsl local_last_changed_at = tsl )

     ).

    DELETE FROM zvideo. " Deletes all entries from table.

    INSERT zvideo FROM TABLE @itab.

    IF sy-subrc EQ 0.
      out->write( |{ sy-dbcnt } entries inserterd successfully| ).
    ELSE.
      out->write( |Errors occured| ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
