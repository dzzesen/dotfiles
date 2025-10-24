function Linemode:file_info()
	return string.format("%s  %6s  %s", self:permissions(), self:size(), self:mtime())
end
