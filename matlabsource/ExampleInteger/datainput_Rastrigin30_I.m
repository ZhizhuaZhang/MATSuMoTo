function Data= datainput_Rastrigin30_I
%DATAINPUT_RASTRIGIN30_I is an optimization test problem with only integer 
%variables
%--------------------------------------------------------------------------
%Copyright (c) 2013 by Juliane Mueller
%
%This file is part of MATSuMoTo.m - the MATLAB Surrogate Model Toolbox
%MATSuMoTo is free software: you can redistribute it and/or modify it under
%the terms of the GNU General Public License as published by the Free 
%Software Foundation, either version 3 of the License, or (at your option) 
%any later version.
%
%MATSuMoTo is distributed in the hope that it will be useful, but WITHOUT 
%ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or 
%FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for 
%more details.
%
%You should have received a copy of the GNU General Public License along 
%with MATSuMoTo.  If not, see <http://www.gnu.org/licenses/>.
%--------------------------------------------------------------------------
%Author information
%Juliane Mueller
%juliane.mueller2901@gmail.com
%--------------------------------------------------------------------------
%
%Input: None
%Output: Data - structure with optimization problem information
%--------------------------------------------------------------------------
%
Data.xlow=-ones(1,30); %variable lower bounds
Data.xup=3*ones(1,30); %variable upper bounds
Data.dim = 30; %problem dimension
Data.integer =(1:30); %indices of integer variables
Data.continuous=[]; %indices of continuous variables
%objective function
Data.objfunction=@(x)sum((x.^2) - cos(2*pi*x),2);
end %function