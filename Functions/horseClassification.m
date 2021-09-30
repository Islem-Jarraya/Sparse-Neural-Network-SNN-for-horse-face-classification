function [classe,score] = horseClassification(face)

score=scoreSNN(face);
if(score>=0.5)
    classe=1;
else
    classe=0;
end
end