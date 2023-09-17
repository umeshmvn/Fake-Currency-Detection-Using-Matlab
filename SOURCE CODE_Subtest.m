function varargout = sub_test(varargin)
% SUB_TEST MATLAB code for sub_test.fig
% SUB_TEST, by itself, creates a new SUB_TEST or raises the
existing
% singleton*.
%
% H = SUB_TEST returns the handle to a new SUB_TEST or the
handle to
% the existing singleton*.
%
% SUB_TEST('CALLBACK',hObject,eventData,handles,...) calls the
local
% function named CALLBACK in SUB_TEST.M with the given input
arguments.
%
% SUB_TEST('Property','Value',...) creates a new SUB_TEST or
raises the
% existing singleton*. Starting from the left, property value
pairs are
% applied to the GUI before sub_test_OpeningFcn gets called. An
% unrecognized property name or invalid value makes property
application
% stop. All inputs are passed to sub_test_OpeningFcn via
varargin.
%

36

% *See GUI Options on GUIDE's Tools menu. Choose "GUI allows
only one
% instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES
% Edit the above text to modify the response to help sub_test
% Last Modified by GUIDE v2.5 05-Jan-2022 12:34:01
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name', mfilename, ...
'gui_Singleton', gui_Singleton, ...

'gui_OpeningFcn', @sub_test_OpeningFcn, ...
'gui_OutputFcn', @sub_test_OutputFcn, ...
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

% --- Executes just before sub_test is made visible.
function sub_test_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject handle to figure
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
% varargin command line arguments to sub_test (see VARARGIN)
% Choose default command line output for sub_test
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);
% UIWAIT makes sub_test wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = sub_test_OutputFcn(hObject, eventdata, handles)

37

