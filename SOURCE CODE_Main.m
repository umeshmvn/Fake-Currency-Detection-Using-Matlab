function varargout = main(varargin)
% MAIN MATLAB code for main.fig
% MAIN, by itself, creates a new MAIN or raises the existing
% singleton*.
%
% H = MAIN returns the handle to a new MAIN or the handle to
% the existing singleton*.
%
% MAIN('CALLBACK',hObject,eventData,handles,...) calls the local
% function named CALLBACK in MAIN.M with the given input
arguments.
%
% MAIN('Property','Value',...) creates a new MAIN or raises the
% existing singleton*. Starting from the left, property value
pairs are
% applied to the GUI before main_OpeningFcn gets called. An
% unrecognized property name or invalid value makes property
application
% stop. All inputs are passed to main_OpeningFcn via varargin.
%
% *See GUI Options on GUIDE's Tools menu. Choose "GUI allows
only one
% instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES
% Edit the above text to modify the response to help main
% Last Modified by GUIDE v2.5 05-Jan-2022 13:00:48
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name', mfilename, ...
'gui_Singleton', gui_Singleton, ...
'gui_OpeningFcn', @main_OpeningFcn, ...
'gui_OutputFcn', @main_OutputFcn, ...
'gui_LayoutFcn', [] , ...
'gui_Callback', []);

if nargin && ischar(varargin{1})
gui_State.gui_Callback = str2func(varargin{1});
end
if nargout
[varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
gui_mainfcn(gui_State, varargin{:});

29

end
% End initialization code - DO NOT EDIT

% --- Executes just before main is made visible.
function main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject handle to figure
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% varargin command line arguments to main (see VARARGIN)
% Choose default command line output for main
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);
% UIWAIT makes main wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = main_OutputFcn(hObject, eventdata, handles)
% varargout cell array for returning output args (see VARARGOUT);
% hObject handle to figure
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton1 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
Testimage;
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton2 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
sub_test;

% --- If Enable == 'on', executes on mouse press in 5 pixel border.

30

% --- Otherwise, executes on mouse press in 5 pixel border or over
text2.
% --- Executes during object creation, after setting all properties
% --- Executes when uipanel2 is resized.
% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject handle to axes2 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles empty - handles not created until after all CreateFcns
called
imshow('C:\Users\User\Desktop\We see you\MGIT.png');
% Hint: place code in OpeningFcn to populate axes2

% --- Executes on button press in pushbutton4.
