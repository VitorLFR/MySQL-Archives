USE alazon;

INSERT INTO esportes (Nome, Tipo, PopularidadeGlobal) VALUES
('Futebol', 'Coletivo', '100'),
('Vôlei', 'Coletivo', '87'),
('Tênis', 'Individual e Coletivo', '92'),
('Basquete', 'Coletivo', '84'),
('Beisebol', 'Coletivo', '76');

INSERT INTO jogoseletronicos (Nome, Desenvolvedora, Plataforma, AnoLancamento) VALUES
('Fortnite', 'Epic Games', 'PC, Xbox, Playstation, Mobile', '2017'),
('Minecraft', 'Mojang', 'PC, Xbox, Playstation, Mobile', '2011'),
('Rocket League', 'Psyonix', 'PC, Xbox, Playstation', '2016'),
('Valorant', 'Riot Games', 'PC, Xbox, Playstation', '2020'),
('Clash Of Clans', 'Supercell', 'PC, Mobile', '2010');

INSERT filmes (Titulo, Diretor, Genero, AnoLancamento) VALUES
('Vingadores 7', 'Charles JR', 'Ação e Aventura', '2034'),
('Kung Fu Panda 8', 'Kaique Silveira', 'Ação e Aventura', '2029'),
('Star Wars 14', 'Paramount Flix', 'Ação e Aventura', '2037'),
('Círculo de Água', 'Microsoft', 'Terror  e Suspense', '2040'),
('Italiana Fones', '8BOU MEX', 'Ação e Drama', '2042');

INSERT livros (Titulo, Autor, Genero, AnoPublicacao) VALUES
('Senhor dos Aneis: O fim', 'GK Soblins', 'Ação e Aventura', '2026'),
('Diario de uma uva', 'Pedro Sales', 'Terror, Suspese e Drama', '2033'),
('A história de João Jonas', 'Jonas João', 'Biografia', '2051'),
('Mercy Blackson', 'Monteiro Lobato', 'Terror, Suspense e Ação', '2045'),
('Diario de um Gonça', 'Henrique Silva Gonçalves', 'Mistério', '2042');

INSERT musicas (Titulo, Artista, Album, Ano) VALUES
('Ambições', 'MC PKF', 'FutureGuys', '2038'),
('Gonça Vibes', 'Gonçalo', 'Sesi', '2048'),
('Certezas', 'Raul açucarado', 'Tiktok Album', '2054'),
('Eu nasci assim...', 'Castrin', 'Tiktok Album', '2050'),
('Eu nasci assim... 2', 'Castrin e Caiox', 'Tiktok Album', '2052');

select  * from esportes;
select  * from musicas;
select  * from filmes;
select  * from  livros;
select  * from jogoseletronicos;

