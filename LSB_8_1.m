function varargout = LSB_8_1(varargin)
% LSB_8_1 MATLAB code for LSB_8_1.fig
%      LSB_8_1, by itself, creates a new LSB_8_1 or raises the existing
%      singleton*.
%
%      H = LSB_8_1 returns the handle to a new LSB_8_1 or the handle to
%      the existing singleton*.
%
%      LSB_8_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LSB_8_1.M with the given input arguments.
%
%      LSB_8_1('Property','Value',...) creates a new LSB_8_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LSB_8_1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LSB_8_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LSB_8_1

% Last Modified by GUIDE v2.5 18-Mar-2018 21:04:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LSB_8_1_OpeningFcn, ...
                   'gui_OutputFcn',  @LSB_8_1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before LSB_8_1 is made visible.
function LSB_8_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LSB_8_1 (see VARARGIN)

% Choose default command line output for LSB_8_1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes LSB_8_1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = LSB_8_1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
