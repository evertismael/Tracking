function show_target(fig, target, xy_dim)
figure(fig)
    subplot(2,3,1);
    plot(target.t_vect,target.history(1,:))
    title('x')

    subplot(2,3,4);
    plot(target.t_vect,target.history(2,:))
    title('vx')

    subplot(2,3,2);
    plot(target.t_vect,target.history(3,:))
    title('y')

    subplot(2,3,5);
    plot(target.t_vect,target.history(4,:))
    title('vy')

    subplot(2,3,6);
    hold on;
    plot(target.history(1,:),target.history(3,:),'.b');
    plot(target.history(1,1),target.history(3,1),'or');
    % draw the road & bss:
    scene = Params.get_scene();
    scatter(scene.bx(1,:),scene.bx(2,:),'^');
    circle(45,45,5); % roundabout:
    road_borders();
    
    title('xy-plane')
    axis(xy_dim); grid on;
end

function h = circle(x,y,r)
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
h = plot(xunit, yunit);
end

function road_borders()
plot([55 55],[0 30],'k');
plot([35 35],[0 30],'k');

plot([55 55],[60 90],'k');
plot([35 35],[60 90],'k');

plot([0 30],[35 35],'k');
plot([0 30],[55 55],'k');

plot([60 90],[35 35],'k');
plot([60 90],[55 55],'k');

plot([30 35],[55 60],'k');
plot([30 35],[35 30],'k');
plot([55 60],[30 35],'k');
plot([55 60],[60 55],'k');

plot([45 45],[0 30],'k');
plot([45 45],[60 90],'k');

plot([0 30],[45 45],'k');
plot([60 90],[45 45],'k');
end