function [h, data_matrix] = displayData_mine(X, example_width, example_height)
% Compute rows, cols
[m n] = size(X);

display_rows = floor(sqrt(m));
display_cols = floor(m / display_rows);
% Between images padding
pad = 1;

% Copy each example into a patch on the display array
data_matrix = [];
curr_ex = 1;
pad_with = 0; % no padding in first iteration
for j = 1:display_rows
  data_row = [];
  pad_height = 0; % no padding in first iteration of each row.
	for i = 1:display_cols
    data_item = reshape(X(curr_ex,:), example_width, example_height);
		data_row = [data_row, zeros(pad_height, 1)+ pad, data_item];

    % set variables for next iteration.
    pad_height = example_height;
		curr_ex = curr_ex + 1;
	end
  data_matrix = [data_matrix; zeros(1, pad_with) + pad; data_row];
  pad_with = size(data_row,2);
end

% Display Image
h = imagesc(data_matrix, [-1 1]);

% Do not show axis
axis image off

drawnow;

end
