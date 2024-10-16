-- This script was generated by a beta version of the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public.cuenta
(
    id integer NOT NULL,
    titular character varying(255) NOT NULL,
    saldo numeric(19, 2) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.transaccion
(
    idtransaccion integer NOT NULL,
    idcuenta integer NOT NULL,
    tipotransaccion character varying(25) NOT NULL,
    descripcion character varying(255) NOT NULL,
    PRIMARY KEY (idtransaccion)
);

ALTER TABLE public.transaccion
    ADD FOREIGN KEY (idcuenta)
    REFERENCES public.cuenta (id)
    NOT VALID;

END;