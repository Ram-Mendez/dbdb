--liquibase formatted sql

--changeset core-team basic_users dbms:postgresql
--comment: insercion inicial de usuarios basicos
-- Actualizar los valores de las columnas name, surname_first y surname_second
UPDATE public.core_users
SET
    surname_first = 'Martín', surname_second = 'Casillas', name = 'Raúl'
WHERE user_id = 1;

UPDATE public.core_users
SET
    surname_first = 'San Pablo', surname_second = 'Rodríguez', name = 'Mikel'
WHERE user_id = 2;

UPDATE public.core_users
SET
    surname_first = 'Torres', surname_second = 'García', name = 'Elisa'
WHERE user_id = 3;

UPDATE public.core_users
SET
    surname_first = 'Vicente', surname_second = 'Viola', name = 'Jorge'
WHERE user_id = 4;

UPDATE public.core_users
SET
    surname_first = 'Rodriguez', surname_second = 'Gutierrez', name = 'Santiago'
WHERE user_id = 5;

UPDATE public.core_users
SET
    surname_first = 'Francisco', surname_second = 'Moro Cuesta', name = 'Juan'
WHERE user_id = 6;

UPDATE public.core_users
SET surname_first = 'Terleira', surname_second = 'Fernandez', name = 'Carlos'
WHERE user_id = 7;

UPDATE public.core_users
SET  surname_first = 'Mendez', surname_second = 'Gomez', name = 'Ram'
WHERE user_id = 8;