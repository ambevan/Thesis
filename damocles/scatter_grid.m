load grid.in
grid=grid(any(grid(:,4),2),:)
grid(:,4)=grid(:,4)*1e21
grid_z0=grid(~any(grid(:,3),2),:)
figure;
scatter3(grid_z0(:,1)*10^-16,grid_z0(:,2)*10^-16,grid_z0(:,3)*10^-16,[15],-log(grid_z0(:,4)),'filled')

clump_density=0
clumps=grid(:,4)-clump_density
clumps=cat(2,grid(:,1:3),clumps)
clumps=clumps(~any(clumps(:,4),2),:)
figure;
scatter3(clumps(:,1)*10^-16,clumps(:,2)*10^-16,clumps(:,3)*10^-16,20,'filled')

figure;
grid_cutout=grid(or(or(grid(:,1)<0,grid(:,2)<0),grid(:,3)<0),:)
scatter3(grid_cutout(:,1)*10^-16,grid_cutout(:,2)*10^-16,grid_cutout(:,3)*10^-16,[15],-log(grid_cutout(:,4)),'filled')