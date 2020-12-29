function varargout = AniesLutfiana(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AniesLutfiana_OpeningFcn, ...
                   'gui_OutputFcn',  @AniesLutfiana_OutputFcn, ...
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


% --- Executes just before AniesLutfiana is made visible.
function AniesLutfiana_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AniesLutfiana (see VARARGIN)

% Choose default command line output for AniesLutfiana
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AniesLutfiana wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AniesLutfiana_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
open=guidata(gcbo);
[namafile,direktori]=uigetfile({'*.jpg;*.png;*.bmp;*.tif'},'OpenImage');
I=imread(namafile);
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));colormap('gray');
set(open.axes1,'Userdata',I);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
open=guidata(gcbo);
[namafile,direktori]=uigetfile({'*.png'},'OpenImage');
I=imread(namafile);
set(open.figure1,'CurrentAxes',open.axes2);
set(imagesc(I));colormap('gray');
set(open.axes2,'Userdata',I);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
open=guidata(gcbo);
I=get(open.axes1,'Userdata');
[r c] = size(I);
for x = 1 : r
for y = 1 : c
J(x,y) = 255 - I(x,y);
end
end
set(open.figure1,'CurrentAxes',open.axes3);
set(imagesc(J));colormap('gray');
set(open.axes3,'Userdata',J);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
open=guidata(gcbo);
A=get(open.axes1,'Userdata');
B=get(open.axes2,'Userdata');
[r1 c1] = size(A);
[r2 c2] = size(B);
if (r1 == r2) && (c1 == c2)
for x = 1 : r1
for y = 1 : c1
C(x,y) = A(x,y) + B(x,y);
end
end
end
set(open.figure1,'CurrentAxes',open.axes4);
set(imagesc(C));colormap('gray');
set(open.axes4,'Userdata',C);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
open=guidata(gcbo);
A=get(open.axes1,'Userdata');
B=get(open.axes2,'Userdata');
[r1 c1] = size(A);
[r2 c2] = size(B);
if (r1 == r2) && (c1 == c2)
    for x = 1 : r1
        for y = 1 : c1
            C(x,y) = A(x,y) - B(x,y);
        end
    end
end
set(open.figure1,'CurrentAxes',open.axes5);
set(imagesc(C));colormap('gray');
set(open.axes5,'Userdata',C);

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
open=guidata(gcbo);
A=get(open.axes1,'Userdata');
[r c] = size(A);
for x = 1 : r
for y = 1 : c
B(x,y) = A(x,y) .* 2;
end
end
set(open.figure1,'CurrentAxes',open.axes6);
set(imagesc(B));colormap('gray');
set(open.axes6,'Userdata',B);

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
open=guidata(gcbo);
A=get(open.axes1,'Userdata');
[r c] = size(A);
for x = 1 : r
for y = 1 : c
B(x,y) = A(x,y) ./ 2;
end
end
set(open.figure1,'CurrentAxes',open.axes7);
set(imagesc(B));colormap('gray');
set(open.axes7,'Userdata',B);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
open=guidata(gcbo);
I=get(open.axes1,'Userdata');
Tx = 20;
Ty = 50;
[brs kol] = size(I);
for x = 1 : brs
for y = 1 : kol
B(x+Tx, y+Ty) = I(x,y);
end
end
B = B(1:brs,1:kol);
set(open.figure1,'CurrentAxes',open.axes9);
set(imagesc(B));colormap('gray');
set(open.axes9,'Userdata',B);

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
open=guidata(gcbo);
I=get(open.axes1,'Userdata');
[brs kol] = size(I);
x1 = 50;
x2 = 200;
y1 = 50;
y2 = 200;
I(1:x1,:) = 0;
I(x2:brs,:) = 0;
I(:,1:y1) = 0;
I(:,y2:kol) = 0;
axes(handles.axes10);
imshow(I);

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
open=guidata(gcbo);
I=get(open.axes1,'Userdata');
[brs kol] = size(I);
J = repmat(0,brs,kol);
mirror = floor(kol/2);
for x = 1 : brs-1
for y = 1 : kol-1
J(x,y) = I((2*mirror)-x, y);
end
end
set(open.figure1,'CurrentAxes',open.axes11);
set(imagesc(J));colormap('gray');
set(open.axes11,'Userdata',J);
    

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
open=guidata(gcbo);
A=get(open.axes1,'Userdata');
A= imnoise(A, 'salt & pepper', 0.0000000000001);
k = ones(3) / 9;
[r c] = size(A);
[m n] = size(k);
h = rot90(k, 2);
center = floor((size(h)+1)/2);
left = center(2) - 1;
right = n - center(2);
top = center(1) - 1;
bottom = m - center(1);
Rep = zeros(r + top + bottom, c + left + right);
for x = 1 + top : r + top
for y = 1 + left : c + left
Rep(x,y) = A(x - top, y - left);
end
end
B = zeros(r , c);
for x = 1 : r
for y = 1 : c
for i = 1 : m
for j = 1 : n
q = x - 1;
w = y -1;
B(x, y) = B(x, y) + (Rep(i + q, j + w) * h(i, j));
end
end
end
end
set(open.figure1,'CurrentAxes',open.axes12);
set(imagesc(B));colormap('gray');
set(open.axes12,'Userdata',B);

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
open=guidata(gcbo);
I=get(open.axes1,'Userdata');
hpf =[-1 -1 -1; -1 9 -1; -1 -1 -1];
[r c] = size(I);
[m n] = size(hpf);
h = rot90(hpf, 2);
center = floor((size(h)+1)/2);
left = center(2) - 1;
right = n - center(2);
top = center(1) - 1;
bottom = m - center(1);
Rep = zeros(r + top + bottom, c + left + right);
for x = 1 + top : r + top
    for y = 1 + left : c + left
        Rep(x,y) = I(x - top, y - left);
    end
end
B = zeros(r , c);
for x = 1 : r
    for y = 1 : c
        for i = 1 : m
            for j = 1 : n
                q = x - 1;
                w = y -1;
                B(x, y) = B(x, y) + (Rep(i + q, j + w) * h(i, j));
            end
        end
    end
end
set(open.figure1,'CurrentAxes',open.axes13);
set(imagesc(B));colormap('gray');
set(open.axes13,'Userdata',B);

% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
open=guidata(gcbo);
I=get(open.axes1,'Userdata');
Hsl = edge_detection(im2double(I), 0.25);
imshow(I);
figure, imshow(im2uint8(Hsl));


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
open=guidata(gcbo);
I=get(open.axes1,'Userdata');
T = 45;
J = rotasi(I,T);
set(open.figure1,'CurrentAxes',open.axes14);
set(imagesc(I));colormap('gray');
set(open.axes14,'Userdata',I);
