addpath('Functions\')

%Change the link of the used image
I = imread('images\a (23).jpg');
[classe,score] = horseClassification(I);
if classe==1
    res='Horse'
    score
else
    res='Negative image'
    score
end