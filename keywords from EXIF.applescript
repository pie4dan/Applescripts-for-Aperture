on ImportActionForVersions(importImages)
	tell application "Aperture"
		repeat with i from 1 to count of importImages
			tell library 1
				tell item i of importImages
					set cameraModel to value of EXIF tag "Model"
					set lensModel to value of EXIF tag "LensModel"
					make new keyword with properties {name:cameraModel}
					make new keyword with properties {name:lensModel, parents:{cameraModel}}
				end tell
			end tell
		end repeat
	end tell
end ImportActionForVersions