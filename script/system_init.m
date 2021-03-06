%% Firmament Autopilot
%% brief: run this script to init FMT Model

%% init path
filepath = which(mfilename);
filefolder = fileparts(filepath);
rootpath = fullfile(filefolder,'..');

%% set build path
buildpath = fullfile(rootpath, 'build');
if(~exist(buildpath, 'dir'))
   mkdir(buildpath); 
end
set_param(0, 'CodeGenFolder', buildpath);
set_param(0, 'CacheFolder', buildpath);

%% add path
addpath(genpath(rootpath));

%% register code replacement library
run('register_crl.m');

%% load bus
load_bus(rootpath);

%% init models
run('plant_init.m');
run('ins_init.m');
run('control_init.m');
run('fms_init.m');

%% init parameters
Ts = 0.005; % used for vitualization