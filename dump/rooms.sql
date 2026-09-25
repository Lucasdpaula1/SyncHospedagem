

INSERT INTO rooms (id, name, capacity, price_per_night, created_at) VALUES
-- Econômicos & Solteiro
('10000000-0000-4000-8000-000000000001', 'Quarto Standard Single - Bloco A', 1, 9500, NOW()),
('10000000-0000-4000-8000-000000000002', 'Quarto Standard Single - Bloco B', 1, 9500, NOW()),
('10000000-0000-4000-8000-000000000003', 'Studio Compact Work & Stay', 1, 13000, NOW()),

-- Casal & Duplo
('10000000-0000-4000-8000-000000000004', 'Suíte Casal Standard Vista Jardim', 2, 18000, NOW()),
('10000000-0000-4000-8000-000000000005', 'Suíte Casal Deluxe com Sacada', 2, 24000, NOW()),
('10000000-0000-4000-8000-000000000006', 'Quarto Duplo Twin (Duas Camas)', 2, 19500, NOW()),
('10000000-0000-4000-8000-000000000007', 'Studio Urban Executive', 2, 22000, NOW()),
('10000000-0000-4000-8000-000000000008', 'Suíte Nupcial / Lua de Mel', 2, 48000, NOW()),

-- Família & Grupos
('10000000-0000-4000-8000-000000000009', 'Suíte Família Tripla', 3, 29000, NOW()),
('10000000-0000-4000-8000-000000000010', 'Suíte Família Master (4 Pessoas)', 4, 38000, NOW()),
('10000000-0000-4000-8000-000000000011', 'Apartamento Conjugado Família', 5, 45000, NOW()),
('10000000-0000-4000-8000-000000000012', 'Chalê do Bosque Família', 6, 52000, NOW()),

-- Premium & Vista Mar
('10000000-0000-4000-8000-000000000013', 'Suíte Deluxe Vista Mar 101', 2, 35000, NOW()),
('10000000-0000-4000-8000-000000000014', 'Suíte Deluxe Vista Mar 102', 2, 35000, NOW()),
('10000000-0000-4000-8000-000000000015', 'Suíte Premium Panorama 201', 3, 42000, NOW()),
('10000000-0000-4000-8000-000000000016', 'Suíte Premium Panorama 202', 3, 42000, NOW()),

-- Luxo & Bangalôs
('10000000-0000-4000-8000-000000000017', 'Bangalô Privativo com Hidro', 2, 65000, NOW()),
('10000000-0000-4000-8000-000000000018', 'Bangalô Premium Pé na Areia', 2, 78000, NOW()),
('10000000-0000-4000-8000-000000000019', 'Villa com Piscina Privativa', 4, 110000, NOW()),
('10000000-0000-4000-8000-000000000020', 'Penthouse Imperial 360°', 4, 180000, NOW()),

-- Pousada / Rústico
('10000000-0000-4000-8000-000000000021', 'Apto Rústico Montanha A', 2, 16000, NOW()),
('10000000-0000-4000-8000-000000000022', 'Apto Rústico Montanha B', 2, 16000, NOW()),
('10000000-0000-4000-8000-000000000023', 'Cabana Alpina Lareira', 2, 31000, NOW()),
('10000000-0000-4000-8000-000000000024', 'Cabana Alpina Deluxe', 4, 49000, NOW()),

-- Adicionais Diversos
('10000000-0000-4000-8000-000000000025', 'Quarto Acessível (PCD) Térreo', 2, 18000, NOW()),
('10000000-0000-4000-8000-000000000026', 'Suíte Business Workstation', 1, 21000, NOW()),
('10000000-0000-4000-8000-000000000027', 'Suíte Junior - Torre Leste', 2, 27000, NOW()),
('10000000-0000-4000-8000-000000000028', 'Suíte Junior - Torre Oeste', 2, 27000, NOW()),
('10000000-0000-4000-8000-000000000029', 'Suíte Loft Duplex', 3, 39000, NOW()),
('10000000-0000-4000-8000-000000000030', 'Presidential Suite Royal', 6, 250000, NOW())
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  capacity = EXCLUDED.capacity,
  price_per_night = EXCLUDED.price_per_night;