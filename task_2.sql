CREATE DATABASE hw_dtb_006;
use hw_dtb_006;

DELIMITER //
CREATE PROCEDURE numbers(`start` INT, `end` INT)
BEGIN
	DECLARE i INT DEFAULT `start`;
    DECLARE result TEXT DEFAULT NULL;
    WHILE  i<=`end` DO
        IF i%2 = 0 THEN
			IF result IS NULL THEN
				SET result = concat(i);
			ELSE
				SET result = concat(result, ', ', i);
			END IF;
		END IF;
        SET i = i + 1;
    END WHILE;
	SELECT result;
END //
DELIMITER ;

CALL numbers(1, 10);