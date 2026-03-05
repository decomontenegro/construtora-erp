-- ============================================
-- DEMO DATA - Dados realistas para demonstração
-- ============================================

-- Fornecedores
INSERT INTO suppliers (company_id, name, cnpj_cpf, phone, category, rating) VALUES
  ('00000000-0000-0000-0000-000000000001', 'Casa dos Materiais Ltda', '12.345.678/0001-01', '(85) 3333-1001', 'Material', 5),
  ('00000000-0000-0000-0000-000000000001', 'Concreteira Fortaleza', '12.345.678/0001-02', '(85) 3333-1002', 'Material', 4),
  ('00000000-0000-0000-0000-000000000001', 'Aço Norte Distribuidora', '12.345.678/0001-03', '(85) 3333-1003', 'Material', 4),
  ('00000000-0000-0000-0000-000000000001', 'Elétrica Total', '12.345.678/0001-04', '(85) 3333-1004', 'Material', 3),
  ('00000000-0000-0000-0000-000000000001', 'TransLog Transportes', '12.345.678/0001-05', '(85) 3333-1005', 'Transporte', 4),
  ('00000000-0000-0000-0000-000000000001', 'Empreiteira Silva & Filhos', '12.345.678/0001-06', '(85) 3333-1006', 'Mão de Obra', 5),
  ('00000000-0000-0000-0000-000000000001', 'MK Engenharia (Projetos)', '12.345.678/0001-07', '(85) 3333-1007', 'Serviços', 4),
  ('00000000-0000-0000-0000-000000000001', 'Locadora de Equipamentos CE', '12.345.678/0001-08', '(85) 3333-1008', 'Equipamentos', 3);

-- Projeto 1: Residencial Aurora (em execução, 65%)
INSERT INTO projects (id, company_id, name, client_name, client_cnpj, address, contract_value, estimated_budget, start_date, expected_end_date, status, completion_percentage, notes) VALUES
  ('10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', 'Residencial Aurora', 'Construtora DEB', '98.765.432/0001-01', 'Rua das Flores, 500 - Aldeota, Fortaleza/CE', 2500000.00, 1800000.00, '2025-06-01', '2026-06-01', 'execution', 65, 'Edifício residencial 8 andares, 32 unidades');

-- Projeto 2: Comercial Atlântico (em execução, 30%)
INSERT INTO projects (id, company_id, name, client_name, client_cnpj, address, contract_value, estimated_budget, start_date, expected_end_date, status, completion_percentage) VALUES
  ('10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', 'Comercial Atlântico', 'Grupo Atlântico S.A.', '11.222.333/0001-44', 'Av. Beira Mar, 1200 - Meireles, Fortaleza/CE', 4200000.00, 3200000.00, '2025-09-01', '2027-03-01', 'execution', 30);

-- Projeto 3: Casa Praia do Futuro (planejamento)
INSERT INTO projects (id, company_id, name, client_name, address, contract_value, estimated_budget, start_date, expected_end_date, status, completion_percentage) VALUES
  ('10000000-0000-0000-0000-000000000003', '00000000-0000-0000-0000-000000000001', 'Casa Praia do Futuro', 'João Carlos Mendes', 'Rua dos Coqueiros, 88 - Praia do Futuro, Fortaleza/CE', 850000.00, 620000.00, '2026-04-01', '2026-10-01', 'planning', 0);

-- Projeto 4: Reforma Escritório Central (concluída)
INSERT INTO projects (id, company_id, name, client_name, address, contract_value, estimated_budget, start_date, expected_end_date, actual_end_date, status, completion_percentage) VALUES
  ('10000000-0000-0000-0000-000000000004', '00000000-0000-0000-0000-000000000001', 'Reforma Escritório Central', 'DEB Participações', 'Av. Santos Dumont, 3060 - Aldeota', 320000.00, 280000.00, '2025-01-15', '2025-05-15', '2025-05-10', 'completed', 100);

