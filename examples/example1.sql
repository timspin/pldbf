declare
    b blob;
begin
    pldbf.unset_columns();
    pldbf.add_column('NAME', 'CHAR', 60);
    pldbf.add_column('BIRTHDATE', 'DATE');
    pldbf.add_column('SALARY', 'NUMBER', 15, 5);
    pldbf.init('WIN');
    -- 1
    pldbf.write_cell('Scott Tiger');
    pldbf.write_cell(TO_DATE('13.04.1978', 'dd.mm.yyyy'));
    pldbf.write_cell(7011.98);
    -- 2
    pldbf.write_cell('Miles Stone');
    pldbf.write_cell(TO_DATE('01.07.1982', 'dd.mm.yyyy'));
    pldbf.write_cell(5000.10);
    dbms_lob.createtemporary(b, true);
    pldbf.get_file(b);
    update my_blobs set blob_content = b;
    commit;
end;