% varargout cell array for returning output args (see VARARGOUT);
% hObject handle to figure
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
h=findobj('tag','view2');
% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in Segmentation.
function Segmentation_Callback(hObject, eventdata, handles)
% hObject handle to Segmentation (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
global Ireal;
global Iscaned;
Ireal=getappdata(0,'Ireal');
Iscaned=getappdata(0,'Iscaned');
blackStripReal = Ireal(:,210:325,:);
blackStripscaned = Iscaned(:,210:325,:);
figure;
subplot(1,3,1);
imshow(blackStripReal);
title('Original');
subplot(1,3,2);
imshow(blackStripscaned);
title('scaned Description');
%%//Convert into grayscale then threshold
blackStripReal = rgb2gray(blackStripReal);
blackStripscaned = rgb2gray(blackStripscaned);
figure;
subplot(1,3,1);
imshow(blackStripReal);
title('Original');
subplot(1,3,2);
imshow(blackStripscaned);
title('scaned Description');
%leftmost part
blackStripReal = Ireal(:,10:110,:);
blackStripscaned = Iscaned(:,10:110,:);
subplot(1,3,1);
imshow(blackStripReal);
title('Original');
subplot(1,3,2);
imshow(blackStripscaned);
title('scaned');
%%//Convert into grayscale then threshold
blackStripReal = rgb2gray(blackStripReal);
blackStripscaned = rgb2gray(blackStripscaned);
figure;

38

subplot(1,3,1);
imshow(blackStripReal);
title('Original');
subplot(1,3,2);
imshow(blackStripscaned);
title('scaned');
%%//Extract Gandhi
blackStripReal = Ireal(:,400:650,:);
blackStripscaned = Iscaned(:,400:650,:);
figure;
subplot(1,3,1);
imshow(blackStripReal);
title('Original');
subplot(1,3,2);
imshow(blackStripscaned);
title('scaned');
%%//Convert into grayscale then threshold
blackStripReal = rgb2gray(blackStripReal);
blackStripscaned = rgb2gray(blackStripscaned);
figure;
subplot(1,3,1);
imshow(blackStripReal);
title('Original');
subplot(1,3,2);
imshow(blackStripscaned);
title('scaned');
blackStripReal = Ireal(:,600:775,:);
blackStripscaned = Iscaned(:,600:775,:);
figure;
subplot(1,3,1);
imshow(blackStripReal);
title('Original');
subplot(1,3,2);
imshow(blackStripscaned);
title('scaned');
%%//Convert into grayscale then threshold
blackStripReal = rgb2gray(blackStripReal);
blackStripscaned = rgb2gray(blackStripscaned);
figure;
subplot(1,3,1);
imshow(blackStripReal);
title('Original');
subplot(1,3,2);
imshow(blackStripscaned);
title('scaned');
%%//2000 Below
blackStripReal = Ireal(:,850:1100,:);
blackStripscaned = Iscaned(:,850:1100,:);
subplot(1,3,1);

39

imshow(blackStripReal);
title('Original');
subplot(1,3,2);
imshow(blackStripscaned);
title('scaned');
%%//Convert into grayscale then threshold
blackStripReal = rgb2gray(blackStripReal);
blackStripscaned = rgb2gray(blackStripscaned);
figure;
subplot(1,3,1);
imshow(blackStripReal);
title('Original');
subplot(1,3,2);
imshow(blackStripscaned);
title('scaned');
%%//Ashoka emblem
blackStripReal = Ireal(:,1050:1145,:);
blackStripscaned = Iscaned(:,1050:1145,:);
figure;
subplot(1,3,1);
imshow(blackStripReal);
title('Original');
subplot(1,3,2);
imshow(blackStripscaned);
title('scaned');
%%//Convert into grayscale then threshold
blackStripReal = rgb2gray(blackStripReal);
blackStripscaned = rgb2gray(blackStripscaned);
figure;
subplot(1,3,1);
imshow(blackStripReal);
title('Original');
subplot(1,3,2);
imshow(blackStripscaned);
title('scaned');
%%// latent
blackStripReal = Ireal(350:519,110:400,:);
blackStripscaned = Iscaned(350:519,110:400,:);
figure;
subplot(1,3,1);
imshow(blackStripReal);
title('Original');
subplot(1,3,2);
imshow(blackStripscaned);
title('scaned');
%%//Convert into grayscale then threshold
blackStripReal = rgb2gray(blackStripReal);
blackStripscaned = rgb2gray(blackStripscaned);
figure;

40

subplot(1,3,1);
imshow(blackStripReal);
title('Original');
subplot(1,3,2);
imshow(blackStripscaned);
title('scaned');
%%Entire left part
blackStripReal = Ireal(:,110:400,:);
blackStripscaned = Iscaned(:,110:400,:);
figure;
subplot(1,3,1);
imshow(blackStripReal);
title('Original');
subplot(1,3,2);
imshow(blackStripscaned);
title('scaned');
%%//Convert into grayscale then threshold
blackStripReal = rgb2gray(blackStripReal);
blackStripscaned = rgb2gray(blackStripscaned);
figure;
subplot(1,3,1);
imshow(blackStripReal);
title('Original');
subplot(1,3,2);
imshow(blackStripscaned);
title('scaned');
% --- Executes on button press in post_analysis.
function post_analysis_Callback(hObject, eventdata, handles)
% hObject handle to post_analysis (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
global Ireal;
global Iscaned;
Ireal=getappdata(0,'Ireal');
Iscaned=getappdata(0,'Iscaned');
% handles structure with handles and user data (see GUIDATA)
call(Ireal,Iscaned);
% --- Executes on button press in Pre_analysis.
function Pre_analysis_Callback(hObject, eventdata, handles)
% hObject handle to Pre_analysis (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
%%//Pre-analysis
global Ireal;
global Iscaned;
Ireal=getappdata(0,'Ireal');
Iscaned=getappdata(0,'Iscaned');
hsvImageReal = rgb2hsv(Ireal);
hsvImagescaned = rgb2hsv(Iscaned);
figure;

41

imshow([hsvImageReal(:,:,1) hsvImageReal(:,:,2)
hsvImageReal(:,:,3)]);
title('Real pre process');
figure;
imshow([hsvImagescaned(:,:,1) hsvImagescaned(:,:,2)
hsvImagescaned(:,:,3)]);
title('scaned');

% --- Executes on button press in Histogram.
function Histogram_Callback(hObject, eventdata, handles)
% hObject handle to Histogram (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
global Ireal;
global Iscaned;
Ireal=getappdata(0,'Ireal');
Iscaned=getappdata(0,'Iscaned');
figure;
subplot(2,4,1);
imshow(Ireal);
subplot(2,4,2);
I1=Ireal(:,:,1);
imhist(I1);
subplot(2,4,3);
I2=Ireal(:,:,2);
imhist(I2);
subplot(2,4,4);
I1=Ireal(:,:,3);
imhist(I1);
subplot(2,4,5);
imshow(Iscaned);
subplot(2,4,6);
I1=Iscaned(:,:,1);
imhist(I1);
subplot(2,4,7);
I1=Iscaned(:,:,2);
imhist(I1);
subplot(2,4,8);
I1=Iscaned(:,:,3);
imhist(I1);
% --- Executes on button press in Features.
function Features_Callback(hObject, eventdata, handles)
% hObject handle to Features (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
global Ireal
global Iscaned
Features(Ireal,Iscaned)

42

function Edgedetection_Callback(hObject, eventdata, handles)
% hObject handle to Edgedetection (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
global Ireal
global Iscaned
edgesdetection(Ireal,Iscaned);