-- Cronograma Residencial Aurora
INSERT INTO project_schedule (project_id, phase_name, planned_cost, actual_cost, planned_revenue, actual_revenue, planned_start, planned_end, actual_start, actual_end, status, sort_order) VALUES
  ('10000000-0000-0000-0000-000000000001', 'Fundação', 250000, 235000, 375000, 375000, '2025-06-01', '2025-08-01', '2025-06-01', '2025-07-28', 'completed', 1),
  ('10000000-0000-0000-0000-000000000001', 'Estrutura', 450000, 420000, 625000, 625000, '2025-08-01', '2025-12-01', '2025-08-01', '2025-11-20', 'completed', 2),
  ('10000000-0000-0000-0000-000000000001', 'Alvenaria', 280000, 195000, 375000, 250000, '2025-12-01', '2026-02-01', '2025-12-01', NULL, 'in_progress', 3),
  ('10000000-0000-0000-0000-000000000001', 'Instalações Elétricas/Hidráulicas', 180000, 45000, 250000, 0, '2026-01-15', '2026-03-15', '2026-01-20', NULL, 'in_progress', 4),
  ('10000000-0000-0000-0000-000000000001', 'Acabamento', 350000, 0, 500000, 0, '2026-03-01', '2026-05-01', NULL, NULL, 'pending', 5),
  ('10000000-0000-0000-0000-000000000001', 'Entrega e Limpeza', 40000, 0, 375000, 0, '2026-05-01', '2026-06-01', NULL, NULL, 'pending', 6);

-- Cronograma Comercial Atlântico
INSERT INTO project_schedule (project_id, phase_name, planned_cost, actual_cost, planned_revenue, actual_revenue, planned_start, planned_end, actual_start, status, sort_order) VALUES
  ('10000000-0000-0000-0000-000000000002', 'Terraplanagem', 180000, 175000, 420000, 420000, '2025-09-01', '2025-10-15', '2025-09-05', 'completed', 1),
  ('10000000-0000-0000-0000-000000000002', 'Fundação', 480000, 310000, 630000, 0, '2025-10-15', '2026-01-15', '2025-10-20', 'in_progress', 2),
  ('10000000-0000-0000-0000-000000000002', 'Estrutura', 850000, 0, 840000, 0, '2026-01-15', '2026-07-15', NULL, 'pending', 3),
  ('10000000-0000-0000-0000-000000000002', 'Fechamento e Fachada', 520000, 0, 630000, 0, '2026-07-15', '2026-11-15', NULL, 'pending', 4),
  ('10000000-0000-0000-0000-000000000002', 'Acabamento Interno', 680000, 0, 840000, 0, '2026-11-15', '2027-02-01', NULL, 'pending', 5),
  ('10000000-0000-0000-0000-000000000002', 'Entrega', 90000, 0, 840000, 0, '2027-02-01', '2027-03-01', NULL, 'pending', 6);

-- Funcionários
INSERT INTO employees (id, company_id, name, cpf, role_function, hire_date, type, base_salary, active, phone) VALUES
  ('20000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', 'Carlos Pereira', '111.222.333-44', 'Engenheiro Civil', '2024-03-01', 'clt', 12000.00, true, '(85) 98888-0001'),
  ('20000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', 'Maria Santos', '222.333.444-55', 'Arquiteta', '2024-06-01', 'pj', 9500.00, true, '(85) 98888-0002'),
  ('20000000-0000-0000-0000-000000000003', '00000000-0000-0000-0000-000000000001', 'José Lima', '333.444.555-66', 'Mestre de Obras', '2024-01-15', 'clt', 7500.00, true, '(85) 98888-0003'),
  ('20000000-0000-0000-0000-000000000004', '00000000-0000-0000-0000-000000000001', 'Ana Oliveira', '444.555.666-77', 'Administrativa/Financeiro', '2024-02-01', 'clt', 5500.00, true, '(85) 98888-0004'),
  ('20000000-0000-0000-0000-000000000005', '00000000-0000-0000-0000-000000000001', 'Roberto Costa', '555.666.777-88', 'Pedreiro Líder', '2024-04-01', 'clt', 4200.00, true, '(85) 98888-0005'),
  ('20000000-0000-0000-0000-000000000006', '00000000-0000-0000-0000-000000000001', 'Marcos Eletricista', '666.777.888-99', 'Eletricista', '2025-01-10', 'freelancer', 3800.00, true, '(85) 98888-0006');

