.mode csv
.headers on
.output callbook.csv

SELECT DISTINCT
    call_sign AS Callsign, 
    licencee AS [Client Name], 
    licence_type_name || ' - ' || licence_category_name AS Category, 
    postal_street || ' ' || postal_suburb || ' ' || postal_state || ' ' || postal_postcode AS [Client Address],
    date_of_expiry as Expiry,  date_of_effect as Granted,
    latitude || ',' || longitude as Coordinates
FROM device_details 
JOIN licence ON licence.licence_no = device_details.licence_no 
JOIN client ON client.client_no = licence.client_no
LEFT JOIN site ON site.site_id = device_details.site_id
WHERE call_sign <> ''
    AND status_text = 'Granted'
    AND date_of_expiry > CURRENT_DATE
    AND licence_type_name LIKE '%Amateur%'
ORDER by date_of_effect DESC;