folder = 'dud/';
recordings = {'dud_00', 'dud_01', 'dud_02', 'dud_03', 'dud_04'};
index = 1;

for recording = recordings
    base_file_name = recording{1};
    inFile = [folder recording{1} '.wav'];

    Fs = 44100;
    mo = 10;
    [f1, f2] = FormantsFromFile(inFile, Fs, mo);

    % Plot #3: plot with all formants
    figure(2)
    hold on
    ffreq(1) = f1;
    ffreq(2) = f2;
    plot(ffreq(1), ffreq(2), 'blue*');
    text(ffreq(1)+2, ffreq(2)+2, base_file_name, 'Color', 'blue');

    index = index + 1;
end


