function score=scoreSNN(face)

load Model/model;
face=imresize(face,[305 140]);
[featureVect, hogVisualization] = extractHOGFeatures(face);
res1=w7.*featureVect;
res11=[];
% We add another hidden layer (different than we published in the paper) but it gives the same result
for i=1:21312
  if (res1(i)==0 && w7(i)==0)
  else
    res11=[res11,res1(:,i)];
  end
end
res1=res11';
y1 = net(res1);
score=y1;
end