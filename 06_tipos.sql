-- Parte H

ALTER TABLE membresias ADD COLUMN valor_pagado NUMERIC(10,2);

UPDATE membresias SET valor_pagado =  90000 WHERE id = 1;
UPDATE membresias SET valor_pagado = 240000 WHERE id = 2;
UPDATE membresias SET valor_pagado = 765000 WHERE id = 3;  -- anual con 10 % de descuento
UPDATE membresias SET valor_pagado =  90000 WHERE id = 4;
UPDATE membresias SET valor_pagado = 240000 WHERE id = 5;
UPDATE membresias SET valor_pagado =  90000 WHERE id = 6;
UPDATE membresias SET valor_pagado = 240000 WHERE id = 8;
UPDATE membresias SET valor_pagado = 850000 WHERE id = 9;

ALTER TABLE socios ADD COLUMN acepta_whatsapp BOOLEAN NOT NULL DEFAULT false;

UPDATE socios SET acepta_whatsapp = true WHERE id IN (1, 3, 4, 7);

SELECT column_name, data_type, is_nullable
FROM information_schema.columns
WHERE table_name = 'membresias'
ORDER BY ordinal_position;
