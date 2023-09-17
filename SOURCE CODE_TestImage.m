function varargout = Testimage(varargin)
% TESTIMAGE MATLAB code for Testimage.fig
% TESTIMAGE, by itself, creates a new TESTIMAGE or raises the
existing
% singleton*.
%
% H = TESTIMAGE returns the handle to a new TESTIMAGE or the
handle to
% the existing singleton*.
%
% TESTIMAGE('CALLBACK',hObject,eventData,handles,...) calls the
local
% function named CALLBACK in TESTIMAGE.M with the given input
arguments.
%
% TESTIMAGE('Property','Value',...) creates a new TESTIMAGE or
raises the
% existing singleton*. Starting from the left, property value
pairs are
% applied to the GUI before Testimage_OpeningFcn gets called.
An
% unrecognized property name or invalid value makes property
application
% stop. All inputs are passed to Testimage_OpeningFcn via
varargin.
%
% *See GUI Options on GUIDE's Tools menu. Choose "GUI allows
only one

31
% instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES
% Edit the above text to modify the response to help Testimage
% Last Modified by GUIDE v2.5 05-Jan-2022 12:35:38
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name', mfilename, ...
'gui_Singleton', gui_Singleton, ...

'gui_OpeningFcn', @Testimage_OpeningFcn, ...
'gui_OutputFcn', @Testimage_OutputFcn, ...
'gui_LayoutFcn', [] , ...
'gui_Callback', []);

if nargin && ischar(varargin{1})
gui_State.gui_Callback = str2func(varargin{1});
end
if nargout
[varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

% --- Executes just before Testimage is made visible.
function Testimage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject handle to figure
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% varargin command line arguments to Testimage (see VARARGIN)
% Choose default command line output for Testimage
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);
% UIWAIT makes Testimage wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = Testimage_OutputFcn(hObject, eventdata, handles)
% varargout cell array for returning output args (see VARARGOUT);

32

% hObject handle to figure
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure
varargout{1} = handles.output;

function edit1_Callback(hObject, eventdata, handles)
% hObject handle to edit1 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of edit1 as text
% str2double(get(hObject,'String')) returns contents of edit1
as a double

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject handle to edit1 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles empty - handles not created until after all CreateFcns
called
% Hint: edit controls usually have a white background on Windows.
% See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'),
get(0,'defaultUicontrolBackgroundColor'))
set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton1 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
global Iscaned
[imname,impath]=uigetfile({'*.jpg;*.png'},'Provide Currency for
Testing');
Iscaned=imread([impath,'/',imname]);
axes(handles.axes1);
imshow(Iscaned);
setappdata(0,'Iscaned',Iscaned);

% --- Executes during object creation, after setting all properties.

33

function figure1_CreateFcn(hObject, eventdata, handles)
% hObject handle to figure1 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles empty - handles not created until after all CreateFcns
called

function edit5_Callback(hObject, eventdata, handles)
% hObject handle to edit5 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of edit5 as text
% str2double(get(hObject,'String')) returns contents of edit5
as a double

% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject handle to edit5 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles empty - handles not created until after all CreateFcns
called
% Hint: edit controls usually have a white background on Windows.
% See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'),
get(0,'defaultUicontrolBackgroundColor'))
set(hObject,'BackgroundColor','white');
end
% --- Executes on button press in popupmenu.
function popupmenu_Callback(hObject, eventdata, handles)
% hObject handle to popupmenu (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
global Ireal;
c=get(hObject,'Value');
switch(c)
case 2
Ireal=imread('C:\Users\User\Desktop\We see you\MINI\Fake Currency
Detection (F5,F6,F7)\RBI\100.jpg');
axes(handles.axes2);
imshow(Ireal);
setappdata(0,'Ireal',Ireal);
note=100;
case 3
Ireal=imread('C:\Users\User\Desktop\We see you\MINI\Fake Currency
Detection (F5,F6,F7)\RBI\200RBI.jpg');

34

axes(handles.axes2);
imshow(Ireal);
setappdata(0,'Ireal',Ireal);
note=200;
case 4
Ireal=imread('C:\Users\User\Desktop\We see you\MINI\Fake Currency
Detection (F5,F6,F7)\RBI\500RBI.jpg');
axes(handles.axes2);
imshow(Ireal);
setappdata(0,'Ireal',Ireal);
note=500;
case 5
Ireal=imread('C:\Users\User\Desktop\We see you\MINI\Fake Currency
Detection (F5,F6,F7)\RBI\2000RBI.png');
axes(handles.axes2);
imshow(Ireal);
setappdata(0,'Ireal',Ireal);
note=2000;
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton3 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
global Ireal;
global Iscaned
compare(Ireal,Iscaned);

% --- Executes on button press in view2.
function view2_Callback(hObject, eventdata, handles)
% hObject handle to view2 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
sub_test;

function edit7_Callback(hObject, eventdata, handles)
% hObject handle to edit7 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of edit7 as text
% str2double(get(hObject,'String')) returns contents of edit7
as a double

35

% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject handle to edit7 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles empty - handles not created until after all CreateFcns
called
% Hint: edit controls usually have a white background on Windows.
% See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'),
get(0,'defaultUicontrolBackgroundColor'))
set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
