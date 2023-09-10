%% Exportador MAT2CSV 
% Programa de Pós Graduação em Engenharia Elétrica e Telecomunicações
% LACOP - Laboratório de Comunicações Óticas - UFF & CEFET/RJ
% Doutorando : Márcio Alexandre Dias Garrido
% Data : 09/2023


% Nome do arquivo
arquivo = 'nome do arquivo a ser lido sem extensão';

% Caminho completo para o arquivo a ser lido
fullFilename_IN = fullfile('/caminho completo', [arquivo, '.mat']);

% Carregar o arquivo
load(fullFilename_IN);


% Obter o caminho do script atual
[currentPath,~,~] = fileparts(fullfile(mfilename('fullpath')));


% Definir o nome do arquivo
filename = [arquivo,'.csv'];

% Criar o caminho completo para o arquivo
fullFilename_OUT = fullfile(currentPath, filename);

% Gravar a timetable no arquivo
writetimetable(DADOS, fullFilename_OUT);
