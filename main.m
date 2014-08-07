% plot simulations results

% load figures;
IMGNUM = 9;
fig = cell(1,IMGNUM);
images = dir('figures');
images = images(3:end);
fig    = cell(1,length(images));

for i=1:length(fig)
    fig{i} = open(sprintf('figures/%s',images(i).name));
end

% 18 dictionaries

s = load('dataSimul/Online_train_res.mat');
for i=1:length(s.ImName)
    figure(fig{i}); hold on;
    plot(s.BPP{i},s.PSNR{i},'-.om','MarkerSize',5,'LineWidth',5);
    fprintf('%s added to fig:%d\n',s.ImName{i},fig{i});
    
end
   