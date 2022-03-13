insert
    into
        reservation
        (id, end_time, price_per_hour, start)
    values
        (default, '2022-03-12T00:51:54.601', 10000, '2022-03-13T00:51:54.601');

insert
    into
        client
        (id, car_factory, car_model, car_plate_number, fio, payment_method, phone)
    values
        (default, 'audi', 'a3', 'е190кх97', 'Первый занявший место', 'наличка', '79009000202');

insert
    into
        parking_place
        (id, name, client_id,reservation_id, type)
    values
        (default, '110', select id from client where phone='79009000202',1,'обычное');

