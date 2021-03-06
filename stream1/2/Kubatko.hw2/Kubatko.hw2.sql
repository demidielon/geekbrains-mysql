ALTER TABLE `_regions` DROP COLUMN `title_ua`;
ALTER TABLE `_regions` DROP COLUMN `title_be`;
ALTER TABLE `_regions` DROP COLUMN `title_en`;
ALTER TABLE `_regions` DROP COLUMN `title_es`;
ALTER TABLE `_regions` DROP COLUMN `title_pt`;
ALTER TABLE `_regions` DROP COLUMN `title_de`;
ALTER TABLE `_regions` DROP COLUMN `title_fr`;
ALTER TABLE `_regions` DROP COLUMN `title_it`;
ALTER TABLE `_regions` DROP COLUMN `title_pl`;
ALTER TABLE `_regions` DROP COLUMN `title_ja`;
ALTER TABLE `_regions` DROP COLUMN `title_lt`;
ALTER TABLE `_regions` DROP COLUMN `title_lv`;
ALTER TABLE `_regions` DROP COLUMN `title_cz`;
ALTER TABLE `_regions` CHANGE `region_id` `id` INT AUTO_INCREMENT, ADD PRIMARY KEY (`id`);
ALTER TABLE `_regions` CHANGE `title_ru` `title` VARCHAR(150) NOT NULL, ADD INDEX (`title`);

ALTER TABLE `_countries` DROP COLUMN `title_ua`;
ALTER TABLE `_countries` DROP COLUMN `title_be`;
ALTER TABLE `_countries` DROP COLUMN `title_en`;
ALTER TABLE `_countries` DROP COLUMN `title_es`;
ALTER TABLE `_countries` DROP COLUMN `title_pt`;
ALTER TABLE `_countries` DROP COLUMN `title_de`;
ALTER TABLE `_countries` DROP COLUMN `title_fr`;
ALTER TABLE `_countries` DROP COLUMN `title_it`;
ALTER TABLE `_countries` DROP COLUMN `title_pl`;
ALTER TABLE `_countries` DROP COLUMN `title_ja`;
ALTER TABLE `_countries` DROP COLUMN `title_lt`;
ALTER TABLE `_countries` DROP COLUMN `title_lv`;
ALTER TABLE `_countries` DROP COLUMN `title_cz`;
ALTER TABLE `_countries` CHANGE `country_id` `id` INT NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (`id`);
ALTER TABLE `_countries` CHANGE `title_ru` `title` VARCHAR(150) NOT NULL, ADD INDEX (`title`);

ALTER TABLE `_cities` DROP COLUMN `area_ru`;
ALTER TABLE `_cities` DROP COLUMN `region_ru`;
ALTER TABLE `_cities` DROP COLUMN `title_ua`;
ALTER TABLE `_cities` DROP COLUMN `area_ua`;
ALTER TABLE `_cities` DROP COLUMN `region_ua`;
ALTER TABLE `_cities` DROP COLUMN `title_be`;
ALTER TABLE `_cities` DROP COLUMN `area_be`;
ALTER TABLE `_cities` DROP COLUMN `region_be`;
ALTER TABLE `_cities` DROP COLUMN `title_en`;
ALTER TABLE `_cities` DROP COLUMN `area_en`;
ALTER TABLE `_cities` DROP COLUMN `region_en`;
ALTER TABLE `_cities` DROP COLUMN `title_es`;
ALTER TABLE `_cities` DROP COLUMN `area_es`;
ALTER TABLE `_cities` DROP COLUMN `region_es`;
ALTER TABLE `_cities` DROP COLUMN `title_pt`;
ALTER TABLE `_cities` DROP COLUMN `area_pt`;
ALTER TABLE `_cities` DROP COLUMN `region_pt`;
ALTER TABLE `_cities` DROP COLUMN `title_de`;
ALTER TABLE `_cities` DROP COLUMN `area_de`;
ALTER TABLE `_cities` DROP COLUMN `region_de`;
ALTER TABLE `_cities` DROP COLUMN `title_fr`;
ALTER TABLE `_cities` DROP COLUMN `area_fr`;
ALTER TABLE `_cities` DROP COLUMN `region_fr`;
ALTER TABLE `_cities` DROP COLUMN `title_it`;
ALTER TABLE `_cities` DROP COLUMN `area_it`;
ALTER TABLE `_cities` DROP COLUMN `region_it`;
ALTER TABLE `_cities` DROP COLUMN `title_pl`;
ALTER TABLE `_cities` DROP COLUMN `area_pl`;
ALTER TABLE `_cities` DROP COLUMN `region_pl`;
ALTER TABLE `_cities` DROP COLUMN `title_ja`;
ALTER TABLE `_cities` DROP COLUMN `area_ja`;
ALTER TABLE `_cities` DROP COLUMN `region_ja`;
ALTER TABLE `_cities` DROP COLUMN `title_lt`;
ALTER TABLE `_cities` DROP COLUMN `area_lt`;
ALTER TABLE `_cities` DROP COLUMN `region_lt`;
ALTER TABLE `_cities` DROP COLUMN `title_lv`;
ALTER TABLE `_cities` DROP COLUMN `area_lv`;
ALTER TABLE `_cities` DROP COLUMN `region_lv`;
ALTER TABLE `_cities` DROP COLUMN `title_cz`;
ALTER TABLE `_cities` DROP COLUMN `area_cz`;
ALTER TABLE `_cities` DROP COLUMN `region_cz`;
ALTER TABLE `_cities` CHANGE `city_id` `id` INT NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (`id`);
ALTER TABLE `_cities` CHANGE `title_ru` `title` VARCHAR(150) NOT NULL, ADD INDEX (`title`);
ALTER TABLE `_cities` MODIFY `important` TINYINT(1) NOT NULL;
ALTER TABLE `_cities` MODIFY `region_id` INT NOT NULL;

ALTER TABLE `_regions` ADD FOREIGN KEY (`country_id`) REFERENCES `_countries` (`id`);
ALTER TABLE `_cities` ADD FOREIGN KEY (`country_id`) REFERENCES `_countries` (`id`);
ALTER TABLE `_cities` ADD FOREIGN KEY (`region_id`) REFERENCES `_regions` (`id`);
