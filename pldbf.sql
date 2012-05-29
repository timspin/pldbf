CREATE OR REPLACE PACKAGE pldbf AS

    PROCEDURE unset_columns;

    PROCEDURE add_column(
        s_name VARCHAR2,
        s_type VARCHAR2,
        n_length PLS_INTEGER DEFAULT NULL,
        n_precision PLS_INTEGER DEFAULT NULL);        
    
    PROCEDURE init(s_encoding VARCHAR2);
    
    PROCEDURE write_cell(d_date DATE);
    
    PROCEDURE write_cell(s_string VARCHAR2);
    
    PROCEDURE write_cell(n_number NUMBER);
    
    PROCEDURE get_file(b_blob OUT BLOB);
    
END pldbf;
/
