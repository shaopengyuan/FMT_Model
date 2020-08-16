function cellInfo = ins_bus(varargin) 
% INS_BUS returns a cell array containing bus object information 
% 
% Optional Input: 'false' will suppress a call to Simulink.Bus.cellToObject 
%                 when the MATLAB file is executed. 
% The order of bus element attributes is as follows:
%   ElementName, Dimensions, DataType, SampleTime, Complexity, SamplingMode, DimensionsMode, Min, Max, DocUnits, Description 

suppressObject = false; 
if nargin == 1 && islogical(varargin{1}) && varargin{1} == false 
    suppressObject = true; 
elseif nargin > 1 
    error('Invalid input argument(s) encountered'); 
end 

cellInfo = { ... 
  { ... 
    'Baro_Bus', ... 
    '', ... 
    '', ... 
    'Auto', ... 
    '-1', {... 
{'timestamp_ms', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'pressure_pa', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'temperature_deg', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
  } ...
  { ... 
    'IMU_Bus', ... 
    '', ... 
    '', ... 
    'Auto', ... 
    '-1', {... 
{'timestamp_ms', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'gyr_x_radPs_B', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'gyr_y_radPs_B', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'gyr_z_radPs_B', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'acc_x_mPs2_B', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'acc_y_mPs2_B', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'acc_z_mPs2_B', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
  } ...
  { ... 
    'INS_Out_Bus', ... 
    '', ... 
    '', ... 
    'Auto', ... 
    '-1', {... 
{'timestamp', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('ms'), ''}; ...
{'phi', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('rad'), ''}; ...
{'theta', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('rad'), ''}; ...
{'psi', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('rad'), ''}; ...
{'quat', 4, 'single', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('unified'), ''}; ...
{'p', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('rad/s'), ''}; ...
{'q', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('rad/s'), ''}; ...
{'r', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('rad/s'), ''}; ...
{'ax', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('m/s2'), ''}; ...
{'ay', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('m/s2'), ''}; ...
{'az', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('m/s2'), ''}; ...
{'vn', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('m/s'), ''}; ...
{'ve', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('m/s'), ''}; ...
{'vd', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('m/s'), ''}; ...
{'reserved', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], '', sprintf('padding')}; ...
{'lon', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('degree'), ''}; ...
{'lat', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('degree'), ''}; ...
{'alt', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('m'), ''}; ...
{'x_R', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('m'), ''}; ...
{'y_R', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('m'), ''}; ...
{'h_R', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('m'), ''}; ...
{'h_AGL', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('m'), ''}; ...
{'flag', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'status', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
  } ...
  { ... 
    'Mag_Bus', ... 
    '', ... 
    '', ... 
    'Auto', ... 
    '-1', {... 
{'timestamp_ms', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'mag_x_ga_B', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'mag_y_ga_B', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'mag_z_ga_B', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
  } ...
  { ... 
    'OpticalFlow_Bus', ... 
    '', ... 
    '', ... 
    'Auto', ... 
    '-1', {... 
{'timestamp_ms', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'vel_x_mPs', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'vel_y_mPs', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'valid', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
  } ...
  { ... 
    'Sonar_Bus', ... 
    '', ... 
    '', ... 
    'Auto', ... 
    '-1', {... 
{'timestamp_ms', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'distance_m', 1, 'single', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
  } ...
  { ... 
    'uBlox_PVT_Bus', ... 
    '', ... 
    '', ... 
    'Auto', ... 
    '-1', {... 
{'timestamp_ms', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'iTOW', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'year', 1, 'uint16', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'month', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'day', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'hour', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'min', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'sec', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'valid', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'tAcc', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'nano', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'fixType', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'flags', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'reserved1', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'numSV', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'lon', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'lat', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'height', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'hMSL', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'hAcc', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'vAcc', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'velN', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'velE', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'velD', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'gSpeed', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'headMot', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'sAcc', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'headAcc', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'pDOP', 1, 'uint16', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'reserved2', 1, 'uint16', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
  } ...
}'; 

if ~suppressObject 
    % Create bus objects in the MATLAB base workspace 
    Simulink.Bus.cellToObject(cellInfo) 
end 