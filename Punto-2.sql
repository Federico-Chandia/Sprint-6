--Item 2.1
CREATE VIEW Punto_2 AS
SELECT customer_id, customer_name, customer_surname, customer_DNI, sucursal.branch_number,
datetime('NOW')-cliente.dob as edad
FROM cliente, sucursal WHERE cliente.branch_id=sucursal.branch_id;

--item 2.1.1
SELECT customer_name, customer_surname, customer_DNI
FROM PUNTO_2 
WHERE PUNTO_2.edad>40 
ORDER BY PUNTO_2.customer_DNI ASC;

--item 2.1.2
SELECT customer_name, customer_surname,edad
FROM PUNTO_2 
WHERE PUNTO_2.customer_name="Anne" OR PUNTO_2.customer_name="Tyler" 
ORDER BY PUNTO_2.edad ASC;

--item 2.2
INSERT INTO cliente (customer_name, customer_surname, customer_DNI, branch_id, dob)
VALUES ("Lois", "Stout",47730534,80,"1984-07-07");

INSERT INTO cliente (customer_name, customer_surname, customer_DNI, branch_id, dob)
VALUES ("Hall", "Mcconnell",52055464,45,"1968-04-30"); 

INSERT INTO cliente (customer_name, customer_surname, customer_DNI, branch_id, dob)
VALUES ("Hilel","Mclean", 43625213,77,"1993-03-28"); 

INSERT INTO cliente (customer_name, customer_surname, customer_DNI, branch_id, dob)
VALUES ("Jin","Cooley",21207908,96, "1959-08-24"); 

INSERT INTO cliente (customer_name, customer_surname, customer_DNI, branch_id, dob)
VALUES ("Gabriel","Harmon",57063950,27,"1976-04-01"); 

--item 2.3
UPDATE cliente
SET branch_id=10 WHERE cliente.customer_id IN (SELECT customer_id FROM cliente ORDER BY cliente.customer_id DESC LIMIT 5)

-- item 2.4
DELETE from cliente 
WHERE (cliente.customer_name="David" and cliente.customer_surname="Noel" )

--Consulta sobre cuál es el tipo de préstamo de mayor importe
SELECT loan_type FROM prestamo ORDER BY loan_total DESC LIMIT 1;