-- Alocação de funcionários
INSERT INTO employee_assignments (employee_id, project_id, start_date, role_in_project) VALUES
  ('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '2025-06-01', 'Engenheiro Responsável'),
  ('20000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000001', '2025-06-01', 'Mestre de Obras'),
  ('20000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000001', '2025-06-01', 'Pedreiro Líder'),
  ('20000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000001', '2026-01-20', 'Eletricista'),
  ('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000002', '2025-09-01', 'Engenheiro Responsável'),
  ('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '2025-09-01', 'Arquiteta');

-- Despesas Residencial Aurora (vários meses, várias categorias)
-- Pegar IDs das categorias
DO $$
DECLARE
  cat_material UUID;
  cat_mao UUID;
  cat_equip UUID;
  cat_terceiro UUID;
  cat_transporte UUID;
  cat_indireto UUID;
  cat_admin UUID;
BEGIN
  SELECT id INTO cat_material FROM cost_categories WHERE company_id = '00000000-0000-0000-0000-000000000001' AND name = 'Material' LIMIT 1;
  SELECT id INTO cat_mao FROM cost_categories WHERE company_id = '00000000-0000-0000-0000-000000000001' AND name = 'Mão de Obra' LIMIT 1;
  SELECT id INTO cat_equip FROM cost_categories WHERE company_id = '00000000-0000-0000-0000-000000000001' AND name = 'Equipamentos' LIMIT 1;
  SELECT id INTO cat_terceiro FROM cost_categories WHERE company_id = '00000000-0000-0000-0000-000000000001' AND name = 'Serviços Terceirizados' LIMIT 1;
  SELECT id INTO cat_transporte FROM cost_categories WHERE company_id = '00000000-0000-0000-0000-000000000001' AND name = 'Transporte' LIMIT 1;
  SELECT id INTO cat_indireto FROM cost_categories WHERE company_id = '00000000-0000-0000-0000-000000000001' AND name = 'Custos Indiretos' LIMIT 1;
  SELECT id INTO cat_admin FROM cost_categories WHERE company_id = '00000000-0000-0000-0000-000000000001' AND name = 'Administrativo' LIMIT 1;

  -- Despesas Residencial Aurora
  INSERT INTO expenses (company_id, project_id, category_id, description, amount, date, due_date, paid_date, payment_status) VALUES
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', cat_material, 'Concreto usinado - Fundação', 85000, '2025-06-15', '2025-07-15', '2025-07-10', 'paid'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', cat_material, 'Aço CA-50 e CA-60 - Fundação', 62000, '2025-06-20', '2025-07-20', '2025-07-18', 'paid'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', cat_mao, 'Empreiteira - Fundação', 45000, '2025-07-01', '2025-07-30', '2025-07-28', 'paid'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', cat_equip, 'Locação retroescavadeira', 18000, '2025-06-10', '2025-07-10', '2025-07-05', 'paid'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', cat_transporte, 'Frete materiais fundação', 8500, '2025-06-18', '2025-07-18', '2025-07-15', 'paid'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', cat_material, 'Concreto usinado - Estrutura', 145000, '2025-08-15', '2025-09-15', '2025-09-12', 'paid'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', cat_material, 'Aço CA-50 - Estrutura', 98000, '2025-08-20', '2025-09-20', '2025-09-18', 'paid'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', cat_mao, 'Empreiteira - Estrutura (parcela 1)', 65000, '2025-09-01', '2025-09-30', '2025-09-28', 'paid'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', cat_mao, 'Empreiteira - Estrutura (parcela 2)', 65000, '2025-10-01', '2025-10-30', '2025-10-28', 'paid'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', cat_equip, 'Locação grua torre', 35000, '2025-08-10', '2025-09-10', '2025-09-08', 'paid'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', cat_material, 'Blocos cerâmicos - Alvenaria', 42000, '2025-12-10', '2026-01-10', '2026-01-08', 'paid'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', cat_material, 'Cimento e argamassa', 28000, '2025-12-15', '2026-01-15', '2026-01-12', 'paid'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', cat_mao, 'Empreiteira - Alvenaria', 55000, '2026-01-05', '2026-02-05', NULL, 'pending'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', cat_material, 'Material elétrico (fios, conduítes)', 32000, '2026-01-25', '2026-02-25', NULL, 'pending'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', cat_admin, 'Seguro da obra (semestral)', 18000, '2025-06-01', '2025-06-30', '2025-06-28', 'paid'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', cat_indireto, 'Projeto estrutural', 35000, '2025-05-15', '2025-06-15', '2025-06-10', 'paid'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', cat_indireto, 'Alvará e taxas municipais', 12000, '2025-05-20', '2025-06-20', '2025-06-15', 'paid');

  -- Despesas Comercial Atlântico
  INSERT INTO expenses (company_id, project_id, category_id, description, amount, date, due_date, paid_date, payment_status) VALUES
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000002', cat_terceiro, 'Terraplanagem completa', 175000, '2025-09-10', '2025-10-10', '2025-10-08', 'paid'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000002', cat_material, 'Estacas pré-moldadas', 120000, '2025-10-25', '2025-11-25', '2025-11-22', 'paid'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000002', cat_material, 'Concreto usinado - Fundação', 95000, '2025-11-15', '2025-12-15', NULL, 'paid'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000002', cat_mao, 'Empreiteira fundação (parcela 1)', 48000, '2025-11-01', '2025-12-01', '2025-11-28', 'paid'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000002', cat_mao, 'Empreiteira fundação (parcela 2)', 48000, '2025-12-01', '2026-01-01', NULL, 'overdue'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000002', cat_equip, 'Locação bate-estacas', 42000, '2025-10-20', '2025-11-20', '2025-11-18', 'paid'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000002', cat_admin, 'Projeto arquitetônico', 85000, '2025-08-01', '2025-09-01', '2025-08-28', 'paid'),
    ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000002', cat_indireto, 'Sondagem SPT', 15000, '2025-08-15', '2025-09-15', '2025-09-10', 'paid');

  -- Despesas administrativas (sem obra)
  INSERT INTO expenses (company_id, project_id, category_id, description, amount, date, due_date, paid_date, payment_status) VALUES
    ('00000000-0000-0000-0000-000000000001', NULL, cat_admin, 'Aluguel escritório central', 8500, '2026-01-05', '2026-01-10', '2026-01-08', 'paid'),
    ('00000000-0000-0000-0000-000000000001', NULL, cat_admin, 'Aluguel escritório central', 8500, '2026-02-05', '2026-02-10', '2026-02-08', 'paid'),
    ('00000000-0000-0000-0000-000000000001', NULL, cat_admin, 'Aluguel escritório central', 8500, '2026-03-05', '2026-03-10', NULL, 'pending'),
    ('00000000-0000-0000-0000-000000000001', NULL, cat_admin, 'Contabilidade mensal', 3500, '2026-02-28', '2026-03-05', NULL, 'pending'),
    ('00000000-0000-0000-0000-000000000001', NULL, cat_admin, 'Software e licenças', 2800, '2026-01-15', '2026-02-15', '2026-02-12', 'paid');
END $$;

-- Receitas Residencial Aurora
INSERT INTO revenues (company_id, project_id, client_name, description, amount, expected_date, received_date, status, installment_number, total_installments) VALUES
  ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', 'Construtora DEB', '1ª Medição - Fundação', 375000, '2025-08-01', '2025-08-05', 'received', 1, 6),
  ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', 'Construtora DEB', '2ª Medição - Estrutura (parcial)', 312500, '2025-10-01', '2025-10-08', 'received', 2, 6),
  ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', 'Construtora DEB', '3ª Medição - Estrutura (final)', 312500, '2025-12-01', '2025-12-10', 'received', 3, 6),
  ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', 'Construtora DEB', '4ª Medição - Alvenaria', 250000, '2026-02-01', NULL, 'pending', 4, 6),
  ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', 'Construtora DEB', '5ª Medição - Instalações + Acabamento', 500000, '2026-04-01', NULL, 'pending', 5, 6),
  ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', 'Construtora DEB', '6ª Medição - Entrega final', 750000, '2026-06-01', NULL, 'pending', 6, 6);

-- Receitas Comercial Atlântico
INSERT INTO revenues (company_id, project_id, client_name, description, amount, expected_date, received_date, status, installment_number, total_installments) VALUES
  ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000002', 'Grupo Atlântico S.A.', 'Sinal do contrato', 420000, '2025-09-15', '2025-09-18', 'received', 1, 8),
  ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000002', 'Grupo Atlântico S.A.', '2ª Parcela - Fundação', 525000, '2026-01-15', NULL, 'overdue', 2, 8),
  ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000002', 'Grupo Atlântico S.A.', '3ª Parcela - Estrutura', 525000, '2026-05-15', NULL, 'pending', 3, 8);

-- Receitas Reforma (concluída)
INSERT INTO revenues (company_id, project_id, client_name, description, amount, expected_date, received_date, status) VALUES
  ('00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000004', 'DEB Participações', 'Pagamento integral reforma', 320000, '2025-05-15', '2025-05-12', 'received');

-- Pedidos de compra
INSERT INTO purchase_orders (id, company_id, project_id, supplier_id, description, total_amount, status, payment_status, order_date, expected_delivery) VALUES
  ('30000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', (SELECT id FROM suppliers WHERE name = 'Casa dos Materiais Ltda' LIMIT 1), 'Material acabamento - Lote 1', 85000, 'approved', 'pending', '2026-02-15', '2026-03-15'),
  ('30000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', (SELECT id FROM suppliers WHERE name = 'Elétrica Total' LIMIT 1), 'Material elétrico complementar', 28000, 'ordered', 'pending', '2026-02-20', '2026-03-10'),
  ('30000000-0000-0000-0000-000000000003', '00000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000002', (SELECT id FROM suppliers WHERE name = 'Aço Norte Distribuidora' LIMIT 1), 'Aço para estrutura - 1ª entrega', 180000, 'draft', 'pending', '2026-03-01', '2026-04-01');

-- Itens dos pedidos
INSERT INTO purchase_items (purchase_order_id, material_name, quantity, unit, unit_price, total_price) VALUES
  ('30000000-0000-0000-0000-000000000001', 'Porcelanato 60x60 Polido', 800, 'm²', 45.00, 36000),
  ('30000000-0000-0000-0000-000000000001', 'Tinta Acrílica Premium', 200, 'lata 18L', 180.00, 36000),
  ('30000000-0000-0000-0000-000000000001', 'Rejunte epóxi', 150, 'kg', 86.67, 13000),
  ('30000000-0000-0000-0000-000000000002', 'Fio 2.5mm', 5000, 'm', 2.80, 14000),
  ('30000000-0000-0000-0000-000000000002', 'Disjuntores 20A', 64, 'un', 35.00, 2240),
  ('30000000-0000-0000-0000-000000000002', 'Quadro distribuição 24 disjuntores', 8, 'un', 470.00, 3760),
  ('30000000-0000-0000-0000-000000000002', 'Tomadas e interruptores', 256, 'un', 31.25, 8000);

-- Folha de pagamento (últimos 3 meses)
INSERT INTO payroll (company_id, employee_id, project_id, reference_month, amount, bonuses, deductions, net_amount, payment_date, status) VALUES
  ('00000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '2025-12-01', 12000, 0, 1440, 10560, '2025-12-05', 'paid'),
  ('00000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000001', '2025-12-01', 7500, 500, 960, 7040, '2025-12-05', 'paid'),
  ('00000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000004', NULL, '2025-12-01', 5500, 0, 660, 4840, '2025-12-05', 'paid'),
  ('00000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000001', '2025-12-01', 4200, 300, 540, 3960, '2025-12-05', 'paid'),
  ('00000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '2026-01-01', 12000, 0, 1440, 10560, '2026-01-05', 'paid'),
  ('00000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000001', '2026-01-01', 7500, 0, 960, 6540, '2026-01-05', 'paid'),
  ('00000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000004', NULL, '2026-01-01', 5500, 0, 660, 4840, '2026-01-05', 'paid'),
  ('00000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000001', '2026-01-01', 4200, 0, 540, 3660, '2026-01-05', 'paid'),
  ('00000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000001', '2026-01-01', 3800, 0, 0, 3800, '2026-01-10', 'paid'),
  ('00000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '2026-02-01', 12000, 0, 1440, 10560, NULL, 'pending'),
  ('00000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000001', '2026-02-01', 7500, 0, 960, 6540, NULL, 'pending'),
  ('00000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000004', NULL, '2026-02-01', 5500, 0, 660, 4840, NULL, 'pending'),
  ('00000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000001', '2026-02-01', 4200, 0, 540, 3660, NULL, 'pending');
