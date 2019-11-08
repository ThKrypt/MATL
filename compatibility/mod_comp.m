function y = mod(varargin)
% Allows inputs to be char
if ischar(varargin{1})
    varargin{1} = double(varargin{1});
end
if ischar(varargin{2})
    varargin{2} = double(varargin{2});
end
if ~any(cellfun(@(x) isa(x,'sym'), varargin))
    y = builtin('mod', varargin{:});
else
    y = builtin('@sym/mod', varargin{:});
end
end