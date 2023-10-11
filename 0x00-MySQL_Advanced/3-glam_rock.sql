-- Task: List bands with Glam rock as their main style, ranked by longevity

-- Select bands with Glam rock as their main style
SELECT band_name, 
       lifespan
FROM metal_bands
WHERE main_style = 'Glam rock'

-- Calculate the lifespan in years (until 2022)
AND lifespan = IFNULL(SUBSTRING_INDEX(SUBSTRING_INDEX(lifespan, 'years', 1), ' ', -1) + 0, 0)

-- Rank the bands by their longevity (in descending order)
ORDER BY lifespan DESC;
