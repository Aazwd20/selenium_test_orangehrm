-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2023 at 08:59 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orangehrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `abstract_display_field`
--

CREATE TABLE `abstract_display_field` (
  `id` bigint(20) NOT NULL,
  `report_group_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `field_alias` varchar(255) DEFAULT NULL,
  `is_sortable` varchar(10) NOT NULL,
  `sort_order` varchar(255) DEFAULT NULL,
  `sort_field` varchar(255) DEFAULT NULL,
  `element_type` varchar(255) NOT NULL,
  `element_property` text NOT NULL,
  `width` varchar(255) NOT NULL,
  `is_exportable` varchar(10) DEFAULT NULL,
  `text_alignment_style` varchar(20) DEFAULT NULL,
  `is_value_list` tinyint(1) NOT NULL,
  `display_field_group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `is_encrypted` tinyint(1) NOT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_config`
--

CREATE TABLE `hs_hr_config` (
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hs_hr_config`
--

INSERT INTO `hs_hr_config` (`name`, `value`) VALUES
('admin.default_workshift_end_time', '17:00'),
('admin.default_workshift_start_time', '09:00'),
('admin.localization.default_date_format', 'Y-m-d'),
('admin.localization.default_language', 'en_US'),
('admin.localization.use_browser_language', 'No'),
('admin.product_type', 'os'),
('auth.password_policy.default_required_password_strength', 'strong'),
('auth.password_policy.enforce_password_strength', 'on'),
('auth.password_policy.is_spaces_allowed', 'false'),
('auth.password_policy.min_lowercase_letters', '1'),
('auth.password_policy.min_numbers_in_password', '1'),
('auth.password_policy.min_password_length', '8'),
('auth.password_policy.min_special_characters', '1'),
('auth.password_policy.min_uppercase_letters', '1'),
('authentication.status', 'Enable'),
('authorize_user_role_manager_class', 'BasicUserRoleManager'),
('base_url', 'https://marketplace.orangehrm.com'),
('csrf_secret', 'pSEdTsm9AT7Bvh0FpCFcqOGcAj3hVBruNhin0ASPbYfxW9M1i0vv2fHEWGXylrXg3lhIHTdoJClecBP3s6h21g'),
('dashboard.employees_on_leave_today.show_only_accessible', '0'),
('domain.name', 'localhost'),
('email_config.sendmail_path', '/usr/sbin/sendmail -bs'),
('help.processorClass', 'ZendeskHelpProcessor'),
('help.url', 'https://starterhelp.orangehrm.com'),
('include_supervisor_chain', 'No'),
('instance.identifier', 'VGVzdF9hc2lmbHp3ZEBnbWFpbC5jb21fQXNpZiBfQWwgWmF3YWRfbG9jYWxob3N0X0JEXzUuNV8xNjkyMzAzMDQ2'),
('instance.reg_consent', '1'),
('instance.version', '5.5.0'),
('leave.entitlement_consumption_algorithm', 'FIFOEntitlementConsumptionStrategy'),
('leave.include_pending_leave_in_balance', '1'),
('leave.leavePeriodStatus', '1'),
('leave.work_schedule_implementation', 'BasicWorkSchedule'),
('leave_period_defined', 'Yes'),
('oauth.access_token_ttl', 'PT30M'),
('oauth.auth_code_ttl', 'PT5M'),
('oauth.encryption_key', 'vkVHfOUqi6q06fvui4ie4xjqfT9hlVOfgne+vJWR3Xk='),
('oauth.refresh_token_ttl', 'P1M'),
('oauth.token_encryption_key', '851VudPHRmw4sJyj2++d0gQJz2I7RzYG69R3fZbY9gE='),
('openId.provider.added', 'on'),
('open_source_integrations', '<xml><integrations></integrations></xml>'),
('pim_show_deprecated_fields', '0'),
('themeName', 'default'),
('timesheet_period_and_start_date', '<TimesheetPeriod><PeriodType>Weekly</PeriodType><ClassName>WeeklyTimesheetPeriod</ClassName><StartDate>7</StartDate><Heading>Week</Heading></TimesheetPeriod>'),
('timesheet_period_set', 'Yes'),
('timesheet_time_format', '1');

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_country`
--

CREATE TABLE `hs_hr_country` (
  `cou_code` char(2) NOT NULL DEFAULT '',
  `name` varchar(80) NOT NULL DEFAULT '',
  `cou_name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hs_hr_country`
--

INSERT INTO `hs_hr_country` (`cou_code`, `name`, `cou_name`, `iso3`, `numcode`) VALUES
('AD', 'ANDORRA', 'Andorra', 'AND', 20),
('AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784),
('AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4),
('AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28),
('AI', 'ANGUILLA', 'Anguilla', 'AIA', 660),
('AL', 'ALBANIA', 'Albania', 'ALB', 8),
('AM', 'ARMENIA', 'Armenia', 'ARM', 51),
('AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530),
('AO', 'ANGOLA', 'Angola', 'AGO', 24),
('AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL),
('AR', 'ARGENTINA', 'Argentina', 'ARG', 32),
('AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16),
('AT', 'AUSTRIA', 'Austria', 'AUT', 40),
('AU', 'AUSTRALIA', 'Australia', 'AUS', 36),
('AW', 'ARUBA', 'Aruba', 'ABW', 533),
('AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31),
('BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70),
('BB', 'BARBADOS', 'Barbados', 'BRB', 52),
('BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50),
('BE', 'BELGIUM', 'Belgium', 'BEL', 56),
('BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854),
('BG', 'BULGARIA', 'Bulgaria', 'BGR', 100),
('BH', 'BAHRAIN', 'Bahrain', 'BHR', 48),
('BI', 'BURUNDI', 'Burundi', 'BDI', 108),
('BJ', 'BENIN', 'Benin', 'BEN', 204),
('BM', 'BERMUDA', 'Bermuda', 'BMU', 60),
('BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96),
('BO', 'BOLIVIA', 'Bolivia', 'BOL', 68),
('BR', 'BRAZIL', 'Brazil', 'BRA', 76),
('BS', 'BAHAMAS', 'Bahamas', 'BHS', 44),
('BT', 'BHUTAN', 'Bhutan', 'BTN', 64),
('BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL),
('BW', 'BOTSWANA', 'Botswana', 'BWA', 72),
('BY', 'BELARUS', 'Belarus', 'BLR', 112),
('BZ', 'BELIZE', 'Belize', 'BLZ', 84),
('CA', 'CANADA', 'Canada', 'CAN', 124),
('CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL),
('CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180),
('CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140),
('CG', 'CONGO', 'Congo', 'COG', 178),
('CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756),
('CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384),
('CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184),
('CL', 'CHILE', 'Chile', 'CHL', 152),
('CM', 'CAMEROON', 'Cameroon', 'CMR', 120),
('CN', 'CHINA', 'China', 'CHN', 156),
('CO', 'COLOMBIA', 'Colombia', 'COL', 170),
('CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188),
('CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL),
('CU', 'CUBA', 'Cuba', 'CUB', 192),
('CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132),
('CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL),
('CY', 'CYPRUS', 'Cyprus', 'CYP', 196),
('CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203),
('DE', 'GERMANY', 'Germany', 'DEU', 276),
('DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262),
('DK', 'DENMARK', 'Denmark', 'DNK', 208),
('DM', 'DOMINICA', 'Dominica', 'DMA', 212),
('DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214),
('DZ', 'ALGERIA', 'Algeria', 'DZA', 12),
('EC', 'ECUADOR', 'Ecuador', 'ECU', 218),
('EE', 'ESTONIA', 'Estonia', 'EST', 233),
('EG', 'EGYPT', 'Egypt', 'EGY', 818),
('EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732),
('ER', 'ERITREA', 'Eritrea', 'ERI', 232),
('ES', 'SPAIN', 'Spain', 'ESP', 724),
('ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231),
('FI', 'FINLAND', 'Finland', 'FIN', 246),
('FJ', 'FIJI', 'Fiji', 'FJI', 242),
('FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238),
('FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583),
('FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234),
('FR', 'FRANCE', 'France', 'FRA', 250),
('GA', 'GABON', 'Gabon', 'GAB', 266),
('GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826),
('GD', 'GRENADA', 'Grenada', 'GRD', 308),
('GE', 'GEORGIA', 'Georgia', 'GEO', 268),
('GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254),
('GH', 'GHANA', 'Ghana', 'GHA', 288),
('GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292),
('GL', 'GREENLAND', 'Greenland', 'GRL', 304),
('GM', 'GAMBIA', 'Gambia', 'GMB', 270),
('GN', 'GUINEA', 'Guinea', 'GIN', 324),
('GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312),
('GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226),
('GR', 'GREECE', 'Greece', 'GRC', 300),
('GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL),
('GT', 'GUATEMALA', 'Guatemala', 'GTM', 320),
('GU', 'GUAM', 'Guam', 'GUM', 316),
('GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624),
('GY', 'GUYANA', 'Guyana', 'GUY', 328),
('HK', 'HONG KONG', 'Hong Kong', 'HKG', 344),
('HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL),
('HN', 'HONDURAS', 'Honduras', 'HND', 340),
('HR', 'CROATIA', 'Croatia', 'HRV', 191),
('HT', 'HAITI', 'Haiti', 'HTI', 332),
('HU', 'HUNGARY', 'Hungary', 'HUN', 348),
('ID', 'INDONESIA', 'Indonesia', 'IDN', 360),
('IE', 'IRELAND', 'Ireland', 'IRL', 372),
('IL', 'ISRAEL', 'Israel', 'ISR', 376),
('IN', 'INDIA', 'India', 'IND', 356),
('IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL),
('IQ', 'IRAQ', 'Iraq', 'IRQ', 368),
('IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364),
('IS', 'ICELAND', 'Iceland', 'ISL', 352),
('IT', 'ITALY', 'Italy', 'ITA', 380),
('JM', 'JAMAICA', 'Jamaica', 'JAM', 388),
('JO', 'JORDAN', 'Jordan', 'JOR', 400),
('JP', 'JAPAN', 'Japan', 'JPN', 392),
('KE', 'KENYA', 'Kenya', 'KEN', 404),
('KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417),
('KH', 'CAMBODIA', 'Cambodia', 'KHM', 116),
('KI', 'KIRIBATI', 'Kiribati', 'KIR', 296),
('KM', 'COMOROS', 'Comoros', 'COM', 174),
('KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659),
('KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408),
('KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410),
('KW', 'KUWAIT', 'Kuwait', 'KWT', 414),
('KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136),
('KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398),
('LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418),
('LB', 'LEBANON', 'Lebanon', 'LBN', 422),
('LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662),
('LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438),
('LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144),
('LR', 'LIBERIA', 'Liberia', 'LBR', 430),
('LS', 'LESOTHO', 'Lesotho', 'LSO', 426),
('LT', 'LITHUANIA', 'Lithuania', 'LTU', 440),
('LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442),
('LV', 'LATVIA', 'Latvia', 'LVA', 428),
('LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434),
('MA', 'MOROCCO', 'Morocco', 'MAR', 504),
('MC', 'MONACO', 'Monaco', 'MCO', 492),
('MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498),
('MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450),
('MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584),
('MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807),
('ML', 'MALI', 'Mali', 'MLI', 466),
('MM', 'MYANMAR', 'Myanmar', 'MMR', 104),
('MN', 'MONGOLIA', 'Mongolia', 'MNG', 496),
('MO', 'MACAO', 'Macao', 'MAC', 446),
('MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580),
('MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474),
('MR', 'MAURITANIA', 'Mauritania', 'MRT', 478),
('MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500),
('MT', 'MALTA', 'Malta', 'MLT', 470),
('MU', 'MAURITIUS', 'Mauritius', 'MUS', 480),
('MV', 'MALDIVES', 'Maldives', 'MDV', 462),
('MW', 'MALAWI', 'Malawi', 'MWI', 454),
('MX', 'MEXICO', 'Mexico', 'MEX', 484),
('MY', 'MALAYSIA', 'Malaysia', 'MYS', 458),
('MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508),
('NA', 'NAMIBIA', 'Namibia', 'NAM', 516),
('NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540),
('NE', 'NIGER', 'Niger', 'NER', 562),
('NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574),
('NG', 'NIGERIA', 'Nigeria', 'NGA', 566),
('NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558),
('NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528),
('NO', 'NORWAY', 'Norway', 'NOR', 578),
('NP', 'NEPAL', 'Nepal', 'NPL', 524),
('NR', 'NAURU', 'Nauru', 'NRU', 520),
('NU', 'NIUE', 'Niue', 'NIU', 570),
('NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554),
('OM', 'OMAN', 'Oman', 'OMN', 512),
('PA', 'PANAMA', 'Panama', 'PAN', 591),
('PE', 'PERU', 'Peru', 'PER', 604),
('PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258),
('PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598),
('PH', 'PHILIPPINES', 'Philippines', 'PHL', 608),
('PK', 'PAKISTAN', 'Pakistan', 'PAK', 586),
('PL', 'POLAND', 'Poland', 'POL', 616),
('PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666),
('PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612),
('PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630),
('PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL),
('PT', 'PORTUGAL', 'Portugal', 'PRT', 620),
('PW', 'PALAU', 'Palau', 'PLW', 585),
('PY', 'PARAGUAY', 'Paraguay', 'PRY', 600),
('QA', 'QATAR', 'Qatar', 'QAT', 634),
('RE', 'REUNION', 'Reunion', 'REU', 638),
('RO', 'ROMANIA', 'Romania', 'ROM', 642),
('RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643),
('RW', 'RWANDA', 'Rwanda', 'RWA', 646),
('SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682),
('SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90),
('SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690),
('SD', 'SUDAN', 'Sudan', 'SDN', 736),
('SE', 'SWEDEN', 'Sweden', 'SWE', 752),
('SG', 'SINGAPORE', 'Singapore', 'SGP', 702),
('SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654),
('SI', 'SLOVENIA', 'Slovenia', 'SVN', 705),
('SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744),
('SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703),
('SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694),
('SM', 'SAN MARINO', 'San Marino', 'SMR', 674),
('SN', 'SENEGAL', 'Senegal', 'SEN', 686),
('SO', 'SOMALIA', 'Somalia', 'SOM', 706),
('SR', 'SURINAME', 'Suriname', 'SUR', 740),
('ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678),
('SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222),
('SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760),
('SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748),
('TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796),
('TD', 'CHAD', 'Chad', 'TCD', 148),
('TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL),
('TG', 'TOGO', 'Togo', 'TGO', 768),
('TH', 'THAILAND', 'Thailand', 'THA', 764),
('TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762),
('TK', 'TOKELAU', 'Tokelau', 'TKL', 772),
('TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL),
('TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795),
('TN', 'TUNISIA', 'Tunisia', 'TUN', 788),
('TO', 'TONGA', 'Tonga', 'TON', 776),
('TR', 'TURKEY', 'Turkey', 'TUR', 792),
('TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780),
('TV', 'TUVALU', 'Tuvalu', 'TUV', 798),
('TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan', 'TWN', 158),
('TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834),
('UA', 'UKRAINE', 'Ukraine', 'UKR', 804),
('UG', 'UGANDA', 'Uganda', 'UGA', 800),
('UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL),
('US', 'UNITED STATES', 'United States', 'USA', 840),
('UY', 'URUGUAY', 'Uruguay', 'URY', 858),
('UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860),
('VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336),
('VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670),
('VE', 'VENEZUELA', 'Venezuela', 'VEN', 862),
('VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92),
('VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850),
('VN', 'VIET NAM', 'Viet Nam', 'VNM', 704),
('VU', 'VANUATU', 'Vanuatu', 'VUT', 548),
('WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876),
('WS', 'SAMOA', 'Samoa', 'WSM', 882),
('YE', 'YEMEN', 'Yemen', 'YEM', 887),
('YT', 'MAYOTTE', 'Mayotte', NULL, NULL),
('ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710),
('ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894),
('ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716);

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_currency_type`
--

CREATE TABLE `hs_hr_currency_type` (
  `code` int(11) NOT NULL DEFAULT 0,
  `currency_id` char(3) NOT NULL DEFAULT '',
  `currency_name` varchar(70) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hs_hr_currency_type`
--

INSERT INTO `hs_hr_currency_type` (`code`, `currency_id`, `currency_name`) VALUES
(3, 'AED', 'Utd. Arab Emir. Dirham'),
(4, 'AFN', 'Afghanistan Afghani'),
(5, 'ALL', 'Albanian Lek'),
(6, 'ANG', 'NL Antillian Guilder'),
(7, 'AOR', 'Angolan New Kwanza'),
(177, 'ARP', 'Argentina Pesos'),
(8, 'ARS', 'Argentine Peso'),
(10, 'AUD', 'Australian Dollar'),
(11, 'AWG', 'Aruban Florin'),
(12, 'BBD', 'Barbados Dollar'),
(13, 'BDT', 'Bangladeshi Taka'),
(15, 'BGL', 'Bulgarian Lev'),
(16, 'BHD', 'Bahraini Dinar'),
(17, 'BIF', 'Burundi Franc'),
(18, 'BMD', 'Bermudian Dollar'),
(19, 'BND', 'Brunei Dollar'),
(20, 'BOB', 'Bolivian Boliviano'),
(21, 'BRL', 'Brazilian Real'),
(22, 'BSD', 'Bahamian Dollar'),
(23, 'BTN', 'Bhutan Ngultrum'),
(24, 'BWP', 'Botswana Pula'),
(25, 'BZD', 'Belize Dollar'),
(26, 'CAD', 'Canadian Dollar'),
(27, 'CHF', 'Swiss Franc'),
(28, 'CLP', 'Chilean Peso'),
(29, 'CNY', 'Chinese Yuan Renminbi'),
(30, 'COP', 'Colombian Peso'),
(31, 'CRC', 'Costa Rican Colon'),
(32, 'CUP', 'Cuban Peso'),
(33, 'CVE', 'Cape Verde Escudo'),
(34, 'CYP', 'Cyprus Pound'),
(171, 'CZK', 'Czech Koruna'),
(37, 'DJF', 'Djibouti Franc'),
(38, 'DKK', 'Danish Krona'),
(39, 'DOP', 'Dominican Peso'),
(40, 'DZD', 'Algerian Dinar'),
(41, 'ECS', 'Ecuador Sucre'),
(43, 'EEK', 'Estonian Krona'),
(44, 'EGP', 'Egyptian Pound'),
(46, 'ETB', 'Ethiopian Birr'),
(42, 'EUR', 'Euro'),
(48, 'FJD', 'Fiji Dollar'),
(49, 'FKP', 'Falkland Islands Pound'),
(51, 'GBP', 'Pound Sterling'),
(52, 'GHC', 'Ghanaian Cedi'),
(53, 'GIP', 'Gibraltar Pound'),
(54, 'GMD', 'Gambian Dalasi'),
(55, 'GNF', 'Guinea Franc'),
(57, 'GTQ', 'Guatemalan Quetzal'),
(58, 'GYD', 'Guyanan Dollar'),
(59, 'HKD', 'Hong Kong Dollar'),
(60, 'HNL', 'Honduran Lempira'),
(61, 'HRK', 'Croatian Kuna'),
(62, 'HTG', 'Haitian Gourde'),
(63, 'HUF', 'Hungarian Forint'),
(64, 'IDR', 'Indonesian Rupiah'),
(66, 'ILS', 'Israeli New Shekel'),
(67, 'INR', 'Indian Rupee'),
(68, 'IQD', 'Iraqi Dinar'),
(69, 'IRR', 'Iranian Rial'),
(70, 'ISK', 'Iceland Krona'),
(72, 'JMD', 'Jamaican Dollar'),
(73, 'JOD', 'Jordanian Dinar'),
(74, 'JPY', 'Japanese Yen'),
(75, 'KES', 'Kenyan Shilling'),
(76, 'KHR', 'Kampuchean Riel'),
(77, 'KMF', 'Comoros Franc'),
(78, 'KPW', 'North Korean Won'),
(79, 'KRW', 'Korean Won'),
(80, 'KWD', 'Kuwaiti Dinar'),
(81, 'KYD', 'Cayman Islands Dollar'),
(82, 'KZT', 'Kazakhstan Tenge'),
(83, 'LAK', 'Lao Kip'),
(84, 'LBP', 'Lebanese Pound'),
(85, 'LKR', 'Sri Lanka Rupee'),
(86, 'LRD', 'Liberian Dollar'),
(87, 'LSL', 'Lesotho Loti'),
(88, 'LTL', 'Lithuanian Litas'),
(90, 'LVL', 'Latvian Lats'),
(91, 'LYD', 'Libyan Dinar'),
(92, 'MAD', 'Moroccan Dirham'),
(93, 'MGF', 'Malagasy Franc'),
(94, 'MMK', 'Myanmar Kyat'),
(95, 'MNT', 'Mongolian Tugrik'),
(96, 'MOP', 'Macau Pataca'),
(97, 'MRO', 'Mauritanian Ouguiya'),
(98, 'MTL', 'Maltese Lira'),
(99, 'MUR', 'Mauritius Rupee'),
(100, 'MVR', 'Maldive Rufiyaa'),
(101, 'MWK', 'Malawi Kwacha'),
(102, 'MXN', 'Mexican New Peso'),
(172, 'MXP', 'Mexican Peso'),
(103, 'MYR', 'Malaysian Ringgit'),
(104, 'MZM', 'Mozambique Metical'),
(105, 'NAD', 'Namibia Dollar'),
(106, 'NGN', 'Nigerian Naira'),
(107, 'NIO', 'Nicaraguan Cordoba Oro'),
(109, 'NOK', 'Norwegian Krona'),
(110, 'NPR', 'Nepalese Rupee'),
(111, 'NZD', 'New Zealand Dollar'),
(112, 'OMR', 'Omani Rial'),
(113, 'PAB', 'Panamanian Balboa'),
(114, 'PEN', 'Peruvian Nuevo Sol'),
(115, 'PGK', 'Papua New Guinea Kina'),
(116, 'PHP', 'Philippine Peso'),
(117, 'PKR', 'Pakistan Rupee'),
(118, 'PLN', 'Polish Zloty'),
(120, 'PYG', 'Paraguay Guarani'),
(121, 'QAR', 'Qatari Rial'),
(122, 'ROL', 'Romanian Leu'),
(123, 'RUB', 'Russian Rouble'),
(180, 'RUR', 'Russia Rubles'),
(173, 'SAR', 'Saudi Arabia Riyal'),
(125, 'SBD', 'Solomon Islands Dollar'),
(126, 'SCR', 'Seychelles Rupee'),
(127, 'SDD', 'Sudanese Dinar'),
(128, 'SDP', 'Sudanese Pound'),
(129, 'SEK', 'Swedish Krona'),
(131, 'SGD', 'Singapore Dollar'),
(132, 'SHP', 'St. Helena Pound'),
(130, 'SKK', 'Slovak Koruna'),
(135, 'SLL', 'Sierra Leone Leone'),
(136, 'SOS', 'Somali Shilling'),
(137, 'SRD', 'Surinamese Dollar'),
(138, 'STD', 'Sao Tome/Principe Dobra'),
(139, 'SVC', 'El Salvador Colon'),
(140, 'SYP', 'Syrian Pound'),
(141, 'SZL', 'Swaziland Lilangeni'),
(142, 'THB', 'Thai Baht'),
(143, 'TND', 'Tunisian Dinar'),
(144, 'TOP', 'Tongan Pa\'anga'),
(145, 'TRL', 'Turkish Lira'),
(146, 'TTD', 'Trinidad/Tobago Dollar'),
(147, 'TWD', 'Taiwan Dollar'),
(148, 'TZS', 'Tanzanian Shilling'),
(149, 'UAH', 'Ukraine Hryvnia'),
(150, 'UGX', 'Uganda Shilling'),
(151, 'USD', 'United States Dollar'),
(152, 'UYP', 'Uruguayan Peso'),
(153, 'VEB', 'Venezuelan Bolivar'),
(154, 'VND', 'Vietnamese Dong'),
(155, 'VUV', 'Vanuatu Vatu'),
(156, 'WST', 'Samoan Tala'),
(158, 'XAF', 'CFA Franc BEAC'),
(159, 'XAG', 'Silver (oz.)'),
(160, 'XAU', 'Gold (oz.)'),
(161, 'XCD', 'Eastern Caribbean Dollars'),
(179, 'XDR', 'IMF Special Drawing Right'),
(162, 'XOF', 'CFA Franc BCEAO'),
(163, 'XPD', 'Palladium (oz.)'),
(164, 'XPF', 'CFP Franc'),
(165, 'XPT', 'Platinum (oz.)'),
(166, 'YER', 'Yemeni Riyal'),
(167, 'YUM', 'Yugoslavian Dinar'),
(175, 'YUN', 'Yugoslav Dinar'),
(168, 'ZAR', 'South African Rand'),
(176, 'ZMK', 'Zambian Kwacha'),
(169, 'ZRN', 'New Zaire'),
(170, 'ZWD', 'Zimbabwe Dollar');

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_custom_export`
--

CREATE TABLE `hs_hr_custom_export` (
  `export_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `fields` text DEFAULT NULL,
  `headings` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_custom_fields`
--

CREATE TABLE `hs_hr_custom_fields` (
  `field_num` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `type` int(11) NOT NULL,
  `screen` varchar(100) DEFAULT NULL,
  `extra_data` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_custom_import`
--

CREATE TABLE `hs_hr_custom_import` (
  `import_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `fields` text DEFAULT NULL,
  `has_heading` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_district`
--

CREATE TABLE `hs_hr_district` (
  `district_code` varchar(13) NOT NULL DEFAULT '',
  `district_name` varchar(50) DEFAULT NULL,
  `province_code` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_employee`
--

CREATE TABLE `hs_hr_employee` (
  `emp_number` int(11) NOT NULL,
  `employee_id` varchar(50) DEFAULT NULL,
  `emp_lastname` varchar(100) NOT NULL DEFAULT '',
  `emp_firstname` varchar(100) NOT NULL DEFAULT '',
  `emp_middle_name` varchar(100) NOT NULL DEFAULT '',
  `emp_nick_name` varchar(100) DEFAULT '',
  `emp_smoker` smallint(6) DEFAULT 0,
  `ethnic_race_code` varchar(13) DEFAULT NULL,
  `emp_birthday` date DEFAULT NULL,
  `nation_code` int(4) DEFAULT NULL,
  `emp_gender` smallint(6) DEFAULT NULL,
  `emp_marital_status` varchar(20) DEFAULT NULL,
  `emp_ssn_num` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `emp_sin_num` varchar(100) DEFAULT '',
  `emp_other_id` varchar(100) DEFAULT '',
  `emp_dri_lice_num` varchar(100) DEFAULT '',
  `emp_dri_lice_exp_date` date DEFAULT NULL,
  `emp_military_service` varchar(100) DEFAULT '',
  `emp_status` int(13) DEFAULT NULL,
  `job_title_code` int(7) DEFAULT NULL,
  `eeo_cat_code` int(11) DEFAULT NULL,
  `work_station` int(6) DEFAULT NULL,
  `emp_street1` varchar(100) DEFAULT '',
  `emp_street2` varchar(100) DEFAULT '',
  `city_code` varchar(100) DEFAULT '',
  `coun_code` varchar(100) DEFAULT '',
  `provin_code` varchar(100) DEFAULT '',
  `emp_zipcode` varchar(20) DEFAULT NULL,
  `emp_hm_telephone` varchar(50) DEFAULT NULL,
  `emp_mobile` varchar(50) DEFAULT NULL,
  `emp_work_telephone` varchar(50) DEFAULT NULL,
  `emp_work_email` varchar(50) DEFAULT NULL,
  `sal_grd_code` varchar(13) DEFAULT NULL,
  `joined_date` date DEFAULT NULL,
  `emp_oth_email` varchar(50) DEFAULT NULL,
  `termination_id` int(4) DEFAULT NULL,
  `custom1` varchar(250) DEFAULT NULL,
  `custom2` varchar(250) DEFAULT NULL,
  `custom3` varchar(250) DEFAULT NULL,
  `custom4` varchar(250) DEFAULT NULL,
  `custom5` varchar(250) DEFAULT NULL,
  `custom6` varchar(250) DEFAULT NULL,
  `custom7` varchar(250) DEFAULT NULL,
  `custom8` varchar(250) DEFAULT NULL,
  `custom9` varchar(250) DEFAULT NULL,
  `custom10` varchar(250) DEFAULT NULL,
  `purged_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hs_hr_employee`
--

INSERT INTO `hs_hr_employee` (`emp_number`, `employee_id`, `emp_lastname`, `emp_firstname`, `emp_middle_name`, `emp_nick_name`, `emp_smoker`, `ethnic_race_code`, `emp_birthday`, `nation_code`, `emp_gender`, `emp_marital_status`, `emp_ssn_num`, `emp_sin_num`, `emp_other_id`, `emp_dri_lice_num`, `emp_dri_lice_exp_date`, `emp_military_service`, `emp_status`, `job_title_code`, `eeo_cat_code`, `work_station`, `emp_street1`, `emp_street2`, `city_code`, `coun_code`, `provin_code`, `emp_zipcode`, `emp_hm_telephone`, `emp_mobile`, `emp_work_telephone`, `emp_work_email`, `sal_grd_code`, `joined_date`, `emp_oth_email`, `termination_id`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`, `purged_at`) VALUES
(1, '0001', 'Al Zawad', 'Asif ', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, 'asiflzwd@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '0002', 'ONE', 'employe', 'x', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, 'Abbey', 'Kayla', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, 'Abel', 'Ashley', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, 'Abbot', 'Kaitlyn', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, 'Abrams', 'Alice', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 'Abelard', 'Alina', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, 'Abernathy', 'Amy', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, 'Ackerman', 'Anthony', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, 'Ackley', 'Aaron', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, 'Acosta', 'Alicia', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, 'Acton', 'Anna', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, 'Adams', 'Alex', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, 'Adcock', 'Ava', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, 'Addison', 'Adam', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, 'Acheson', 'Audrey', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, 'Acker', 'Avery', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, 'Ackerman', 'Andrew', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, 'Ackles', 'Ariana', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, 'Acosta', 'Aiden', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, 'Acuna', 'Aaron', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, 'Acres', 'Aileen', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, 'Adair', 'Adrian', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, 'Adams', 'Alexis', '', '', 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_attachment`
--

CREATE TABLE `hs_hr_emp_attachment` (
  `emp_number` int(7) NOT NULL DEFAULT 0,
  `eattach_id` int(11) NOT NULL DEFAULT 0,
  `eattach_desc` varchar(200) DEFAULT NULL,
  `eattach_filename` varchar(100) DEFAULT NULL,
  `eattach_size` int(11) DEFAULT 0,
  `eattach_attachment` mediumblob DEFAULT NULL,
  `eattach_type` varchar(200) DEFAULT NULL,
  `screen` varchar(100) DEFAULT '',
  `attached_by` int(11) DEFAULT NULL,
  `attached_by_name` varchar(200) DEFAULT NULL,
  `attached_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_basicsalary`
--

CREATE TABLE `hs_hr_emp_basicsalary` (
  `id` int(11) NOT NULL,
  `emp_number` int(7) NOT NULL DEFAULT 0,
  `sal_grd_code` int(11) DEFAULT NULL,
  `currency_id` varchar(6) NOT NULL DEFAULT '',
  `ebsal_basic_salary` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `payperiod_code` varchar(13) DEFAULT NULL,
  `salary_component` varchar(100) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_children`
--

CREATE TABLE `hs_hr_emp_children` (
  `emp_number` int(7) NOT NULL DEFAULT 0,
  `ec_seqno` decimal(2,0) NOT NULL DEFAULT 0,
  `ec_name` varchar(100) DEFAULT '',
  `ec_date_of_birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_contract_extend`
--

CREATE TABLE `hs_hr_emp_contract_extend` (
  `emp_number` int(7) NOT NULL DEFAULT 0,
  `econ_extend_id` decimal(10,0) NOT NULL DEFAULT 0,
  `econ_extend_start_date` datetime DEFAULT NULL,
  `econ_extend_end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_dependents`
--

CREATE TABLE `hs_hr_emp_dependents` (
  `emp_number` int(7) NOT NULL DEFAULT 0,
  `ed_seqno` decimal(2,0) NOT NULL DEFAULT 0,
  `ed_name` varchar(100) DEFAULT '',
  `ed_relationship_type` enum('child','other') DEFAULT NULL,
  `ed_relationship` varchar(100) DEFAULT '',
  `ed_date_of_birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_directdebit`
--

CREATE TABLE `hs_hr_emp_directdebit` (
  `id` int(11) NOT NULL,
  `salary_id` int(11) NOT NULL,
  `dd_routing_num` int(9) NOT NULL,
  `dd_account` varchar(100) NOT NULL DEFAULT '',
  `dd_amount` decimal(11,2) NOT NULL,
  `dd_account_type` varchar(20) NOT NULL DEFAULT '' COMMENT 'CHECKING, SAVINGS',
  `dd_transaction_type` varchar(20) NOT NULL DEFAULT '' COMMENT 'BLANK, PERC, FLAT, FLATMINUS'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_emergency_contacts`
--

CREATE TABLE `hs_hr_emp_emergency_contacts` (
  `emp_number` int(7) NOT NULL DEFAULT 0,
  `eec_seqno` decimal(2,0) NOT NULL DEFAULT 0,
  `eec_name` varchar(100) DEFAULT '',
  `eec_relationship` varchar(100) DEFAULT '',
  `eec_home_no` varchar(100) DEFAULT '',
  `eec_mobile_no` varchar(100) DEFAULT '',
  `eec_office_no` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_history_of_ealier_pos`
--

CREATE TABLE `hs_hr_emp_history_of_ealier_pos` (
  `emp_number` int(7) NOT NULL DEFAULT 0,
  `emp_seqno` decimal(2,0) NOT NULL DEFAULT 0,
  `ehoep_job_title` varchar(100) DEFAULT '',
  `ehoep_years` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_language`
--

CREATE TABLE `hs_hr_emp_language` (
  `emp_number` int(7) NOT NULL DEFAULT 0,
  `lang_id` int(11) NOT NULL,
  `fluency` smallint(6) NOT NULL DEFAULT 0,
  `competency` smallint(6) DEFAULT 0,
  `comments` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_locations`
--

CREATE TABLE `hs_hr_emp_locations` (
  `emp_number` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_member_detail`
--

CREATE TABLE `hs_hr_emp_member_detail` (
  `emp_number` int(7) NOT NULL DEFAULT 0,
  `membship_code` int(6) NOT NULL DEFAULT 0,
  `ememb_subscript_ownership` varchar(20) DEFAULT NULL,
  `ememb_subscript_amount` decimal(15,2) DEFAULT NULL,
  `ememb_subs_currency` varchar(20) DEFAULT NULL,
  `ememb_commence_date` date DEFAULT NULL,
  `ememb_renewal_date` date DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_passport`
--

CREATE TABLE `hs_hr_emp_passport` (
  `emp_number` int(7) NOT NULL DEFAULT 0,
  `ep_seqno` decimal(2,0) NOT NULL DEFAULT 0,
  `ep_passport_num` varchar(100) NOT NULL DEFAULT '',
  `ep_passportissueddate` datetime DEFAULT NULL,
  `ep_passportexpiredate` datetime DEFAULT NULL,
  `ep_comments` varchar(255) DEFAULT NULL,
  `ep_passport_type_flg` smallint(6) DEFAULT NULL,
  `ep_i9_status` varchar(100) DEFAULT '',
  `ep_i9_review_date` date DEFAULT NULL,
  `cou_code` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_picture`
--

CREATE TABLE `hs_hr_emp_picture` (
  `emp_number` int(7) NOT NULL DEFAULT 0,
  `epic_picture` mediumblob DEFAULT NULL,
  `epic_filename` varchar(100) DEFAULT NULL,
  `epic_type` varchar(50) DEFAULT NULL,
  `epic_file_size` varchar(20) DEFAULT NULL,
  `epic_file_width` varchar(20) DEFAULT NULL,
  `epic_file_height` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_reportto`
--

CREATE TABLE `hs_hr_emp_reportto` (
  `erep_sup_emp_number` int(7) NOT NULL DEFAULT 0,
  `erep_sub_emp_number` int(7) NOT NULL DEFAULT 0,
  `erep_reporting_mode` int(7) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_skill`
--

CREATE TABLE `hs_hr_emp_skill` (
  `emp_number` int(7) NOT NULL DEFAULT 0,
  `skill_id` int(11) NOT NULL,
  `years_of_exp` decimal(2,0) DEFAULT NULL,
  `comments` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_us_tax`
--

CREATE TABLE `hs_hr_emp_us_tax` (
  `emp_number` int(7) NOT NULL DEFAULT 0,
  `tax_federal_status` varchar(13) DEFAULT NULL,
  `tax_federal_exceptions` int(2) DEFAULT 0,
  `tax_state` varchar(13) DEFAULT NULL,
  `tax_state_status` varchar(13) DEFAULT NULL,
  `tax_state_exceptions` int(2) DEFAULT 0,
  `tax_unemp_state` varchar(13) DEFAULT NULL,
  `tax_work_state` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_emp_work_experience`
--

CREATE TABLE `hs_hr_emp_work_experience` (
  `emp_number` int(7) NOT NULL DEFAULT 0,
  `eexp_seqno` decimal(10,0) NOT NULL DEFAULT 0,
  `eexp_employer` varchar(100) DEFAULT NULL,
  `eexp_jobtit` varchar(120) DEFAULT NULL,
  `eexp_from_date` datetime DEFAULT NULL,
  `eexp_to_date` datetime DEFAULT NULL,
  `eexp_comments` varchar(200) DEFAULT NULL,
  `eexp_internal` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_jobtit_empstat`
--

CREATE TABLE `hs_hr_jobtit_empstat` (
  `jobtit_code` int(7) NOT NULL,
  `estat_code` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_mailnotifications`
--

CREATE TABLE `hs_hr_mailnotifications` (
  `user_id` int(20) NOT NULL,
  `notification_type_id` int(11) NOT NULL,
  `status` int(2) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_module`
--

CREATE TABLE `hs_hr_module` (
  `mod_id` varchar(36) NOT NULL DEFAULT '',
  `name` varchar(45) DEFAULT NULL,
  `owner` varchar(45) DEFAULT NULL,
  `owner_email` varchar(100) DEFAULT NULL,
  `version` varchar(36) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hs_hr_module`
--

INSERT INTO `hs_hr_module` (`mod_id`, `name`, `owner`, `owner_email`, `version`, `description`) VALUES
('MOD001', 'Admin', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'HR Admin'),
('MOD002', 'PIM', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'HR Functions'),
('MOD004', 'Report', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'Reporting'),
('MOD005', 'Leave', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'Leave Tracking'),
('MOD006', 'Time', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'Time Tracking'),
('MOD007', 'Benefits', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'Benefits Tracking'),
('MOD008', 'Recruitment', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'Recruitment'),
('MOD009', 'Performance', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'Performance');

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_payperiod`
--

CREATE TABLE `hs_hr_payperiod` (
  `payperiod_code` varchar(13) NOT NULL DEFAULT '',
  `payperiod_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hs_hr_payperiod`
--

INSERT INTO `hs_hr_payperiod` (`payperiod_code`, `payperiod_name`) VALUES
('1', 'Weekly'),
('2', 'Bi Weekly'),
('3', 'Semi Monthly'),
('4', 'Monthly'),
('5', 'Monthly on first pay of month.'),
('6', 'Hourly');

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_pay_period`
--

CREATE TABLE `hs_hr_pay_period` (
  `id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `close_date` date NOT NULL,
  `check_date` date NOT NULL,
  `timesheet_aproval_due_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_province`
--

CREATE TABLE `hs_hr_province` (
  `id` int(11) NOT NULL,
  `province_name` varchar(40) NOT NULL DEFAULT '',
  `province_code` char(2) NOT NULL DEFAULT '',
  `cou_code` char(2) NOT NULL DEFAULT 'us'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hs_hr_province`
--

INSERT INTO `hs_hr_province` (`id`, `province_name`, `province_code`, `cou_code`) VALUES
(1, 'Alaska', 'AK', 'US'),
(2, 'Alabama', 'AL', 'US'),
(3, 'American Samoa', 'AS', 'US'),
(4, 'Arizona', 'AZ', 'US'),
(5, 'Arkansas', 'AR', 'US'),
(6, 'California', 'CA', 'US'),
(7, 'Colorado', 'CO', 'US'),
(8, 'Connecticut', 'CT', 'US'),
(9, 'Delaware', 'DE', 'US'),
(10, 'District of Columbia', 'DC', 'US'),
(11, 'Federated States of Micronesia', 'FM', 'US'),
(12, 'Florida', 'FL', 'US'),
(13, 'Georgia', 'GA', 'US'),
(14, 'Guam', 'GU', 'US'),
(15, 'Hawaii', 'HI', 'US'),
(16, 'Idaho', 'ID', 'US'),
(17, 'Illinois', 'IL', 'US'),
(18, 'Indiana', 'IN', 'US'),
(19, 'Iowa', 'IA', 'US'),
(20, 'Kansas', 'KS', 'US'),
(21, 'Kentucky', 'KY', 'US'),
(22, 'Louisiana', 'LA', 'US'),
(23, 'Maine', 'ME', 'US'),
(24, 'Marshall Islands', 'MH', 'US'),
(25, 'Maryland', 'MD', 'US'),
(26, 'Massachusetts', 'MA', 'US'),
(27, 'Michigan', 'MI', 'US'),
(28, 'Minnesota', 'MN', 'US'),
(29, 'Mississippi', 'MS', 'US'),
(30, 'Missouri', 'MO', 'US'),
(31, 'Montana', 'MT', 'US'),
(32, 'Nebraska', 'NE', 'US'),
(33, 'Nevada', 'NV', 'US'),
(34, 'New Hampshire', 'NH', 'US'),
(35, 'New Jersey', 'NJ', 'US'),
(36, 'New Mexico', 'NM', 'US'),
(37, 'New York', 'NY', 'US'),
(38, 'North Carolina', 'NC', 'US'),
(39, 'North Dakota', 'ND', 'US'),
(40, 'Northern Mariana Islands', 'MP', 'US'),
(41, 'Ohio', 'OH', 'US'),
(42, 'Oklahoma', 'OK', 'US'),
(43, 'Oregon', 'OR', 'US'),
(44, 'Palau', 'PW', 'US'),
(45, 'Pennsylvania', 'PA', 'US'),
(46, 'Puerto Rico', 'PR', 'US'),
(47, 'Rhode Island', 'RI', 'US'),
(48, 'South Carolina', 'SC', 'US'),
(49, 'South Dakota', 'SD', 'US'),
(50, 'Tennessee', 'TN', 'US'),
(51, 'Texas', 'TX', 'US'),
(52, 'Utah', 'UT', 'US'),
(53, 'Vermont', 'VT', 'US'),
(54, 'Virgin Islands', 'VI', 'US'),
(55, 'Virginia', 'VA', 'US'),
(56, 'Washington', 'WA', 'US'),
(57, 'West Virginia', 'WV', 'US'),
(58, 'Wisconsin', 'WI', 'US'),
(59, 'Wyoming', 'WY', 'US'),
(60, 'Armed Forces Africa', 'AE', 'US'),
(61, 'Armed Forces Americas (except Canada)', 'AA', 'US'),
(62, 'Armed Forces Canada', 'AE', 'US'),
(63, 'Armed Forces Europe', 'AE', 'US'),
(64, 'Armed Forces Middle East', 'AE', 'US'),
(65, 'Armed Forces Pacific', 'AP', 'US');

-- --------------------------------------------------------

--
-- Table structure for table `hs_hr_unique_id`
--

CREATE TABLE `hs_hr_unique_id` (
  `id` int(11) NOT NULL,
  `last_id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(50) NOT NULL,
  `field_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hs_hr_unique_id`
--

INSERT INTO `hs_hr_unique_id` (`id`, `last_id`, `table_name`, `field_name`) VALUES
(1, 2, 'hs_hr_employee', 'emp_number'),
(2, 6, 'hs_hr_module', 'mod_id'),
(3, 0, 'hs_hr_leave', 'leave_id'),
(4, 0, 'hs_hr_leavetype', 'leave_type_id'),
(5, 0, 'hs_hr_leave_requests', 'leave_request_id'),
(6, 0, 'hs_hr_custom_export', 'export_id'),
(7, 0, 'hs_hr_custom_import', 'import_id'),
(8, 0, 'hs_hr_pay_period', 'id'),
(9, 0, 'hs_hr_kpi', 'id'),
(10, 0, 'hs_hr_performance_review', 'id'),
(11, 2, 'ohrm_emp_reporting_method', 'reporting_method_id'),
(12, 0, 'ohrm_timesheet', 'timesheet_id'),
(13, 0, 'ohrm_timesheet_action_log', 'timesheet_action_log_id'),
(14, 0, 'ohrm_timesheet_item', 'timesheet_item_id'),
(15, 0, 'ohrm_attendance_record', 'id'),
(16, 0, 'ohrm_job_vacancy', 'id'),
(17, 0, 'ohrm_job_candidate', 'id'),
(18, 106, 'ohrm_workflow_state_machine', 'id'),
(19, 0, 'ohrm_job_candidate_attachment', 'id'),
(20, 0, 'ohrm_job_vacancy_attachment', 'id'),
(21, 0, 'ohrm_job_candidate_vacancy', 'id'),
(22, 0, 'ohrm_job_candidate_history', 'id'),
(23, 0, 'ohrm_job_interview', 'id');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_advanced_report`
--

CREATE TABLE `ohrm_advanced_report` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `definition` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_advanced_report`
--

INSERT INTO `ohrm_advanced_report` (`id`, `name`, `definition`) VALUES
(1, 'Leave Entitlements and Usage Report', '\n<report>\n    <settings>\n        <csv>\n            <include_group_header>1</include_group_header>\n            <include_header>1</include_header>\n        </csv>\n    </settings>\n<filter_fields>\n	<input_field type=\"text\" name=\"empNumber\" label=\"Employee Number\"></input_field>\n	<input_field type=\"text\" name=\"fromDate\" label=\"From\"></input_field>\n        <input_field type=\"text\" name=\"toDate\" label=\"To\"></input_field>\n        <input_field type=\"text\" name=\"asOfDate\" label=\"AsOf\"></input_field>\n</filter_fields> \n\n<sub_report type=\"sql\" name=\"mainTable\">       \n    <query>FROM ohrm_leave_type WHERE (deleted = 0) OR (SELECT count(l.id) FROM ohrm_leave l WHERE l.status = 3 AND l.leave_type_id = ohrm_leave_type.id) > 0 ORDER BY ohrm_leave_type.id</query>\n    <id_field>leaveTypeId</id_field>\n    <display_groups>\n        <display_group name=\"leavetype\" type=\"one\" display=\"true\">\n            <group_header></group_header>\n            <fields>\n                <field display=\"false\">\n                    <field_name>ohrm_leave_type.id</field_name>\n                    <field_alias>leaveTypeId</field_alias>\n                    <display_name>Leave Type ID</display_name>\n                    <width>1</width>	\n                </field>   \n                <field display=\"false\">\n                    <field_name>ohrm_leave_type.exclude_in_reports_if_no_entitlement</field_name>\n                    <field_alias>exclude_if_no_entitlement</field_alias>\n                    <display_name>Exclude</display_name>\n                    <width>1</width>	\n                </field>  \n                <field display=\"false\">\n                    <field_name>ohrm_leave_type.deleted</field_name>\n                    <field_alias>leave_type_deleted</field_alias>\n                    <display_name>Leave Type Deleted</display_name>\n                    <width>1</width>	\n                </field>  \n                <field display=\"true\">\n                    <field_name>ohrm_leave_type.name</field_name>\n                    <field_alias>leaveType</field_alias>\n                    <display_name>Leave Type</display_name>\n                    <width>160</width>	\n                </field>s                                                                                                     \n            </fields>\n        </display_group>\n    </display_groups> \n</sub_report>\n\n<sub_report type=\"sql\" name=\"entitlementsTotal\">\n                    <query>\n\nFROM (\nSELECT ohrm_leave_entitlement.id as id, \n       ohrm_leave_entitlement.leave_type_id as leave_type_id,\n       ohrm_leave_entitlement.no_of_days as no_of_days,\n       sum(IF(ohrm_leave.status = 2, ohrm_leave_leave_entitlement.length_days, 0)) AS scheduled,\n       sum(IF(ohrm_leave.status = 3, ohrm_leave_leave_entitlement.length_days, 0)) AS taken\n       \nFROM ohrm_leave_entitlement LEFT JOIN ohrm_leave_leave_entitlement ON\n    ohrm_leave_entitlement.id = ohrm_leave_leave_entitlement.entitlement_id\n    LEFT JOIN ohrm_leave ON ohrm_leave.id = ohrm_leave_leave_entitlement.leave_id AND \n    ( $X{&gt;,ohrm_leave.date,toDate} OR $X{&lt;,ohrm_leave.date,fromDate} )\n\nWHERE ohrm_leave_entitlement.deleted=0 AND $X{=,ohrm_leave_entitlement.emp_number,empNumber} AND \n    $X{IN,ohrm_leave_entitlement.leave_type_id,leaveTypeId} AND\n    (\n      ( $X{&lt;=,ohrm_leave_entitlement.from_date,fromDate} AND $X{&gt;=,ohrm_leave_entitlement.to_date,fromDate} ) OR\n      ( $X{&lt;=,ohrm_leave_entitlement.from_date,toDate} AND $X{&gt;=,ohrm_leave_entitlement.to_date,toDate} ) OR \n      ( $X{&gt;=,ohrm_leave_entitlement.from_date,fromDate} AND $X{&lt;=,ohrm_leave_entitlement.to_date,toDate} ) \n    )\n    \nGROUP BY ohrm_leave_entitlement.id\n) AS A\n\nGROUP BY A.leave_type_id\nORDER BY A.leave_type_id\n\n</query>\n    <id_field>leaveTypeId</id_field>\n    <display_groups>\n            <display_group name=\"g2\" type=\"one\" display=\"true\">\n                <group_header></group_header>\n                <fields>\n                    <field display=\"false\">\n                        <field_name>A.leave_type_id</field_name>\n                        <field_alias>leaveTypeId</field_alias>\n                        <display_name>Leave Type ID</display_name>\n                        <width>1</width>\n                    </field>                                \n                    <field display=\"true\">\n                        <field_name>sum(A.no_of_days) - sum(A.scheduled) - sum(A.taken)</field_name>\n                        <field_alias>entitlement_total</field_alias>\n                        <display_name>Leave Entitlements (Days)</display_name>\n                        <width>120</width>\n                        <align>right</align>\n                        <link>leave/viewLeaveEntitlements?empNumber=$P{empNumber}&amp;fromDate=$P{fromDate}&amp;toDate=$P{toDate}&amp;leaveTypeId=$P{leaveTypeId}&amp;stddate=1</link>\n                    </field>                                \n                </fields>\n            </display_group>\n    </display_groups>\n</sub_report>\n\n<sub_report type=\"sql\" name=\"pendingQuery\">\n<query>\nFROM ohrm_leave_type LEFT JOIN \nohrm_leave ON ohrm_leave_type.id = ohrm_leave.leave_type_id AND\n$X{=,ohrm_leave.emp_number,empNumber} AND\nohrm_leave.status = 1 AND\n$X{&gt;=,ohrm_leave.date,fromDate} AND $X{&lt;=,ohrm_leave.date,toDate}\nWHERE\nohrm_leave_type.deleted = 0 AND\n$X{IN,ohrm_leave_type.id,leaveTypeId}\n\nGROUP BY ohrm_leave_type.id\nORDER BY ohrm_leave_type.id\n</query>\n    <id_field>leaveTypeId</id_field>\n    <display_groups>\n            <display_group name=\"g6\" type=\"one\" display=\"true\">\n                <group_header></group_header>\n                <fields>\n                    <field display=\"false\">\n                        <field_name>ohrm_leave_type.id</field_name>\n                        <field_alias>leaveTypeId</field_alias>\n                        <display_name>Leave Type ID</display_name>\n                        <width>1</width>\n                    </field>                                \n                    <field display=\"true\">\n                        <field_name>sum(length_days)</field_name>\n                        <field_alias>pending</field_alias>\n                        <display_name>Leave Pending Approval (Days)</display_name>\n                        <width>120</width>\n                        <align>right</align>\n                        <link>leave/viewLeaveList?empNumber=$P{empNumber}&amp;fromDate=$P{fromDate}&amp;toDate=$P{toDate}&amp;leaveTypeId=$P{leaveTypeId}&amp;status=1&amp;stddate=1</link>\n                    </field>                                \n                </fields>\n            </display_group>\n    </display_groups>\n    </sub_report>\n\n<sub_report type=\"sql\" name=\"scheduledQuery\">\n<query>\nFROM ohrm_leave_type LEFT JOIN \nohrm_leave ON ohrm_leave_type.id = ohrm_leave.leave_type_id AND\n$X{=,ohrm_leave.emp_number,empNumber} AND\nohrm_leave.status = 2 AND\n$X{&gt;=,ohrm_leave.date,fromDate} AND $X{&lt;=,ohrm_leave.date,toDate}\nWHERE\nohrm_leave_type.deleted = 0 AND\n$X{IN,ohrm_leave_type.id,leaveTypeId}\n\nGROUP BY ohrm_leave_type.id\nORDER BY ohrm_leave_type.id\n</query>\n    <id_field>leaveTypeId</id_field>\n    <display_groups>\n            <display_group name=\"g5\" type=\"one\" display=\"true\">\n                <group_header></group_header>\n                <fields>\n                    <field display=\"false\">\n                        <field_name>ohrm_leave_type.id</field_name>\n                        <field_alias>leaveTypeId</field_alias>\n                        <display_name>Leave Type ID</display_name>\n                        <width>1</width>\n                    </field>                                \n                    <field display=\"true\">\n                        <field_name>sum(length_days)</field_name>\n                        <field_alias>scheduled</field_alias>\n                        <display_name>Leave Scheduled (Days)</display_name>\n                        <width>120</width>\n                        <align>right</align>\n                        <link>leave/viewLeaveList?empNumber=$P{empNumber}&amp;fromDate=$P{fromDate}&amp;toDate=$P{toDate}&amp;leaveTypeId=$P{leaveTypeId}&amp;status=2&amp;stddate=1</link>\n                    </field>                                \n                </fields>\n            </display_group>\n    </display_groups>\n    </sub_report>\n\n<sub_report type=\"sql\" name=\"takenQuery\">\n<query>\nFROM ohrm_leave WHERE $X{=,emp_number,empNumber} AND\nstatus = 3 AND\n$X{IN,ohrm_leave.leave_type_id,leaveTypeId} AND\n$X{&gt;=,ohrm_leave.date,fromDate} AND $X{&lt;=,ohrm_leave.date,toDate}\nGROUP BY leave_type_id\nORDER BY ohrm_leave.leave_type_id\n</query>\n    <id_field>leaveTypeId</id_field>\n    <display_groups>\n            <display_group name=\"g4\" type=\"one\" display=\"true\">\n                <group_header></group_header>\n                <fields>\n                    <field display=\"false\">\n                        <field_name>ohrm_leave.leave_type_id</field_name>\n                        <field_alias>leaveTypeId</field_alias>\n                        <display_name>Leave Type ID</display_name>\n                        <width>1</width>\n                    </field>                                \n                    <field display=\"true\">\n                        <field_name>sum(length_days)</field_name>\n                        <field_alias>taken</field_alias>\n                        <display_name>Leave Taken (Days)</display_name>\n                        <width>120</width>\n                        <align>right</align>\n                        <link>leave/viewLeaveList?empNumber=$P{empNumber}&amp;fromDate=$P{fromDate}&amp;toDate=$P{toDate}&amp;leaveTypeId=$P{leaveTypeId}&amp;status=3&amp;stddate=1</link>\n                    </field>                                \n                </fields>\n            </display_group>\n    </display_groups>\n    </sub_report>\n\n<sub_report type=\"sql\" name=\"unused\">       \n    <query>FROM ohrm_leave_type WHERE deleted = 0 AND $X{IN,ohrm_leave_type.id,leaveTypeId} ORDER BY ohrm_leave_type.id</query>\n    <id_field>leaveTypeId</id_field>\n    <display_groups>\n        <display_group name=\"unused\" type=\"one\" display=\"true\">\n            <group_header></group_header>\n            <fields>\n                <field display=\"false\">\n                    <field_name>ohrm_leave_type.id</field_name>\n                    <field_alias>leaveTypeId</field_alias>\n                    <display_name>Leave Type ID</display_name>\n                    <width>1</width>	\n                </field>   \n                <field display=\"true\">\n                    <field_name>ohrm_leave_type.name</field_name>\n                    <field_alias>unused</field_alias>\n                    <display_name>Leave Balance (Days)</display_name>\n                    <width>160</width>	\n                    <align>right</align>\n                </field>                                                                                                     \n            </fields>\n        </display_group>\n    </display_groups> \n</sub_report>\n\n\n    <join>             \n        <join_by sub_report=\"mainTable\" id=\"leaveTypeId\"></join_by>              \n        <join_by sub_report=\"entitlementsTotal\" id=\"leaveTypeId\"></join_by> \n        <join_by sub_report=\"pendingQuery\" id=\"leaveTypeId\"></join_by>  \n        <join_by sub_report=\"scheduledQuery\" id=\"leaveTypeId\"></join_by>  \n        <join_by sub_report=\"takenQuery\" id=\"leaveTypeId\"></join_by>  \n        <join_by sub_report=\"unused\" id=\"leaveTypeId\"></join_by>  \n\n    </join>\n    <page_limit>100</page_limit>        \n</report>'),
(2, 'Leave Entitlements and Usage Report', '\n<report>\n    <settings>\n        <csv>\n            <include_group_header>1</include_group_header>\n            <include_header>1</include_header>\n        </csv>\n    </settings>\n<filter_fields>\n	<input_field type=\"text\" name=\"leaveType\" label=\"Leave Type\"></input_field>\n	<input_field type=\"text\" name=\"fromDate\" label=\"From\"></input_field>\n        <input_field type=\"text\" name=\"toDate\" label=\"To\"></input_field>\n        <input_field type=\"text\" name=\"asOfDate\" label=\"AsOf\"></input_field>\n        <input_field type=\"text\" name=\"emp_numbers\" label=\"employees\"></input_field>\n        <input_field type=\"text\" name=\"job_title\" label=\"Job Title\"></input_field>\n        <input_field type=\"text\" name=\"location\" label=\"Location\"></input_field>\n        <input_field type=\"text\" name=\"sub_unit\" label=\"Sub Unit\"></input_field>\n        <input_field type=\"text\" name=\"terminated\" label=\"Terminated\"></input_field>\n</filter_fields> \n\n<sub_report type=\"sql\" name=\"mainTable\">       \n    <query>FROM hs_hr_employee \n    LEFT JOIN hs_hr_emp_locations ON hs_hr_employee.emp_number = hs_hr_emp_locations.emp_number\n    WHERE $X{IN,hs_hr_employee.emp_number,emp_numbers} \n    AND $X{=,hs_hr_employee.job_title_code,job_title}\n    AND $X{IN,hs_hr_employee.work_station,sub_unit}\n    AND $X{IN,hs_hr_emp_locations.location_id,location}\n    AND $X{IS NULL,hs_hr_employee.termination_id,terminated}\n    ORDER BY hs_hr_employee.emp_lastname</query>\n    <id_field>empNumber</id_field>\n    <display_groups>\n        <display_group name=\"personalDetails\" type=\"one\" display=\"true\">\n            <group_header></group_header>\n            <fields>\n                <field display=\"false\">\n                    <field_name>hs_hr_employee.emp_number</field_name>\n                    <field_alias>empNumber</field_alias>\n                    <display_name>Employee Number</display_name>\n                    <width>1</width>	\n                </field>                \n                <field display=\"false\">\n                    <field_name>hs_hr_employee.termination_id</field_name>\n                    <field_alias>termination_id</field_alias>\n                    <display_name>Termination ID</display_name>\n                    <width>1</width>	\n                </field>   \n                <field display=\"true\">\n                    <field_name>CONCAT(hs_hr_employee.emp_firstname, \' \', hs_hr_employee.emp_lastname)</field_name>\n                    <field_alias>employeeName</field_alias>\n                    <display_name>Employee</display_name>\n                    <width>150</width>\n                </field>                                                                                               \n            </fields>\n        </display_group>\n    </display_groups> \n</sub_report>\n\n<sub_report type=\"sql\" name=\"entitlementsTotal\">\n                    <query>\n\nFROM (\nSELECT ohrm_leave_entitlement.id as id, \n       ohrm_leave_entitlement.emp_number as emp_number,\n       ohrm_leave_entitlement.no_of_days as no_of_days,\n       sum(IF(ohrm_leave.status = 2, ohrm_leave_leave_entitlement.length_days, 0)) AS scheduled,\n       sum(IF(ohrm_leave.status = 3, ohrm_leave_leave_entitlement.length_days, 0)) AS taken\n       \nFROM ohrm_leave_entitlement LEFT JOIN ohrm_leave_leave_entitlement ON\n    ohrm_leave_entitlement.id = ohrm_leave_leave_entitlement.entitlement_id\n    LEFT JOIN ohrm_leave ON ohrm_leave.id = ohrm_leave_leave_entitlement.leave_id AND \n    ( $X{&gt;,ohrm_leave.date,toDate} OR $X{&lt;,ohrm_leave.date,fromDate} )\n\nWHERE ohrm_leave_entitlement.deleted=0 AND $X{=,ohrm_leave_entitlement.leave_type_id,leaveType}\n    AND $X{IN,ohrm_leave_entitlement.emp_number,empNumber} AND\n    (\n      ( $X{&lt;=,ohrm_leave_entitlement.from_date,fromDate} AND $X{&gt;=,ohrm_leave_entitlement.to_date,fromDate} ) OR\n      ( $X{&lt;=,ohrm_leave_entitlement.from_date,toDate} AND $X{&gt;=,ohrm_leave_entitlement.to_date,toDate} ) OR \n      ( $X{&gt;=,ohrm_leave_entitlement.from_date,fromDate} AND $X{&lt;=,ohrm_leave_entitlement.to_date,toDate} ) \n    )\n    \nGROUP BY ohrm_leave_entitlement.id\n) AS A\n\nGROUP BY A.emp_number\nORDER BY A.emp_number\n\n</query>\n    <id_field>empNumber</id_field>\n    <display_groups>\n            <display_group name=\"g2\" type=\"one\" display=\"true\">\n                <group_header></group_header>\n                <fields>\n                    <field display=\"false\">\n                        <field_name>A.emp_number</field_name>\n                        <field_alias>empNumber</field_alias>\n                        <display_name>Emp Number</display_name>\n                        <width>1</width>\n                    </field>                                \n                    <field display=\"true\">\n                        <field_name>sum(A.no_of_days) - sum(A.scheduled) - sum(A.taken)</field_name>\n                        <field_alias>entitlement_total</field_alias>\n                        <display_name>Leave Entitlements (Days)</display_name>\n                        <width>120</width>\n                        <align>right</align>\n                        <link>leave/viewLeaveEntitlements?empNumber=$P{empNumber}&amp;fromDate=$P{fromDate}&amp;toDate=$P{toDate}&amp;leaveTypeId=$P{leaveTypeId}&amp;stddate=1</link>\n                    </field>                                \n                </fields>\n            </display_group>\n    </display_groups>\n</sub_report>\n\n<sub_report type=\"sql\" name=\"pendingQuery\">\n<query>\nFROM ohrm_leave WHERE $X{=,ohrm_leave.leave_type_id,leaveType} AND\nstatus = 1 AND\n$X{IN,ohrm_leave.emp_number,empNumber} AND\n$X{&gt;=,ohrm_leave.date,fromDate} AND $X{&lt;=,ohrm_leave.date,toDate}\nGROUP BY emp_number\nORDER BY ohrm_leave.emp_number\n</query>\n    <id_field>empNumber</id_field>\n    <display_groups>\n            <display_group name=\"g6\" type=\"one\" display=\"true\">\n                <group_header></group_header>\n                <fields>\n                    <field display=\"false\">\n                        <field_name>ohrm_leave.emp_number</field_name>\n                        <field_alias>empNumber</field_alias>\n                        <display_name>Emp Number</display_name>\n                        <width>1</width>\n                    </field>                                \n                    <field display=\"true\">\n                        <field_name>sum(length_days)</field_name>\n                        <field_alias>pending</field_alias>\n                        <display_name>Leave Pending Approval (Days)</display_name>\n                        <width>121</width>\n                        <align>right</align>\n                        <link>leave/viewLeaveList?empNumber=$P{empNumber}&amp;fromDate=$P{fromDate}&amp;toDate=$P{toDate}&amp;leaveTypeId=$P{leaveTypeId}&amp;status=1&amp;stddate=1</link>\n                    </field>                                \n                </fields>\n            </display_group>\n    </display_groups>\n</sub_report>\n\n\n<sub_report type=\"sql\" name=\"scheduledQuery\">\n<query>\nFROM ohrm_leave WHERE $X{=,ohrm_leave.leave_type_id,leaveType} AND\nstatus = 2 AND\n$X{IN,ohrm_leave.emp_number,empNumber} AND\n$X{&gt;=,ohrm_leave.date,fromDate} AND $X{&lt;=,ohrm_leave.date,toDate}\nGROUP BY emp_number\nORDER BY ohrm_leave.emp_number\n</query>\n    <id_field>empNumber</id_field>\n    <display_groups>\n            <display_group name=\"g5\" type=\"one\" display=\"true\">\n                <group_header></group_header>\n                <fields>\n                    <field display=\"false\">\n                        <field_name>ohrm_leave.emp_number</field_name>\n                        <field_alias>empNumber</field_alias>\n                        <display_name>Emp Number</display_name>\n                        <width>1</width>\n                    </field>                                \n                    <field display=\"true\">\n                        <field_name>sum(length_days)</field_name>\n                        <field_alias>scheduled</field_alias>\n                        <display_name>Leave Scheduled (Days)</display_name>\n                        <width>121</width>\n                        <align>right</align>\n                        <link>leave/viewLeaveList?empNumber=$P{empNumber}&amp;fromDate=$P{fromDate}&amp;toDate=$P{toDate}&amp;leaveTypeId=$P{leaveTypeId}&amp;status=2&amp;stddate=1</link>\n                    </field>                                \n                </fields>\n            </display_group>\n    </display_groups>\n</sub_report>\n\n<sub_report type=\"sql\" name=\"takenQuery\">\n<query>\nFROM ohrm_leave WHERE $X{=,ohrm_leave.leave_type_id,leaveType} AND\nstatus = 3 AND\n$X{IN,ohrm_leave.emp_number,empNumber} AND\n$X{&gt;=,ohrm_leave.date,fromDate} AND $X{&lt;=,ohrm_leave.date,toDate}\nGROUP BY emp_number\nORDER BY ohrm_leave.emp_number\n</query>\n    <id_field>empNumber</id_field>\n    <display_groups>\n            <display_group name=\"g4\" type=\"one\" display=\"true\">\n                <group_header></group_header>\n                <fields>\n                    <field display=\"false\">\n                        <field_name>ohrm_leave.emp_number</field_name>\n                        <field_alias>empNumber</field_alias>\n                        <display_name>Emp Number</display_name>\n                        <width>1</width>\n                    </field>                                \n                    <field display=\"true\">\n                        <field_name>sum(length_days)</field_name>\n                        <field_alias>taken</field_alias>\n                        <display_name>Leave Taken (Days)</display_name>\n                        <width>120</width>\n                        <align>right</align>\n                        <link>leave/viewLeaveList?empNumber=$P{empNumber}&amp;fromDate=$P{fromDate}&amp;toDate=$P{toDate}&amp;leaveTypeId=$P{leaveTypeId}&amp;status=3&amp;stddate=1</link>\n                    </field>                                \n                </fields>\n            </display_group>\n    </display_groups>\n</sub_report>\n<sub_report type=\"sql\" name=\"unused\">       \n    <query>FROM hs_hr_employee WHERE $X{IN,hs_hr_employee.emp_number,empNumber} ORDER BY hs_hr_employee.emp_number</query>\n    <id_field>empNumber</id_field>\n    <display_groups>\n        <display_group name=\"unused\" type=\"one\" display=\"true\">\n            <group_header></group_header>\n            <fields>    \n                <field display=\"false\">\n                    <field_name>hs_hr_employee.emp_number</field_name>\n                    <field_alias>empNumber</field_alias>\n                    <display_name>Employee Number</display_name>\n                    <width>1</width>	\n                </field>                \n                <field display=\"true\">\n                    <field_name>hs_hr_employee.emp_firstname</field_name>\n                    <field_alias>unused</field_alias>\n                    <display_name>Leave Balance (Days)</display_name>\n                    <width>150</width>\n                    <align>right</align>\n                </field> \n                                                                                               \n            </fields>\n        </display_group>\n    </display_groups> \n</sub_report>\n    <join>             \n        <join_by sub_report=\"mainTable\" id=\"empNumber\"></join_by>            \n        <join_by sub_report=\"entitlementsTotal\" id=\"empNumber\"></join_by> \n        <join_by sub_report=\"pendingQuery\" id=\"empNumber\"></join_by>\n        <join_by sub_report=\"scheduledQuery\" id=\"empNumber\"></join_by>\n        <join_by sub_report=\"takenQuery\" id=\"empNumber\"></join_by> \n        <join_by sub_report=\"unused\" id=\"empNumber\"></join_by>  \n    </join>\n    <page_limit>20</page_limit>       \n</report>');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_api_permission`
--

CREATE TABLE `ohrm_api_permission` (
  `id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `data_group_id` int(11) DEFAULT NULL,
  `api_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ohrm_api_permission`
--

INSERT INTO `ohrm_api_permission` (`id`, `module_id`, `data_group_id`, `api_name`) VALUES
(1, 1, 65, 'OrangeHRM\\Core\\Api\\Rest\\DataGroupAPI'),
(2, 1, 66, 'OrangeHRM\\Core\\Api\\Rest\\AboutOrganizationAPI'),
(3, 2, 67, 'OrangeHRM\\Admin\\Api\\EducationAPI'),
(4, 2, 68, 'OrangeHRM\\Admin\\Api\\EmploymentStatusAPI'),
(5, 2, 69, 'OrangeHRM\\Admin\\Api\\JobCategoryAPI'),
(6, 2, 70, 'OrangeHRM\\Admin\\Api\\JobSpecificationAPI'),
(7, 2, 71, 'OrangeHRM\\Admin\\Api\\JobTitleAPI'),
(8, 2, 72, 'OrangeHRM\\Admin\\Api\\LanguageAPI'),
(9, 2, 73, 'OrangeHRM\\Admin\\Api\\LicenseAPI'),
(10, 2, 74, 'OrangeHRM\\Admin\\Api\\MembershipAPI'),
(11, 2, 75, 'OrangeHRM\\Admin\\Api\\NationalityAPI'),
(12, 2, 76, 'OrangeHRM\\Admin\\Api\\OrganizationAPI'),
(13, 2, 77, 'OrangeHRM\\Admin\\Api\\PayGradeCurrencyAPI'),
(14, 2, 78, 'OrangeHRM\\Admin\\Api\\PayGradeAllowedCurrencyAPI'),
(15, 2, 79, 'OrangeHRM\\Admin\\Api\\SkillAPI'),
(16, 2, 80, 'OrangeHRM\\Admin\\Api\\SubunitAPI'),
(17, 2, 81, 'OrangeHRM\\Admin\\Api\\UserAPI'),
(18, 2, 82, 'OrangeHRM\\Admin\\Api\\EmailConfigurationAPI'),
(19, 2, 83, 'OrangeHRM\\OAuth\\Api\\OAuthClientAPI'),
(20, 2, 84, 'OrangeHRM\\Admin\\Api\\LocationAPI'),
(21, 2, 85, 'OrangeHRM\\Admin\\Api\\PayGradeAPI'),
(22, 2, 86, 'OrangeHRM\\Admin\\Api\\ModulesAPI'),
(23, 2, 87, 'OrangeHRM\\Admin\\Api\\WorkShiftAPI'),
(24, 2, 88, 'OrangeHRM\\Admin\\Api\\WorkShiftEmployeeAPI'),
(25, 2, 89, 'OrangeHRM\\Admin\\Api\\EmailSubscriptionAPI'),
(26, 2, 90, 'OrangeHRM\\Admin\\Api\\EmailSubscriberAPI'),
(27, 2, 91, 'OrangeHRM\\Admin\\Api\\ValidationUserNameAPI'),
(28, 3, 92, 'OrangeHRM\\Pim\\Api\\CustomFieldAPI'),
(29, 3, 93, 'OrangeHRM\\Pim\\Api\\OptionalFieldAPI'),
(30, 3, 94, 'OrangeHRM\\Pim\\Api\\ReportingMethodConfigurationAPI'),
(31, 3, 95, 'OrangeHRM\\Pim\\Api\\TerminationReasonConfigurationAPI'),
(32, 3, 96, 'OrangeHRM\\Pim\\Api\\EmployeeAPI'),
(33, 3, 97, 'OrangeHRM\\Pim\\Api\\EmpEmergencyContactAPI'),
(34, 3, 98, 'OrangeHRM\\Pim\\Api\\EmployeeContactDetailsAPI'),
(35, 3, 99, 'OrangeHRM\\Pim\\Api\\EmployeeDependentAPI'),
(36, 3, 100, 'OrangeHRM\\Pim\\Api\\EmployeeEducationAPI'),
(37, 3, 101, 'OrangeHRM\\Pim\\Api\\EmployeeImmigrationRecordAPI'),
(38, 3, 102, 'OrangeHRM\\Pim\\Api\\EmployeeJobDetailAPI'),
(39, 3, 103, 'OrangeHRM\\Pim\\Api\\EmployeeLanguageAPI'),
(40, 3, 104, 'OrangeHRM\\Pim\\Api\\EmployeeLicenseAPI'),
(41, 3, 105, 'OrangeHRM\\Pim\\Api\\EmployeePersonalDetailAPI'),
(42, 3, 106, 'OrangeHRM\\Pim\\Api\\EmployeePictureAPI'),
(43, 3, 107, 'OrangeHRM\\Pim\\Api\\EmployeeSalaryComponentAPI'),
(44, 3, 108, 'OrangeHRM\\Pim\\Api\\EmployeeSkillAPI'),
(45, 3, 109, 'OrangeHRM\\Pim\\Api\\EmployeeTerminationAPI'),
(46, 3, 110, 'OrangeHRM\\Pim\\Api\\EmployeeWorkExperienceAPI'),
(47, 3, 111, 'OrangeHRM\\Pim\\Api\\EmploymentContractAPI'),
(48, 3, 112, 'OrangeHRM\\Pim\\Api\\EmployeeAttachmentAPI'),
(49, 3, 113, 'OrangeHRM\\Pim\\Api\\EmployeeCustomFieldAPI'),
(50, 3, 114, 'OrangeHRM\\Pim\\Api\\EmployeeAllowedLanguageAPI'),
(51, 3, 115, 'OrangeHRM\\Pim\\Api\\EmployeeAllowedLicenseAPI'),
(52, 3, 116, 'OrangeHRM\\Pim\\Api\\EmployeeAllowedSkillAPI'),
(53, 3, 117, 'OrangeHRM\\Pim\\Api\\EmployeeSupervisorAPI'),
(54, 3, 118, 'OrangeHRM\\Pim\\Api\\EmployeeSubordinateAPI'),
(55, 3, 119, 'OrangeHRM\\Pim\\Api\\EmployeeAllowedReportToEmployeeAPI'),
(56, 3, 120, 'OrangeHRM\\Pim\\Api\\EmployeeMembershipAPI'),
(57, 3, 121, 'OrangeHRM\\Pim\\Api\\EmpUsTaxExemptionAPI'),
(58, 3, 122, 'OrangeHRM\\Pim\\Api\\EmployeeWorkShiftAPI'),
(59, 3, 123, 'OrangeHRM\\Pim\\Api\\EmployeeCountAPI'),
(60, 3, 124, 'OrangeHRM\\Pim\\Api\\EmployeeCSVImportAPI'),
(61, 3, 125, 'OrangeHRM\\Pim\\Api\\PimDefinedReportAPI'),
(62, 3, 126, 'OrangeHRM\\Pim\\Api\\PimReportAPI'),
(63, 3, 127, 'OrangeHRM\\Pim\\Api\\PimReportDataAPI'),
(64, 3, 128, 'OrangeHRM\\Pim\\Api\\UpdatePasswordAPI'),
(65, 3, 129, 'OrangeHRM\\Pim\\Api\\ValidationEmployeeEmailAPI'),
(66, 4, 130, 'OrangeHRM\\Leave\\Api\\HolidayAPI'),
(67, 4, 131, 'OrangeHRM\\Leave\\Api\\WorkWeekAPI'),
(68, 4, 132, 'OrangeHRM\\Leave\\Api\\EligibleLeaveTypeAPI'),
(69, 4, 133, 'OrangeHRM\\Leave\\Api\\LeaveTypeAPI'),
(70, 4, 134, 'OrangeHRM\\Leave\\Api\\LeavePeriodAPI'),
(71, 4, 135, 'OrangeHRM\\Leave\\Api\\MyLeaveRequestAPI'),
(72, 4, 136, 'OrangeHRM\\Leave\\Api\\EmployeeLeaveRequestAPI'),
(73, 4, 137, 'OrangeHRM\\Leave\\Api\\EmployeeBulkLeaveRequestAPI'),
(74, 4, 138, 'OrangeHRM\\Leave\\Api\\LeaveEntitlementAPI'),
(75, 4, 139, 'OrangeHRM\\Leave\\Api\\LeaveBalanceAPI'),
(76, 4, 140, 'OrangeHRM\\Leave\\Api\\EmployeeLeaveEntitlementAPI'),
(77, 4, 141, 'OrangeHRM\\Leave\\Api\\ValidationLeaveEntitlementValueAPI'),
(78, 4, 142, 'OrangeHRM\\Leave\\Api\\LeaveOverlapAPI'),
(79, 4, 143, 'OrangeHRM\\Leave\\Api\\LeaveRequestCommentAPI'),
(80, 4, 144, 'OrangeHRM\\Leave\\Api\\LeaveCommentAPI'),
(81, 4, 145, 'OrangeHRM\\Leave\\Api\\LeaveAPI'),
(82, 4, 146, 'OrangeHRM\\Leave\\Api\\BulkLeaveAPI'),
(83, 4, 147, 'OrangeHRM\\Leave\\Api\\LeaveReportAPI'),
(84, 4, 148, 'OrangeHRM\\Leave\\Api\\LeaveReportDataAPI'),
(85, 5, 154, 'OrangeHRM\\Time\\Api\\TimeConfigPeriodAPI'),
(86, 5, 155, 'OrangeHRM\\Time\\Api\\CustomerAPI'),
(87, 5, 156, 'OrangeHRM\\Time\\Api\\ValidationCustomerNameAPI'),
(88, 5, 157, 'OrangeHRM\\Time\\Api\\ProjectActivityAPI'),
(89, 5, 158, 'OrangeHRM\\Time\\Api\\ProjectAPI'),
(90, 5, 159, 'OrangeHRM\\Time\\Api\\ValidateProjectNameAPI'),
(91, 5, 160, 'OrangeHRM\\Time\\Api\\MyTimesheetItemAPI'),
(92, 5, 161, 'OrangeHRM\\Time\\Api\\EmployeeTimesheetItemAPI'),
(93, 5, 162, 'OrangeHRM\\Time\\Api\\MyTimesheetAPI'),
(94, 5, 163, 'OrangeHRM\\Time\\Api\\TimesheetActionLogAPI'),
(95, 5, 164, 'OrangeHRM\\Time\\Api\\TimesheetCommentAPI'),
(96, 5, 165, 'OrangeHRM\\Time\\Api\\TimesheetTimeFormatAPI'),
(97, 5, 166, 'OrangeHRM\\Time\\Api\\ValidationProjectActivityNameAPI'),
(98, 5, 167, 'OrangeHRM\\Time\\Api\\TimesheetProjectActivityUniqueValidationAPI'),
(99, 5, 168, 'OrangeHRM\\Time\\Api\\CopyProjectActivityAPI'),
(100, 5, 169, 'OrangeHRM\\Time\\Api\\EmployeeTimesheetAPI'),
(101, 5, 170, 'OrangeHRM\\Time\\Api\\EmployeeTimesheetListAPI'),
(102, 5, 171, 'OrangeHRM\\Time\\Api\\DefaultTimesheetAPI'),
(103, 5, 172, 'OrangeHRM\\Time\\Api\\TimeReportAPI'),
(104, 5, 173, 'OrangeHRM\\Time\\Api\\TimeReportDataAPI'),
(105, 5, 174, 'OrangeHRM\\Time\\Api\\ProjectAdminAPI'),
(106, 6, 175, 'OrangeHRM\\Attendance\\Api\\AttendanceConfigurationAPI'),
(107, 6, 176, 'OrangeHRM\\Attendance\\Api\\EmployeeLatestAttendanceRecordAPI'),
(108, 6, 177, 'OrangeHRM\\Attendance\\Api\\AttendancePunchInRecordOverlapAPI'),
(109, 6, 178, 'OrangeHRM\\Attendance\\Api\\AttendancePunchOutRecordOverlapAPI'),
(110, 6, 179, 'OrangeHRM\\Attendance\\Api\\MyAttendanceRecordAPI'),
(111, 6, 180, 'OrangeHRM\\Attendance\\Api\\EmployeeAttendanceRecordAPI'),
(112, 6, 181, 'OrangeHRM\\Attendance\\Api\\TimezonesAPI'),
(113, 6, 182, 'OrangeHRM\\Attendance\\Api\\CurrentDateTimeAPI'),
(114, 6, 183, 'OrangeHRM\\Attendance\\Api\\AttendanceRecordAPI'),
(115, 6, 184, 'OrangeHRM\\Attendance\\Api\\AttendanceEditPunchInRecordOverlapAPI'),
(116, 6, 185, 'OrangeHRM\\Attendance\\Api\\AttendanceEditPunchOutRecordOverlapAPI'),
(117, 6, 186, 'OrangeHRM\\Attendance\\Api\\EmployeeAttendanceSummaryAPI'),
(118, 13, 187, 'OrangeHRM\\Maintenance\\Api\\PurgeEmployeeAPI'),
(119, 2, 188, 'OrangeHRM\\Admin\\Api\\LocalizationAPI'),
(120, 3, 189, 'OrangeHRM\\Pim\\Api\\ValidationEmployeeOtherEmailAPI'),
(121, 11, 193, 'OrangeHRM\\Performance\\Api\\KpiAPI'),
(122, 11, 194, 'OrangeHRM\\Performance\\Api\\ReviewEmployeeSupervisorAPI'),
(123, 11, 195, 'OrangeHRM\\Performance\\Api\\PerformanceTrackerAPI'),
(124, 11, 196, 'OrangeHRM\\Performance\\Api\\PerformanceTrackerReviewerAPI'),
(125, 11, 197, 'OrangeHRM\\Performance\\Api\\MyTrackerAPI'),
(126, 11, 198, 'OrangeHRM\\Performance\\Api\\MyReviewAPI'),
(127, 11, 199, 'OrangeHRM\\Performance\\Api\\EmployeeTrackerAPI'),
(128, 11, 200, 'OrangeHRM\\Performance\\Api\\ReviewListAPI'),
(129, 11, 201, 'OrangeHRM\\Performance\\Api\\PerformanceReviewAPI'),
(130, 11, 202, 'OrangeHRM\\Performance\\Api\\PerformanceTrackerLogAPI'),
(131, 11, 203, 'OrangeHRM\\Performance\\Api\\ReviewKpiAPI'),
(132, 11, 204, 'OrangeHRM\\Performance\\Api\\PerformanceReviewAllowedActionsAPI'),
(133, 11, 205, 'OrangeHRM\\Performance\\Api\\SupervisorEvaluationAPI'),
(134, 11, 206, 'OrangeHRM\\Performance\\Api\\EmployeeEvaluationAPI'),
(135, 11, 207, 'OrangeHRM\\Performance\\Api\\PerformanceReviewFinalEvaluationAPI'),
(136, 7, 208, 'OrangeHRM\\Recruitment\\Api\\VacancyAPI'),
(137, 7, 209, 'OrangeHRM\\Recruitment\\Api\\VacancyAttachmentAPI'),
(138, 7, 210, 'OrangeHRM\\Recruitment\\Api\\CandidateAPI'),
(139, 7, 211, 'OrangeHRM\\Recruitment\\Api\\CandidateAttachmentAPI'),
(140, 7, 212, 'OrangeHRM\\Recruitment\\Api\\CandidateStatusAPI'),
(141, 7, 213, 'OrangeHRM\\Recruitment\\Api\\HiringManagerAPI'),
(142, 7, 214, 'OrangeHRM\\Recruitment\\Api\\CandidateAllowedActionAPI'),
(143, 7, 215, 'OrangeHRM\\Recruitment\\Api\\CandidateRejectionAPI'),
(144, 7, 216, 'OrangeHRM\\Recruitment\\Api\\CandidateShortlistingAPI'),
(145, 7, 217, 'OrangeHRM\\Recruitment\\Api\\CandidateInterviewSchedulingAPI'),
(146, 7, 218, 'OrangeHRM\\Recruitment\\Api\\InterviewAttachmentAPI'),
(147, 7, 219, 'OrangeHRM\\Recruitment\\Api\\CandidateMarkingInterviewPassAPI'),
(148, 7, 220, 'OrangeHRM\\Recruitment\\Api\\CandidateMarkingInterviewFailAPI'),
(149, 7, 221, 'OrangeHRM\\Recruitment\\Api\\CandidateJobOfferingAPI'),
(150, 7, 222, 'OrangeHRM\\Recruitment\\Api\\CandidateOfferDecliningAPI'),
(151, 7, 223, 'OrangeHRM\\Recruitment\\Api\\CandidateHiringAPI'),
(152, 7, 224, 'OrangeHRM\\Recruitment\\Api\\CandidateHistoryAPI'),
(153, 7, 225, 'OrangeHRM\\Recruitment\\Api\\EmployeeListAPI'),
(154, 2, 226, 'OrangeHRM\\Admin\\Api\\I18NLanguageAPI'),
(155, 2, 227, 'OrangeHRM\\Admin\\Api\\I18NTranslationAPI'),
(156, 2, 228, 'OrangeHRM\\Admin\\Api\\I18NTranslationBulkAPI'),
(157, 2, 229, 'OrangeHRM\\Admin\\Api\\I18NGroupAPI'),
(158, 12, 230, 'OrangeHRM\\CorporateDirectory\\Api\\EmployeeDirectoryAPI'),
(159, 2, 231, 'OrangeHRM\\CorporateBranding\\Api\\ThemeAPI'),
(160, 2, 232, 'OrangeHRM\\CorporateBranding\\Api\\PreviewThemeAPI'),
(161, 13, 233, 'OrangeHRM\\Maintenance\\Api\\PurgeCandidateAPI'),
(162, 10, 235, 'OrangeHRM\\Dashboard\\Api\\EmployeeOnLeaveAPI'),
(163, 10, 236, 'OrangeHRM\\Dashboard\\Api\\EmployeeDistributionBySubunitAPI'),
(164, 10, 237, 'OrangeHRM\\Dashboard\\Api\\EmployeeDistributionByLocationAPI'),
(165, 10, 238, 'OrangeHRM\\Dashboard\\Api\\QuickLaunchAPI'),
(166, 10, 239, 'OrangeHRM\\Dashboard\\Api\\EmployeeTimeAtWorkAPI'),
(167, 10, 240, 'OrangeHRM\\Dashboard\\Api\\EmployeeActionSummaryAPI'),
(168, 10, 241, 'OrangeHRM\\Dashboard\\Api\\EmployeeOnLeaveTodayConfigAPI'),
(169, 2, 242, 'OrangeHRM\\LDAP\\Api\\LDAPConfigAPI'),
(170, 2, 243, 'OrangeHRM\\LDAP\\Api\\LDAPTestConnectionAPI'),
(171, 2, 244, 'OrangeHRM\\LDAP\\Api\\LDAPUserSyncAPI'),
(172, 15, 250, 'OrangeHRM\\Buzz\\Api\\EmployeeAnniversaryAPI'),
(173, 15, 251, 'OrangeHRM\\Buzz\\Api\\BuzzFeedAPI'),
(174, 15, 252, 'OrangeHRM\\Buzz\\Api\\BuzzPostAPI'),
(175, 15, 253, 'OrangeHRM\\Buzz\\Api\\BuzzShareAPI'),
(176, 15, 254, 'OrangeHRM\\Buzz\\Api\\BuzzCommentAPI'),
(177, 15, 255, 'OrangeHRM\\Buzz\\Api\\BuzzLikeOnShareAPI'),
(178, 15, 256, 'OrangeHRM\\Buzz\\Api\\BuzzLikeOnCommentAPI'),
(179, 15, 257, 'OrangeHRM\\Buzz\\Api\\BuzzVideoURLValidationAPI'),
(180, 15, 258, 'OrangeHRM\\Buzz\\Api\\BuzzPostShareAPI'),
(181, 3, 261, 'OrangeHRM\\Pim\\Api\\MyInfoAPI'),
(182, 17, 262, 'OrangeHRM\\Mobile\\Api\\MenuItemAPI'),
(183, 4, 263, 'OrangeHRM\\Leave\\Api\\EmployeeLeaveAPI'),
(184, 4, 264, 'OrangeHRM\\Leave\\Api\\EmployeeLeaveBalanceAPI'),
(185, 18, 265, 'OrangeHRM\\Claim\\Api\\ClaimEventAPI'),
(186, 18, 266, 'OrangeHRM\\Claim\\Api\\ClaimExpenseTypeAPI'),
(187, 18, 267, 'OrangeHRM\\Claim\\Api\\MyClaimRequestAPI'),
(188, 18, 268, 'OrangeHRM\\Claim\\Api\\EmployeeClaimRequestAPI'),
(189, 18, 269, 'OrangeHRM\\Claim\\Api\\ClaimExpenseAPI'),
(190, 18, 270, 'OrangeHRM\\Claim\\Api\\ClaimAttachmentAPI'),
(191, 18, 271, 'OrangeHRM\\Claim\\Api\\ClaimRequestActionAPI');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_attendance_record`
--

CREATE TABLE `ohrm_attendance_record` (
  `id` bigint(20) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `punch_in_utc_time` datetime DEFAULT NULL,
  `punch_in_note` varchar(255) DEFAULT NULL,
  `punch_in_time_offset` varchar(255) DEFAULT NULL,
  `punch_in_user_time` datetime DEFAULT NULL,
  `punch_out_utc_time` datetime DEFAULT NULL,
  `punch_out_note` varchar(255) DEFAULT NULL,
  `punch_out_time_offset` varchar(255) DEFAULT NULL,
  `punch_out_user_time` datetime DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `punch_in_timezone_name` varchar(100) DEFAULT NULL,
  `punch_out_timezone_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_auth_provider_extra_details`
--

CREATE TABLE `ohrm_auth_provider_extra_details` (
  `id` int(11) NOT NULL,
  `provider_id` int(10) NOT NULL,
  `provider_type` int(11) DEFAULT NULL,
  `client_id` text DEFAULT NULL,
  `client_secret` text DEFAULT NULL,
  `developer_key` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_available_group_field`
--

CREATE TABLE `ohrm_available_group_field` (
  `report_group_id` bigint(20) NOT NULL,
  `group_field_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_beacon_notification`
--

CREATE TABLE `ohrm_beacon_notification` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `expiry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `definition` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_buzz_comment`
--

CREATE TABLE `ohrm_buzz_comment` (
  `id` bigint(20) NOT NULL,
  `share_id` bigint(20) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `number_of_likes` int(11) DEFAULT NULL,
  `comment_text` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_time` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `comment_utc_time` datetime NOT NULL,
  `updated_utc_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_buzz_like_on_comment`
--

CREATE TABLE `ohrm_buzz_like_on_comment` (
  `id` bigint(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `like_time` datetime DEFAULT NULL,
  `like_utc_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_buzz_like_on_share`
--

CREATE TABLE `ohrm_buzz_like_on_share` (
  `id` bigint(20) NOT NULL,
  `share_id` bigint(20) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `like_time` datetime DEFAULT NULL,
  `like_utc_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_buzz_link`
--

CREATE TABLE `ohrm_buzz_link` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `link` longtext COLLATE utf8_unicode_ci NOT NULL,
  `original_link` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_buzz_notification_metadata`
--

CREATE TABLE `ohrm_buzz_notification_metadata` (
  `emp_number` int(11) NOT NULL,
  `last_notification_view_time` datetime DEFAULT NULL,
  `last_buzz_view_time` datetime DEFAULT NULL,
  `last_clear_notifications` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_buzz_photo`
--

CREATE TABLE `ohrm_buzz_photo` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `photo` mediumblob DEFAULT NULL,
  `filename` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `height` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_buzz_post`
--

CREATE TABLE `ohrm_buzz_post` (
  `id` bigint(20) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `text` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_time` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `post_utc_time` datetime NOT NULL,
  `updated_utc_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_buzz_share`
--

CREATE TABLE `ohrm_buzz_share` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `number_of_likes` int(11) DEFAULT NULL,
  `number_of_comments` int(11) DEFAULT NULL,
  `share_time` datetime DEFAULT NULL,
  `type` smallint(6) NOT NULL,
  `text` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `share_utc_time` datetime NOT NULL,
  `updated_utc_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_claim_attachment`
--

CREATE TABLE `ohrm_claim_attachment` (
  `request_id` int(11) NOT NULL,
  `eattach_id` bigint(20) NOT NULL,
  `eattach_size` int(11) DEFAULT 0,
  `eattach_desc` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eattach_filename` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eattach_attachment` longblob DEFAULT NULL,
  `eattach_type` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attached_by` int(11) DEFAULT NULL,
  `attached_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_claim_event`
--

CREATE TABLE `ohrm_claim_event` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_claim_request`
--

CREATE TABLE `ohrm_claim_request` (
  `id` int(11) NOT NULL,
  `emp_number` int(11) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `reference_id` varchar(255) NOT NULL,
  `event_type_id` int(11) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `currency_id` varchar(3) NOT NULL,
  `is_deleted` smallint(6) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `submitted_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_composite_display_field`
--

CREATE TABLE `ohrm_composite_display_field` (
  `composite_display_field_id` bigint(20) NOT NULL,
  `report_group_id` bigint(20) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `label` varchar(255) NOT NULL,
  `field_alias` varchar(255) DEFAULT NULL,
  `is_sortable` varchar(10) NOT NULL,
  `sort_order` varchar(255) DEFAULT NULL,
  `sort_field` varchar(255) DEFAULT NULL,
  `element_type` varchar(255) NOT NULL,
  `element_property` varchar(1000) NOT NULL,
  `width` varchar(255) NOT NULL,
  `is_exportable` varchar(10) DEFAULT NULL,
  `text_alignment_style` varchar(20) DEFAULT NULL,
  `is_value_list` tinyint(1) NOT NULL DEFAULT 0,
  `display_field_group_id` int(10) UNSIGNED DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `is_encrypted` tinyint(1) NOT NULL DEFAULT 0,
  `is_meta` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_composite_display_field`
--

INSERT INTO `ohrm_composite_display_field` (`composite_display_field_id`, `report_group_id`, `name`, `label`, `field_alias`, `is_sortable`, `sort_order`, `sort_field`, `element_type`, `element_property`, `width`, `is_exportable`, `text_alignment_style`, `is_value_list`, `display_field_group_id`, `default_value`, `is_encrypted`, `is_meta`) VALUES
(1, 1, 'IF(hs_hr_employee.termination_id IS NULL, CONCAT(hs_hr_employee.emp_firstname, \" \" ,hs_hr_employee.emp_lastname), CONCAT(hs_hr_employee.emp_firstname, \" \" ,hs_hr_employee.emp_lastname, \" (Past Employee)\"))', 'Employee Name', 'employeeName', 'false', NULL, NULL, 'label', '<xml><getter>employeeName</getter></xml>', '300', '0', NULL, 0, NULL, 'Deleted Employee', 0, 0),
(2, 1, 'CONCAT(ohrm_customer.name, \" - \" ,ohrm_project.name)', 'Project Name', 'projectname', 'false', NULL, NULL, 'label', '<xml><getter>projectname</getter></xml>', '300', '0', NULL, 0, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_customer`
--

CREATE TABLE `ohrm_customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_datapoint`
--

CREATE TABLE `ohrm_datapoint` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `datapoint_type_id` int(11) NOT NULL,
  `definition` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_datapoint_type`
--

CREATE TABLE `ohrm_datapoint_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `action_class` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_datapoint_type`
--

INSERT INTO `ohrm_datapoint_type` (`id`, `name`, `action_class`) VALUES
(1, 'config', 'configDatapointProcessor'),
(2, 'count', 'countDatapointProcessor'),
(3, 'session', 'sessionDatapointProcessor'),
(4, 'organization', 'OrganizationDataProcessor');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_data_group`
--

CREATE TABLE `ohrm_data_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `can_read` tinyint(4) DEFAULT NULL,
  `can_create` tinyint(4) DEFAULT NULL,
  `can_update` tinyint(4) DEFAULT NULL,
  `can_delete` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_data_group`
--

INSERT INTO `ohrm_data_group` (`id`, `name`, `description`, `can_read`, `can_create`, `can_update`, `can_delete`) VALUES
(1, 'personal_information', 'PIM - Personal Details', 1, NULL, 1, NULL),
(2, 'personal_attachment', 'PIM - Personal Details - Attachments', 1, 1, 1, 1),
(3, 'personal_custom_fields', 'PIM - Personal Details - Custom Fields', 1, NULL, 1, NULL),
(4, 'contact_details', 'PIM - Contact Details', 1, NULL, 1, NULL),
(5, 'contact_attachment', 'PIM - Contact Details - Attachments', 1, 1, 1, 1),
(6, 'contact_custom_fields', 'PIM - Contact Details - Custom Fields', 1, NULL, 1, NULL),
(7, 'emergency_contacts', 'PIM - Emergency Contacts', 1, 1, 1, 1),
(8, 'emergency_attachment', 'PIM - Emergency Contacts - Attachments', 1, 1, 1, 1),
(9, 'emergency_custom_fields', 'PIM - Emergency Contacts - Custom Fields', 1, NULL, 1, NULL),
(10, 'dependents', 'PIM - Dependents', 1, 1, 1, 1),
(11, 'dependents_attachment', 'PIM - Dependents - Attachments', 1, 1, 1, 1),
(12, 'dependents_custom_fields', 'PIM - Dependents - Custom Fields', 1, NULL, 1, NULL),
(13, 'immigration', 'PIM - Immigration', 1, 1, 1, 1),
(14, 'immigration_attachment', 'PIM - Immigration - Attachments', 1, 1, 1, 1),
(15, 'immigration_custom_fields', 'PIM - Immigration - Custom Fields', 1, NULL, 1, NULL),
(16, 'job_details', 'PIM - Job', 1, NULL, 1, NULL),
(17, 'job_attachment', 'PIM - Job - Attachments', 1, 1, 1, 1),
(18, 'job_custom_fields', 'PIM - Job - Custom Fields', 1, NULL, 1, NULL),
(19, 'salary_details', 'PIM - Salary', 1, 1, 1, 1),
(20, 'salary_attachment', 'PIM - Salary - Attachments', 1, 1, 1, 1),
(21, 'salary_custom_fields', 'PIM - Salary - Custom Fields', 1, NULL, 1, NULL),
(22, 'tax_exemptions', 'PIM - Tax Exemptions', 1, NULL, 1, NULL),
(23, 'tax_attachment', 'PIM - Tax Exemptions - Attachments', 1, 1, 1, 1),
(24, 'tax_custom_fields', 'PIM - Tax Exemptions - Custom Fields', 1, NULL, 1, NULL),
(25, 'supervisor', 'PIM - Employee Supervisors', 1, 1, 1, 1),
(26, 'subordinates', 'PIM - Employee Subordinates', 1, 1, 1, 1),
(27, 'report-to_attachment', 'PIM - Employee Supervisors/Subordinates - Attachment', 1, 1, 1, 1),
(28, 'report-to_custom_fields', 'PIM - Employee Supervisors/Subordinates - Custom Fields', 1, NULL, 1, NULL),
(29, 'qualification_work', 'PIM - Qualifications - Work Experience', 1, 1, 1, 1),
(30, 'qualification_education', 'PIM - Qualifications - Education', 1, 1, 1, 1),
(31, 'qualification_skills', 'PIM - Qualifications - Skills', 1, 1, 1, 1),
(32, 'qualification_languages', 'PIM - Qualifications - Languages', 1, 1, 1, 1),
(33, 'qualification_license', 'PIM - Qualifications - License', 1, 1, 1, 1),
(34, 'qualifications_attachment', 'PIM - Qualifications - Attachments', 1, 1, 1, 1),
(35, 'qualifications_custom_fields', 'PIM - Qualifications - Custom Fields', 1, NULL, 1, NULL),
(36, 'membership', 'PIM - Membership', 1, 1, 1, 1),
(37, 'membership_attachment', 'PIM - Membership - Attachments', 1, 1, 1, 1),
(38, 'membership_custom_fields', 'PIM - Membership - Custom Fields', 1, NULL, 1, NULL),
(39, 'photograph', 'PIM - Employee Photograph', 1, NULL, 1, 1),
(40, 'leave_entitlements', 'Leave - Leave Entitlements', 1, 1, 1, 1),
(41, 'leave_entitlements_usage_report', 'Leave - Leave Entitlements and Usage Report', 1, NULL, NULL, NULL),
(42, 'job_titles', 'Admin - Job Titles', 1, 1, 1, 1),
(43, 'pay_grades', 'Admin - Pay Grades', 1, 1, 1, 1),
(44, 'time_customers', 'Time - Project Info - Customers', 1, 1, 1, 1),
(45, 'time_projects', 'Time - Project Info - Projects', 1, 1, 1, 1),
(46, 'pim_reports', 'PIM - Reports', 1, 1, 1, 1),
(47, 'attendance_configuration', 'Time - Attendance Configuration', 1, 0, 1, 0),
(48, 'attendance_records', 'Time - Attendance Records', 1, 0, 0, 0),
(49, 'time_project_reports', 'Time - Project Reports', 1, 0, 0, 0),
(50, 'time_employee_reports', 'Time - Employee Reports', 1, 0, 0, 0),
(51, 'attendance_summary', 'Time - Attendance Summary', 1, 0, 0, 0),
(52, 'leave_period', 'Leave - Leave Period', 1, 0, 1, 0),
(53, 'leave_types', 'Leave - Leave Types', 1, 1, 1, 1),
(54, 'work_week', 'Leave - Work Week', 1, 0, 1, 0),
(55, 'holidays', 'Leave - Holidays', 1, 1, 1, 1),
(56, 'recruitment_vacancies', 'Recruitment - Vacancies', 1, 1, 1, 1),
(57, 'recruitment_candidates', 'Recruitment - Candidates', 1, 1, 1, 1),
(58, 'time_employee_timesheets', 'Time - Employee Timesheets', 1, 0, 0, 0),
(59, 'leave_list', 'Leave - Leave List', 1, 0, 0, 0),
(60, 'leave_list_comments', 'Leave - Leave List - Comments', 0, 1, 0, 0),
(61, 'GDPR Employee', 'Employee Records purge or Extract- Tasks', 1, 1, 1, 1),
(62, 'Marketplace', 'Install or Uninstall addons- Tasks', 1, 1, 0, 1),
(63, 'buzz_link', 'buzz link permition', 1, 1, 1, 0),
(64, 'buzz_link_admin', 'buzz link permition for admin', 1, 1, 1, 0),
(65, 'apiv2_core_data_groups', 'API-v2 Core - Data Groups', 1, 0, 0, 0),
(66, 'apiv2_core_about_organization', 'API-v2 Core - About', 1, 0, 0, 0),
(67, 'apiv2_admin_education', 'API-v2 Admin - Education', 1, 1, 1, 1),
(68, 'apiv2_admin_employment_status', 'API-v2 Admin - Employment Status', 1, 1, 1, 1),
(69, 'apiv2_admin_job_category', 'API-v2 Admin - Job Categories', 1, 1, 1, 1),
(70, 'apiv2_admin_job_specification', 'API-v2 Admin - Job Specification', 1, 0, 0, 0),
(71, 'apiv2_admin_job_title', 'API-v2 Admin - Job Titles', 1, 1, 1, 1),
(72, 'apiv2_admin_language', 'API-v2 Admin - Languages', 1, 1, 1, 1),
(73, 'apiv2_admin_license', 'API-v2 Admin - Licenses', 1, 1, 1, 1),
(74, 'apiv2_admin_membership', 'API-v2 Admin - Memberships', 1, 1, 1, 1),
(75, 'apiv2_admin_nationality', 'API-v2 Admin - Nationalities', 1, 1, 1, 1),
(76, 'apiv2_admin_organization', 'API-v2 Admin - General Information', 1, 0, 1, 0),
(77, 'apiv2_admin_paygrade_currency', 'API-v2 Admin - Pay Grade Currencies', 1, 1, 1, 1),
(78, 'apiv2_admin_paygrade_allowed_currency', 'API-v2 Admin - Pay Grade Allowed Currencies', 1, 0, 0, 0),
(79, 'apiv2_admin_skill', 'API-v2 Admin - Skills', 1, 1, 1, 1),
(80, 'apiv2_admin_subunit', 'API-v2 Admin - Organization Structure', 1, 1, 1, 1),
(81, 'apiv2_admin_user', 'API-v2 Admin - Users', 1, 1, 1, 1),
(82, 'apiv2_admin_email_configuration', 'API-v2 Admin - Email Configuration', 1, 0, 1, 0),
(83, 'apiv2_admin_oauth_client', 'API-v2 Admin - OAuth Clients', 1, 1, 1, 1),
(84, 'apiv2_admin_location', 'API-v2 Admin - Locations', 1, 1, 1, 1),
(85, 'apiv2_admin_pay_grade', 'API-v2 Admin - Pay Grade', 1, 1, 1, 1),
(86, 'apiv2_admin_modules', 'API-v2 Admin - Modules', 1, 0, 1, 0),
(87, 'apiv2_admin_work_shift', 'API-v2 Admin - Work Shift', 1, 1, 1, 1),
(88, 'apiv2_admin_work_shift_employee', 'API-v2 Admin - Work Shift Employee', 1, 0, 0, 0),
(89, 'apiv2_admin_email_subscriptions', 'API-v2 Admin - Email Subscription', 1, 0, 1, 0),
(90, 'apiv2_admin_email_subscribers', 'API-v2 Admin - Email Subscriber', 1, 1, 1, 1),
(91, 'apiv2_admin_validation_user_name', 'Admin-v2 Admin - User Name Validation', 1, 0, 0, 0),
(92, 'apiv2_pim_custom_field', 'API-v2 PIM - Custom Fields', 1, 1, 1, 1),
(93, 'apiv2_pim_optional_field', 'API-v2 PIM - Optional Fields', 1, 1, 1, 1),
(94, 'apiv2_pim_reporting_method', 'API-v2 PIM - Reporting Methods', 1, 1, 1, 1),
(95, 'apiv2_pim_termination_reason', 'API-v2 PIM - Termination Reasons', 1, 1, 1, 1),
(96, 'apiv2_pim_employee', 'API-v2 PIM - Employees', 1, 1, 0, 1),
(97, 'apiv2_pim_employee_emergency_contact', 'API-v2 PIM - Employee Emergency Contacts', 1, 1, 1, 1),
(98, 'apiv2_pim_employee_contact_detail', 'API-v2 PIM - Employee Contact Details', 1, 0, 1, 0),
(99, 'apiv2_pim_employee_dependent', 'API-v2 PIM - Employee Dependents', 1, 1, 1, 1),
(100, 'apiv2_pim_employee_education', 'API-v2 PIM - Employee Education', 1, 1, 1, 1),
(101, 'apiv2_pim_employee_immigration', 'API-v2 PIM - Employee Immigration Records', 1, 1, 1, 1),
(102, 'apiv2_pim_employee_job_detail', 'API-v2 PIM - Employee Job Details', 1, 0, 1, 0),
(103, 'apiv2_pim_employee_language', 'API-v2 PIM - Employee Languages', 1, 1, 1, 1),
(104, 'apiv2_pim_employee_license', 'API-v2 PIM - Employee License', 1, 1, 1, 1),
(105, 'apiv2_pim_employee_personal_detail', 'API-v2 PIM - Employee Personal Details', 1, 0, 1, 0),
(106, 'apiv2_pim_employee_picture', 'API-v2 PIM - Employee Photograph', 1, 0, 1, 0),
(107, 'apiv2_pim_employee_salary_component', 'API-v2 PIM - Employee Salary Components', 1, 1, 1, 1),
(108, 'apiv2_pim_employee_skill', 'API-v2 PIM - Employee Skills', 1, 1, 1, 1),
(109, 'apiv2_pim_employee_termination', 'API-v2 PIM - Employee Termination', 1, 1, 1, 1),
(110, 'apiv2_pim_employee_work_experience', 'API-v2 PIM - Employee Work Experience', 1, 1, 1, 1),
(111, 'apiv2_pim_employee_employment_contract', 'API-v2 PIM - Employee Employment Contract', 1, 0, 1, 0),
(112, 'apiv2_pim_employee_attachment', 'API-v2 PIM - Employee Attachments', 1, 1, 1, 1),
(113, 'apiv2_pim_employee_custom_field', 'API-v2 PIM - Employee Custom Field', 1, 0, 1, 0),
(114, 'apiv2_pim_employee_allowed_language', 'API-v2 PIM - Employee Allowed Language', 1, 0, 0, 0),
(115, 'apiv2_pim_employee_allowed_license', 'API-v2 PIM - Employee Allowed Licenses', 1, 0, 0, 0),
(116, 'apiv2_pim_employee_allowed_skill', 'API-v2 PIM - Employee Allowed Skills', 1, 0, 0, 0),
(117, 'apiv2_pim_report_to_supervisor', 'API-v2 PIM - Employee Report To Supervisors', 1, 1, 1, 1),
(118, 'apiv2_pim_report_to_subordinate', 'API-v2 PIM - Employee Report To Subordinates', 1, 1, 1, 1),
(119, 'apiv2_pim_report_to_allowed_employees', 'API-v2 PIM - Employee Allowed Supervisors/Subordinates', 1, 0, 0, 0),
(120, 'apiv2_pim_employee_memberships', 'API-v2 PIM - Employee Memberships', 1, 1, 1, 1),
(121, 'apiv2_pim_tax_exemptions', 'API-v2 PIM - Tax Exemptions', 1, 0, 1, 0),
(122, 'apiv2_pim_employee_work_shift', 'API-v2 PIM - Employee Work Shift', 1, 0, 0, 0),
(123, 'apiv2_pim_employee_count', 'API-v2 PIM - Employee Count', 1, 0, 0, 0),
(124, 'apiv2_pim_employee_csv_import', 'API-v2 PIM - Employee CSV Import', 1, 1, 0, 0),
(125, 'apiv2_pim_defined_reports', 'API-v2 PIM - Defined Reports', 1, 1, 1, 1),
(126, 'apiv2_pim_reports', 'API-v2 PIM - Reports', 1, 0, 0, 0),
(127, 'apiv2_pim_reports_data', 'API-v2 PIM - Reports Data', 1, 0, 0, 0),
(128, 'apiv2_pim_update_password', 'API-v2 PIM - Password Update', 0, 0, 1, 0),
(129, 'apiv2_pim_validation_work_email', 'API-v2 PIM - Work Email Validation', 1, 0, 0, 0),
(130, 'apiv2_leave_holiday', 'API-v2 Leave - Holidays', 1, 1, 1, 1),
(131, 'apiv2_leave_workweek', 'API-v2 Leave - Work Week', 1, 0, 1, 0),
(132, 'apiv2_leave_eligible_leave_types', 'API-v2 Leave - Eligible Leave Types', 1, 0, 0, 0),
(133, 'apiv2_leave_leave_types', 'API-v2 Leave - Leave Types', 1, 1, 1, 1),
(134, 'apiv2_leave_leave_period', 'API-v2 Leave - Leave Period', 1, 0, 1, 0),
(135, 'apiv2_leave_my_leave_requests', 'API-v2 Leave - My Leave Requests', 1, 1, 1, 0),
(136, 'apiv2_leave_employee_leave_requests', 'API-v2 Leave - Employee Leave Requests', 1, 1, 1, 0),
(137, 'apiv2_leave_employee_bulk_leave_requests', 'API-v2 Leave - Employee Bulk Leave Requests', 0, 0, 1, 0),
(138, 'apiv2_leave_leave_entitlements', 'API-v2 Leave - Leave Entitlements', 1, 1, 1, 1),
(139, 'apiv2_leave_leave_balance', 'API-v2 Leave - Leave Balance', 1, 0, 0, 0),
(140, 'apiv2_leave_employee_leave_entitlements', 'API-v2 Leave - Employee Leave Entitlements', 1, 0, 0, 0),
(141, 'apiv2_leave_leave_entitlements_validation', 'API-v2 Leave - Leave Entitlements Validation', 1, 0, 0, 0),
(142, 'apiv2_leave_overlap_leaves', 'API-v2 Leave - Overlap Leaves', 1, 0, 0, 0),
(143, 'apiv2_leave_leave_request_comment', 'API-v2 Leave - Leave Request Comment', 1, 1, 0, 0),
(144, 'apiv2_leave_leave_comment', 'API-v2 Leave - Leave Comment', 1, 1, 0, 0),
(145, 'apiv2_leave_leaves', 'API-v2 Leave - Leave', 1, 0, 1, 0),
(146, 'apiv2_leave_bulk_leaves', 'API-v2 Leave - Employee Bulk Leaves', 0, 0, 1, 0),
(147, 'apiv2_leave_reports', 'API-v2 Leave - Reports', 1, 0, 0, 0),
(148, 'apiv2_leave_reports_data', 'API-v2 Leave - Reports Data', 1, 0, 0, 0),
(149, 'personal_sensitive_information', 'PIM - PIM - Personal Details - Sensitive', 1, 0, 1, 0),
(150, 'leave_report_employee_leave_entitlements_and_usage', 'Leave - Leave Entitlements and Usage Report - Employee', 1, 0, 0, 0),
(151, 'leave_report_leave_type_leave_entitlements_and_usage', 'Leave - Leave Entitlements and Usage Report - Leave Type', 1, 0, 0, 0),
(152, 'leave_report_my_leave_entitlements_and_usage', 'Leave - My Leave Entitlements and Usage Report', 1, 0, 0, 0),
(153, 'locations', 'Admin - Locations', 1, 1, 1, 1),
(154, 'apiv2_time_time_sheet_config', 'API-v2 Time - Time Sheet Start Day Configuration', 1, 0, 1, 0),
(155, 'apiv2_time_customers', 'API-v2 Time - Customers', 1, 1, 1, 1),
(156, 'apiv2_time_validation_customer_name', 'API-v2 Time - Customer Name Validation', 1, 0, 0, 0),
(157, 'apiv2_time_project_activities', 'API-v2 Time - Project Activities', 1, 1, 1, 1),
(158, 'apiv2_time_projects', 'API-v2 Time - Projects', 1, 1, 1, 1),
(159, 'apiv2_time_project_name_validator', 'API-v2 Time - Project Name Validation', 1, 0, 0, 0),
(160, 'apiv2_time_my_timesheets_entries', 'API-v2 Time - My Timesheet Entries', 1, 0, 1, 0),
(161, 'apiv2_time_employees_timesheets_entries', 'API-v2 Time - Employee Timesheet Entries', 1, 0, 1, 0),
(162, 'apiv2_time_my_timesheet', 'API-v2 Time - My Timesheet', 1, 1, 1, 0),
(163, 'apiv2_time_timesheet_action_log', 'API-v2 Time - Timesheet action log', 1, 0, 0, 0),
(164, 'apiv2_time_timesheet_comment', 'API-v2 Time - Timesheet comment', 1, 1, 1, 0),
(165, 'apiv2_time_config_time_format', 'API-v2 Time - Time Config Format', 1, 0, 0, 0),
(166, 'apiv2_time_validation_project_activity_name', 'API-v2 Time - Project Activity Name Validation', 1, 0, 0, 0),
(167, 'apiv2_time_project_activity_unique_validation', 'API-v2 Time - Project Activity Unique Validation', 1, 0, 0, 0),
(168, 'apiv2_time_copy_activities', 'API-v2 Time - Project Copy activities', 1, 1, 0, 0),
(169, 'apiv2_time_employee_timesheets', 'API-v2 Time - Employee Timesheets', 1, 1, 1, 0),
(170, 'apiv2_time_employee_timesheet_list', 'API-v2 Time - Employee Timesheet List', 1, 0, 0, 0),
(171, 'apiv2_time_default_timesheet', 'API-v2 Time - Default Timesheet', 1, 0, 0, 0),
(172, 'apiv2_time_reports', 'API-v2 Time - Reports', 1, 0, 0, 0),
(173, 'apiv2_time_reports_data', 'API-v2 Time - Reports Data', 1, 0, 0, 0),
(174, 'apiv2_time_project_admins', 'API-v2 Time - Project Admins', 1, 0, 0, 0),
(175, 'apiv2_attendance_configuration', 'API-v2 Attendance - Attendance Configuration', 1, 0, 1, 0),
(176, 'apiv2_attendance_employee_latest_attendance_record', 'API-v2 Attendance - Employee Latest Attendance Record', 1, 0, 0, 0),
(177, 'apiv2_attendance_punch_in_overlaps', 'API-v2 Attendance - Punch In Overlaps', 1, 0, 0, 0),
(178, 'apiv2_attendance_punch_out_overlaps', 'API-v2 Attendance - Punch Out Overlaps', 1, 0, 0, 0),
(179, 'apiv2_attendance_my_attendance_record', 'API-v2 Attendance - My Attendance Record', 0, 1, 1, 1),
(180, 'apiv2_attendance_employee_attendance_record', 'API-v2 Attendance - Employee Attendance Record', 0, 1, 1, 1),
(181, 'apiv2_attendance_timezones', 'API-v2 Attendance - Timezones', 1, 0, 0, 0),
(182, 'apiv2_attendance_current_date_time', 'API-v2 Attendance - Current DateTime', 1, 0, 0, 0),
(183, 'apiv2_attendance_record', 'API-v2 Attendance - Attendance Record', 1, 0, 1, 0),
(184, 'apiv2_attendance_edit_punch_in_overlaps', 'API-v2 Attendance - Edit Punch In Overlaps', 1, 0, 0, 0),
(185, 'apiv2_attendance_edit_punch_out_overlaps', 'API-v2 Attendance - Edit Punch Out Overlaps', 1, 0, 0, 0),
(186, 'apiv2_attendance_employee_attendance_summary', 'API-v2 Attendance - Employee Attendance Summary', 1, 0, 0, 0),
(187, 'apiv2_maintenance_purge_employee', 'API-v2 Maintenance - Purge Employee', 1, 0, 0, 1),
(188, 'apiv2_admin_localization', 'API-v2 Admin - Localization', 1, 0, 1, 0),
(189, 'apiv2_pim_validation_other_email', 'API-v2 PIM - Other Email Validation', 1, 0, 0, 0),
(190, 'time_project_activities', 'Time - Project Info - Projects - Activities', 1, 1, 1, 1),
(191, 'maintenance_employee_json', 'Maintenance - Access Employee Data JSON', 1, 0, 0, 0),
(192, 'auth_admin_verify', 'Auth - Administrator Verify', 1, 0, 0, 0),
(193, 'apiv2_performance_kpi', 'API-v2 Performance - KPI', 1, 1, 1, 1),
(194, 'apiv2_performance_review_supervisors', 'API-v2 Performance - Review Supervisors', 1, 0, 0, 0),
(195, 'apiv2_performance_tracker', 'API-v2 Performance - Tracker', 1, 1, 1, 1),
(196, 'apiv2_performance_tracker_reviewers', 'API-v2 Performance - Tracker Reviewers', 1, 0, 0, 0),
(197, 'apiv2_performance_my_trackers', 'API-v2 Performance - My Trackers', 1, 0, 0, 0),
(198, 'apiv2_performance_my_reviews', 'API-v2 Performance - My Reviews', 1, 0, 0, 0),
(199, 'apiv2_performance_employee_trackers', 'API-v2 Performance - Employee Trackers', 1, 0, 0, 0),
(200, 'apiv2_performance_review_list', 'API-v2 Performance - Performance Review List', 1, 0, 0, 0),
(201, 'apiv2_performance_review', 'API-v2 Performance - Performance Reviews', 1, 1, 1, 1),
(202, 'apiv2_performance_performance_tracker_logs', 'API-v2 Performance - Performance Tracker Logs', 1, 1, 1, 1),
(203, 'apiv2_performance_review_kpi_list', 'API-v2 Performance - Performance Review Kpi List', 1, 0, 0, 0),
(204, 'apiv2_performance_review_allowed_actions', 'API-v2 Performance - Performance Review Allowed Actions', 1, 0, 0, 0),
(205, 'apiv2_performance_review_supervisor_evaluation', 'API-v2 Performance - Performance Review Supervisor Evaluation', 1, 0, 1, 0),
(206, 'apiv2_performance_review_employee_evaluation', 'API-v2 Performance - Performance Review Employee Evaluation', 1, 0, 1, 0),
(207, 'apiv2_performance_review_final_evaluation', 'API-v2 Performance - Performance Review Final Evaluation', 1, 0, 1, 0),
(208, 'apiv2_recruitment_vacancy', 'API-v2 Recruitment - Vacancy', 1, 1, 1, 1),
(209, 'apiv2_recruitment_vacancy_attachment', 'API-v2 Recruitment - Vacancy Attachment', 1, 1, 1, 1),
(210, 'apiv2_recruitment_candidates', 'API-v2 Recruitment - Candidates', 1, 1, 1, 1),
(211, 'apiv2_recruitment_candidate_attachments', 'API-v2 Recruitment - Candidate Attachment', 1, 1, 1, 0),
(212, 'apiv2_recruitment_candidate_status', 'API-v2 - Recruitment - Candidate Status', 1, 0, 0, 0),
(213, 'apiv2_recruitment_hiring_managers', 'API-v2 Recruitment - Hiring Managers', 1, 0, 0, 0),
(214, 'apiv2_recruitment_candidate_allowed_actions', 'API-v2 Recruitment - Candidate Allowed Actions', 1, 0, 0, 0),
(215, 'apiv2_recruitment_candidate_reject', 'API-v2 Recruitment - Candidate Reject', 0, 0, 1, 0),
(216, 'apiv2_recruitment_candidate_shortlist', 'API-v2 Recruitment - Candidate Shortlist', 0, 0, 1, 0),
(217, 'apiv2_recruitment_candidate_schedule_interview', 'API-v2 Recruitment - Candidate Schedule Interview ', 1, 1, 1, 0),
(218, 'apiv2_recruitment_candidate_interview_attachment', 'API-v2 Recruitment - Candidate Interview Attachment', 1, 1, 1, 0),
(219, 'apiv2_recruitment_candidate_mark_interview_passed', 'API-v2 Recruitment - Candidate Mark Interview Passed', 0, 0, 1, 0),
(220, 'apiv2_recruitment_candidate_mark_interview_failed', 'API-v2 Recruitment - Candidate Mark Interview Failed', 0, 0, 1, 0),
(221, 'apiv2_recruitment_candidate_offer_job', 'API-v2 Recruitment - Candidate Offer Job', 0, 0, 1, 0),
(222, 'apiv2_recruitment_candidate_decline_offer', 'API-v2 Recruitment - Candidate Decline Offer', 0, 0, 1, 0),
(223, 'apiv2_recruitment_candidate_hire', 'API-v2 Recruitment - Candidate Hire', 0, 0, 1, 0),
(224, 'apiv2_recruitment_candidates_history', 'API-v2 Recruitment - Candidates History', 1, 0, 1, 0),
(225, 'apiv2_recruitment_employee_list', 'API-v2 Recruitment - Employee List', 1, 0, 0, 0),
(226, 'apiv2_admin_localization_languages', 'API-v2 Admin - Localization Languages', 1, 0, 1, 0),
(227, 'apiv2_admin_localization_translations', 'API-v2 Admin - Localization Translations', 1, 0, 1, 0),
(228, 'apiv2_admin_localization_bulk_translations', 'API-v2 Admin - Localization Bulk Translations', 0, 0, 1, 0),
(229, 'apiv2_admin_localization_groups', 'API-v2 Admin - Localization Groups', 1, 0, 0, 0),
(230, 'apiv2_corporate_directory_employees', 'API-v2 Corporate Directory - Employee Directory', 1, 0, 0, 0),
(231, 'apiv2_corporate_branding_theme', 'API-v2 Admin - Theme', 1, 0, 1, 1),
(232, 'apiv2_corporate_branding_theme_preview', 'API-v2 Admin - Theme Preview', 0, 1, 0, 0),
(233, 'apiv2_maintenance_purge_candidate', 'API-v2 Maintenance - Purge Candidate', 1, 0, 0, 1),
(234, 'performance_tracker_log', 'Performance - Tracker log', 1, 1, 1, 1),
(235, 'apiv2_dashboard_employees_on_leave', 'API-v2 Dashboard - Employees On Leave', 1, 0, 0, 0),
(236, 'apiv2_dashboard_employees_by_subunit', 'API-v2 Dashboard - Employees Distribution By Subunit', 1, 0, 0, 0),
(237, 'apiv2_dashboard_employees_by_location', 'API-v2 Dashboard - Employees Distribution By Location', 1, 0, 0, 0),
(238, 'apiv2_dashboard_quick_launch', 'API-v2 Dashboard - Quick Launch', 1, 0, 0, 0),
(239, 'apiv2_dashboard_employee_time_at_work', 'API-v2 Dashboard - Employee Time At Work', 1, 0, 0, 0),
(240, 'apiv2_dashboard_employee_action_summary', 'API-v2 Dashboard - Employee Action Summary', 1, 0, 0, 0),
(241, 'apiv2_dashboard_employees_on_leave_today_configuration', 'API-v2 Dashboard - Employees On Leave Today Configuration', 1, 0, 1, 0),
(242, 'apiv2_admin_ldap_config', 'API-v2 Admin - LDAP Configurations', 1, 0, 1, 0),
(243, 'apiv2_admin_ldap_test_connection', 'API-v2 Admin - LDAP Test Connection', 0, 1, 0, 0),
(244, 'apiv2_admin_ldap_user_sync', 'API-v2 Admin - LDAP User Sync', 1, 1, 0, 0),
(245, 'dashboard_subunit_widget', 'Dashboard - Subunit Widget Visibility', 1, 0, 0, 0),
(246, 'dashboard_location_widget', 'Dashboard - Location Widget Visibility', 1, 0, 0, 0),
(247, 'dashboard_leave_widget', 'Dashboard - Leave Widget Visibility', 1, 0, 0, 0),
(248, 'dashboard_time_widget', 'Dashboard - Time Widget Visibility', 1, 0, 0, 0),
(249, 'dashboard_employees_on_leave_today_config', 'Dashboard - Employees On Leave Today Config', 1, 0, 1, 0),
(250, 'apiv2_buzz_upcoming_anniversaries', 'Buzz - Upcoming Anniversaries', 1, 0, 0, 0),
(251, 'apiv2_buzz_feed', 'Buzz - Feed', 1, 0, 0, 0),
(252, 'apiv2_buzz_posts', 'Buzz - Posts', 1, 1, 1, 1),
(253, 'apiv2_buzz_shares', 'Buzz - Shares', 1, 1, 1, 1),
(254, 'apiv2_buzz_comments', 'Buzz - Comments', 1, 1, 1, 1),
(255, 'apiv2_buzz_like_on_share', 'Buzz - Likes on Share', 1, 1, 0, 1),
(256, 'apiv2_buzz_like_on_comment', 'Buzz - Likes on Comment', 1, 1, 0, 1),
(257, 'apiv2_buzz_video_url_validation', 'Buzz - Validate URL of Video Post', 1, 0, 0, 0),
(258, 'apiv2_buzz_post_share', 'Buzz - Post Share', 1, 0, 0, 0),
(259, 'buzz_post', 'Buzz - Post', 0, 0, 1, 1),
(260, 'buzz_comment', 'Buzz - Comment', 0, 0, 1, 1),
(261, 'apiv2_pim_my_info', 'PIM - Logged In User Details', 1, 0, 0, 0),
(262, 'apiv2_mobile_modules', 'Mobile - Enable Modules', 1, 0, 0, 0),
(263, 'apiv2_leave_employee_leave', 'Leave - employees leaves', 1, 0, 0, 0),
(264, 'apiv2_leave_employee_leave_balances', 'Leave - Employee Leave Balances', 1, 0, 0, 0),
(265, 'apiv2_claim_event', 'Claim - Claim Events', 1, 1, 1, 1),
(266, 'apiv2_claim_expense_types', 'Claim - Claim Expense Types', 1, 1, 1, 1),
(267, 'apiv2_claim_my_claim_request', 'Claim - Create Claim Request', 1, 1, 0, 0),
(268, 'apiv2_claim_employee_claim_request', 'Claim - Create Claim Request', 1, 1, 0, 0),
(269, 'apiv2_claim_expense', 'Claim - Claim Expenses', 1, 1, 1, 1),
(270, 'apiv2_claim_attachment', 'Claim - Claim Attachment', 1, 1, 1, 1),
(271, 'apiv2_claim_claim_request_action', 'Claim - Claim Request Action', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_display_field`
--

CREATE TABLE `ohrm_display_field` (
  `display_field_id` bigint(20) NOT NULL,
  `report_group_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `field_alias` varchar(255) DEFAULT NULL,
  `is_sortable` varchar(10) NOT NULL,
  `sort_order` varchar(255) DEFAULT NULL,
  `sort_field` varchar(255) DEFAULT NULL,
  `element_type` varchar(255) NOT NULL,
  `element_property` varchar(1000) NOT NULL,
  `width` varchar(255) NOT NULL,
  `is_exportable` varchar(10) DEFAULT NULL,
  `text_alignment_style` varchar(20) DEFAULT NULL,
  `is_value_list` tinyint(1) NOT NULL DEFAULT 0,
  `display_field_group_id` int(10) UNSIGNED DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `is_encrypted` tinyint(1) NOT NULL DEFAULT 0,
  `is_meta` tinyint(1) NOT NULL DEFAULT 0,
  `class_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_display_field`
--

INSERT INTO `ohrm_display_field` (`display_field_id`, `report_group_id`, `name`, `label`, `field_alias`, `is_sortable`, `sort_order`, `sort_field`, `element_type`, `element_property`, `width`, `is_exportable`, `text_alignment_style`, `is_value_list`, `display_field_group_id`, `default_value`, `is_encrypted`, `is_meta`, `class_name`) VALUES
(1, 1, 'ohrm_project.name', 'Project Name', 'projectname', 'false', NULL, NULL, 'label', '<xml><getter>projectname</getter></xml>', '200', '0', NULL, 0, NULL, NULL, 0, 0, NULL),
(2, 1, 'ohrm_project_activity.name', 'Activity Name', 'activityname', 'false', NULL, NULL, 'link', '<xml><labelGetter>activityname</labelGetter><placeholderGetters><id>activity_id</id><total>totalduration</total><projectId>projectId</projectId><from>fromDate</from><to>toDate</to><approved>onlyIncludeApprovedTimesheets</approved></placeholderGetters><urlPattern>../../displayProjectActivityDetailsReport?reportId=3#activityId={id}#total={total}#from={from}#to={to}#projectId={projectId}#onlyIncludeApprovedTimesheets={approved}</urlPattern></xml>', '200', '0', NULL, 0, NULL, NULL, 0, 0, NULL),
(3, 1, 'ohrm_project_activity.project_id', 'Project Id', NULL, 'false', NULL, NULL, 'label', '<xml><getter>project_id</getter></xml>', '75', '0', 'right', 0, NULL, NULL, 0, 1, NULL),
(4, 1, 'ohrm_project_activity.activity_id', 'Activity Id', NULL, 'false', NULL, NULL, 'label', '<xml><getter>activity_id</getter></xml>', '75', '0', 'right', 0, NULL, NULL, 0, 1, NULL),
(5, 1, 'ohrm_timesheet_item.duration', 'Time (hours)', NULL, 'false', NULL, NULL, 'label', '<xml><getter>duration</getter></xml>', '75', '0', 'right', 0, NULL, NULL, 0, 0, NULL),
(6, 1, 'hs_hr_employee.emp_firstname', 'Employee First Name', NULL, 'false', NULL, NULL, 'label', '<xml><getter>emp_firstname</getter></xml>', '200', '0', NULL, 0, NULL, NULL, 0, 0, NULL),
(7, 1, 'hs_hr_employee.emp_lastname', 'Employee Last Name', NULL, 'false', NULL, NULL, 'label', '<xml><getter>emp_lastname</getter></xml>', '200', '0', NULL, 0, NULL, NULL, 0, 0, NULL),
(8, 1, 'ohrm_project_activity.name', 'Activity Name', 'activityname', 'false', NULL, NULL, 'label', '<xml><getter>activityname</getter></xml>', '200', '0', NULL, 0, NULL, NULL, 0, 0, NULL),
(9, 3, 'hs_hr_employee.employee_id', 'Employee Id', 'employeeId', 'false', NULL, NULL, 'label', '<xml><getter>employeeId</getter></xml>', '100', '0', NULL, 0, 1, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericBasicDisplayField'),
(10, 3, 'hs_hr_employee.emp_lastname', 'Employee Last Name', 'employeeLastname', 'false', NULL, NULL, 'label', '<xml><getter>employeeLastname</getter></xml>', '200', '0', NULL, 0, 1, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericBasicDisplayField'),
(11, 3, 'hs_hr_employee.emp_firstname', 'Employee First Name', 'employeeFirstname', 'false', NULL, NULL, 'label', '<xml><getter>employeeFirstname</getter></xml>', '200', '0', NULL, 0, 1, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericBasicDisplayField'),
(12, 3, 'hs_hr_employee.emp_middle_name', 'Employee Middle Name', 'employeeMiddlename', 'false', NULL, NULL, 'label', '<xml><getter>employeeMiddlename</getter></xml>', '200', '0', NULL, 0, 1, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericBasicDisplayField'),
(13, 3, 'hs_hr_employee.emp_birthday', 'Date of Birth', 'empBirthday', 'false', NULL, NULL, 'labelDate', '<xml><getter>empBirthday</getter></xml>', '100', '0', NULL, 0, 1, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericDateDisplayField'),
(14, 3, 'ohrm_nationality.name', 'Nationality', 'employeeNationality', 'false', NULL, NULL, 'label', '<xml><getter>nationality</getter></xml>', '200', '0', NULL, 0, 1, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericBasicDisplayField'),
(15, 3, 'CASE hs_hr_employee.emp_gender WHEN 1 THEN \"Male\" WHEN 2 THEN \"Female\" WHEN 3 THEN \"Other\" END', 'Gender', 'empGender', 'false', NULL, NULL, 'label', '<xml><getter>empGender</getter></xml>', '80', '0', NULL, 0, 1, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Personal\\EmployeeGender'),
(17, 3, 'hs_hr_employee.emp_marital_status', 'Marital Status', 'maritalStatus', 'false', NULL, NULL, 'label', '<xml><getter>maritalStatus</getter></xml>', '100', '0', NULL, 0, 1, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericBasicDisplayField'),
(18, 3, 'hs_hr_employee.emp_dri_lice_num', 'Driver License Number', 'driversLicenseNumber', 'false', NULL, NULL, 'label', '<xml><getter>driversLicenseNumber</getter></xml>', '240', '0', NULL, 0, 1, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericBasicDisplayField'),
(19, 3, 'hs_hr_employee.emp_dri_lice_exp_date', 'License Expiry Date', 'licenseExpiryDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>licenseExpiryDate</getter></xml>', '135', '0', NULL, 0, 1, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericDateDisplayField'),
(20, 3, 'CONCAT_WS(\", \", NULLIF(hs_hr_employee.emp_street1, \"\"), NULLIF(hs_hr_employee.emp_street2, \"\"), NULLIF(hs_hr_employee.city_code, \"\"), NULLIF(hs_hr_employee.provin_code,\"\"), NULLIF(hs_hr_employee.emp_zipcode,\"\"), NULLIF(hs_hr_country.cou_name,\"\"))', 'Address', 'address', 'false', NULL, NULL, 'label', '<xml><getter>address</getter></xml>', '200', '0', NULL, 0, 2, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\ContactDetail\\EmployeeAddress'),
(21, 3, 'hs_hr_employee.emp_hm_telephone', 'Home Telephone', 'homeTelephone', 'false', NULL, NULL, 'label', '<xml><getter>homeTelephone</getter></xml>', '130', '0', NULL, 0, 2, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericBasicDisplayField'),
(22, 3, 'hs_hr_employee.emp_mobile', 'Mobile', 'mobile', 'false', NULL, NULL, 'label', '<xml><getter>mobile</getter></xml>', '100', '0', NULL, 0, 2, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericBasicDisplayField'),
(23, 3, 'hs_hr_employee.emp_work_telephone', 'Work Telephone', 'workTelephone', 'false', NULL, NULL, 'label', '<xml><getter>workTelephone</getter></xml>', '100', '0', NULL, 0, 2, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericBasicDisplayField'),
(24, 3, 'hs_hr_employee.emp_work_email', 'Work Email', 'workEmail', 'false', NULL, NULL, 'label', '<xml><getter>workEmail</getter></xml>', '200', '0', NULL, 0, 2, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericBasicDisplayField'),
(25, 3, 'hs_hr_employee.emp_oth_email', 'Other Email', 'otherEmail', 'false', NULL, NULL, 'label', '<xml><getter>otherEmail</getter></xml>', '200', '0', NULL, 0, 2, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericBasicDisplayField'),
(26, 3, 'hs_hr_emp_emergency_contacts.eec_name', 'Name', 'ecname', 'false', NULL, NULL, 'label', '<xml><getter>ecname</getter></xml>', '200', '0', NULL, 1, 3, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\EmergencyContact\\EmergencyContact'),
(27, 3, 'hs_hr_emp_emergency_contacts.eec_home_no', 'Home Telephone', 'ecHomeTelephone', 'false', NULL, NULL, 'label', '<xml><getter>ecHomeTelephone</getter></xml>', '130', '0', NULL, 1, 3, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\EmergencyContact\\EmergencyContact'),
(28, 3, 'hs_hr_emp_emergency_contacts.eec_office_no', 'Work Telephone', 'ecWorkTelephone', 'false', NULL, NULL, 'label', '<xml><getter>ecWorkTelephone</getter></xml>', '100', '0', NULL, 1, 3, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\EmergencyContact\\EmergencyContact'),
(29, 3, 'hs_hr_emp_emergency_contacts.eec_relationship', 'Relationship', 'ecRelationship', 'false', NULL, NULL, 'label', '<xml><getter>ecRelationship</getter></xml>', '200', '0', NULL, 1, 3, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\EmergencyContact\\EmergencyContact'),
(30, 3, 'hs_hr_emp_emergency_contacts.eec_mobile_no', 'Mobile', 'ecMobile', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 3, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\EmergencyContact\\EmergencyContact'),
(31, 3, 'hs_hr_emp_dependents.ed_name', 'Name', 'dependentName', 'false', NULL, NULL, 'label', '<xml><getter>dependentName</getter></xml>', '200', '0', NULL, 1, 4, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Dependent\\Dependent'),
(32, 3, 'IF (hs_hr_emp_dependents.ed_relationship_type = \'other\', hs_hr_emp_dependents.ed_relationship, hs_hr_emp_dependents.ed_relationship_type)', 'Relationship', 'dependentRelationship', 'false', NULL, NULL, 'label', '<xml><getter>dependentRelationship</getter></xml>', '200', '0', NULL, 1, 4, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Dependent\\Dependent'),
(33, 3, 'hs_hr_emp_dependents.ed_date_of_birth', 'Date of Birth', 'dependentDateofBirth', 'false', NULL, NULL, 'labelDate', '<xml><getter>dependentDateofBirth</getter></xml>', '100', '0', NULL, 1, 4, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Dependent\\Dependent'),
(35, 3, 'ohrm_membership.name', 'Membership', 'membershipName', 'false', NULL, NULL, 'label', '<xml><getter>name</getter></xml>', '200', '0', NULL, 1, 15, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Membership\\Membership'),
(36, 3, 'hs_hr_emp_member_detail.ememb_subscript_ownership', 'Subscription Paid By', 'subscriptionPaidBy', 'false', NULL, NULL, 'label', '<xml><getter>subscriptionPaidBy</getter></xml>', '200', '0', NULL, 1, 15, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Membership\\Membership'),
(37, 3, 'hs_hr_emp_member_detail.ememb_subscript_amount', 'Subscription Amount', 'subscriptionAmount', 'false', NULL, NULL, 'label', '<xml><getter>subscriptionAmount</getter></xml>', '200', '0', NULL, 1, 15, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Membership\\Membership'),
(38, 3, 'hs_hr_emp_member_detail.ememb_subs_currency', 'Currency', 'membershipCurrency', 'false', NULL, NULL, 'label', '<xml><getter>membershipCurrency</getter></xml>', '200', '0', NULL, 1, 15, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Membership\\Membership'),
(39, 3, 'hs_hr_emp_member_detail.ememb_commence_date', 'Subscription Commence Date', 'subscriptionCommenceDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>subscriptionCommenceDate</getter></xml>', '200', '0', NULL, 1, 15, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Membership\\Membership'),
(40, 3, 'hs_hr_emp_member_detail.ememb_renewal_date', 'Subscription Renewal Date', 'subscriptionRenewalDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>subscriptionRenewalDate</getter></xml>', '200', '0', NULL, 1, 15, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Membership\\Membership'),
(41, 3, 'hs_hr_emp_work_experience.eexp_employer', 'Company', 'expCompany', 'false', NULL, NULL, 'label', '<xml><getter>expCompany</getter></xml>', '200', '0', NULL, 1, 10, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\WorkExperience\\WorkExperience'),
(42, 3, 'hs_hr_emp_work_experience.eexp_jobtit', 'Job Title', 'expJobTitle', 'false', NULL, NULL, 'label', '<xml><getter>expJobTitle</getter></xml>', '200', '0', NULL, 1, 10, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\WorkExperience\\WorkExperience'),
(43, 3, 'hs_hr_emp_work_experience.eexp_from_date', 'From', 'expFrom', 'false', NULL, NULL, 'labelDate', '<xml><getter>expFrom</getter></xml>', '100', '0', NULL, 1, 10, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\WorkExperience\\WorkExperience'),
(44, 3, 'hs_hr_emp_work_experience.eexp_to_date', 'To', 'expTo', 'false', NULL, NULL, 'labelDate', '<xml><getter>expTo</getter></xml>', '100', '0', NULL, 1, 10, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\WorkExperience\\WorkExperience'),
(45, 3, 'hs_hr_emp_work_experience.eexp_comments', 'Comment', 'expComment', 'false', NULL, NULL, 'label', '<xml><getter>expComment</getter></xml>', '200', '0', NULL, 1, 10, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\WorkExperience\\WorkExperience'),
(47, 3, 'ohrm_education.name', 'Level', 'eduProgram', 'false', NULL, NULL, 'label', '<xml><getter>eduProgram</getter></xml>', '200', '0', NULL, 1, 11, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Education\\Education'),
(48, 3, 'ohrm_emp_education.year', 'Year', 'eduYear', 'false', NULL, NULL, 'label', '<xml><getter>eduYear</getter></xml>', '100', '0', NULL, 1, 11, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Education\\Education'),
(49, 3, 'ohrm_emp_education.score', 'Score', 'eduGPAOrScore', 'false', NULL, NULL, 'label', '<xml><getter>eduGPAOrScore</getter></xml>', '80', '0', NULL, 1, 11, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Education\\Education'),
(52, 3, 'ohrm_skill.name', 'Skill', 'skill', 'false', NULL, NULL, 'label', '<xml><getter>skill</getter></xml>', '200', '0', NULL, 1, 12, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Skill\\Skill'),
(53, 3, 'hs_hr_emp_skill.years_of_exp', 'Years of Experience', 'skillYearsOfExperience', 'false', NULL, NULL, 'label', '<xml><getter>skillYearsOfExperience</getter></xml>', '135', '0', NULL, 1, 12, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Skill\\Skill'),
(54, 3, 'hs_hr_emp_skill.comments', 'Comments', 'skillComments', 'false', NULL, NULL, 'label', '<xml><getter>skillComments</getter></xml>', '200', '0', NULL, 1, 12, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Skill\\Skill'),
(55, 3, 'ohrm_language.name', 'Language', 'langName', 'false', NULL, NULL, 'label', '<xml><getter>langName</getter></xml>', '200', '0', NULL, 1, 13, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Language\\Language'),
(57, 3, 'CASE hs_hr_emp_language.competency WHEN 1 THEN \"Poor\" WHEN 2 THEN \"Basic\" WHEN 3 THEN \"Good\" WHEN 4 THEN \"Mother Tongue\" END', 'Competency', 'langCompetency', 'false', NULL, NULL, 'label', '<xml><getter>langCompetency</getter></xml>', '130', '0', NULL, 1, 13, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Language\\Language'),
(58, 3, 'hs_hr_emp_language.comments', 'Comments', 'langComments', 'false', NULL, NULL, 'label', '<xml><getter>langComments</getter></xml>', '200', '0', NULL, 1, 13, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Language\\Language'),
(59, 3, 'ohrm_license.name', 'License Type', 'empLicenseType', 'false', NULL, NULL, 'label', '<xml><getter>empLicenseType</getter></xml>', '200', '0', NULL, 1, 14, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\License\\License'),
(60, 3, 'ohrm_emp_license.license_issued_date', 'Issued Date', 'empLicenseIssuedDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>empLicenseIssuedDate</getter></xml>', '100', '0', NULL, 1, 14, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\License\\License'),
(61, 3, 'ohrm_emp_license.license_expiry_date', 'Expiry Date', 'empLicenseExpiryDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>empLicenseExpiryDate</getter></xml>', '100', '0', NULL, 1, 14, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\License\\License'),
(62, 3, 'supervisor.emp_firstname', 'First Name', 'supervisorFirstName', 'false', NULL, NULL, 'label', '<xml><getter>supervisorFirstName</getter></xml>', '200', '0', NULL, 1, 9, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Supervisor\\Supervisor'),
(63, 3, 'subordinate.emp_firstname', 'First Name', 'subordinateFirstName', 'false', NULL, NULL, 'label', '<xml><getter>subordinateFirstName</getter></xml>', '200', '0', NULL, 1, 8, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Subordinate\\Subordinate'),
(64, 3, 'supervisor.emp_lastname', 'Last Name', 'supervisorLastName', 'false', NULL, NULL, 'label', '<xml><getter>supervisorLastName</getter></xml>', '200', '0', NULL, 1, 9, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Supervisor\\Supervisor'),
(65, 3, 'ohrm_pay_grade.name', 'Pay Grade', 'salPayGrade', 'false', NULL, NULL, 'label', '<xml><getter>salPayGrade</getter></xml>', '200', '0', NULL, 1, 7, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Salary\\Salary'),
(66, 3, 'hs_hr_emp_basicsalary.salary_component', 'Salary Component', 'salSalaryComponent', 'false', NULL, NULL, 'label', '<xml><getter>salSalaryComponent</getter></xml>', '200', '0', NULL, 1, 7, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Salary\\Salary'),
(67, 3, 'hs_hr_emp_basicsalary.ebsal_basic_salary', 'Amount', 'salAmount', 'false', NULL, NULL, 'label', '<xml><getter>salAmount</getter></xml>', '200', '0', NULL, 1, 7, '---', 1, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Salary\\Salary'),
(68, 3, 'hs_hr_emp_basicsalary.comments', 'Comments', 'salComments', 'false', NULL, NULL, 'label', '<xml><getter>salComments</getter></xml>', '200', '0', NULL, 1, 7, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Salary\\Salary'),
(69, 3, 'hs_hr_payperiod.payperiod_name', 'Pay Frequency', 'salPayFrequency', 'false', NULL, NULL, 'label', '<xml><getter>salPayFrequency</getter></xml>', '200', '0', NULL, 1, 7, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Salary\\Salary'),
(70, 3, 'hs_hr_currency_type.currency_name', 'Currency', 'salCurrency', 'false', NULL, NULL, 'label', '<xml><getter>salCurrency</getter></xml>', '200', '0', NULL, 1, 7, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Salary\\Salary'),
(71, 3, 'hs_hr_emp_directdebit.dd_account', 'Direct Deposit Account Number', 'ddAccountNumber', 'false', NULL, NULL, 'label', '<xml><getter>ddAccountNumber</getter></xml>', '200', '0', NULL, 1, 7, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Salary\\Salary'),
(72, 3, 'hs_hr_emp_directdebit.dd_account_type', 'Direct Deposit Account Type', 'ddAccountType', 'false', NULL, NULL, 'label', '<xml><getter>ddAccountType</getter></xml>', '200', '0', NULL, 1, 7, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Salary\\Salary'),
(73, 3, 'hs_hr_emp_directdebit.dd_routing_num', 'Direct Deposit Routing Number', 'ddRoutingNumber', 'false', NULL, NULL, 'label', '<xml><getter>ddRoutingNumber</getter></xml>', '200', '0', NULL, 1, 7, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Salary\\Salary'),
(74, 3, 'hs_hr_emp_directdebit.dd_amount', 'Direct Deposit Amount', 'ddAmount', 'false', NULL, NULL, 'label', '<xml><getter>ddAmount</getter></xml>', '200', '0', NULL, 1, 7, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Salary\\Salary'),
(75, 3, 'hs_hr_emp_contract_extend.econ_extend_start_date', 'Contract Start Date', 'empContStartDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>empContStartDate</getter></xml>', '200', '0', NULL, 0, 6, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericDateDisplayField'),
(76, 3, 'hs_hr_emp_contract_extend.econ_extend_end_date', 'Contract End Date', 'empContEndDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>empContEndDate</getter></xml>', '200', '0', NULL, 0, 6, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericDateDisplayField'),
(77, 3, 'ohrm_job_title.job_title', 'Job Title', 'empJobTitle', 'false', NULL, NULL, 'label', '<xml><getter>empJobTitle</getter></xml>', '200', '0', NULL, 0, 6, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericBasicDisplayField'),
(78, 3, 'ohrm_employment_status.name', 'Employment Status', 'empEmploymentStatus', 'false', NULL, NULL, 'label', '<xml><getter>empEmploymentStatus</getter></xml>', '200', '0', NULL, 0, 6, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericBasicDisplayField'),
(80, 3, 'ohrm_job_category.name', 'Job Category', 'empJobCategory', 'false', NULL, NULL, 'label', '<xml><getter>empJobCategory</getter></xml>', '200', '0', NULL, 0, 6, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericBasicDisplayField'),
(81, 3, 'hs_hr_employee.joined_date', 'Joined Date', 'empJoinedDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>empJoinedDate</getter></xml>', '100', '0', NULL, 0, 6, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericDateDisplayField'),
(82, 3, 'ohrm_subunit.name', 'Sub Unit', 'empSubUnit', 'false', NULL, NULL, 'label', '<xml><getter>empSubUnit</getter></xml>', '200', '0', NULL, 0, 6, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericBasicDisplayField'),
(83, 3, 'ohrm_location.name', 'Location', 'empLocation', 'false', NULL, NULL, 'label', '<xml><getter>empLocation</getter></xml>', '200', '0', NULL, 0, 6, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericBasicDisplayField'),
(84, 3, 'hs_hr_emp_passport.ep_passport_num', 'Number', 'empPassportNo', 'false', NULL, NULL, 'label', '<xml><getter>empPassportNo</getter></xml>', '200', '0', NULL, 1, 5, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Immigration\\Immigration'),
(85, 3, 'hs_hr_emp_passport.ep_passportissueddate', 'Issued Date', 'empPassportIssuedDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>empPassportIssuedDate</getter></xml>', '100', '0', NULL, 1, 5, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Immigration\\Immigration'),
(86, 3, 'hs_hr_emp_passport.ep_passportexpiredate', 'Expiry Date', 'empPassportExpiryDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>empPassportExpiryDate</getter></xml>', '100', '0', NULL, 1, 5, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Immigration\\Immigration'),
(87, 3, 'hs_hr_emp_passport.ep_i9_status', 'Eligibility Status', 'empPassportEligibleStatus', 'false', NULL, NULL, 'label', '<xml><getter>empPassportEligibleStatus</getter></xml>', '200', '0', NULL, 1, 5, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Immigration\\Immigration'),
(88, 3, 'hs_hr_emp_passport.cou_code', 'Issued By', 'empPassportIssuedBy', 'false', NULL, NULL, 'label', '<xml><getter>empPassportIssuedBy</getter></xml>', '200', '0', NULL, 1, 5, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Immigration\\Immigration'),
(89, 3, 'hs_hr_emp_passport.ep_i9_review_date', 'Eligibility Review Date', 'empPassportEligibleReviewDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>empPassportEligibleReviewDate</getter></xml>', '200', '0', NULL, 1, 5, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Immigration\\Immigration'),
(90, 3, 'hs_hr_emp_passport.ep_comments', 'Comments', 'empPassportComments', 'false', NULL, NULL, 'label', '<xml><getter>empPassportComments</getter></xml>', '200', '0', NULL, 1, 5, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Immigration\\Immigration'),
(91, 3, 'subordinate.emp_lastname', 'Last Name', 'subordinateLastName', 'false', NULL, NULL, 'label', '<xml><getter>subordinateLastName</getter></xml>', '200', '0', NULL, 1, 8, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Subordinate\\Subordinate'),
(92, 3, 'CASE hs_hr_emp_language.fluency WHEN 1 THEN \"Writing\" WHEN 2 THEN \"Speaking\" WHEN 3 THEN \"Reading\" END', 'Fluency', 'langFluency', 'false', NULL, NULL, 'label', '<xml><getter>langFluency</getter></xml>', '200', '0', NULL, 1, 13, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Language\\Language'),
(93, 3, 'supervisor_reporting_method.reporting_method_name', 'Reporting Method', 'supReportingMethod', 'false', NULL, NULL, 'label', '<xml><getter>supReportingMethod</getter></xml>', '200', '0', NULL, 1, 9, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Supervisor\\Supervisor'),
(94, 3, 'subordinate_reporting_method.reporting_method_name', 'Reporting Method', 'subReportingMethod', 'false', NULL, NULL, 'label', '<xml><getter>subReportingMethod</getter></xml>', '200', '0', NULL, 1, 8, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Subordinate\\Subordinate'),
(95, 3, 'CASE hs_hr_emp_passport.ep_passport_type_flg WHEN 1 THEN \"Passport\" WHEN 2 THEN \"Visa\" END', 'Document Type', 'documentType', 'false', NULL, NULL, 'label', '<xml><getter>documentType</getter></xml>', '200', '0', NULL, 1, 5, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Immigration\\Immigration'),
(97, 3, 'hs_hr_employee.emp_other_id', 'Other Id', 'otherId', 'false', NULL, NULL, 'label', '<xml><getter>otherId</getter></xml>', '100', '0', NULL, 0, 1, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericBasicDisplayField'),
(98, 3, 'hs_hr_emp_emergency_contacts.eec_seqno', 'ecSeqNo', 'ecSeqNo', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 3, '---', 0, 1, 'OrangeHRM\\Core\\Report\\DisplayField\\EmergencyContact\\EmergencyContact'),
(99, 3, 'hs_hr_emp_dependents.ed_seqno', 'SeqNo', 'edSeqNo', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 4, '---', 0, 1, 'OrangeHRM\\Core\\Report\\DisplayField\\Dependent\\Dependent'),
(100, 3, 'hs_hr_emp_passport.ep_seqno', 'SeqNo', 'epSeqNo', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 5, '---', 0, 1, 'OrangeHRM\\Core\\Report\\DisplayField\\Immigration\\Immigration'),
(101, 3, 'hs_hr_emp_basicsalary.id', 'salaryId', 'salaryId', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 7, '---', 0, 1, 'OrangeHRM\\Core\\Report\\DisplayField\\Salary\\Salary'),
(102, 3, 'subordinate.emp_number', 'subordinateId', 'subordinateId', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 8, '---', 0, 1, 'OrangeHRM\\Core\\Report\\DisplayField\\Subordinate\\Subordinate'),
(103, 3, 'supervisor.emp_number', 'supervisorId', 'supervisorId', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 9, '---', 0, 1, 'OrangeHRM\\Core\\Report\\DisplayField\\Supervisor\\Supervisor'),
(104, 3, 'hs_hr_emp_work_experience.eexp_seqno', 'workExpSeqNo', 'workExpSeqNo', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 10, '---', 0, 1, 'OrangeHRM\\Core\\Report\\DisplayField\\WorkExperience\\WorkExperience'),
(105, 3, 'ohrm_emp_education.education_id', 'empEduCode', 'empEduCode', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 11, '---', 0, 1, 'OrangeHRM\\Core\\Report\\DisplayField\\Education\\Education'),
(106, 3, 'hs_hr_emp_skill.skill_id', 'empSkillCode', 'empSkillCode', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 12, '---', 0, 1, 'OrangeHRM\\Core\\Report\\DisplayField\\Skill\\Skill'),
(107, 3, 'hs_hr_emp_language.lang_id', 'empLangCode', 'empLangCode', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 13, '---', 0, 1, 'OrangeHRM\\Core\\Report\\DisplayField\\Language\\Language'),
(108, 3, 'hs_hr_emp_language.fluency', 'empLangType', 'empLangType', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 13, '---', 0, 1, 'OrangeHRM\\Core\\Report\\DisplayField\\Language\\Language'),
(109, 3, 'ohrm_emp_license.license_id', 'empLicenseCode', 'empLicenseCode', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 14, '---', 0, 1, 'OrangeHRM\\Core\\Report\\DisplayField\\License\\License'),
(110, 3, 'hs_hr_emp_member_detail.membship_code', 'membershipCode', 'membershipCode', 'false', NULL, NULL, 'label', '<xml><getter>ecMobile</getter></xml>', '100', '0', NULL, 1, 15, '---', 0, 1, 'OrangeHRM\\Core\\Report\\DisplayField\\Membership\\Membership'),
(112, 3, 'ROUND(DATEDIFF(hs_hr_emp_work_experience.eexp_to_date, hs_hr_emp_work_experience.eexp_from_date)/365,1)', 'Duration', 'expDuration', 'false', NULL, NULL, 'label', '<xml><getter>expDuration</getter></xml>', '100', '0', NULL, 1, 10, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\WorkExperience\\WorkExperience'),
(113, 3, 'ohrm_emp_termination.termination_date', 'Termination Date', 'terminationDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>terminationDate</getter></xml>', '100', '0', NULL, 0, 6, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericDateDisplayField'),
(114, 3, 'ohrm_emp_termination_reason.name', 'Termination Reason', 'empTerminationReason', 'false', NULL, NULL, 'label', '<xml><getter>terminationReason</getter></xml>', '100', '0', NULL, 0, 6, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericBasicDisplayField'),
(115, 3, 'ohrm_emp_education.institute', 'Institute', 'getInstitute', 'false', NULL, NULL, 'label', '<xml><getter>getInstitute</getter></xml>', '80', '0', NULL, 1, 11, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Education\\Education'),
(116, 3, 'ohrm_emp_education.major', 'Major/Specialization', 'getMajor', 'false', NULL, NULL, 'label', '<xml><getter>getMajor</getter></xml>', '80', '0', NULL, 1, 11, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Education\\Education'),
(117, 3, 'ohrm_emp_education.start_date', 'Start Date', 'getStartDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>getStartDate</getter></xml>', '80', '0', NULL, 1, 11, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Education\\Education'),
(118, 3, 'ohrm_emp_education.end_date', 'End Date', 'getEndDate', 'false', NULL, NULL, 'labelDate', '<xml><getter>getEndDate</getter></xml>', '80', '0', NULL, 1, 11, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\Education\\Education'),
(119, 3, 'ohrm_emp_license.license_no', 'License Number', 'getLicenseNo', 'false', NULL, NULL, 'label', '<xml><getter>getLicenseNo</getter></xml>', '200', '0', NULL, 1, 14, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\License\\License'),
(120, 3, 'ohrm_emp_termination.note', 'Termination Note', 'terminationNote', 'false', NULL, NULL, 'label', '<xml><getter>getNote</getter></xml>', '100', '0', NULL, 0, 6, '---', 0, 0, 'OrangeHRM\\Core\\Report\\DisplayField\\GenericBasicDisplayField');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_display_field_group`
--

CREATE TABLE `ohrm_display_field_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `report_group_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_list` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_display_field_group`
--

INSERT INTO `ohrm_display_field_group` (`id`, `report_group_id`, `name`, `is_list`) VALUES
(1, 3, 'Personal', 0),
(2, 3, 'Contact Details', 0),
(3, 3, 'Emergency Contacts', 1),
(4, 3, 'Dependents', 1),
(5, 3, 'Immigration', 1),
(6, 3, 'Job', 0),
(7, 3, 'Salary', 1),
(8, 3, 'Subordinates', 1),
(9, 3, 'Supervisors', 1),
(10, 3, 'Work Experience', 1),
(11, 3, 'Education', 1),
(12, 3, 'Skills', 1),
(13, 3, 'Languages', 1),
(14, 3, 'License', 1),
(15, 3, 'Memberships', 1),
(16, 3, 'Custom Fields', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_education`
--

CREATE TABLE `ohrm_education` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_email`
--

CREATE TABLE `ohrm_email` (
  `id` int(6) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_email`
--

INSERT INTO `ohrm_email` (`id`, `name`) VALUES
(1, 'leave.apply'),
(3, 'leave.approve'),
(2, 'leave.assign'),
(4, 'leave.cancel'),
(6, 'leave.change'),
(5, 'leave.reject');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_email_configuration`
--

CREATE TABLE `ohrm_email_configuration` (
  `id` int(10) NOT NULL,
  `mail_type` varchar(50) DEFAULT NULL,
  `sent_as` varchar(250) NOT NULL,
  `smtp_host` varchar(250) DEFAULT NULL,
  `smtp_port` int(10) DEFAULT NULL,
  `smtp_username` varchar(250) DEFAULT NULL,
  `smtp_password` varchar(250) DEFAULT NULL,
  `smtp_auth_type` varchar(50) DEFAULT NULL,
  `smtp_security_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_email_notification`
--

CREATE TABLE `ohrm_email_notification` (
  `id` int(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_enable` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_email_notification`
--

INSERT INTO `ohrm_email_notification` (`id`, `name`, `is_enable`) VALUES
(1, 'Leave Applications', 0),
(2, 'Leave Assignments', 0),
(3, 'Leave Approvals', 0),
(4, 'Leave Cancellations', 0),
(5, 'Leave Rejections', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_email_processor`
--

CREATE TABLE `ohrm_email_processor` (
  `id` int(6) NOT NULL,
  `email_id` int(6) NOT NULL,
  `class_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_email_processor`
--

INSERT INTO `ohrm_email_processor` (`id`, `email_id`, `class_name`) VALUES
(1, 1, 'OrangeHRM\\Leave\\Mail\\Processor\\LeaveAllocateEmailProcessor'),
(2, 2, 'OrangeHRM\\Leave\\Mail\\Processor\\LeaveAllocateEmailProcessor'),
(3, 3, 'OrangeHRM\\Leave\\Mail\\Processor\\LeaveStatusChangeEmailProcessor'),
(4, 4, 'OrangeHRM\\Leave\\Mail\\Processor\\LeaveStatusChangeEmailProcessor'),
(5, 5, 'OrangeHRM\\Leave\\Mail\\Processor\\LeaveStatusChangeEmailProcessor'),
(6, 6, 'LeaveChangeMailProcessor');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_email_subscriber`
--

CREATE TABLE `ohrm_email_subscriber` (
  `id` int(6) NOT NULL,
  `notification_id` int(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_email_template`
--

CREATE TABLE `ohrm_email_template` (
  `id` int(6) NOT NULL,
  `email_id` int(6) NOT NULL,
  `locale` varchar(20) DEFAULT NULL,
  `performer_role` varchar(50) DEFAULT NULL,
  `recipient_role` varchar(50) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_email_template`
--

INSERT INTO `ohrm_email_template` (`id`, `email_id`, `locale`, `performer_role`, `recipient_role`, `subject`, `body`) VALUES
(1, 1, 'en_US', NULL, 'supervisor', '/orangehrmLeavePlugin/Mail/templates/en_US/apply/leaveApplicationSubject.txt.twig', '/orangehrmLeavePlugin/Mail/templates/en_US/apply/leaveApplicationBody.html.twig'),
(2, 1, 'en_US', NULL, 'subscriber', '/orangehrmLeavePlugin/Mail/templates/en_US/apply/leaveApplicationSubject.txt.twig', '/orangehrmLeavePlugin/Mail/templates/en_US/apply/leaveApplicationSubscriberBody.html.twig'),
(3, 3, 'en_US', NULL, 'ess', '/orangehrmLeavePlugin/Mail/templates/en_US/approve/leaveApprovalSubject.txt.twig', '/orangehrmLeavePlugin/Mail/templates/en_US/approve/leaveApprovalBody.html.twig'),
(4, 3, 'en_US', NULL, 'subscriber', '/orangehrmLeavePlugin/Mail/templates/en_US/approve/leaveApprovalSubscriberSubject.txt.twig', '/orangehrmLeavePlugin/Mail/templates/en_US/approve/leaveApprovalSubscriberBody.html.twig'),
(5, 2, 'en_US', NULL, 'ess', '/orangehrmLeavePlugin/Mail/templates/en_US/assign/leaveAssignmentSubject.txt.twig', '/orangehrmLeavePlugin/Mail/templates/en_US/assign/leaveAssignmentBody.html.twig'),
(6, 2, 'en_US', NULL, 'supervisor', '/orangehrmLeavePlugin/Mail/templates/en_US/assign/leaveAssignmentSubjectForSupervisors.txt.twig', '/orangehrmLeavePlugin/Mail/templates/en_US/assign/leaveAssignmentBodyForSupervisors.html.twig'),
(7, 2, 'en_US', NULL, 'subscriber', '/orangehrmLeavePlugin/Mail/templates/en_US/assign/leaveAssignmentSubscriberSubject.txt.twig', '/orangehrmLeavePlugin/Mail/templates/en_US/assign/leaveAssignmentSubscriberBody.html.twig'),
(8, 4, 'en_US', 'ess', 'supervisor', '/orangehrmLeavePlugin/Mail/templates/en_US/cancel/leaveEmployeeCancellationSubject.txt.twig', '/orangehrmLeavePlugin/Mail/templates/en_US/cancel/leaveEmployeeCancellationBody.html.twig'),
(9, 4, 'en_US', 'ess', 'subscriber', '/orangehrmLeavePlugin/Mail/templates/en_US/cancel/leaveEmployeeCancellationSubscriberSubject.txt.twig', '/orangehrmLeavePlugin/Mail/templates/en_US/cancel/leaveEmployeeCancellationSubscriberBody.html.twig'),
(10, 4, 'en_US', NULL, 'ess', '/orangehrmLeavePlugin/Mail/templates/en_US/cancel/leaveCancellationSubject.txt.twig', '/orangehrmLeavePlugin/Mail/templates/en_US/cancel/leaveCancellationBody.html.twig'),
(11, 4, 'en_US', NULL, 'subscriber', '/orangehrmLeavePlugin/Mail/templates/en_US/cancel/leaveCancellationSubscriberSubject.txt.twig', '/orangehrmLeavePlugin/Mail/templates/en_US/cancel/leaveCancellationSubscriberBody.html.twig'),
(12, 5, 'en_US', NULL, 'ess', '/orangehrmLeavePlugin/Mail/templates/en_US/reject/leaveRejectionSubject.txt.twig', '/orangehrmLeavePlugin/Mail/templates/en_US/reject/leaveRejectionBody.html.twig'),
(13, 5, 'en_US', NULL, 'subscriber', '/orangehrmLeavePlugin/Mail/templates/en_US/reject/leaveRejectionSubscriberSubject.txt.twig', '/orangehrmLeavePlugin/Mail/templates/en_US/reject/leaveRejectionSubscriberBody.html.twig'),
(14, 6, 'en_US', NULL, 'ess', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/change/leaveChangeSubject.txt', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/change/leaveChangeBody.txt'),
(15, 6, 'en_US', NULL, 'subscriber', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/change/leaveChangeSubscriberSubject.txt', 'orangehrmLeavePlugin/modules/leave/templates/mail/en_US/change/leaveChangeSubscriberBody.txt');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_employee_event`
--

CREATE TABLE `ohrm_employee_event` (
  `event_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ohrm_employee_event`
--

INSERT INTO `ohrm_employee_event` (`event_id`, `employee_id`, `type`, `event`, `note`, `created_date`, `created_by`) VALUES
(1, 2, 'employee', 'SAVE', 'Saving Employee', '2023-08-18 11:34:09', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_employee_subscription`
--

CREATE TABLE `ohrm_employee_subscription` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_employee_work_shift`
--

CREATE TABLE `ohrm_employee_work_shift` (
  `work_shift_id` int(11) NOT NULL,
  `emp_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_employment_status`
--

CREATE TABLE `ohrm_employment_status` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_emp_education`
--

CREATE TABLE `ohrm_emp_education` (
  `id` int(11) NOT NULL,
  `emp_number` int(11) NOT NULL,
  `education_id` int(11) NOT NULL,
  `institute` varchar(100) DEFAULT NULL,
  `major` varchar(100) DEFAULT NULL,
  `year` decimal(4,0) DEFAULT NULL,
  `score` varchar(25) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_emp_license`
--

CREATE TABLE `ohrm_emp_license` (
  `emp_number` int(11) NOT NULL,
  `license_id` int(11) NOT NULL,
  `license_no` varchar(50) DEFAULT NULL,
  `license_issued_date` date DEFAULT NULL,
  `license_expiry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_emp_reporting_method`
--

CREATE TABLE `ohrm_emp_reporting_method` (
  `reporting_method_id` int(7) NOT NULL,
  `reporting_method_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_emp_reporting_method`
--

INSERT INTO `ohrm_emp_reporting_method` (`reporting_method_id`, `reporting_method_name`) VALUES
(1, 'Direct'),
(2, 'Indirect');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_emp_termination`
--

CREATE TABLE `ohrm_emp_termination` (
  `id` int(4) NOT NULL,
  `emp_number` int(4) DEFAULT NULL,
  `reason_id` int(4) DEFAULT NULL,
  `termination_date` date NOT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_emp_termination_reason`
--

CREATE TABLE `ohrm_emp_termination_reason` (
  `id` int(4) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_emp_termination_reason`
--

INSERT INTO `ohrm_emp_termination_reason` (`id`, `name`) VALUES
(1, 'Other'),
(2, 'Retired'),
(3, 'Contract Not Renewed'),
(4, 'Resigned - Company Requested'),
(5, 'Resigned - Self Proposed'),
(6, 'Resigned'),
(7, 'Deceased'),
(8, 'Physically Disabled/Compensated'),
(9, 'Laid-off'),
(10, 'Dismissed');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_enforce_password`
--

CREATE TABLE `ohrm_enforce_password` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `enforce_request_date` datetime DEFAULT NULL,
  `reset_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expired` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_expense`
--

CREATE TABLE `ohrm_expense` (
  `id` int(11) NOT NULL,
  `expense_type_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `note` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_expense_type`
--

CREATE TABLE `ohrm_expense_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_filter_field`
--

CREATE TABLE `ohrm_filter_field` (
  `filter_field_id` bigint(20) NOT NULL,
  `report_group_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `where_clause_part` mediumtext NOT NULL,
  `filter_field_widget` varchar(255) DEFAULT NULL,
  `condition_no` int(20) NOT NULL,
  `required` varchar(10) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_filter_field`
--

INSERT INTO `ohrm_filter_field` (`filter_field_id`, `report_group_id`, `name`, `where_clause_part`, `filter_field_widget`, `condition_no`, `required`, `class_name`) VALUES
(1, 1, 'project_name', 'ohrm_project.project_id', 'ohrmWidgetProjectList', 2, 'true', NULL),
(2, 1, 'activity_show_deleted', 'ohrm_project_activity.is_deleted', 'ohrmWidgetInputCheckbox', 2, 'false', NULL),
(3, 1, 'project_date_range', 'date', 'ohrmWidgetDateRange', 1, 'false', NULL),
(4, 1, 'employee', 'hs_hr_employee.emp_number', 'ohrmReportWidgetEmployeeListAutoFill', 2, 'true', NULL),
(5, 1, 'activity_name', 'ohrm_project_activity.activity_id', 'ohrmWidgetProjectActivityList', 2, 'true', NULL),
(6, 1, 'project_name', 'ohrm_project.project_id', 'ohrmWidgetProjectListWithAllOption', 2, 'true', NULL),
(7, 1, 'only_include_approved_timesheets', 'ohrm_timesheet.state', 'ohrmWidgetApprovedTimesheetInputCheckBox', 2, NULL, NULL),
(8, 3, 'employee_name', 'hs_hr_employee.emp_number', 'ohrmReportWidgetEmployeeListAutoFill', 1, NULL, 'OrangeHRM\\Core\\Report\\FilterField\\EmployeeNumber'),
(9, 3, 'pay_grade', 'hs_hr_emp_basicsalary.sal_grd_code', 'ohrmReportWidgetPayGradeDropDown', 1, NULL, 'OrangeHRM\\Core\\Report\\FilterField\\PayGrade'),
(10, 3, 'education', 'ohrm_emp_education.education_id', 'ohrmReportWidgetEducationtypeDropDown', 1, NULL, 'OrangeHRM\\Core\\Report\\FilterField\\EmployeeEducation'),
(11, 3, 'employment_status', 'hs_hr_employee.emp_status', 'ohrmWidgetEmploymentStatusList', 1, NULL, 'OrangeHRM\\Core\\Report\\FilterField\\EmploymentStatus'),
(12, 3, 'service_period', 'datediff(current_date(), hs_hr_employee.joined_date)/365', 'ohrmReportWidgetServicePeriod', 1, NULL, 'OrangeHRM\\Core\\Report\\FilterField\\ServicePeriod'),
(13, 3, 'joined_date', 'hs_hr_employee.joined_date', 'ohrmReportWidgetJoinedDate', 1, NULL, 'OrangeHRM\\Core\\Report\\FilterField\\JoinedDate'),
(14, 3, 'job_title', 'hs_hr_employee.job_title_code', 'ohrmWidgetJobTitleList', 1, NULL, 'OrangeHRM\\Core\\Report\\FilterField\\JobTitle'),
(15, 3, 'language', 'hs_hr_emp_language.lang_id', 'ohrmReportWidgetLanguageDropDown', 1, NULL, 'OrangeHRM\\Core\\Report\\FilterField\\EmployeeLanguage'),
(16, 3, 'skill', 'hs_hr_emp_skill.skill_id', 'ohrmReportWidgetSkillDropDown', 1, NULL, 'OrangeHRM\\Core\\Report\\FilterField\\EmployeeSkill'),
(17, 3, 'age_group', 'datediff(current_date(), hs_hr_employee.emp_birthday)/365', 'ohrmReportWidgetAgeGroup', 1, NULL, 'OrangeHRM\\Core\\Report\\FilterField\\AgeGroup'),
(18, 3, 'sub_unit', 'hs_hr_employee.work_station', 'ohrmWidgetSubDivisionList', 1, NULL, 'OrangeHRM\\Core\\Report\\FilterField\\Subunit'),
(19, 3, 'gender', 'hs_hr_employee.emp_gender', 'ohrmReportWidgetGenderDropDown', 1, NULL, 'OrangeHRM\\Core\\Report\\FilterField\\EmployeeGender'),
(20, 3, 'location', 'ohrm_location.id', 'ohrmReportWidgetOperationalCountryLocationDropDown', 1, NULL, 'OrangeHRM\\Core\\Report\\FilterField\\Location'),
(21, 1, 'is_deleted', 'ohrm_project_activity.is_deleted', '', 2, NULL, NULL),
(22, 3, 'include', 'hs_hr_employee.termination_id', 'ohrmReportWidgetIncludedEmployeesDropDown', 1, 'true', 'OrangeHRM\\Core\\Report\\FilterField\\IncludeEmployee');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_group_field`
--

CREATE TABLE `ohrm_group_field` (
  `group_field_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `group_by_clause` mediumtext NOT NULL,
  `group_field_widget` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_group_field`
--

INSERT INTO `ohrm_group_field` (`group_field_id`, `name`, `group_by_clause`, `group_field_widget`) VALUES
(1, 'activity id', 'GROUP BY ohrm_project_activity.activity_id', NULL),
(2, 'employee number', 'GROUP BY hs_hr_employee.emp_number', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_holiday`
--

CREATE TABLE `ohrm_holiday` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `recurring` tinyint(3) UNSIGNED DEFAULT 0,
  `length` int(10) UNSIGNED DEFAULT NULL,
  `operational_country_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_home_page`
--

CREATE TABLE `ohrm_home_page` (
  `id` int(11) NOT NULL,
  `user_role_id` int(11) NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `enable_class` varchar(100) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT 0 COMMENT 'lowest priority 0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_home_page`
--

INSERT INTO `ohrm_home_page` (`id`, `user_role_id`, `action`, `enable_class`, `priority`) VALUES
(1, 1, 'dashboard/index', NULL, 15),
(2, 2, 'dashboard/index', NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_i18n_group`
--

CREATE TABLE `ohrm_i18n_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ohrm_i18n_group`
--

INSERT INTO `ohrm_i18n_group` (`id`, `name`, `title`) VALUES
(1, 'general', 'General'),
(2, 'admin', 'Admin'),
(3, 'pim', 'PIM'),
(4, 'leave', 'Leave'),
(5, 'time', 'Time'),
(6, 'recruitment', 'Recruitment'),
(7, 'performance', 'Performance'),
(8, 'dashboard', 'Dashboard'),
(10, 'maintenance', 'Maintenance'),
(11, 'buzz', 'Buzz'),
(12, 'marketplace', 'Marketplace'),
(13, 'mobile', 'Mobile'),
(14, 'help', 'Help'),
(17, 'attendance', 'Attendance'),
(19, 'auth', 'Auth'),
(20, 'claim', 'Claim');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_i18n_language`
--

CREATE TABLE `ohrm_i18n_language` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` smallint(5) UNSIGNED DEFAULT 1,
  `added` smallint(5) UNSIGNED DEFAULT 0,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ohrm_i18n_language`
--

INSERT INTO `ohrm_i18n_language` (`id`, `name`, `code`, `enabled`, `added`, `modified_at`) VALUES
(1, 'Chinese (Simplified, China) - 中文（简体，中国）', 'zh_Hans_CN', 1, 1, NULL),
(2, 'Chinese (Traditional, Taiwan) - 中文（繁體，台灣）', 'zh_Hant_TW', 1, 1, NULL),
(3, 'Dutch - Nederlands', 'nl', 1, 1, NULL),
(4, 'English (United States)', 'en_US', 1, 1, NULL),
(5, 'French - Français', 'fr', 1, 1, NULL),
(6, 'German - Deutsch', 'de', 1, 1, NULL),
(7, 'Spanish - Español', 'es', 1, 1, NULL),
(8, 'Spanish (Costa Rica) - Español (Costa Rica)', 'es_CR', 1, 1, NULL),
(9, 'test - TEST', 'zz_ZZ', 0, 0, NULL),
(10, 'Afrikaans (Namibia) - Afrikaans (Namibië)', 'af_NA', 1, 0, NULL),
(11, 'Afrikaans (South Africa) - Afrikaans (Suid-Afrika)', 'af_ZA', 1, 0, NULL),
(12, 'Aghem (Cameroon)', 'agq_CM', 1, 0, NULL),
(13, 'Akan (Ghana)', 'ak_GH', 1, 0, NULL),
(14, 'Albanian (Albania) - Albanian (Albania)', 'sq_AL', 1, 0, NULL),
(15, 'Albanian (Macedonia) - Albanian (Macedonia)', 'sq_MK', 1, 0, NULL),
(16, 'Amharic (Ethiopia) - Amharic (Ethiopia)', 'am_ET', 1, 0, NULL),
(17, 'Arabic (Algeria) - العربية (الجزائر)', 'ar_DZ', 1, 0, NULL),
(18, 'Arabic (Bahrain) - العربية (البحرين)', 'ar_BH', 1, 0, NULL),
(19, 'Arabic (Chad) - العربية (تشاد)', 'ar_TD', 1, 0, NULL),
(20, 'Arabic (Comoros) - العربية (جزر القمر)', 'ar_KM', 1, 0, NULL),
(21, 'Arabic (Djibouti) - العربية (جيبوتي)', 'ar_DJ', 1, 0, NULL),
(22, 'Arabic (Egypt) - العربية (مصر)', 'ar_EG', 1, 0, NULL),
(23, 'Arabic (Eritrea) - العربية (إريتريا)', 'ar_ER', 1, 0, NULL),
(24, 'Arabic (Iraq) - العربية (العراق)', 'ar_IQ', 1, 0, NULL),
(25, 'Arabic (Israel) - العربية (إسرائيل)', 'ar_IL', 1, 0, NULL),
(26, 'Arabic (Jordan) - العربية (الأردن)', 'ar_JO', 1, 0, NULL),
(27, 'Arabic (Kuwait) - العربية (الكويت)', 'ar_KW', 1, 0, NULL),
(28, 'Arabic (Lebanon) - العربية (لبنان)', 'ar_LB', 1, 0, NULL),
(29, 'Arabic (Libya) - العربية (ليبيا)', 'ar_LY', 1, 0, NULL),
(30, 'Arabic (Mauritania) - العربية (موريتانيا)', 'ar_MR', 1, 0, NULL),
(31, 'Arabic (Morocco) - العربية (المغرب)', 'ar_MA', 1, 0, NULL),
(32, 'Arabic (Oman) - العربية (عمان)', 'ar_OM', 1, 0, NULL),
(33, 'Arabic (Palestinian Territories) - العربية (الأراضي الفلسطينية)', 'ar_PS', 1, 0, NULL),
(34, 'Arabic (Qatar) - العربية (قطر)', 'ar_QA', 1, 0, NULL),
(35, 'Arabic (Saudi Arabia) - العربية (المملكة العربية السعودية)', 'ar_SA', 1, 0, NULL),
(36, 'Arabic (Somalia) - العربية (الصومال)', 'ar_SO', 1, 0, NULL),
(37, 'Arabic (South Sudan) - العربية (جنوب السودان)', 'ar_SS', 1, 0, NULL),
(38, 'Arabic (Sudan) - العربية (السودان)', 'ar_SD', 1, 0, NULL),
(39, 'Arabic (Syria) - العربية (سوريا)', 'ar_SY', 1, 0, NULL),
(40, 'Arabic (Tunisia) - العربية (تونس)', 'ar_TN', 1, 0, NULL),
(41, 'Arabic (United Arab Emirates) - العربية (الإمارات العربية المتحدة)', 'ar_AE', 1, 0, NULL),
(42, 'Arabic (Western Sahara) - العربية (الصحراء الغربية)', 'ar_EH', 1, 0, NULL),
(43, 'Arabic (Yemen) - العربية (اليمن)', 'ar_YE', 1, 0, NULL),
(44, 'Armenian (Armenia) - Հայերեն (Հայաստան)', 'hy_AM', 1, 0, NULL),
(45, 'Assamese (India)', 'as_IN', 1, 0, NULL),
(46, 'Asturian (Spain)', 'ast_ES', 1, 0, NULL),
(47, 'Asu (Tanzania)', 'asa_TZ', 1, 0, NULL),
(48, 'Azerbaijani (Cyrillic, Azerbaijan) - Azərbaycan (kiril, Azərbaycan)', 'az_Cyrl_AZ', 1, 0, NULL),
(49, 'Azerbaijani (Latin, Azerbaijan) - Azərbaycan (Latın, Azərbaycan)', 'az_Latn_AZ', 1, 0, NULL),
(50, 'Bafia (Cameroon)', 'ksf_CM', 1, 0, NULL),
(51, 'Bambara (Mali)', 'bm_ML', 1, 0, NULL),
(52, 'Bangla (Bangladesh) - বাংলা (বাংলাদেশ)', 'bn_BD', 1, 0, NULL),
(53, 'Bangla (India) - বাংলা (ভারত)', 'bn_IN', 1, 0, NULL),
(54, 'Basaa (Cameroon)', 'bas_CM', 1, 0, NULL),
(55, 'Basque (Spain) - Basque (Espainia)', 'eu_ES', 1, 0, NULL),
(56, 'Belarusian (Belarus) - Беларуская (Беларусь)', 'be_BY', 1, 0, NULL),
(57, 'Bemba (Zambia)', 'bem_ZM', 1, 0, NULL),
(58, 'Bena (Tanzania)', 'bez_TZ', 1, 0, NULL),
(59, 'Bodo (India)', 'brx_IN', 1, 0, NULL),
(60, 'Bosnian (Cyrillic, Bosnia & Herzegovina) - Bosanski (ćirilica, Bosna i Hercegovina)', 'bs_Cyrl_BA', 1, 0, NULL),
(61, 'Bosnian (Latin, Bosnia & Herzegovina) - Bosanski (latinica, Bosna i Hercegovina)', 'bs_Latn_BA', 1, 0, NULL),
(62, 'Breton (France)', 'br_FR', 1, 0, NULL),
(63, 'Bulgarian (Bulgaria) - Български (България)', 'bg_BG', 1, 0, NULL),
(64, 'Burmese (Myanmar [Burma]) - မြန်မာ (မြန်မာ [မြန်မာနိုင်ငံ])', 'my_MM', 1, 0, NULL),
(65, 'Cantonese (Simplified, China) - 广东话（简体中文）', 'yue_Hans_CN', 1, 0, NULL),
(66, 'Cantonese (Traditional, Hong Kong SAR China) - 粵語（繁體中文，中國香港特別行政區）', 'yue_Hant_HK', 1, 0, NULL),
(67, 'Catalan (Andorra) - Català (Andorra)', 'ca_AD', 1, 0, NULL),
(68, 'Catalan (France) - Català (França)', 'ca_FR', 1, 0, NULL),
(69, 'Catalan (Italy) - Català (Itàlia)', 'ca_IT', 1, 0, NULL),
(70, 'Catalan (Spain) - Català (Espanya)', 'ca_ES', 1, 0, NULL),
(71, 'Central Atlas Tamazight (Morocco)', 'tzm_MA', 1, 0, NULL),
(72, 'Central Kurdish (Iran)', 'ckb_IR', 1, 0, NULL),
(73, 'Central Kurdish (Iraq)', 'ckb_IQ', 1, 0, NULL),
(74, 'Chakma (Bangladesh)', 'ccp_BD', 1, 0, NULL),
(75, 'Chakma (India)', 'ccp_IN', 1, 0, NULL),
(76, 'Chechen (Russia)', 'ce_RU', 1, 0, NULL),
(77, 'Cherokee (United States)', 'chr_US', 1, 0, NULL),
(78, 'Chiga (Uganda)', 'cgg_UG', 1, 0, NULL),
(79, 'Chinese (Simplified, Hong Kong SAR China) - 中文（简体，中国香港特别行政区）', 'zh_Hans_HK', 1, 0, NULL),
(80, 'Chinese (Simplified, Macau SAR China) - 中文（简体，中国澳门特别行政区）', 'zh_Hans_MO', 1, 0, NULL),
(81, 'Chinese (Simplified, Singapore) - 中文（简体，新加坡）', 'zh_Hans_SG', 1, 0, NULL),
(82, 'Chinese (Traditional, Hong Kong SAR China) - 中文（繁體字，中國香港特別行政區）', 'zh_Hant_HK', 1, 0, NULL),
(83, 'Chinese (Traditional, Macau SAR China) - 中文（繁體字，中國澳門特別行政區）', 'zh_Hant_MO', 1, 0, NULL),
(84, 'Colognian (Germany)', 'ksh_DE', 1, 0, NULL),
(85, 'Cornish (United Kingdom)', 'kw_GB', 1, 0, NULL),
(86, 'Croatian (Bosnia & Herzegovina) - Hrvatska (Bosna i Hercegovina)', 'hr_BA', 1, 0, NULL),
(87, 'Croatian (Croatia) - Hrvatski (Hrvatska)', 'hr_HR', 1, 0, NULL),
(88, 'Czech (Czechia) - Český (Česko)', 'cs_CZ', 1, 0, NULL),
(89, 'Danish (Denmark) - Dansk (Danmark)', 'da_DK', 1, 0, NULL),
(90, 'Danish (Greenland) - Dansk (Grønland)', 'da_GL', 1, 0, NULL),
(91, 'Duala (Cameroon)', 'dua_CM', 1, 0, NULL),
(92, 'Dutch (Aruba) - Nederlands (Aruba)', 'nl_AW', 1, 0, NULL),
(93, 'Dutch (Belgium) - Nederlands (België)', 'nl_BE', 1, 0, NULL),
(94, 'Dutch (Caribbean Netherlands) - Nederlands (Caribisch Nederland)', 'nl_BQ', 1, 0, NULL),
(95, 'Dutch (Curaçao) - Nederlands (Curaçao)', 'nl_CW', 1, 0, NULL),
(96, 'Dutch (Netherlands) - Nederlands (Nederland)', 'nl_NL', 1, 0, NULL),
(97, 'Dutch (Sint Maarten) - Nederlands (Sint Maarten)', 'nl_SX', 1, 0, NULL),
(98, 'Dutch (Suriname) - Nederlands (Suriname)', 'nl_SR', 1, 0, NULL),
(99, 'Dzongkha (Bhutan)', 'dz_BT', 1, 0, NULL),
(100, 'Embu (Kenya)', 'ebu_KE', 1, 0, NULL),
(101, 'English (American Samoa)', 'en_AS', 1, 0, NULL),
(102, 'English (Anguilla)', 'en_AI', 1, 0, NULL),
(103, 'English (Antigua & Barbuda)', 'en_AG', 1, 0, NULL),
(104, 'English (Australia)', 'en_AU', 1, 0, NULL),
(105, 'English (Austria)', 'en_AT', 1, 0, NULL),
(106, 'English (Bahamas)', 'en_BS', 1, 0, NULL),
(107, 'English (Barbados)', 'en_BB', 1, 0, NULL),
(108, 'English (Belgium)', 'en_BE', 1, 0, NULL),
(109, 'English (Belize)', 'en_BZ', 1, 0, NULL),
(110, 'English (Bermuda)', 'en_BM', 1, 0, NULL),
(111, 'English (Botswana)', 'en_BW', 1, 0, NULL),
(112, 'English (British Indian Ocean Territory)', 'en_IO', 1, 0, NULL),
(113, 'English (British Virgin Islands)', 'en_VG', 1, 0, NULL),
(114, 'English (Burundi)', 'en_BI', 1, 0, NULL),
(115, 'English (Cameroon)', 'en_CM', 1, 0, NULL),
(116, 'English (Canada)', 'en_CA', 1, 0, NULL),
(117, 'English (Cayman Islands)', 'en_KY', 1, 0, NULL),
(118, 'English (Christmas Island)', 'en_CX', 1, 0, NULL),
(119, 'English (Cocos [Keeling] Islands)', 'en_CC', 1, 0, NULL),
(120, 'English (Cook Islands)', 'en_CK', 1, 0, NULL),
(121, 'English (Cyprus)', 'en_CY', 1, 0, NULL),
(122, 'English (Denmark)', 'en_DK', 1, 0, NULL),
(123, 'English (Dominica)', 'en_DM', 1, 0, NULL),
(124, 'English (Eritrea)', 'en_ER', 1, 0, NULL),
(125, 'English (Falkland Islands)', 'en_FK', 1, 0, NULL),
(126, 'English (Fiji)', 'en_FJ', 1, 0, NULL),
(127, 'English (Finland)', 'en_FI', 1, 0, NULL),
(128, 'English (Gambia)', 'en_GM', 1, 0, NULL),
(129, 'English (Germany)', 'en_DE', 1, 0, NULL),
(130, 'English (Ghana)', 'en_GH', 1, 0, NULL),
(131, 'English (Gibraltar)', 'en_GI', 1, 0, NULL),
(132, 'English (Grenada)', 'en_GD', 1, 0, NULL),
(133, 'English (Guam)', 'en_GU', 1, 0, NULL),
(134, 'English (Guernsey)', 'en_GG', 1, 0, NULL),
(135, 'English (Guyana)', 'en_GY', 1, 0, NULL),
(136, 'English (Hong Kong SAR China)', 'en_HK', 1, 0, NULL),
(137, 'English (India)', 'en_IN', 1, 0, NULL),
(138, 'English (Ireland)', 'en_IE', 1, 0, NULL),
(139, 'English (Isle of Man)', 'en_IM', 1, 0, NULL),
(140, 'English (Israel)', 'en_IL', 1, 0, NULL),
(141, 'English (Jamaica)', 'en_JM', 1, 0, NULL),
(142, 'English (Jersey)', 'en_JE', 1, 0, NULL),
(143, 'English (Kenya)', 'en_KE', 1, 0, NULL),
(144, 'English (Kiribati)', 'en_KI', 1, 0, NULL),
(145, 'English (Lesotho)', 'en_LS', 1, 0, NULL),
(146, 'English (Liberia)', 'en_LR', 1, 0, NULL),
(147, 'English (Macau SAR China)', 'en_MO', 1, 0, NULL),
(148, 'English (Madagascar)', 'en_MG', 1, 0, NULL),
(149, 'English (Malawi)', 'en_MW', 1, 0, NULL),
(150, 'English (Malaysia)', 'en_MY', 1, 0, NULL),
(151, 'English (Malta)', 'en_MT', 1, 0, NULL),
(152, 'English (Marshall Islands)', 'en_MH', 1, 0, NULL),
(153, 'English (Mauritius)', 'en_MU', 1, 0, NULL),
(154, 'English (Micronesia)', 'en_FM', 1, 0, NULL),
(155, 'English (Montserrat)', 'en_MS', 1, 0, NULL),
(156, 'English (Namibia)', 'en_NA', 1, 0, NULL),
(157, 'English (Nauru)', 'en_NR', 1, 0, NULL),
(158, 'English (Netherlands)', 'en_NL', 1, 0, NULL),
(159, 'English (New Zealand)', 'en_NZ', 1, 0, NULL),
(160, 'English (Nigeria)', 'en_NG', 1, 0, NULL),
(161, 'English (Niue)', 'en_NU', 1, 0, NULL),
(162, 'English (Norfolk Island)', 'en_NF', 1, 0, NULL),
(163, 'English (Northern Mariana Islands)', 'en_MP', 1, 0, NULL),
(164, 'English (Pakistan)', 'en_PK', 1, 0, NULL),
(165, 'English (Palau)', 'en_PW', 1, 0, NULL),
(166, 'English (Papua New Guinea)', 'en_PG', 1, 0, NULL),
(167, 'English (Philippines)', 'en_PH', 1, 0, NULL),
(168, 'English (Pitcairn Islands)', 'en_PN', 1, 0, NULL),
(169, 'English (Puerto Rico)', 'en_PR', 1, 0, NULL),
(170, 'English (Rwanda)', 'en_RW', 1, 0, NULL),
(171, 'English (Samoa)', 'en_WS', 1, 0, NULL),
(172, 'English (Seychelles)', 'en_SC', 1, 0, NULL),
(173, 'English (Sierra Leone)', 'en_SL', 1, 0, NULL),
(174, 'English (Singapore)', 'en_SG', 1, 0, NULL),
(175, 'English (Sint Maarten)', 'en_SX', 1, 0, NULL),
(176, 'English (Slovenia)', 'en_SI', 1, 0, NULL),
(177, 'English (Solomon Islands)', 'en_SB', 1, 0, NULL),
(178, 'English (South Africa)', 'en_ZA', 1, 0, NULL),
(179, 'English (South Sudan)', 'en_SS', 1, 0, NULL),
(180, 'English (St. Helena)', 'en_SH', 1, 0, NULL),
(181, 'English (St. Kitts & Nevis)', 'en_KN', 1, 0, NULL),
(182, 'English (St. Lucia)', 'en_LC', 1, 0, NULL),
(183, 'English (St. Vincent & Grenadines)', 'en_VC', 1, 0, NULL),
(184, 'English (Sudan)', 'en_SD', 1, 0, NULL),
(185, 'English (Swaziland)', 'en_SZ', 1, 0, NULL),
(186, 'English (Sweden)', 'en_SE', 1, 0, NULL),
(187, 'English (Switzerland)', 'en_CH', 1, 0, NULL),
(188, 'English (Tanzania)', 'en_TZ', 1, 0, NULL),
(189, 'English (Tokelau)', 'en_TK', 1, 0, NULL),
(190, 'English (Tonga)', 'en_TO', 1, 0, NULL),
(191, 'English (Trinidad & Tobago)', 'en_TT', 1, 0, NULL),
(192, 'English (Turks & Caicos Islands)', 'en_TC', 1, 0, NULL),
(193, 'English (Tuvalu)', 'en_TV', 1, 0, NULL),
(194, 'English (U.S. Outlying Islands)', 'en_UM', 1, 0, NULL),
(195, 'English (U.S. Virgin Islands)', 'en_VI', 1, 0, NULL),
(196, 'English (Uganda)', 'en_UG', 1, 0, NULL),
(197, 'English (United Kingdom)', 'en_GB', 1, 0, NULL),
(198, 'English (United States, Computer)', 'en_US_POSIX', 1, 0, NULL),
(199, 'English (Vanuatu)', 'en_VU', 1, 0, NULL),
(200, 'English (Zambia)', 'en_ZM', 1, 0, NULL),
(201, 'English (Zimbabwe)', 'en_ZW', 1, 0, NULL),
(202, 'Estonian (Estonia) - Eesti (Eesti)', 'et_EE', 1, 0, NULL),
(203, 'Ewe (Ghana)', 'ee_GH', 1, 0, NULL),
(204, 'Ewe (Togo)', 'ee_TG', 1, 0, NULL),
(205, 'Ewondo (Cameroon)', 'ewo_CM', 1, 0, NULL),
(206, 'Faroese (Denmark)', 'fo_DK', 1, 0, NULL),
(207, 'Faroese (Faroe Islands)', 'fo_FO', 1, 0, NULL),
(208, 'Filipino (Philippines) - Filipino (Pilipinas)', 'fil_PH', 1, 0, NULL),
(209, 'Finnish (Finland) - Suomi (Suomi)', 'fi_FI', 1, 0, NULL),
(210, 'French (Algeria) - Français (Algérie)', 'fr_DZ', 1, 0, NULL),
(211, 'French (Belgium) - Français (Belgique)', 'fr_BE', 1, 0, NULL),
(212, 'French (Benin) - Français (Bénin)', 'fr_BJ', 1, 0, NULL),
(213, 'French (Burkina Faso) - Français (Burkina Faso)', 'fr_BF', 1, 0, NULL),
(214, 'French (Burundi) - Français (Burundi)', 'fr_BI', 1, 0, NULL),
(215, 'French (Cameroon) - Français (Cameroun)', 'fr_CM', 1, 0, NULL),
(216, 'French (Canada) - Français (Canada)', 'fr_CA', 1, 0, NULL),
(217, 'French (Central African Republic) - Français (République centrafricaine)', 'fr_CF', 1, 0, NULL),
(218, 'French (Chad) - Français (Tchad)', 'fr_TD', 1, 0, NULL),
(219, 'French (Comoros) - Français (Comores)', 'fr_KM', 1, 0, NULL),
(220, 'French (Congo - Brazzaville) (fr-CG) - Français (Congo-Brazzaville) (fr-CG)', 'fr_CG', 1, 0, NULL),
(221, 'French (Congo - Kinshasa) - Français (Congo-Kinshasa)', 'fr_CD', 1, 0, NULL),
(222, 'French (Côte d’Ivoire) - Français (Côte d\'Ivoire)', 'fr_CI', 1, 0, NULL),
(223, 'French (Djibouti) - Français (Djibouti)', 'fr_DJ', 1, 0, NULL),
(224, 'French (Equatorial Guinea) - Français (Guinée équatoriale)', 'fr_GQ', 1, 0, NULL),
(225, 'French (France) - France francaise)', 'fr_FR', 1, 0, NULL),
(226, 'French (French Guiana) - Français (Guyane française)', 'fr_GF', 1, 0, NULL),
(227, 'French (French Polynesia) - Français (Polynésie française)', 'fr_PF', 1, 0, NULL),
(228, 'French (Gabon) - Français (Gabon)', 'fr_GA', 1, 0, NULL),
(229, 'French (Guadeloupe) - Français (Guadeloupe)', 'fr_GP', 1, 0, NULL),
(230, 'French (Guinea) - Français (Guinée)', 'fr_GN', 1, 0, NULL),
(231, 'French (Haiti) - Français (Haïti)', 'fr_HT', 1, 0, NULL),
(232, 'French (Luxembourg) - Français (Luxembourg)', 'fr_LU', 1, 0, NULL),
(233, 'French (Madagascar) - Français (Madagascar)', 'fr_MG', 1, 0, NULL),
(234, 'French (Mali) - Français (Mali)', 'fr_ML', 1, 0, NULL),
(235, 'French (Martinique) - Français (Martinique)', 'fr_MQ', 1, 0, NULL),
(236, 'French (Mauritania) - Français (Mauritanie)', 'fr_MR', 1, 0, NULL),
(237, 'French (Mauritius) - Français (Maurice)', 'fr_MU', 1, 0, NULL),
(238, 'French (Mayotte) - Français (Mayotte)', 'fr_YT', 1, 0, NULL),
(239, 'French (Monaco) - Français (Monaco)', 'fr_MC', 1, 0, NULL),
(240, 'French (Morocco) - Français (Maroc)', 'fr_MA', 1, 0, NULL),
(241, 'French (New Caledonia) - Français (Nouvelle-Calédonie)', 'fr_NC', 1, 0, NULL),
(242, 'French (Niger) - Français (Niger)', 'fr_NE', 1, 0, NULL),
(243, 'French (Réunion) - Français (Réunion)', 'fr_RE', 1, 0, NULL),
(244, 'French (Rwanda) - Français (Rwanda)', 'fr_RW', 1, 0, NULL),
(245, 'French (Senegal) - Français (Sénégal)', 'fr_SN', 1, 0, NULL),
(246, 'French (Seychelles) - Français (Seychelles)', 'fr_SC', 1, 0, NULL),
(247, 'French (St. Barthélemy) - Français (Saint-Barthélemy)', 'fr_BL', 1, 0, NULL),
(248, 'French (St. Martin) - Français (Saint-Martin)', 'fr_MF', 1, 0, NULL),
(249, 'French (St. Pierre & Miquelon) - Français (Saint-Pierre-et-Miquelon)', 'fr_PM', 1, 0, NULL),
(250, 'French (Switzerland) - Français (Suisse)', 'fr_CH', 1, 0, NULL),
(251, 'French (Syria) - Français (Syrie)', 'fr_SY', 1, 0, NULL),
(252, 'French (Togo) - Français (Togo)', 'fr_TG', 1, 0, NULL),
(253, 'French (Tunisia) - Français (Tunisie)', 'fr_TN', 1, 0, NULL),
(254, 'French (Vanuatu) - Français (Vanuatu)', 'fr_VU', 1, 0, NULL),
(255, 'French (Wallis & Futuna) - Français (Wallis et Futuna)', 'fr_WF', 1, 0, NULL),
(256, 'Friulian (Italy)', 'fur_IT', 1, 0, NULL),
(257, 'Fulah (Cameroon)', 'ff_CM', 1, 0, NULL),
(258, 'Fulah (Guinea)', 'ff_GN', 1, 0, NULL),
(259, 'Fulah (Mauritania)', 'ff_MR', 1, 0, NULL),
(260, 'Fulah (Senegal)', 'ff_SN', 1, 0, NULL),
(261, 'Galician (Spain) - Galicia (España)', 'gl_ES', 1, 0, NULL),
(262, 'Ganda (Uganda)', 'lg_UG', 1, 0, NULL),
(263, 'Georgian (Georgia) - Georgian (Georgia)', 'ka_GE', 1, 0, NULL),
(264, 'German (Austria) - Deutsch (Österreich)', 'de_AT', 1, 0, NULL),
(265, 'German (Belgium) - Deutsch (Belgien)', 'de_BE', 1, 0, NULL),
(266, 'German (Germany) - Deutsches Deutschland)', 'de_DE', 1, 0, NULL),
(267, 'German (Italy) - Deutsch (Italien)', 'de_IT', 1, 0, NULL),
(268, 'German (Liechtenstein) - Deutsch (Liechtenstein)', 'de_LI', 1, 0, NULL),
(269, 'German (Luxembourg) - Deutsch (Luxemburg)', 'de_LU', 1, 0, NULL),
(270, 'German (Switzerland) - Deutsch (Schweiz)', 'de_CH', 1, 0, NULL),
(271, 'Greek (Cyprus) - Ελληνικά (Κύπρος)', 'el_CY', 1, 0, NULL),
(272, 'Greek (Greece) - Ελληνικά (Ελλάδα)', 'el_GR', 1, 0, NULL),
(273, 'Gujarati (India) - ગુજરાતી (ભારત)', 'gu_IN', 1, 0, NULL),
(274, 'Gusii (Kenya)', 'guz_KE', 1, 0, NULL),
(275, 'Hausa (Ghana) - Hausa (Ghana)', 'ha_GH', 1, 0, NULL),
(276, 'Hausa (Niger) - Hausa (Nijar)', 'ha_NE', 1, 0, NULL),
(277, 'Hausa (Nigeria) - Hausa (Nigeria)', 'ha_NG', 1, 0, NULL),
(278, 'Hawaiian (United States) - Hawaiian (United States)', 'haw_US', 1, 0, NULL),
(279, 'Hebrew (Israel) - עברית (ישראל)', 'he_IL', 1, 0, NULL),
(280, 'Hindi (India) - हिंदी भारत)', 'hi_IN', 1, 0, NULL),
(281, 'Hungarian (Hungary) - Magyar (Magyarország)', 'hu_HU', 1, 0, NULL),
(282, 'Icelandic (Iceland) - Icelandic (Iceland)', 'is_IS', 1, 0, NULL),
(283, 'Igbo (Nigeria) - Igbo (Nigeria)', 'ig_NG', 1, 0, NULL),
(284, 'Inari Sami (Finland)', 'smn_FI', 1, 0, NULL),
(285, 'Indonesian (Indonesia) - Indonesia (Indonesia)', 'id_ID', 1, 0, NULL),
(286, 'Irish (Ireland) - Gaeilge (Éire)', 'ga_IE', 1, 0, NULL),
(287, 'Italian (Italy) - Italiano (Italia)', 'it_IT', 1, 0, NULL),
(288, 'Italian (San Marino) - Italiano (San Marino)', 'it_SM', 1, 0, NULL),
(289, 'Italian (Switzerland) - Italiano (Svizzera)', 'it_CH', 1, 0, NULL),
(290, 'Italian (Vatican City) - Italiano (Città del Vaticano)', 'it_VA', 1, 0, NULL),
(291, 'Japanese (Japan) - 日本語（日本）', 'ja_JP', 1, 0, NULL),
(292, 'Jola-Fonyi (Senegal)', 'dyo_SN', 1, 0, NULL),
(293, 'Kabuverdianu (Cape Verde)', 'kea_CV', 1, 0, NULL),
(294, 'Kabyle (Algeria)', 'kab_DZ', 1, 0, NULL),
(295, 'Kako (Cameroon)', 'kkj_CM', 1, 0, NULL),
(296, 'Kalaallisut (Greenland)', 'kl_GL', 1, 0, NULL),
(297, 'Kalenjin (Kenya)', 'kln_KE', 1, 0, NULL),
(298, 'Kamba (Kenya)', 'kam_KE', 1, 0, NULL),
(299, 'Kannada (India) - ಕನ್ನಡ (ಭಾರತ)', 'kn_IN', 1, 0, NULL),
(300, 'Kashmiri (India)', 'ks_IN', 1, 0, NULL),
(301, 'Kazakh (Kazakhstan) - Қазақ (Қазақстан)', 'kk_KZ', 1, 0, NULL),
(302, 'Khmer (Cambodia) - ខ្មែរ (កម្ពុជា)', 'km_KH', 1, 0, NULL),
(303, 'Kikuyu (Kenya)', 'ki_KE', 1, 0, NULL),
(304, 'Kinyarwanda (Rwanda) - Kinyarwanda (Rwanda)', 'rw_RW', 1, 0, NULL),
(305, 'Konkani (India)', 'kok_IN', 1, 0, NULL),
(306, 'Korean (North Korea) - 한국어 (북한)', 'ko_KP', 1, 0, NULL),
(307, 'Korean (South Korea) - 한국어 (한국)', 'ko_KR', 1, 0, NULL),
(308, 'Koyra Chiini (Mali)', 'khq_ML', 1, 0, NULL),
(309, 'Koyraboro Senni (Mali)', 'ses_ML', 1, 0, NULL),
(310, 'Kwasio (Cameroon)', 'nmg_CM', 1, 0, NULL),
(311, 'Kyrgyz (Kyrgyzstan) - Kyrgyz (Kyrgyzstan)', 'ky_KG', 1, 0, NULL),
(312, 'Lakota (United States)', 'lkt_US', 1, 0, NULL),
(313, 'Langi (Tanzania)', 'lag_TZ', 1, 0, NULL),
(314, 'Lao (Laos) - ລາວ (ລາວ)', 'lo_LA', 1, 0, NULL),
(315, 'Latvian (Latvia) - Latviešu (Latvija)', 'lv_LV', 1, 0, NULL),
(316, 'Lingala (Angola)', 'ln_AO', 1, 0, NULL),
(317, 'Lingala (Central African Republic)', 'ln_CF', 1, 0, NULL),
(318, 'Lingala (Congo - Brazzaville)', 'ln_CG', 1, 0, NULL),
(319, 'Lingala (Congo - Kinshasa)', 'ln_CD', 1, 0, NULL),
(320, 'Lithuanian (Lithuania) - Lietuvių (Lietuva)', 'lt_LT', 1, 0, NULL),
(321, 'Low German (Germany)', 'nds_DE', 1, 0, NULL),
(322, 'Low German (Netherlands)', 'nds_NL', 1, 0, NULL),
(323, 'Lower Sorbian (Germany)', 'dsb_DE', 1, 0, NULL),
(324, 'Luba-Katanga (Congo - Kinshasa)', 'lu_CD', 1, 0, NULL),
(325, 'Luo (Kenya)', 'luo_KE', 1, 0, NULL),
(326, 'Luxembourgish (Luxembourg) - Lëtzebuergesch (Lëtzebuerg)', 'lb_LU', 1, 0, NULL),
(327, 'Luyia (Kenya)', 'luy_KE', 1, 0, NULL),
(328, 'Macedonian (Macedonia) - Македонски (Macedonia)', 'mk_MK', 1, 0, NULL),
(329, 'Machame (Tanzania)', 'jmc_TZ', 1, 0, NULL),
(330, 'Makhuwa-Meetto (Mozambique)', 'mgh_MZ', 1, 0, NULL),
(331, 'Makonde (Tanzania)', 'kde_TZ', 1, 0, NULL),
(332, 'Malagasy (Madagascar) - Malagasy (Madagascar)', 'mg_MG', 1, 0, NULL),
(333, 'Malay (Brunei) - Melayu (Brunei)', 'ms_BN', 1, 0, NULL),
(334, 'Malay (Malaysia) - Melayu (Malaysia)', 'ms_MY', 1, 0, NULL),
(335, 'Malay (Singapore) - Melayu (Singapura)', 'ms_SG', 1, 0, NULL),
(336, 'Malayalam (India) - മലയാളം (ഇന്ത്യ)', 'ml_IN', 1, 0, NULL),
(337, 'Maltese (Malta) - Malti (Malta)', 'mt_MT', 1, 0, NULL),
(338, 'Manx (Isle of Man)', 'gv_IM', 1, 0, NULL),
(339, 'Marathi (India) - मराठी (भारत)', 'mr_IN', 1, 0, NULL),
(340, 'Masai (Kenya)', 'mas_KE', 1, 0, NULL),
(341, 'Masai (Tanzania)', 'mas_TZ', 1, 0, NULL),
(342, 'Mazanderani (Iran)', 'mzn_IR', 1, 0, NULL),
(343, 'Meru (Kenya)', 'mer_KE', 1, 0, NULL),
(344, 'Metaʼ (Cameroon)', 'mgo_CM', 1, 0, NULL),
(345, 'Mongolian (Mongolia) - Монгол улсын (Монгол)', 'mn_MN', 1, 0, NULL),
(346, 'Morisyen (Mauritius)', 'mfe_MU', 1, 0, NULL),
(347, 'Mundang (Cameroon)', 'mua_CM', 1, 0, NULL),
(348, 'Nama (Namibia)', 'naq_NA', 1, 0, NULL),
(349, 'Nepali (India) - नेपाली (भारत)', 'ne_IN', 1, 0, NULL),
(350, 'Nepali (Nepal) - नेपाली (नेपाल)', 'ne_NP', 1, 0, NULL),
(351, 'Ngiemboon (Cameroon)', 'nnh_CM', 1, 0, NULL),
(352, 'Ngomba (Cameroon)', 'jgo_CM', 1, 0, NULL),
(353, 'North Ndebele (Zimbabwe)', 'nd_ZW', 1, 0, NULL),
(354, 'Northern Luri (Iran)', 'lrc_IR', 1, 0, NULL),
(355, 'Northern Luri (Iraq)', 'lrc_IQ', 1, 0, NULL),
(356, 'Northern Sami (Finland)', 'se_FI', 1, 0, NULL),
(357, 'Northern Sami (Norway)', 'se_NO', 1, 0, NULL),
(358, 'Northern Sami (Sweden)', 'se_SE', 1, 0, NULL),
(359, 'Norwegian Bokmål (Norway) - Norsk bokmål (Norge)', 'nb_NO', 1, 0, NULL),
(360, 'Norwegian Bokmål (Svalbard & Jan Mayen) - Norsk bokmål (Svalbard og Jan Mayen)', 'nb_SJ', 1, 0, NULL),
(361, 'Norwegian Nynorsk (Norway)', 'nn_NO', 1, 0, NULL),
(362, 'Nuer (South Sudan)', 'nus_SS', 1, 0, NULL),
(363, 'Nyankole (Uganda)', 'nyn_UG', 1, 0, NULL),
(364, 'Odia (India) - ଓଡ଼ିଆ (ଭାରତ)', 'or_IN', 1, 0, NULL),
(365, 'Oromo (Ethiopia)', 'om_ET', 1, 0, NULL),
(366, 'Oromo (Kenya)', 'om_KE', 1, 0, NULL),
(367, 'Ossetic (Georgia)', 'os_GE', 1, 0, NULL),
(368, 'Ossetic (Russia)', 'os_RU', 1, 0, NULL),
(369, 'Pashto (Afghanistan) - پښتو (افغانستان)', 'ps_AF', 1, 0, NULL),
(370, 'Persian (Afghanistan) - فارسی (افغانستان)', 'fa_AF', 1, 0, NULL),
(371, 'Persian (Iran) - فارسی (ایران)', 'fa_IR', 1, 0, NULL),
(372, 'Polish (Poland) - Polski (Polska)', 'pl_PL', 1, 0, NULL),
(373, 'Portuguese (Angola) - Português (Angola)', 'pt_AO', 1, 0, NULL),
(374, 'Portuguese (Brazil) - Português (Brasil)', 'pt_BR', 1, 0, NULL),
(375, 'Portuguese (Cape Verde) - Português (Cabo Verde)', 'pt_CV', 1, 0, NULL),
(376, 'Portuguese (Equatorial Guinea) - Português (Guiné Equatorial)', 'pt_GQ', 1, 0, NULL),
(377, 'Portuguese (Guinea-Bissau) - Português (Guiné-Bissau)', 'pt_GW', 1, 0, NULL),
(378, 'Portuguese (Luxembourg) - Português (Luxemburgo)', 'pt_LU', 1, 0, NULL),
(379, 'Portuguese (Macau SAR China) - Português (Macau SAR China)', 'pt_MO', 1, 0, NULL),
(380, 'Portuguese (Mozambique) - Português (Moçambique)', 'pt_MZ', 1, 0, NULL),
(381, 'Portuguese (Portugal) - Português (Portugal)', 'pt_PT', 1, 0, NULL),
(382, 'Portuguese (São Tomé & Príncipe) - Português (São Tomé e Príncipe)', 'pt_ST', 1, 0, NULL),
(383, 'Portuguese (Switzerland) - Português (Suíça)', 'pt_CH', 1, 0, NULL),
(384, 'Portuguese (Timor-Leste) - Português (Timor-Leste)', 'pt_TL', 1, 0, NULL),
(385, 'Punjabi (Arabic, Pakistan) - ਪੰਜਾਬੀ (ਅਰਬੀ, ਪਾਕਿਸਤਾਨ)', 'pa_Arab_PK', 1, 0, NULL),
(386, 'Punjabi (Gurmukhi, India) - ਪੰਜਾਬੀ (ਗੁਰਮੁਖੀ, ਭਾਰਤ)', 'pa_Guru_IN', 1, 0, NULL),
(387, 'Quechua (Bolivia)', 'qu_BO', 1, 0, NULL),
(388, 'Quechua (Ecuador)', 'qu_EC', 1, 0, NULL),
(389, 'Quechua (Peru)', 'qu_PE', 1, 0, NULL),
(390, 'Romanian (Moldova) - Română (Moldova)', 'ro_MD', 1, 0, NULL),
(391, 'Romanian (Romania) - Română (România)', 'ro_RO', 1, 0, NULL),
(392, 'Romansh (Switzerland)', 'rm_CH', 1, 0, NULL),
(393, 'Rombo (Tanzania)', 'rof_TZ', 1, 0, NULL),
(394, 'Rundi (Burundi)', 'rn_BI', 1, 0, NULL),
(395, 'Russian (Belarus) - России (Беларусь)', 'ru_BY', 1, 0, NULL),
(396, 'Russian (Kazakhstan) - России (Казахстан)', 'ru_KZ', 1, 0, NULL),
(397, 'Russian (Kyrgyzstan) - России (Кыргызстан)', 'ru_KG', 1, 0, NULL),
(398, 'Russian (Moldova) - России (Молдова)', 'ru_MD', 1, 0, NULL),
(399, 'Russian (Russia) - России (Россия)', 'ru_RU', 1, 0, NULL),
(400, 'Russian (Ukraine) - России (Украина)', 'ru_UA', 1, 0, NULL),
(401, 'Rwa (Tanzania)', 'rwk_TZ', 1, 0, NULL),
(402, 'Sakha (Russia)', 'sah_RU', 1, 0, NULL),
(403, 'Samburu (Kenya)', 'saq_KE', 1, 0, NULL),
(404, 'Sango (Central African Republic)', 'sg_CF', 1, 0, NULL),
(405, 'Sangu (Tanzania)', 'sbp_TZ', 1, 0, NULL),
(406, 'Scottish Gaelic (United Kingdom) - Gàidhlig na h-Alba (An Rìoghachd Aonaichte)', 'gd_GB', 1, 0, NULL),
(407, 'Sena (Mozambique)', 'seh_MZ', 1, 0, NULL),
(408, 'Serbian (Cyrillic, Bosnia & Herzegovina) - Српски језик (Ћирилица, Босна и Херцеговина)', 'sr_Cyrl_BA', 1, 0, NULL),
(409, 'Serbian (Cyrillic, Montenegro) - Српски језик (Ћирилица, Црна Гора)', 'sr_Cyrl_ME', 1, 0, NULL),
(410, 'Serbian (Cyrillic, Serbia) - Српски језик (Ћирилица, Србија)', 'sr_Cyrl_RS', 1, 0, NULL),
(411, 'Serbian (Latin, Bosnia & Herzegovina) - Српски (Ћирилица, Босна и Херцеговина)', 'sr_Latn_BA', 1, 0, NULL),
(412, 'Serbian (Latin, Montenegro) - Српски (латински, Црна Гора)', 'sr_Latn_ME', 1, 0, NULL),
(413, 'Serbian (Latin, Serbia) - Српски (латински, Србија)', 'sr_Latn_RS', 1, 0, NULL),
(414, 'Shambala (Tanzania)', 'ksb_TZ', 1, 0, NULL),
(415, 'Shona (Zimbabwe) - Shona (Zimbabwe)', 'sn_ZW', 1, 0, NULL),
(416, 'Sichuan Yi (China)', 'ii_CN', 1, 0, NULL),
(417, 'Sinhala (Sri Lanka) - සිංහල (ශ්‍රී ලංකාව)', 'si_LK', 1, 0, NULL),
(418, 'Slovak (Slovakia) - Slovenskú (Slovensko)', 'sk_SK', 1, 0, NULL),
(419, 'Slovenian (Slovenia) - Slovensko (Slovenija)', 'sl_SI', 1, 0, NULL),
(420, 'Soga (Uganda)', 'xog_UG', 1, 0, NULL),
(421, 'Somali (Djibouti) - Soomaali (Jabuuti)', 'so_DJ', 1, 0, NULL),
(422, 'Somali (Ethiopia) - Soomaali (Itoobiya)', 'so_ET', 1, 0, NULL),
(423, 'Somali (Kenya) - Soomaali (Kenya)', 'so_KE', 1, 0, NULL),
(424, 'Somali (Somalia) - Soomaali (Soomaaliya)', 'so_SO', 1, 0, NULL),
(425, 'Spanish (Argentina) - Español (Argentina)', 'es_AR', 1, 0, NULL),
(426, 'Spanish (Belize) - Español (Belice)', 'es_BZ', 1, 0, NULL),
(427, 'Spanish (Bolivia) - Español (Bolivia)', 'es_BO', 1, 0, NULL),
(428, 'Spanish (Brazil) - Español (Brasil)', 'es_BR', 1, 0, NULL),
(429, 'Spanish (Chile) - Español (Chile)', 'es_CL', 1, 0, NULL),
(430, 'Spanish (Colombia) - Español (Colombia)', 'es_CO', 1, 0, NULL),
(431, 'Spanish (Cuba) - Español (Cuba)', 'es_CU', 1, 0, NULL),
(432, 'Spanish (Dominican Republic) - Española (República Dominicana)', 'es_DO', 1, 0, NULL),
(433, 'Spanish (Ecuador) - Español (Ecuador)', 'es_EC', 1, 0, NULL),
(434, 'Spanish (El Salvador) - Español (El Salvador)', 'es_SV', 1, 0, NULL),
(435, 'Spanish (Equatorial Guinea) - Español (Guinea Ecuatorial)', 'es_GQ', 1, 0, NULL),
(436, 'Spanish (Guatemala) - Español (Guatemala)', 'es_GT', 1, 0, NULL),
(437, 'Spanish (Honduras) - Español (Honduras)', 'es_HN', 1, 0, NULL),
(438, 'Spanish (Mexico) - Español (México)', 'es_MX', 1, 0, NULL),
(439, 'Spanish (Nicaragua) - Español (Nicaragua)', 'es_NI', 1, 0, NULL),
(440, 'Spanish (Panama) - Español (Panamá)', 'es_PA', 1, 0, NULL),
(441, 'Spanish (Paraguay) - Español (Paraguay)', 'es_PY', 1, 0, NULL),
(442, 'Spanish (Peru) - Español (Perú)', 'es_PE', 1, 0, NULL),
(443, 'Spanish (Philippines) - Español (Filipinas)', 'es_PH', 1, 0, NULL),
(444, 'Spanish (Puerto Rico) - Español (Puerto Rico)', 'es_PR', 1, 0, NULL),
(445, 'Spanish (Spain) - Español (España)', 'es_ES', 1, 0, NULL),
(446, 'Spanish (United States) - Español (Estados Unidos)', 'es_US', 1, 0, NULL),
(447, 'Spanish (Uruguay) - Español (Uruguay)', 'es_UY', 1, 0, NULL),
(448, 'Spanish (Venezuela) - Español (Venezuela)', 'es_VE', 1, 0, NULL),
(449, 'Standard Moroccan Tamazight (Morocco)', 'zgh_MA', 1, 0, NULL),
(450, 'Swahili (Congo - Kinshasa) - Kiswahili (Congo - Kinshasa)', 'sw_CD', 1, 0, NULL),
(451, 'Swahili (Kenya) - Kiswahili (Kenya)', 'sw_KE', 1, 0, NULL),
(452, 'Swahili (Tanzania) - Kiswahili (Tanzania)', 'sw_TZ', 1, 0, NULL),
(453, 'Swahili (Uganda) - Kiswahili (Uganda)', 'sw_UG', 1, 0, NULL),
(454, 'Swedish (Åland Islands) - Svenska (Åland)', 'sv_AX', 1, 0, NULL),
(455, 'Swedish (Finland) - Svenska (Finland)', 'sv_FI', 1, 0, NULL),
(456, 'Swedish (Sweden) - Svenska (Sverige)', 'sv_SE', 1, 0, NULL),
(457, 'Swiss German (France)', 'gsw_FR', 1, 0, NULL),
(458, 'Swiss German (Liechtenstein)', 'gsw_LI', 1, 0, NULL),
(459, 'Swiss German (Switzerland)', 'gsw_CH', 1, 0, NULL),
(460, 'Tachelhit (Latin, Morocco)', 'shi_Latn_MA', 1, 0, NULL),
(461, 'Tachelhit (Tifinagh, Morocco)', 'shi_Tfng_MA', 1, 0, NULL),
(462, 'Taita (Kenya)', 'dav_KE', 1, 0, NULL),
(463, 'Tajik (Tajikistan) - Тоҷикистон (Тоҷикистон)', 'tg_TJ', 1, 0, NULL),
(464, 'Tamil (India) - தமிழ் (இந்தியா)', 'ta_IN', 1, 0, NULL),
(465, 'Tamil (Malaysia) - தமிழ் (மலேஷியா)', 'ta_MY', 1, 0, NULL),
(466, 'Tamil (Singapore) - தமிழ் (சிங்கப்பூர்)', 'ta_SG', 1, 0, NULL),
(467, 'Tamil (Sri Lanka) - தமிழ் (இலங்கை)', 'ta_LK', 1, 0, NULL),
(468, 'Tasawaq (Niger)', 'twq_NE', 1, 0, NULL),
(469, 'Tatar (Russia) - Татар (Россия)', 'tt_RU', 1, 0, NULL),
(470, 'Telugu (India) - తెలుగు (భారతదేశం)', 'te_IN', 1, 0, NULL),
(471, 'Teso (Kenya)', 'teo_KE', 1, 0, NULL),
(472, 'Teso (Uganda)', 'teo_UG', 1, 0, NULL),
(473, 'Thai (Thailand) - ไทย (ไทยแลนด์)', 'th_TH', 1, 0, NULL),
(474, 'Tibetan (China)', 'bo_CN', 1, 0, NULL),
(475, 'Tibetan (India)', 'bo_IN', 1, 0, NULL),
(476, 'Tigrinya (Eritrea)', 'ti_ER', 1, 0, NULL),
(477, 'Tigrinya (Ethiopia)', 'ti_ET', 1, 0, NULL),
(478, 'Tongan (Tonga)', 'to_TO', 1, 0, NULL),
(479, 'Turkish (Cyprus) - Türk (Kıbrıs)', 'tr_CY', 1, 0, NULL),
(480, 'Turkish (Turkey) - Türk (Türkiye)', 'tr_TR', 1, 0, NULL),
(481, 'Ukrainian (Ukraine) - Український (Україна)', 'uk_UA', 1, 0, NULL),
(482, 'Upper Sorbian (Germany)', 'hsb_DE', 1, 0, NULL),
(483, 'Urdu (India) - اردو (بھارت)', 'ur_IN', 1, 0, NULL),
(484, 'Urdu (Pakistan) - اردو (پاکستان)', 'ur_PK', 1, 0, NULL),
(485, 'Uyghur (China) - ئۇيغۇر (جۇڭگو)', 'ug_CN', 1, 0, NULL),
(486, 'Uzbek (Arabic, Afghanistan) - O\'zbekiston (arab, Afg\'oniston)', 'uz_Arab_AF', 1, 0, NULL),
(487, 'Uzbek (Cyrillic, Uzbekistan) - O\'zbek (kirill, O\'zbekiston)', 'uz_Cyrl_UZ', 1, 0, NULL),
(488, 'Uzbek (Latin, Uzbekistan) - O\'zbek (Lotin, O\'zbekiston)', 'uz_Latn_UZ', 1, 0, NULL),
(489, 'Vai (Latin, Liberia)', 'vai_Latn_LR', 1, 0, NULL),
(490, 'Vai (Vai, Liberia)', 'vai_Vaii_LR', 1, 0, NULL),
(491, 'Vietnamese (Vietnam) - Việt (Việt Nam)', 'vi_VN', 1, 0, NULL),
(492, 'Vunjo (Tanzania)', 'vun_TZ', 1, 0, NULL),
(493, 'Walser (Switzerland)', 'wae_CH', 1, 0, NULL),
(494, 'Welsh (United Kingdom) - Cymraeg (Welsh)', 'cy_GB', 1, 0, NULL),
(495, 'Western Frisian (Netherlands) - Western Frysk (Nederland)', 'fy_NL', 1, 0, NULL),
(496, 'Wolof (Senegal)', 'wo_SN', 1, 0, NULL),
(497, 'Yangben (Cameroon)', 'yav_CM', 1, 0, NULL),
(498, 'Yoruba (Benin) - Yorùbá (Benin)', 'yo_BJ', 1, 0, NULL),
(499, 'Yoruba (Nigeria) - Yorùbá (Nigeria)', 'yo_NG', 1, 0, NULL),
(500, 'Zarma (Niger)', 'dje_NE', 1, 0, NULL),
(501, 'Zulu (South Africa) - Zulu (South Africa)', 'zu_ZA', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_i18n_lang_string`
--

CREATE TABLE `ohrm_i18n_lang_string` (
  `id` int(11) NOT NULL,
  `unit_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `note` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ohrm_i18n_lang_string`
--

INSERT INTO `ohrm_i18n_lang_string` (`id`, `unit_id`, `group_id`, `value`, `note`, `version`) VALUES
(1, 'add_job_title', 2, 'Add Job Title', 'The position that is needed by the company ex: Manager IT', '5.0.0'),
(2, 'edit_job_title', 2, 'Edit Job Title', 'Alter the position that is needed by the company ex: Manager IT', '5.0.0'),
(3, 'job_titles', 2, 'Job Titles', 'The job titles specific to the company can be defined in this option. To add an entry, go to Admin>> Job>> Job Titles and click “Add”', '5.0.0'),
(4, 'locations', 2, 'Locations', 'Location where the organization is located.', '5.0.0'),
(5, 'number_of_employees', 2, 'Number of Employees', 'The number of employees under each sub unit', '5.0.0'),
(6, 'add_location', 2, 'Add Location', 'Locations need to be defined first under Admin>>Organization>>Locations.', '5.0.0'),
(7, 'address', 2, 'Address', 'The address field which was already there to display employee\'s residence.', '5.0.0'),
(8, 'email_configuration', 2, 'Email Configuration', 'Configure a few of the most popular email programs to access your email account.', '5.0.0'),
(9, 'mail_sent_as', 2, 'Mail Sent As', 'As with which email address the mail should be sent', '5.0.0'),
(10, 'sending_method', 2, 'Sending Method', 'It is a field appears under mail configuration. Ex: SMTP', '5.0.0'),
(11, 'secure_smtp', 2, 'SECURE SMTP', NULL, '5.0.0'),
(12, 'smtp', 2, 'SMTP', NULL, '5.0.0'),
(13, 'sendmail', 2, 'Sendmail', NULL, '5.0.0'),
(14, 'path_to_sendmail', 2, 'Path to Sendmail', 'Under configuring mail, when we select send mail option for Sending method field, system asks for path to send mail.', '5.0.0'),
(15, 'smtp_host', 2, 'SMTP Host', NULL, '5.0.0'),
(16, 'smtp_port', 2, 'SMTP Port', 'In configuration of mail settings this option is essential to accommodate sending and receiving notifications', '5.0.0'),
(17, 'use_smtp_authentication', 2, 'Use SMTP Authentication', 'To configure the mail settings, go to Admin>> Configuration>>Email Settings,confirm yes/no to the option \"Use SMTP Authentication\"', '5.0.0'),
(18, 'smtp_user', 2, 'SMTP User', 'In configuration of mail settings this option is essential to accommodate sending and receiving notifications', '5.0.0'),
(19, 'smtp_password', 2, 'SMTP Password', 'In configuration of mail settings this option is essential to accommodate sending and receiving notifications', '5.0.0'),
(20, 'tls', 2, 'TLS', NULL, '5.0.0'),
(21, 'optional_the_mail_server_requires_the_use_of_tls_security', 2, 'Optional - the mail server requires the use of TLS security.', NULL, '5.0.0'),
(22, 'send_test_email', 2, 'Send Test Mail', NULL, '5.0.0'),
(23, 'test_email_address', 2, 'Test Email Address', 'If send a test mail option is ticked, need to specify a Test Email Address', '5.0.0'),
(24, 'subscribers', 2, 'Subscribers', 'multiple entries of subscribers for a particular notification type may also be added or deleted. ', '5.0.0'),
(25, 'edit_subscriber', 2, 'Edit Subscriber', 'Allow the admin to edit that subscribe to email notifications that will be sent to the employee.', '5.0.0'),
(26, 'email_subscriptions', 2, 'Email Subscriptions', 'Enter your email address and set your subscription preferences.', '5.0.0'),
(27, 'notification_type', 2, 'Notification Type', 'To subscribe to a notification type, go to Admin>> Configuration>> Email Subscriptions and multiple entries of subscribers for a particular notification type may also be added or deleted.', '5.0.0'),
(28, 'add_subscriber', 2, 'Add Subscriber', 'Admin add subscribers to notifications by ticking “Email Addresses\".', '5.0.0'),
(29, 'edit_employment_status', 2, 'Edit Employment Status', 'Do some changes to employment status such as Full time Permanent/Probation/ Contract to the system.', '5.0.0'),
(30, 'add_employment_status', 2, 'Add Employment Status', 'Add employment status such as Full time Permanent/Probation/ Contract to the system.', '5.0.0'),
(31, 'job_description', 2, 'Job Description', 'You could describe the role of the employee in the company through this feature', '5.0.0'),
(32, 'edit_location', 2, 'Edit Location', 'All company locations need to be defined first under Admin>>Organization>>Locations', '5.0.0'),
(33, 'module_configuration', 2, 'Module Configuration', 'This feature enables the HR Admin to configure the display/hide settings of the modules of the system.(Configure enable/disable module display)', '5.0.0'),
(34, 'admin_module', 2, 'Admin Module', NULL, '5.0.0'),
(35, 'pim_module', 2, 'Pim Module', NULL, '5.0.0'),
(36, 'leave_module', 2, 'Leave Module', NULL, '5.0.0'),
(37, 'time_module', 2, 'Time Module', NULL, '5.0.0'),
(38, 'recruitment_module', 2, 'Recruitment Module', NULL, '5.0.0'),
(39, 'performance_module', 2, 'Performance Module', NULL, '5.0.0'),
(40, 'maintenance_module', 2, 'Maintenance Module', NULL, '5.0.0'),
(41, 'edit_nationality', 2, 'Edit Nationality', 'Allows the HR Admin to define the different nationalities that present in the company which can later be used in the PIM Module. Various nationalities are already predefined.', '5.0.0'),
(42, 'nationalities', 2, 'Nationalities', 'This feature allows the HR Admin to define the different nationalities that present in the company which can later be used in the PIM Module. Various nationalities are already pre-defined. To add a nationality, go to Admin>> Nationalities', '5.0.0'),
(43, 'add_nationality', 2, 'Add Nationality', 'Allows the HR Admin to define the different nationalities that present in the company which can later be used in the PIM Module. Various nationalities are already predefined.', '5.0.0'),
(44, 'general_information', 2, 'General Information', 'Basic details of the company can be entered on this screen. To start adding information, go to Admin>> Organization>> General Information', '5.0.0'),
(45, 'organization_name', 2, 'Organization Name', 'You need to define the company name of the parent company before you create the Company Structure.', '5.0.0'),
(46, 'registration_number', 2, 'Registration Number', 'When adding general information of the company, company registration number should be added to the system.', '5.0.0'),
(47, 'tax_id', 2, 'Tax ID', 'It refers to the Tax ID of the company.', '5.0.0'),
(48, 'edit_organization_unit', 2, 'Edit Organization Unit', NULL, '5.0.0'),
(49, 'unit_id', 2, 'Unit Id', 'Unit Identification, Unit ID helps to uniquely identify each unit.', '5.0.0'),
(50, 'organization_structure', 2, 'Organization Structure', 'This feature allows the admin to define the hierarchy of the company by defining sub units. Since the parent company is already defined in the General Information, it would automatically appear in the Company Structure screen.To add a sub- unit to the company structure, go to Admin>> Organization>> Structure and click on [+]', '5.0.0'),
(51, 'add_organization_unit', 2, 'Add Organization Unit', NULL, '5.0.0'),
(52, 'this_unit_will_be_added_under', 2, 'This unit will be added under', 'This helps when sub units moved around and dragged and dropped to the appropriate places in the company hierarchy', '5.0.0'),
(53, 'add_pay_grade', 2, 'Add Pay Grade', 'Define the pay grades by setting a minimum salary, maximum salary, step increase, and the currency to be paid in.', '5.0.0'),
(54, 'edit_currency', 2, 'Edit Currency', 'Do some changes for the currencies to be paid in.', '5.0.0'),
(55, 'minimum_salary', 2, 'Minimum Salary', 'Minimum Salary are auto-loaded (non-editable) information based on the Pay Grade which is pre-defined in the Admin module.', '5.0.0'),
(56, 'maximum_salary', 2, 'Maximum Salary', 'Maximum Salary are auto-loaded (non-editable) information based on the Pay Grade which is pre-defined in the Admin module.', '5.0.0'),
(57, 'edit_pay_grade', 2, 'Edit Pay Grade', 'Define the pay grades by setting a minimum salary, maximum salary, step increase, and the currency to be paid in.', '5.0.0'),
(58, 'pay_grades', 2, 'Pay Grades', 'The HR Admin can define the pay grades by setting a minimum salary, maximum salary, step increase, and the currency to be paid in. To add an entry, go to Admin>>Job>> Pay Grades', '5.0.0'),
(59, 'add_currency', 2, 'Add Currency', 'Add a currency type that is relevant to a country.(global currencies)', '5.0.0'),
(60, 'edit_user', 2, 'Edit User', 'Edit a system user in the system.To add a system user, go to Admin>> User Management>> Users and go to an existing user record and click “Edit”.', '5.0.0'),
(61, 'add_user', 2, 'Add User', 'Adding a system user to the system.To add a system user, go to Admin>> User Management>> Users and click “Add”.', '5.0.0'),
(62, 'edit_work_shift', 2, 'Edit Work Shift', 'Admin can edit the defined work shifts for an individual or a group of employees. To add an entry, go to Admin>> Job>> Work Shifts and go to an existing work shift record and click “Edit”.', '5.0.0'),
(63, 'shift_name', 2, 'Shift Name', 'When HR Admin defining work shifts for an individual or a group of employees, shift name should be specified', '5.0.0'),
(64, 'duration_per_day', 2, 'Duration Per Day', NULL, '5.0.0'),
(65, 'work_shifts', 2, 'Work Shifts', 'HR Admin can define work shifts for an individual or a group of employees. To add an entry, go to Admin>> Job>> Work Shifts and click “Add”', '5.0.0'),
(66, 'hours_per_day', 2, 'Hours Per Day', 'When viewing monthly attendance report, need to specify no of hours spent on work', '5.0.0'),
(67, 'test_email_sent', 2, 'Test Email Sent', NULL, '5.0.0'),
(68, 'test_email_not_sent', 2, 'Test Email Not Sent', NULL, '5.0.0'),
(69, 'assigned_employees', 2, 'Assigned Employees', 'The Admin can view assigned (In-Use) assets of employees.', '5.0.0'),
(70, 'organization_unit_name_should_be_unique', 2, 'Organization unit name should be unique', NULL, '5.0.0'),
(71, 'should_be_higher_than_minimum_salary', 2, 'Should be higher than Minimum Salary', 'Admin can define the pay grades by setting a minimum salary, maximum salary, step increase, and the currency to be paid in. To add an entry, go to Admin>>Job>> Pay Grades and click “Add”', '5.0.0'),
(72, 'job_categories', 2, 'Job Categories', 'This feature allows the HR Admin to create job categories specific to the company to aggregate job classifications, When defining leave rules and settings for a particular employee group, select the Job Categories of the employees who will be able to apply for the defined leave', '5.0.0'),
(73, 'add_job_category', 2, 'Add Job Category', 'Allows the admin to create job categories specific to the company to aggregate job classifications. Ex : Officials and Managers', '5.0.0'),
(74, 'edit_job_category', 2, 'Edit Job Category', 'Allows the admin toedit job categories specific to the company to aggregate job classifications. Ex : Officials and Managers', '5.0.0'),
(75, 'system_users', 2, 'System Users', 'You may also add multiple entries of user logins. The default system user available will be Admin and has full access to the system.', '5.0.0'),
(76, 'add_work_shift', 2, 'Add Work Shift', 'Admin can define work shifts for an individual or a group of employees. To add an entry, go to Admin>> Job>> Work Shifts', '5.0.0'),
(77, 'licenses', 2, 'Licenses', 'You can define various types of licenses which can be later used in the PIM Module. To add an entry go to Admin>> Qualifications>> Licenses and click “Add”', '5.0.0'),
(78, 'localization', 2, 'Localization', 'This feature enables the HR Admin to configure the language settings and translate the OrangeHRM system to the language of your choice. To configure localization settings, go to Admin>> Configuration>> Localization', '5.0.0'),
(79, 'use_browser_language_if_set', 2, 'Use Browser Language If Set', NULL, '5.0.0'),
(80, 'date_format', 2, 'Date Format', 'Configure the date format under “Localization” the date will then be converted from YYYY-MM-DD to the localized date format.', '5.0.0'),
(81, 'working_hours', 2, 'Working Hours', NULL, '5.0.0'),
(82, 'name', 1, 'Name', 'Name of employee/candidate/session/document.', '5.0.0'),
(83, 'city', 1, 'City', 'City should be displayed when adding individual address fields', '5.0.0'),
(84, 'country', 1, 'Country', 'When configuring leave rules for enterprise module must specify to which country location it applies to.', '5.0.0'),
(85, 'reset', 1, 'Reset', 'The Password Reset Code field', '5.0.0'),
(86, 'search', 1, 'Search', 'Candidate search', '5.0.0'),
(87, 'add', 1, 'Add', 'Add in the system', '5.0.0'),
(88, 'phone', 1, 'Phone', 'provide a “Home Telephone” or “Mobile Number” the company can reach the employee.', '5.0.0'),
(89, 'state_province', 1, 'State/Province', 'State/province where the employee lives', '5.0.0'),
(90, 'zip_postal_code', 1, 'Zip/Postal Code', 'A code which was established by the United States Postal Service, for the purposes of identifying a location and routing the mail to that location /a code of letters and digits added to a postal address to aid in the sorting of mail.', '5.0.0'),
(91, 'note', 1, 'Note', 'You may add a note and click “Hire” to confirm the action.', '5.0.0'),
(92, 'cancel', 1, 'Cancel', 'Cancel a leave request , session etc..', '5.0.0'),
(93, 'yes', 1, 'Yes', 'Clicking on “Yes” to the apply restriction error message, allows the leave to be applied for/assigned.', '5.0.0'),
(94, 'no', 1, 'No', 'No Accessible Time sheets', '5.0.0'),
(95, 'email', 1, 'Email', 'Electronic mail, most commonly referred to as email or e-mail. It is a method of exchanging digital messages from an author to one or more recipients.', '5.0.0'),
(96, 'fax', 1, 'Fax', 'When adding general information of the company this information (Fax No) should be given.', '5.0.0'),
(97, 'nationality', 1, 'Nationality', 'This feature allows the HR Admin to define the different nationalities that present in the company which can later be used in the PIM Module. Various nationalities are already pre-defined. To add a nationality, go to Admin>> Nationalities', '5.0.0'),
(98, 'edit', 1, 'Edit', 'A change or correction made to a particular item/record', '5.0.0'),
(99, 'address_street_1', 1, 'Address Street 1', 'The user can add individual address fields (address1, address2, city, etc )', '5.0.0'),
(100, 'address_street_2', 1, 'Address Street 2', 'The user can add individual address fields (address1, address2, city, etc )', '5.0.0'),
(101, 'description', 1, 'Description', 'Admin defines the description of the document template.', '5.0.0'),
(102, 'currency', 1, 'Currency', 'The HR Admin can define the pay grades by setting the currency to be paid in.', '5.0.0'),
(103, 'currencies', 1, 'Currencies', NULL, '5.0.0'),
(104, 'edit_education', 1, 'Edit Education', 'You can edit the Education details of an employee such as Level, Institute,Specialization, Year', '5.0.0'),
(105, 'level', 1, 'Level', 'Level of education of an employee', '5.0.0'),
(106, 'education', 1, 'Education', 'Add levels of education to the system.', '5.0.0'),
(107, 'add_education', 1, 'Add Education', 'Add levels of education to the system.', '5.0.0'),
(108, 'edit_language', 1, 'Edit Language', 'Edit different types of languages that employees in your company speak can be defined here.', '5.0.0'),
(109, 'add_language', 1, 'Add Language', 'Different types of languages that employees in your company speak can be defined here.', '5.0.0'),
(110, 'languages', 1, 'Languages', 'You can enter the various languages that your employees are competent in, with the level of competency.', '5.0.0'),
(111, 'edit_license', 1, 'Edit License', 'Define various types of licenses under Admin>> Qualifications, which can be later used in the PIM Module. Ex: CMA', '5.0.0'),
(112, 'add_license', 1, 'Add License', 'Define various types of licenses under Admin>> Qualifications, which can be later used in the PIM Module. Ex: CMA', '5.0.0'),
(113, 'edit_membership', 1, 'Edit Membership', 'Add a membership to the system. (Admin>> Qualifications>> Membership)', '5.0.0'),
(114, 'add_membership', 1, 'Add Membership', 'Add a membership to the system. (Admin>> Qualifications>> Membership)', '5.0.0'),
(115, 'memberships', 1, 'Memberships', 'This feature allows the HR Admin to define different membership details of the employees which can be later used in the PIM Module. To add a membership, go to Admin>> Qualifications>> Membership and click “Add”', '5.0.0'),
(116, 'edit_skill', 1, 'Edit Skill', 'Altering information with regard to Skill such as qualification, year of experience and comments.', '5.0.0'),
(117, 'add_skill', 1, 'Add Skill', 'Define various sets of skills which can be later used on the PIM Module. To add an entry go to Admin>> Qualifications>> Skills.', '5.0.0'),
(118, 'skills', 1, 'Skills', 'You can define various sets of skills which can be later used on the PIM Module. To add an entry go to Admin>> Qualifications>> Skills', '5.0.0'),
(119, 'user_role', 1, 'User Role', 'Add multiple HR Admins who will control the system, create logins for general users through ESS Users, assign Regional HR Admins', '5.0.0'),
(120, 'status', 1, 'Status', 'Status of Employment/candidates/time-sheets', '5.0.0'),
(121, 'username', 1, 'Username', 'Name given for employees to access the system as the system user and login to the system successfully', '5.0.0'),
(122, 'employee_name', 1, 'Employee Name', 'Name of the employee.', '5.0.0'),
(123, 'from', 1, 'From', 'Application form', '5.0.0'),
(124, 'to', 1, 'To', 'Select the date range (from to)', '5.0.0'),
(125, 'already_exists', 1, 'Already exists', 'Warning message appears when try to add a name that is already available in the system.', '5.0.0'),
(126, 'to_time_should_be_after_from_time', 1, 'To time should be after from time', NULL, '5.0.0'),
(127, 'failed', 1, 'Failed', NULL, '5.0.0'),
(128, 'should_be_less_n_characters', 1, 'Should not exceed {amount} characters', NULL, '5.0.0'),
(129, 'admin', 1, 'Admin', 'The administrator who has full privilege over the functionality of application.', '5.0.0'),
(130, 'required', 1, 'Required', 'Admin can create a document template body for employees by using tokens required', '5.0.0'),
(131, 'save', 1, 'Save', 'Click Save to submit', '5.0.0'),
(132, 'should_be_a_valid_date_in_hh:mm_format', 1, 'Should be a valid date in hh:mm format', NULL, '5.0.0'),
(133, 'job_category', 1, 'Job Category', 'When defining leave rules and settings for a particular employee group, select the Job Category of the employee who will be able to apply for the defined leave', '5.0.0'),
(135, 'should_be_a_valid_date_in_x_format', 1, 'Should be a valid date in {format} format', NULL, '5.0.0'),
(136, 'should_be_less_than_n', 1, 'Should be less than {amount}', NULL, '5.0.0'),
(137, 'should_be_a_number', 1, 'Should be a number', 'It is a validation message which says it should be a number', '5.0.0'),
(138, 'end_date_should_be_after_start_date', 1, 'End date should be after Start date', 'When viewing the leave list of employees, make sure the to date should be after the from date, if not this error message will be displayed.', '5.0.0'),
(139, 'end_time_should_be_after_start_time', 1, 'End time should be after Start time', NULL, '5.0.0'),
(140, 'attachment_size_exceeded', 1, 'Attachment Size Exceeded', 'Attachments should not exceed 1MB of file size.', '5.0.0'),
(141, 'file_type_not_allowed', 1, 'File type not allowed', NULL, '5.0.0'),
(142, 'employment_status', 1, 'Employment Status', 'Administrators and supervisors can view leave details of employees with a particular employment status.', '5.0.0'),
(143, 'allows_phone_numbers_only', 1, 'Allows numbers and only + - / ( )', 'It appears as a validation message when we type an invalid phone number under the contact details tab.', '5.0.0'),
(144, 'start_date_should_be_before_end_date', 1, 'Start date should be before end date', 'It is a validation message which appears when you select end date before start date.', '5.0.0'),
(145, 'start_time_should_be_before_end_time', 1, 'Start time should be before end time', NULL, '5.0.0'),
(147, 'should_be_higher_than_minimum_value', 1, 'Should be higher than minimum value', NULL, '5.0.0'),
(148, 'ess', 1, 'ESS', 'Employee Self Service', '5.0.0'),
(149, 'enabled', 1, 'Enabled', 'When adding a system user, Select enable to allow employee to access the system with the defined user role.', '5.0.0'),
(150, 'disabled', 1, 'Disabled', 'When creating a user log in, the Status can be Enabled or disabled. Select disable, not to allow employee to access the system with the defined user role.', '5.0.0'),
(151, 'edit_attachment', 1, 'Edit Attachment', 'Do some changes for supporting documents that have been attached.', '5.0.0'),
(152, 'actions', 1, 'Actions', 'It refers to tasks performed', '5.0.0'),
(153, 'error', 1, 'Error', NULL, '5.0.0'),
(154, 'type', 1, 'Type', 'Event types are predefined in the system.', '5.0.0'),
(155, 'download', 1, 'Download', 'A sample is available to download', '5.0.0'),
(156, 'select_file', 1, 'Select File', 'It is a user friendly text which asked the user to select File', '5.0.0'),
(157, 'browse', 1, 'Browse', NULL, '5.0.0'),
(158, 'accepts_up_to_1mb', 1, 'Accepts upto 1 MB', NULL, '5.0.0'),
(159, 'upload', 1, 'Upload', 'Upload images/file', '5.0.0'),
(160, 'success', 1, 'Success', 'A person or thing that achieves desired aims or attains prosperity', '5.0.0'),
(161, 'failed_to_import', 1, 'Failed to Import', NULL, '5.0.0'),
(162, 'no_records_added', 1, 'No Records Added', NULL, '5.0.0'),
(163, 'employee_id', 1, 'Employee Id', 'Employee ID/No will help uniquely identifying a particular employee.', '5.0.0'),
(164, 'id', 1, 'Id', NULL, '5.0.0'),
(165, 'last_name', 1, 'Last Name', 'When adding personal details of an employee, last name is considered as a mandatory field.', '5.0.0'),
(166, 'job_title', 1, 'Job Title', 'The job titles specific to the company can be defined in this option. To add an entry, go to Admin>> Job>> Job Titles and click “Add”', '5.0.0'),
(167, 'sub_unit', 1, 'Sub Unit', 'Add a sub- unit to the company structure, go to Admin>> Organization>> Structure and right click on the particular sub unit', '5.0.0'),
(168, 'current_and_past_employees', 1, 'Current and Past Employees', 'Employee who work in an organization at present and the employees who resigned', '5.0.0'),
(169, 'past_employees_only', 1, 'Past Employees Only', 'Only the employees who have already left the company.', '5.0.0'),
(170, 'current_employees_only', 1, 'Current Employees Only', 'Only the employees work in the company at present', '5.0.0'),
(171, 'mobile', 1, 'Mobile', 'Enter the “Name” of the person you wish the company to contact in case of emergency, the “Relationship” of the employee to the contact person provided and a “Home Telephone” or “Mobile Number” the company can reach him/her.', '5.0.0'),
(172, 'expiry_date', 1, 'Expiry Date', 'The date after which a particular event is no longer in effect...The last day that an option is valid.For Ex: Driving License Expiry Date,Memberships Expiry dates', '5.0.0'),
(173, 'joined_date', 1, 'Joined Date', 'Hired date of an candidate and the date he joined as a current employee of the company', '5.0.0'),
(174, 'location', 1, 'Location', 'All employees based in all the company locations need to be defined first under Admin>>Organization>>Locations.', '5.0.0'),
(175, 'male', 1, 'Male', 'If gender is specified, value should be either male or female', '5.0.0'),
(176, 'female', 1, 'Female', 'Gender that need to be specified when adding personal details of an employee', '5.0.0'),
(177, 'qualifications', 1, 'Qualifications', 'This feature allows you to define all information with regards to employees’ qualifications such as skill, Education, Licenses and Languages', '5.0.0'),
(178, 'state', 1, 'State', 'State/Province – If the country is United Sates you can select from the drop down or you need to enter it manually', '5.0.0'),
(179, 'should_be_a_positive_number', 1, 'Should be a positive number', 'It is a validation message which says it should be a positive number', '5.0.0'),
(180, 'add_employee', 1, 'Add Employee', 'Add a new employee to the system.', '5.0.0'),
(181, 'report_name', 1, 'Report Name', 'Report can generate a graphical summary of important fact and we can give a suitable name to it', '5.0.0'),
(182, 'warning', 1, 'Warning', NULL, '5.0.0'),
(183, 'employee_reports', 1, 'Employee Reports', 'Generate reports that are relevant to employees', '5.0.0'),
(184, 'current_file', 1, 'Current File', 'Current version of a file', '5.0.0'),
(185, 'replace_with', 1, 'Replace With', 'Same file found in the target location and is replaced with new file.', '5.0.0'),
(186, 'comment', 1, 'Comment', 'You may enter any important note regarding some information.', '5.0.0'),
(187, 'type_comment_here', 1, 'Type comment here', NULL, '5.0.0'),
(188, 'year', 1, 'Year', 'Specify the year in leave calendar view', '5.0.0'),
(189, 'start_date', 1, 'Start Date', 'Start date of current leave period', '5.0.0'),
(190, 'end_date', 1, 'End Date', 'When defining the current leave period, the system will automatically set the “End Date” as to have a one-calendar year leave period.', '5.0.0'),
(191, 'comments', 1, 'Comments', 'You may enter any important notes regarding some information.', '5.0.0'),
(192, 'type_comments_here', 1, 'Type Comments here', NULL, '5.0.0'),
(193, 'language', 1, 'Language', 'You can enter the various languages that your employees are competent in, with the level of competency.', '5.0.0'),
(194, 'pay_grade', 1, 'Pay Grade', 'The HR Admin can define the pay grades by setting a minimum salary, maximum salary, step increase, and the currency to be paid in. To add an entry, go to Admin>>Job>> Pay Grades', '5.0.0'),
(195, 'to_date_should_be_after_from_date', 1, 'To date should be after From date', 'It is a validation message which appears when you select to date before from date.', '5.0.0'),
(196, 'past_employee', 1, '(Past Employee)', NULL, '5.0.0'),
(197, 'first_name', 1, 'First name', NULL, '5.0.0'),
(198, 'middle_name', 1, 'Middle name', NULL, '5.0.0'),
(199, 'employee_full_name', 1, 'Employee Full Name', NULL, '5.0.0'),
(200, 'job_specification', 1, 'Job Specification', 'You could describe the job role of the employee in the company through this feature which appears under job details. The default will be \"Not defined\".', '5.0.0'),
(201, 'attachments', 1, 'Attachments', 'Uploaded files as images/documents', '5.0.0'),
(202, 'file_name', 1, 'File Name', 'Name of the File to be uploaded', '5.0.0'),
(203, 'size', 1, 'Size', 'maximum file size of the picture / Paper size', '5.0.0'),
(204, 'accept_jpg_png_upto_1mb_recomended_dimentions_200px_x_200px', 1, 'Accepts jpg, .png, .gif up to 1MB. Recommended dimensions: 200px X 200px', NULL, '5.0.0'),
(205, 'from_date_should_be_before_to_date', 1, 'From date should be before to date', 'If the employee selects a to date that falls before From date when apply/assign for leave, he will receive the error message saying From date should be before To Date.', '5.0.0'),
(206, 'should_be_less_than_upper_bound', 1, 'Should be less than upper bound', NULL, '5.0.0'),
(207, 'include_header', 1, 'Include Header', 'Include header name which is common for all the Job Vacancy Application Forms.', '5.0.0'),
(208, 'add_attachment', 1, 'Add Attachment', 'Insert file attachments, such as pictures and documents.', '5.0.0'),
(209, 'type_here', 1, 'Type here', NULL, '5.0.0'),
(210, 'date', 1, 'Date', 'Date of birth / License Expiry Date', '5.0.0'),
(211, 'monday', 1, 'Monday', 'Start day of the week', '5.0.0'),
(212, 'tuesday', 1, 'Tuesday', 'One of the day of week', '5.0.0'),
(213, 'wednesday', 1, 'Wednesday', 'One of the weekdays', '5.0.0'),
(214, 'thursday', 1, 'Thursday', 'one of the days of the week', '5.0.0'),
(215, 'friday', 1, 'Friday', 'One of the days of the week', '5.0.0'),
(216, 'saturday', 1, 'Saturday', 'One of the days of the week', '5.0.0'),
(217, 'sunday', 1, 'Sunday', 'One of the days of the week', '5.0.0'),
(218, 'employee', 1, 'Employee', 'Staff currently working at your company.', '5.0.0'),
(219, 'generate', 1, 'Generate', NULL, '5.0.0'),
(220, 'from_date', 1, 'From Date', 'The specific date from which employees time and attendance records are extracted.', '5.0.0'),
(221, 'to_date', 1, 'To Date', 'The date up-to which time and attendance records of employees are extracted.', '5.0.0'),
(222, 'duration', 1, 'Duration', 'Calculate the duration of the leave period.', '5.0.0'),
(223, 'apply', 1, 'Apply', 'Apply for leave/Job vacancy', '5.0.0'),
(224, 'back', 1, 'Back', 'Click “Back” and the action will be reflected', '5.0.0'),
(225, 'confirm', 1, 'Confirm', 'Click confirm button to confirm a particular action', '5.0.0'),
(226, 'no_matching_employees', 1, 'No matching employees', 'This message appears when there is no matching employees', '5.0.0'),
(227, 'no_employees_match_filters', 1, 'No employees match the selected filters', 'This message appears when there is no employees match the selected filters', '5.0.0'),
(228, 'ok', 1, 'Ok', NULL, '5.0.0'),
(229, 'leave', 1, 'Leave', 'A comprehensive leave management module with extensive possibilities of defining leave types, company holidays, applying for and assigning of leave for the employees of the company.', '5.0.0'),
(230, 'comment_here', 1, 'Comment here', NULL, '5.0.0'),
(231, 'from_time_should_be_before_to_time', 1, 'From time should be before to time', NULL, '5.0.0'),
(232, 'deleted', 1, ' (Deleted)', NULL, '5.0.0'),
(233, 'add_comment', 1, 'Add Comment', NULL, '5.0.0'),
(234, 'approve', 1, 'Approve', 'Approve time sheets /leave', '5.0.0'),
(235, 'reject', 1, 'Reject', 'The Admin or Hiring Manager can turn down an application by selecting the status as \"Reject\"', '5.0.0'),
(236, 'n_records_found', 1, '{count,plural, =0{No Records Found} one{(1) Record Found} other{ (#) Records Found}}', NULL, '5.0.0'),
(237, 'n_records_selected', 1, '{count,plural, =0{No Records Selected} one{(1) Record Selected} other{(#) Records Selected}}', NULL, '5.0.0'),
(238, 'password', 1, 'Password', 'Provide a password for the employee and confirm password for security purposes.', '5.0.0'),
(239, 'password_strength_message', 1, 'For a strong password, please use a hard to guess combination of text with upper and lower case characters, symbols and numbers', NULL, '5.0.0'),
(240, 'confirm_password', 1, 'Confirm Password', 'Provide a password for the employee and confirm password for security purposes.', '5.0.0'),
(241, 'passwords_do_not_match', 1, 'Passwords do not match', 'This error message appears when password and confirm password does not match', '5.0.0'),
(242, 'weak', 1, 'Weak', 'Refers to the strength of the password.', '5.0.0'),
(243, 'very_weak', 1, 'Very Weak', 'Refers to the strength of the password.', '5.0.0'),
(244, 'better', 1, 'Better', NULL, '5.0.0'),
(245, 'strongest', 1, 'Strongest', 'Refers to the strength of the password.', '5.0.0'),
(246, 'about', 1, 'About', 'Users can view public information about the rest of the employees in the company corporate directory.', '5.0.0'),
(247, 'support', 1, 'Support', NULL, '5.0.0'),
(248, 'change_password', 1, 'Change Password', 'Altering the password', '5.0.0'),
(249, 'logout', 1, 'Logout', 'Click on Log out to conclude use of the system.', '5.0.0'),
(250, 'no_records_found', 1, 'No Records Found', 'This message appears when there is no records found', '5.0.0'),
(251, 'change_password_question', 1, 'Change Password ?', NULL, '5.0.0'),
(252, 'type_description_here', 1, 'Type description here', NULL, '5.0.0'),
(253, 'add_note', 1, 'Add note', NULL, '5.0.0'),
(254, 'successfully_updated', 1, 'Successfully Updated', 'It is a user friendly message saying that updating of record is done successfully', '5.0.0'),
(255, 'successfully_saved', 1, 'Successfully Saved', 'It is a user friendly message saying that saving of a record is done successfully', '5.0.0'),
(256, 'notes', 1, 'Notes', 'You may enter an overall note regarding the employee’s performance review.', '5.0.0'),
(257, 'type_here_message', 1, 'Type here ...', NULL, '5.0.0'),
(258, 'job', 1, 'Job', 'Allows the HR admin to define job titles, specifications, pay grades, employment status, job categories and work shifts.', '5.0.0'),
(259, 'no_cancel', 1, 'No, Cancel', NULL, '5.0.0'),
(260, 'user_management', 1, 'User Management', 'This feature allows the HR Admin to administer users by:Creating logins and defining privileges by assigning User Roles (Global Admin/Admin*, Default ESS, Default Supervisor**). ', '5.0.0'),
(261, 'project_info', 1, 'Project Info', 'Here information regarding projects, customers, project activities and project administrator can be defined, which can be later used for project management activities.', '5.0.0'),
(262, 'organization', 1, 'Organization', 'Allows the HR admin to enter/store general company info, structure of the organization and locations of sites.', '5.0.0'),
(263, 'users', 1, 'Users', 'Users can be assigned a combination of custom/default User Roles.', '5.0.0'),
(264, 'configuration', 1, 'Configuration', 'An arrangement of elements in a particular form', '5.0.0'),
(265, 'language_packages', 1, 'Language Packages', NULL, '5.0.0'),
(266, 'modules', 1, 'Modules', 'Enable/Disable Module display of admin,pim,leave,time,performance etc..', '5.0.0'),
(267, 'register_oauth_client', 1, 'Register OAuth Client', NULL, '5.0.0'),
(268, 'social_media_authentication', 1, 'Social Media Authentication', NULL, '5.0.0'),
(269, 'employee_list', 1, 'Employee List', 'Lists all the employees entered and imported into the PIM.To view the employee list, go to PIM>>Employee List', '5.0.0'),
(270, 'reports', 1, 'Reports', 'This feature allows users to generate Leave/Custom/PIM reports', '5.0.0'),
(271, 'pim', 1, 'PIM', 'Personal Information Management', '5.0.0'),
(272, 'recruitment', 1, 'Recruitment', 'It manages the recruitment process of a company. The Admin can create Vacancies which will be listed on the link via social media networks.', '5.0.0'),
(273, 'time', 1, 'Time', 'Date and time of action performed', '5.0.0'),
(274, 'my_info', 1, 'My Info', 'ESS can view his personal details under the ‘My Info’ Module.', '5.0.0'),
(275, 'performance', 1, 'Performance', 'Manages and reviews the performance of all employees where a company can understand how well an employee is performing in relation to their strategic goals and objectives.', '5.0.0'),
(276, 'dashboard', 1, 'Dashboard', 'The Dashboard is a page which provides a summary of vital information (Eg: Number of employees in a department, or leave taken by each department) and a quick access to certain tasks (Eg: Leave applications pending for approval)', '5.0.0'),
(277, 'directory', 1, 'Directory', NULL, '5.0.0'),
(278, 'buzz', 1, 'Buzz', NULL, '5.0.0'),
(279, 'maintenance', 1, 'Maintenance', NULL, '5.0.0'),
(280, 'my_timesheets', 1, 'My Timesheets', 'When an ESS-Employee or an ESS-Supervisor wants to enter his/her time sheet, they can go to Time>> Time sheets>> My Time sheets', '5.0.0'),
(281, 'my_records', 1, 'My Records', 'Lists down records of user details in the system.', '5.0.0'),
(282, 'employee_timesheets', 1, 'Employee Timesheets', 'To action an employee timesheet, go to Time>> Time Sheets>> Employee Time sheets, those time sheets can be viewed, edited,approved and rejected.', '5.0.0'),
(283, 'timesheets', 1, 'Timesheets', 'Only Include Approved Time sheets', '5.0.0'),
(284, 'punch_in_out', 1, 'Punch In/Out', 'This feature allows capturing the number of hours an employee spends working for the company. This feature is only available to the ESS – Supervisor and ESS User. To access the Punch In/Out tab, go to Time>> Attendance>>Punch In/Out', '5.0.0'),
(285, 'employee_records', 1, 'Employee Records', 'Records in the system which are related to employees.', '5.0.0'),
(286, 'attendance', 1, 'Attendance', 'All attendance records are maintained and recorded under “Attendance” menu.', '5.0.0'),
(287, 'customers', 1, 'Customers', 'Activities within Projects that are being done for various Customers.', '5.0.0'),
(288, 'projects', 1, 'Projects', 'The administrators are able to define the projects, which were/are/will be managed by the company. To add a project, go to Time>> Project Info>> Projects and click “Add”', '5.0.0'),
(289, 'project_reports', 1, 'Project Reports', 'The Admin can view can reports for all projects and the ESS – Supervisors can view reports of projects administered by them or projects assigned to them. To view project reports go to Time>> Reports>> Project Reports', '5.0.0'),
(290, 'vacancies', 1, 'Vacancies', 'Here the Admin can create a vacancy for a particular job title required by the company.', '5.0.0'),
(291, 'candidates', 1, 'Candidates', 'Applicants/candidates who applied for the post and get shortlisted.', '5.0.0'),
(292, 'kpis', 1, 'KPIs', NULL, '5.0.0'),
(293, 'manage_reviews', 1, 'Manage Reviews', 'HR manages performance reviews of all employees in a company', '5.0.0'),
(294, 'my_reviews', 1, 'My Reviews', 'Employee can view his performance reviews tracked by a reviewer', '5.0.0'),
(295, 'my_trackers', 1, 'My Trackers', 'The My Tracker section allows employees to add and view their performance logs.Employees can add and modify only their own log entries and view other reviewer logs, by going to Performance>My Trackers', '5.0.0'),
(296, 'review_list', 1, 'Review List', 'It is possible to add reviewers to the list', '5.0.0'),
(297, 'trackers', 1, 'Trackers', NULL, '5.0.0'),
(298, 'employee_trackers', 1, 'Employee Trackers', 'Once a tracker is created, reviewers can add logs (comments about positive/negative performance) to the tracker.To do this, a reviewer can go to Performance>Employee Trackers', '5.0.0'),
(299, 'candidate_records', 1, 'Candidate Records', NULL, '5.0.0'),
(300, 'access_records', 1, 'Access Records', NULL, '5.0.0'),
(301, 'purge_records', 1, 'Purge Records', NULL, '5.0.0'),
(302, 'structure', 1, 'Structure', 'Company/organizational structure', '5.0.0'),
(303, 'sun', 1, 'Sun', 'Abbreviation of Sunday', '5.0.0'),
(304, 'mon', 1, 'Mon', 'Abbreviation of Monday', '5.0.0'),
(305, 'tue', 1, 'Tue', 'Abbreviation of Tuesday', '5.0.0'),
(306, 'wed', 1, 'Wed', 'Abbreviation for Wednesday', '5.0.0'),
(307, 'thu', 1, 'Thu', 'Abbreviation of Thursday', '5.0.0'),
(308, 'fri', 1, 'Fri', 'Abbreviation of Friday', '5.0.0'),
(309, 'sat', 1, 'Sat', 'Abbreviation for Saturday', '5.0.0'),
(310, 'performed_by', 1, 'Performed By', 'When viewing the review history,it shows who has performed a certain action ; ex: Approved by Admin', '5.0.0'),
(311, 'add_another', 1, 'Add another', 'Adding another project admin for a particular project.', '5.0.0'),
(312, 'view', 1, 'View', 'Admin has the privileged to view assigned goal/leave/tasks of all employees', '5.0.0'),
(313, 'attendance_summary', 1, 'Attendance Summary', 'The Admin can view can the attendance summary of all employees while an ESS – Supervisors can view the attendance summary of his/her subordinates. Here the Admin and ESS -Supervisor can track the time employees have spent working in the company. To view an employee’s attendance summary, go to Time>> Reports>>Attendance Summary.', '5.0.0'),
(314, 'my_leave', 1, 'My Leave', 'When the employee logs in to the system and checks his/her leave by going to Leave>> My Leave, he/she will see the leave that was assigned to him/her', '5.0.0'),
(315, 'my_entitlements', 1, 'My Entitlements', 'An ESS-Employee is only able to “View” his leave entitlement when he/she logs in. To view, go to Leave>> Entitlements>> My Entitlements', '5.0.0'),
(316, 'add_entitlements', 1, 'Add Entitlements', 'Add all leave entitlements to employees.', '5.0.0'),
(317, 'configure', 1, 'Configure', 'The user is configuring what are the fields to be displayed.', '5.0.0'),
(318, 'employee_entitlements', 1, 'Employee Entitlements', 'All available leave entitlements for a particular employee.', '5.0.0'),
(319, 'entitlements', 1, 'Entitlements', 'Generate reports to display information on leave entitlements', '5.0.0'),
(320, 'work_email', 1, 'Work Email', 'The company email address of each employee should be added to the employee record in the PIM module>> Contact Details>> Work Email.', '5.0.0'),
(321, 'other_email', 1, 'Other Email', 'Other email address of an employee', '5.0.0'),
(322, 'company_name', 1, 'Company Name', NULL, '5.0.0'),
(323, 'version', 1, 'Version', NULL, '5.0.0'),
(324, 'active_employees', 1, 'Active Employees', NULL, '5.0.0'),
(325, 'employees_terminated', 1, 'Employees Terminated', NULL, '5.0.0'),
(326, 'are_you_sure', 1, 'Are you Sure?', NULL, '5.0.0'),
(327, 'delete_confirmation_message', 1, 'The selected record will be permanently deleted. Are you sure you want to continue?', NULL, '5.0.0'),
(328, 'yes_delete', 1, 'Yes, Delete', NULL, '5.0.0'),
(329, 'keep_current', 1, 'Keep Current', 'You may retain the current resume when viewing employees application detail status', '5.0.0'),
(330, 'delete_current', 1, 'Delete Current', 'Delete the current resume', '5.0.0'),
(331, 'replace_current', 1, 'Replace Current', 'Replace current resume with another resume for which you will be prompted to upload another resume document.', '5.0.0'),
(332, 'module_forbidden', 1, 'Module Forbidden', NULL, '5.0.0'),
(333, 'module_access_restriction', 1, 'The page you\'re trying to access has restricted access', NULL, '5.0.0'),
(334, 'launching_soon', 1, 'Launching Soon', NULL, '5.0.0'),
(337, 'click_here', 1, 'Click here', NULL, '5.0.0'),
(338, 'bad_request', 1, 'Bad Request', NULL, '5.0.0'),
(339, 'personal_details', 1, 'Personal Details', 'you have to add details such as employee name, Marital Status, Gender, Date of Birth etc and save the employee with his/her picture', '5.0.0'),
(340, 'emergency_contacts', 1, 'Emergency Contacts', 'Allows the employee to add Contact details of the people whom we inform in case of an emergency such as Name, Relationship,Home Telephone, Mobile etc.', '5.0.0'),
(341, 'dependents', 1, 'Dependents', 'If an employee has some people who rely on him/her for aid can be considered as a dependents.', '5.0.0'),
(342, 'immigration', 1, 'Immigration', 'Immigration details about employees are recorded in this tab.', '5.0.0'),
(343, 'salary', 1, 'Salary', 'On Salary Information all fields such as Pre Grade, Currency used will be shown in Salary History.', '5.0.0'),
(344, 'report_to', 1, 'Report-to', 'Reporting details of employees are recorded here, e.g. an employee\'s supervisor, reporting method and subordinates assigned to him/her will be recorded. ', '5.0.0'),
(345, 'tax_exemptions', 1, 'Tax Exemptions', 'When configure PIM Optional field, admin can enable show US tax exemptions as a country specific information.Then tax exemption will get displayed in PIM tab.', '5.0.0'),
(346, 'info', 1, 'Info', NULL, '5.0.0'),
(347, 'expected_email_address_format_not_matched', 1, 'Expected format: admin@example.com', 'This is a validation message appears when you enter an invalid figure (numeric value) as work email address, and display the expected format of an email address to be entered.', '5.0.0'),
(348, 'submit', 1, 'Submit', 'Enter, modify and submit personal time sheets', '5.0.0'),
(349, 'date_range', 1, 'Date Range', NULL, '5.0.0'),
(350, 'date_format', 1, 'yyyy-mm-dd', NULL, '5.0.0'),
(351, 'cannot_be_deleted', 1, 'Cannot be deleted', NULL, '5.0.0'),
(352, 'successfully_deleted', 1, 'Successfully Deleted', 'It is a user friendly message saying that deleting of a record is done successfully', '5.0.0'),
(353, 'total', 1, 'Total', 'Total Deductions, Total Payable', '5.0.0'),
(354, 'searching', 1, 'Searching....', NULL, '5.0.0'),
(355, 'no_file_chosen', 1, 'No file chosen', NULL, '5.0.0'),
(356, 'no_file_selected', 1, 'No file selected', NULL, '5.0.0'),
(357, 'type_for_hints', 1, 'Type for hints...', 'Type the first few letters of the text you are searching for and then intended text can be selected from the drop-down menu.', '5.0.0'),
(358, 'select', 1, '-- Select --', NULL, '5.0.0'),
(359, 'unexpected_error', 1, 'Unexpected Error!', NULL, '5.0.0'),
(360, 'delete_selected', 1, 'Delete Selected', NULL, '5.0.0'),
(361, 'corporate_branding', 1, 'Corporate Branding', NULL, '5.0.0'),
(362, 'more', 1, 'More', NULL, '5.0.0'),
(363, 'should_be_greater_than_lower_bound', 1, 'Should be greater than lower bound', NULL, '5.0.0'),
(364, 'less_than', 1, 'Less Than', 'If the defined maximum period of service is 6 months, and if the employee’s service period is less than 6 months from the time he/she has joined the company, leave applications/assignments will not be possible', '5.0.0'),
(365, 'greater_than', 1, 'Greater Than', '\"When adding salary component, a minimum and maximum salary amount is specified based on an employee’s pay grade category,cannot be less than or greater than the specified amount.\"', '5.0.0'),
(366, 'range', 1, 'Range', 'Speaking skills of an employee of a particular language', '5.0.0'),
(367, 'custom_fields', 3, 'Custom Fields', 'This feature allows the Admin to customize and add fields to all the screen of the PIM Module', '5.0.0'),
(368, 'remaining_no_of_custom_fields', 3, 'Remaining number of custom fields:', NULL, '5.0.0'),
(369, 'all_custom_fields_in_use', 3, 'All custom fields are in use', NULL, '5.0.0'),
(370, 'custom_field_name', 3, 'Custom Field Name', 'Define a suitable name for the custom field. Ex: Hardware', '5.0.0'),
(371, 'screen', 3, 'Screen', 'PIM module screens', '5.0.0'),
(372, 'field_type', 3, 'Field Type', 'When adding custom fields, field type needs to be specified such as text, numeric, drop down etc', '5.0.0'),
(373, 'custom_fields_in_use', 3, 'Custom field(s) in use', NULL, '5.0.0'),
(374, 'edit_custom_field', 3, 'Edit Custom Field', 'Do some changes to new fields that are created for users to fill out more information.', '5.0.0'),
(375, 'field_name', 3, 'Field Name', 'When adding custom fields to a custom field section, field name should be mentioned.', '5.0.0'),
(376, 'select_options', 3, 'Select Options', 'It is a user friendly text which asked the user to select Options', '5.0.0'),
(377, 'enter_allowed_options_separated_by_commas', 3, 'Enter allowed options separated by commas', 'Allows entering options that are separated by commas.', '5.0.0'),
(378, 'add_custom_field', 3, 'Add Custom Field', 'Allows to create new fields for users to fill out more information.', '5.0.0'),
(379, 'data_import', 3, 'Data Import', 'This feature allows the Admin to import data from a CSV file. To import data, go to PIM>> Configuration>> Data Import', '5.0.0'),
(380, 'column_order_should_not_be_changed', 3, 'Column order should not be changed', 'the column format of the CSV File should be the same as the “Sample CSV File”.', '5.0.0'),
(381, 'first_name_and_last_name_are_compulsory', 3, 'First Name and Last Name are compulsory', 'When adding an employee to the system, first name and last name are considered as required fields.', '5.0.0'),
(382, 'all_date_fields_should_be_in_yyyy_mm_dd_format', 3, 'All date fields should be in YYYY-MM-DD format', 'The fields that input dates should be in the standard format (ex: 2014-12-12)', '5.0.0'),
(383, 'gender_specified_value_should_be_either_m_or_f', 3, 'If gender is specified, value should be either Male or Female', NULL, '5.0.0'),
(384, 'each_import_file_should_be_configured_for_100_records_or_less', 3, 'Each import file should be configured for 100 records or less', 'PIM->Configure->Data Import', '5.0.0'),
(385, 'multiple_import_files_may_be_required', 3, 'Multiple import files may be required', 'In CSV import, you may carry out multiple imports but maximum of 100 records or less per data import.', '5.0.0'),
(386, 'sample_csv_file', 3, 'Sample CSV file', 'Column format of the CSV File should be the same as the “Sample CSV File”. Click on Sample CSV File: “Download” to view the column format', '5.0.0'),
(387, 'number_of_records_imported', 3, 'Number of Records Imported: ', NULL, '5.0.0'),
(388, 'employee_information', 3, 'Employee Information', 'Employee details such as job info, Salary info, Contact info, immigration info can be considered here.', '5.0.0'),
(389, 'include', 3, 'Include', 'Include Past Employee: Administrator and supervisor can view leave details of past employees as well / Only Include Approved Time sheets', '5.0.0'),
(390, 'supervisor_name', 3, 'Supervisor Name', 'Name of the supervisor (an employee who has subordinates under him)', '5.0.0'),
(391, 'first_middle_name', 3, 'First (& Middle) Name', 'The first and middle name of an employee ', '5.0.0'),
(392, 'supervisor', 3, 'Supervisor', 'Supervisors can view assigned assets/time sheets/leave of the subordinates', '5.0.0'),
(393, 'contact_details', 3, 'Contact Details', 'A PIM tab which allows the employee to add his/her contact details such as Address, Home Telephone, Work email etc.', '5.0.0'),
(394, 'street1', 3, 'Street 1', NULL, '5.0.0'),
(395, 'street2', 3, 'Street 2', NULL, '5.0.0'),
(396, 'telephone', 3, 'Telephone', NULL, '5.0.0'),
(397, 'home', 3, 'Home', NULL, '5.0.0'),
(398, 'work', 3, 'Work', NULL, '5.0.0'),
(399, 'assigned_dependents', 3, 'Assigned Dependents', 'When you add details of the employee\'s dependents it\'ll be listed as assigned dependents.', '5.0.0'),
(400, 'relationship', 3, 'Relationship', 'Relationship with the employee e.g. mother, father, child', '5.0.0'),
(401, 'date_of_birth', 3, 'Date of Birth', 'System will send emails to recipients about employees’ date of birth each year based on the settings.', '5.0.0'),
(402, 'assigned_emergency_contacts', 3, 'Assigned Emergency Contacts', 'Assign the “Name” of the person you wish the company to contact in case of emergency, the “Relationship” of the employee to the contact person provided and a “Home Telephone” or “Mobile Number” the company can reach him/her.', '5.0.0'),
(403, 'home_telephone', 3, 'Home Telephone', '\"When adding contact details and emergency contact details, we should provide a “Home Telephone” or “Mobile Number” the company can reach him/her.\"', '5.0.0'),
(404, 'work_telephone', 3, 'Work Telephone', 'When entering Contact information of an employee, work telephone should be added to the system', '5.0.0'),
(405, 'assigned_immigration_records', 3, 'Assigned Immigration Records', 'To assign immigration information of a particular employee such as passport details/visa details', '5.0.0'),
(406, 'document', 3, 'Document', 'HR Admin publishes and shares company related documents with all employees in the company.', '5.0.0'),
(407, 'number', 3, 'Number', 'Track the number of employees working for a particular location once employees are tagged to the locations', '5.0.0'),
(408, 'issued_by', 3, 'Issued By', 'When assigning immigration details by adding relevant passport/visa documents, by which county it is issued also should be mentioned.', '5.0.0');
INSERT INTO `ohrm_i18n_lang_string` (`id`, `unit_id`, `group_id`, `value`, `note`, `version`) VALUES
(409, 'issued_date', 3, 'Issued Date', 'When assigning immigration details by adding relevant passport/visa documents,When it is issued also should be mentioned.', '5.0.0'),
(410, 'job_details', 3, 'Job Details', NULL, '5.0.0'),
(411, 'include_employment_contract_details', 3, 'Include Employment Contract Details', NULL, '5.0.0'),
(412, 'contract_start_date', 3, 'Contract Start Date', 'Start date of employee job contract', '5.0.0'),
(413, 'contract_end_date', 3, 'Contract End Date', 'Employee>Job Contract>End Date', '5.0.0'),
(414, 'contract_details', 3, 'Contract Details', 'Details of employee job contract', '5.0.0'),
(415, 'assigned_memberships', 3, 'Assigned Memberships', 'If employees are members of any committee, institute etc. those details can be assigned to employees', '5.0.0'),
(416, 'membership', 3, 'Membership', 'This feature allows the HR Admin to define different membership details of the employees which can be later used in the PIM Module. To add a membership, go to Admin>> Qualifications>> Membership and click “Add”', '5.0.0'),
(417, 'subscription_paid_by', 3, 'Subscription Paid By', 'Subscription paid by company or by employees', '5.0.0'),
(418, 'subscription_amount', 3, 'Subscription Amount', 'If employees are members of any committee, institute etc. those details can be entered here. One option of the employee’s membership details to be filled', '5.0.0'),
(419, 'subscription_commence_date', 3, 'Subscription Commence Date', 'If employees are members of any committee, institute etc. those details can be entered here. One option of the employee’s membership details to be filled', '5.0.0'),
(420, 'subscription_renewal_date', 3, 'Subscription Renewal Date', 'If employees are members of any committee, institute etc. those details can be entered here. One option of the employee’s membership details to be filled', '5.0.0'),
(421, 'other_id', 3, 'Other Id', 'One you have added and saved the employee name with his/her picture and the user logins, You can also edit the personal details such as other ID', '5.0.0'),
(422, 'driver_license_number', 3, 'Driver License Number', 'It is a field that appears when you edit personal details of a particular employee.Here, admin enters the number of employee\'s driving license.', '5.0.0'),
(423, 'license_expiry_date', 3, 'License Expiry Date', 'System will send emails to recipients about employee/s License expiry. Ex: Driving License Expiry', '5.0.0'),
(424, 'ssn_number', 3, 'SSN Number', 'Social Security Number', '5.0.0'),
(425, 'sin_number', 3, 'SIN Number', 'Social Identification Number.', '5.0.0'),
(426, 'marital_status', 3, 'Marital Status', 'You can add/edit the personal details such as marital status; married or single', '5.0.0'),
(427, 'gender', 3, 'Gender', 'Select the gender of the employee.If gender is specified, value should be either male or female.', '5.0.0'),
(428, 'military_service', 3, 'Military Service', 'Military Service details to be entered when adding personal details of an employee.', '5.0.0'),
(429, 'smoker', 3, 'Smoker', 'It gets listed under the personal details as an optional field', '5.0.0'),
(430, 'employee_id_exists', 3, 'Employee Id already exists', NULL, '5.0.0'),
(431, 'change_profile_picture', 3, 'Change Profile Picture', NULL, '5.0.0'),
(432, 'report_to', 3, 'Report to', NULL, '5.0.0'),
(433, 'salary_component', 3, 'Salary Component', 'The HR Admin can define salary components by going to Admin>>Job>> Salary Components.', '5.0.0'),
(434, 'amount', 20, 'Amount', 'Amount to be deposited', '5.0.0'),
(435, 'pay_frequency', 3, 'Pay Frequency', 'Frequency of salary payable should be included in salary details', '5.0.0'),
(436, 'direct_deposit_amount', 3, 'Direct Deposit Amount', 'When Adding Direct Deposit Details, need to specify the amount to be deposited.', '5.0.0'),
(437, 'federal_income_tax', 3, 'Federal Income Tax', 'Tax which is charged on employee\'s income in the US.', '5.0.0'),
(438, 'exemptions', 3, 'Exemptions', 'It is an event, which occurs during the execution of a program, that disrupts the normal flow of the program\'s instructions.', '5.0.0'),
(439, 'unemployment_state', 3, 'Unemployment State', 'A field that is available under \"State Income Tax\" section when adding tax exemption details of all employees.', '5.0.0'),
(440, 'work_state', 3, 'Work State', 'A field that is available under \"\"State Income Tax\"\" section when adding tax exemption details of all employees.', '5.0.0'),
(441, 'create_login_details', 3, 'Create Login Details', 'Creating a user name and password for a new employee', '5.0.0'),
(442, 'optional_fields', 3, 'Optional Fields', 'This feature allows the admin to add fields to the “Personal Details” screen that may be specific to the company or country. To configure the “Optional Fields” settings, go to PIM>> Configuration>> Optional Fields', '5.0.0'),
(443, 'show_deprecated_fields', 3, 'Show Deprecated Fields', 'When ticking for \"Show Deprecated Fields\", the options Nick Name, Smoker and Military Service in Personal Details get visible in Personal detail screen', '5.0.0'),
(444, 'show_nick_name_smoker_and_military_service_in_personal_details', 3, 'Show Nick Name, Smoker and Military Service in Personal Details', 'When configure the “Optional Fields” settings, go to PIM>> Configuration>> Optional Fields, and put a tick for \"Show Deprecated Fields\"', '5.0.0'),
(445, 'country_specific_information', 3, 'Country Specific Information', 'Specific Information related to a country', '5.0.0'),
(446, 'show_ssn_field_in_personal_details', 3, 'Show SSN field in Personal Details', 'Allows Social Security Number of an employee to be shown in the system.', '5.0.0'),
(447, 'show_sin_field_in_personal_details', 3, 'Show SIN field in Personal Details', 'Allows Social Identification Number of an employee to be shown in the system', '5.0.0'),
(448, 'show_us_tax_exemptions_menu', 3, 'Show US Tax Exemptions menu', 'Country specific information when configuring Optional field for PIM personal details screen', '5.0.0'),
(449, 'edit_reporting_method', 3, 'Edit Reporting Method', 'Altering the reporting methods between supervisors and subordinates such as direct, indirect', '5.0.0'),
(450, 'add_reporting_method', 3, 'Add Reporting Method', 'Define the reporting methods between an ESS Employee and Supervisor.', '5.0.0'),
(451, 'edit_report', 3, 'Edit Report', NULL, '5.0.0'),
(452, 'reporting_methods', 3, 'Reporting Methods', 'The HR admin can define the reporting method between an ESS-Employee and an ESS-Supervisor.', '5.0.0'),
(453, 'reporting_methods_in_use', 3, 'Reporting Method(s) in Use', NULL, '5.0.0'),
(454, 'selection_criteria', 3, 'Selection Criteria', 'you may use the search toolbar and apply the criteria and click “Search”.', '5.0.0'),
(455, 'display_fields', 3, 'Display Fields', 'When defining a report, user can add relevant fields that needs to be displayed', '5.0.0'),
(456, 'select_display_field_group', 3, 'Select Display Field Group', NULL, '5.0.0'),
(457, 'select_display_field', 3, 'Select Display Field', NULL, '5.0.0'),
(458, 'at_least_one_display_field_should_be_added', 3, 'At least one display field should be added', NULL, '5.0.0'),
(459, 'add_report', 3, 'Add Report', NULL, '5.0.0'),
(460, 'edit_termination_reason', 3, 'Edit Termination Reason', 'Do change the termination reasons that is used by the company.', '5.0.0'),
(461, 'add_termination_reason', 3, 'Add Termination Reason', 'Define various termination reasons that is used by the company.Go to PIM>>Configuration>>Termination Reason. Ex: Prolonged illness', '5.0.0'),
(462, 'termination_reasons', 3, 'Termination Reasons', 'Default reasons for terminating the employment:• Dismissed, Contract not renewed, • Deceased ', '5.0.0'),
(463, 'termination_reasons_in_use', 3, 'Termination Reason(s) in Use', NULL, '5.0.0'),
(464, 'update_password', 3, 'Update Password', NULL, '5.0.0'),
(465, 'current_password', 3, 'Current Password', 'Password that uses at present.', '5.0.0'),
(466, 'current_password_is_incorrect', 3, 'Current Password is Incorrect', NULL, '5.0.0'),
(467, 'edit_dependent', 3, 'Edit Dependent', 'You can change details of an employee\'s dependent.', '5.0.0'),
(468, 'please_specify', 3, 'Please Specify', 'When adding dependents, Additional field will be displayed as \"Please Specify\" If \"Other\" is selected as the \"Relationship\"', '5.0.0'),
(469, 'child', 3, 'Child', 'An employee\'s child.', '5.0.0'),
(470, 'other', 3, 'Other', 'If you wish to notify any other employee regarding this event, type the relevant employee’s name on the “Other Recipient” field', '5.0.0'),
(471, 'institute', 3, 'Institute', 'Click on the “Add Direct Deposit Details” check box and enter the following details: Name of the Financial Institute: bank name', '5.0.0'),
(472, 'major_specialization', 3, 'Major/Specialization', 'When entering employee’s education background, need to specify Major/Specialization of his/her Masters', '5.0.0'),
(473, 'gpa_score', 3, 'GPA/Score', 'When adding educational background of an employee to the system, GPA/Score obtained from the Master/Degree/Diploma can be added.', '5.0.0'),
(474, 'edit_emergency_contact', 3, 'Edit Emergency Contact', 'You can edit contact details of an employee which will be needed during an emergency can be entered here.', '5.0.0'),
(475, 'at_least_one_phone_number_is_required', 3, 'At least one phone number is required', 'Error message that appears when ou try to assign a emergency contact without a phone number', '5.0.0'),
(476, 'reporting_method', 3, 'Reporting Method', 'The HR admin can define the reporting method between an ESS-Employee and an ESS-Supervisor.', '5.0.0'),
(477, 'edit_immigration', 3, 'Edit Immigration', 'Changing details of the employee\'s passport or visa.', '5.0.0'),
(478, 'passport', 3, 'Passport', 'Add details of the “Number” of passport , the “ Issued Date” , “Expiry Date”, the “Eligible Status” of his Passport', '5.0.0'),
(479, 'visa', 3, 'Visa', 'Select the document type (Visa) you wish to add details of, the “Number” whether it is a visa number, the “ Issued Date” , “Expiry Date”, the “Eligible Status” of his Visa and the “Eligible Review Date” as to when the eligibility status was reviewed.', '5.0.0'),
(480, 'eligible_status', 3, 'Eligible Status', 'Eligible Status of his Passport/Visa for a particular country.', '5.0.0'),
(481, 'eligible_review_date', 3, 'Eligible Review Date', 'As to when the eligibility status was reviewed.', '5.0.0'),
(482, 'expiry_date_should_be_after_issued_date', 3, 'Expiry date should be after issued date', 'When adding immigration details make sure you add the issue date before its expiry date..otherwise it shows a data validation message saying that expiry date should be after issued date', '5.0.0'),
(483, 'fluency', 3, 'Fluency', 'Employee\'s fluency in writing, reading', '5.0.0'),
(484, 'competency', 3, 'Competency', 'Set of skills and abilities which are required for desired level of performance and can be grouped them into competency groups', '5.0.0'),
(485, 'license_type', 3, 'License Type', 'You can define various types of licenses which can be later used in the PIM Module. To add an entry go to Admin>> Qualifications>> Licenses and click “Add”', '5.0.0'),
(486, 'license_number', 3, 'License Number', 'You can also add/edit the personal details listed including the driving license number', '5.0.0'),
(487, 'renewal_date_should_be_after_the_commencing_date', 3, 'Renewal date should be after the commencing date', NULL, '5.0.0'),
(488, 'edit_salary_component', 3, 'Edit Salary Component', 'The HR Admin can edit salary components by going to Admin>>Job>> Salary Components. Ex: Car Allowance', '5.0.0'),
(489, 'assigned_salary_components', 3, 'Assigned Salary Components', 'Salary Component details (Component Name, Type and other options (Cost to Company, Value Type)) assigned to employees', '5.0.0'),
(490, 'include_direct_deposit_details', 3, 'Include Direct Deposit Details', NULL, '5.0.0'),
(491, 'account_number', 3, 'Account Number', 'It refers to the account number of the employee to which salary is credited', '5.0.0'),
(492, 'account_type', 3, 'Account Type', 'User has to select the account type, whether salary will be credited to a savings a/c or a check will be given', '5.0.0'),
(493, 'routing_number', 3, 'Routing Number', 'When adding the “Add Direct Deposit Details”, routing number of the checks should be included.', '5.0.0'),
(494, 'skill', 3, 'Skill', 'You can define various sets of skills which can be later used on the PIM Module. To add an entry go to Admin>> Qualifications>> Skills', '5.0.0'),
(495, 'years_of_experience', 3, 'Years of Experience', 'Previous work experiences of an employee can be entered by specifying the From which year -To which year.', '5.0.0'),
(496, 'company', 3, 'Company', 'Oraganization where the employee work', '5.0.0'),
(497, 'license', 3, 'License', 'You can define various types of licenses which can be later used in the PIM Module. To add an entry go to Admin>> Qualifications>> Licenses', '5.0.0'),
(498, 'assigned_subordinates', 3, 'Assigned Subordinates', 'When you add details of the employee\'s subordinates it\'ll be listed as assigned subordinates.', '5.0.0'),
(499, 'assigned_supervisors', 3, 'Assigned Supervisors', 'When you add details of the employee\'s supervisors it\'ll be listed as assigned supervisors.', '5.0.0'),
(500, 'work_experience', 3, 'Work Experience', 'Under PIM - Qualification tab, details of employees previous work experience can be defined.', '5.0.0'),
(501, 'add_work_experience', 3, 'Add Work Experience', 'Previous work experiences of an employee can be entered here.', '5.0.0'),
(502, 'date_added', 3, 'Date Added', 'The date that a particular record is added to the system.', '5.0.0'),
(503, 'added_by', 3, 'Added By', 'Employees can only view (not modify) the comments added by the reviewers.', '5.0.0'),
(504, 'should_be_within_min_max_values', 3, 'Should be within Min/Max values', 'It is a validation message which says rate should be within Min/Max values', '5.0.0'),
(505, 'add_immigration', 3, 'Add Immigration', 'Adding details of the employee\'s passport or visa.', '5.0.0'),
(506, 'add_dependent', 3, 'Add Dependent', 'Add parents or kids who are depending on an employee.', '5.0.0'),
(507, 'save_emergency_contact', 3, 'Save Emergency Contact', NULL, '5.0.0'),
(508, 'terminate_employment', 3, 'Terminate Employment', 'Terminate ones from his employment', '5.0.0'),
(509, 'termination_date', 3, 'Termination Date', 'Date of being terminated from employment', '5.0.0'),
(510, 'termination_reason', 3, 'Termination Reason', 'Default reasons for terminating the employment:• Dismissed, Contract not renewed, • Deceased ', '5.0.0'),
(511, 'nickname', 3, 'Nickname', NULL, '5.0.0'),
(512, 'personal', 3, 'Personal', 'Personal details about employees', '5.0.0'),
(513, 'activate_employment', 3, 'Activate Employment', 'This is a criteria that has to be fulfilled in order to re-activate a former employee who has been terminated.', '5.0.0'),
(514, 'employee_last_name', 3, 'Employee Last Name', 'Last name of the employee.', '5.0.0'),
(515, 'employee_first_name', 3, 'Employee First Name', 'First name of the employee.', '5.0.0'),
(516, 'employee_middle_name', 3, 'Employee Middle Name', 'Middle name of the employee.', '5.0.0'),
(517, 'eligibility_status', 3, 'Eligibility Status', 'When adding Immigration information, need to specify the “Eligible Status” of his Passport/Visa ', '5.0.0'),
(518, 'eligibility_review_date', 3, 'Eligibility Review Date', 'When adding Immigration information, need to specify the “Eligible Review Date” as to when the eligibility status was reviewed. ', '5.0.0'),
(519, 'document_type', 3, 'Document Type', 'Select the document type (Passport or Visa) you wish to add details of', '5.0.0'),
(520, 'termination_note', 3, 'Termination Note', NULL, '5.0.0'),
(521, 'direct_deposit_account_number', 3, 'Direct Deposit Account Number', 'When Adding Direct Deposit Details, need to specify the bank account number.', '5.0.0'),
(522, 'direct_deposit_account_type', 3, 'Direct Deposit Account Type', 'When Adding Direct Deposit Details, need to specify the account type: savings/ checking.', '5.0.0'),
(523, 'first_name', 3, 'First Name', 'First name of the employee that need to be filled when adding him as a system user', '5.0.0'),
(524, 'score', 3, 'Score', 'When adding education qualifications for a particular employee, GPA/Score should be included', '5.0.0'),
(525, 'text_or_number', 3, 'Text or Number', 'the mode of entering the data whether it’s a “Drop Down” selection or “Text or Number”', '5.0.0'),
(526, 'drop_down', 3, 'Drop Down', 'It can be also called either drop down menu or drop down list.it displays (drops down) a list of values/items, from which the user may select one.', '5.0.0'),
(527, 'supervisors', 3, 'Supervisors', 'employees who have subordinates under him, get supervisor user role privileges', '5.0.0'),
(528, 'subordinates', 3, 'Subordinates', 'The people who works under one or more supervisors whom review their performances, approve leave/time sheets', '5.0.0'),
(529, 'service_period', 3, 'Service Period', 'Searching PIM Reports with filter criteria’s like Service Period', '5.0.0'),
(530, 'age_group', 3, 'Age Group', 'When the dependents get covered in the insurance plan, need to specify which age range they are grouped into.', '5.0.0'),
(531, 'employee_termination_activation', 3, 'Employee Termination / Activiation', NULL, '5.0.0'),
(532, 'terminated_on', 3, 'Terminated on', 'Date on which the employee being terminated', '5.0.0'),
(533, 'work_email_and_other_email_cannot_be_the_same', 3, 'Work Email and Other Email cannot be the same', NULL, '5.0.0'),
(534, 'joined_before', 3, 'Joined before', NULL, '5.0.0'),
(535, 'joined_after', 3, 'Joined after', NULL, '5.0.0'),
(536, 'joined_in_between', 3, 'Joined in between', NULL, '5.0.0'),
(537, 'full_day_half_day', 4, 'Full Day/ Half Day', NULL, '5.0.0'),
(538, 'repeats_annually', 4, 'Repeats Annually', 'checking the “Repeats Annually” will mean that the holiday will occur on the same date in the following years', '5.0.0'),
(539, 'edit_holiday', 4, 'Edit Holiday', NULL, '5.0.0'),
(540, 'holidays', 4, 'Holidays', 'The administrator and other users with admin rights can define holidays that will be applicable to the companies located in different countries and will be taken into consideration while calculating leave duration.', '5.0.0'),
(541, 'add_holiday', 4, 'Add Holiday', NULL, '5.0.0'),
(542, 'full_day', 4, 'Full Day', 'You can define the days of the work week as Full Day, Half Day and Non-Working Day', '5.0.0'),
(543, 'leave_period', 4, 'Leave Period', 'leave period can be manually set by selecting a ‘Start Month’, ‘Start Date’ and ‘Duration’ Ex : Jan-01-2015 to Dec-31-2015 to the current year', '5.0.0'),
(544, 'start_month', 4, 'Start Month', 'Custom Leave Period - leave period can be manually set by selecting a ‘Start Month’, ‘Start Date’ and \'End Date\'', '5.0.0'),
(545, 'current_leave_period', 4, 'Current Leave Period', 'Remaining leave balance for the current leave period', '5.0.0'),
(546, 'following_year', 4, 'Following Year', 'The next year / if the “Repeats Annually” is ticked when configuring holidays, it means that the holiday will occur on the same date in the following year', '5.0.0'),
(547, 'work_week', 4, 'Work Week', 'The administrator will be able to define the work weeks for all employees based in different locations/countries.To define work week, go to Leave>> Configure>> Work Week', '5.0.0'),
(548, 'at_least_one_day_should_be_a_working_day', 4, 'At least one day should be a working day', NULL, '5.0.0'),
(549, 'add_leave_entitlement', 4, 'Add Leave Entitlement', 'Add the leave amount to which a person has a right to have.', '5.0.0'),
(550, 'add_to', 4, 'Add to', NULL, '5.0.0'),
(551, 'individual_employee', 4, 'Individual Employee', NULL, '5.0.0'),
(552, 'multiple_employees', 4, 'Multiple Employees', NULL, '5.0.0'),
(553, 'matches_emp_count_employees', 4, '{empMatchCount,plural, =0{Matches no employee} one{Matches (1) employee} other {matches (#) employees}}', NULL, '5.0.0'),
(554, 'no_leave_types_defined', 4, 'No leave types defined', NULL, '5.0.0'),
(555, 'should_be_a_number_with_2_decimal_places', 4, 'Should be a number with upto 2 decimal places', NULL, '5.0.0'),
(556, 'edit_leave_entitlement', 4, 'Edit Leave Entitlement', 'Edit the leave amount to which a person has a right to have.Admin can add leave entitlements and edit leave entitlements.', '5.0.0'),
(557, 'entitlement', 4, 'Entitlement', 'Generate reports to display information on leave entitlements', '5.0.0'),
(558, 'used_amount_exceeds_the_current_amount', 4, 'Used amount exceeds the current amount', 'When an employee has taken more leave than he/she is entitled to.', '5.0.0'),
(559, 'leave_entitlements', 4, 'Leave Entitlements', 'This feature enables the HR Admin with admin rights to Add and View Leave Entitlements for each leave type for all employees.', '5.0.0'),
(560, 'my_leave_entitlements', 4, 'My Leave Entitlements', 'If the user is an ESS User, then he will only see the “My Leave Entitlements and Usage Report” option under Leave>>Reports', '5.0.0'),
(561, 'is_entitlement_situational', 4, 'Is Entitlement Situational?', NULL, '5.0.0'),
(562, 'add_leave_type', 4, 'Add Leave Type', 'Add certain leave types to the system. Ex : annual/casual/medical', '5.0.0'),
(563, 'edit_leave_type', 4, 'Edit Leave Type', 'Do some changes to certain leave types added to the system. Ex : annual/casual/medical', '5.0.0'),
(564, 'leave_types', 4, 'Leave Types', 'Through this section the admin and any other user with admin rights will be able to define leave types, which are compatible with the HR policies of the company. To add leave types, go to Leave>> Configure>> Leave Types', '5.0.0'),
(565, 'leave_entitlement_and_usage_report', 4, 'Leave Entitlements and Usage Report', 'Once the appropriate fields are selected, the Admin can then click “View” and will be presented with the leave report of all employees.The report can also show leave usage and entitlements for the “Previous Period” as well as the “Next Period”.', '5.0.0'),
(566, 'generate_for', 4, 'Generate For', 'If the “Employee” option is selected under “Generate For” the HR Admin can generate the leave entitlement and usage report for any employee', '5.0.0'),
(567, 'leave_type', 4, 'Leave Type', 'Leave types can be defined with country-based leave rules, custom/hire-date based leave periods, apply-restriction rules, leave accrual rules and leave carry forward rules.', '5.0.0'),
(568, 'include_past_employees', 4, 'Include Past Employees', 'You may also include past employees with your search when generating Leave Entitlements and Usage Reports of employees.', '5.0.0'),
(569, 'my_leave_entitlement_and_usage_report', 4, 'My Leave Entitlements and Usage Report', 'if he/she is also an ESS user to the system, he/she can view for leave entitlements and usage of leave by themselves (Leave>>Reports >> My Leave Entitlements and Usage Report).', '5.0.0'),
(570, 'apply_leave', 4, 'Apply Leave', 'Allows a user to apply for leave.In the dashboard module all the employees who have applied for leave will be shown in the form of a pictorial representation, e.g. bar graph, pie chart etc.', '5.0.0'),
(571, 'no_leave_types_with_leave_balance', 4, 'No Leave Types with Leave Balance', 'For all the leave types, a particular employee doesn\'t have any leave remaining. e.g.casual, annual', '5.0.0'),
(572, 'partial_days', 4, 'Partial Days', 'For multiple day applications, you can select any “Partial Days”.', '5.0.0'),
(573, 'assign_leave', 4, 'Assign Leave', 'Admin can assign leave to employee', '5.0.0'),
(574, 'start_day', 4, 'Start Day', 'Start date of current leave period', '5.0.0'),
(575, 'end_day', 4, 'End Day', 'When applying leave for a date range with desired partial days the employee has to select this option.', '5.0.0'),
(576, 'assign', 4, 'Assign', 'When an leave is assigned to an employee', '5.0.0'),
(577, 'leave_list', 4, 'Leave List', 'The leave list is available to the Admin and ESS – Supervisors. It shows all leave requests by the employees.', '5.0.0'),
(578, 'show_leave_with_status', 4, 'Show Leave with Status', 'Show leave with current status of them in the leave report', '5.0.0'),
(579, 'my_leave_request_details', 4, 'My Leave Request Details', NULL, '5.0.0'),
(580, 'leave_request_details', 4, 'Leave Request Details', NULL, '5.0.0'),
(581, 'my_leave_list', 4, 'My Leave List', 'ESS-Employee can view his detailed leave application and his leave calendar which will display all his leave during a particular month.', '5.0.0'),
(582, 'updating_entitlement', 4, 'Updating Entitlement', 'give the entitlements to the employee and update leave entitlements', '5.0.0'),
(583, 'matching_employees', 4, 'Matching Employees', 'This shows list of matching employees who match with best match rule criteria which used to filter candidates successfully.', '5.0.0'),
(584, 'selected_leave_entitlement_applied_to_following_employees', 4, 'The selected leave entitlement will be applied to the following employees.', 'If the Admin selects “Add to Multiple Employees”, old entitlement gets replaced with new entitlement for the selected set of employees', '5.0.0'),
(585, 'old_entitlement', 4, 'Old Entitlement', 'Previous leave entitlement', '5.0.0'),
(586, 'new_entitlement', 4, 'New Entitlement', 'When assigning a leave entitlement for a certain “Leave Type” to all employees in that location and sub-unit, A screen will pop-up showing their old and new entitlements', '5.0.0'),
(587, 'situational_leave', 4, 'Situational Leave', NULL, '5.0.0'),
(588, 'entitlement_situational_description', 4, 'These leave will be excluded from reports unless there\'s some activity. E.g. maternity leave, jury duty leave.', NULL, '5.0.0'),
(589, 'confirm_leave_assignment', 4, 'Confirm Leave Assignment', 'Need to confirm the leave assigned', '5.0.0'),
(590, 'employee_does_not_have_enough_balance_for_leave_request', 4, 'Employee does not have sufficient leave balance for leave request.', 'The administrator can set this apply restriction for the following leave type and restrict employee from applying for more than the current leave net balance.', '5.0.0'),
(591, 'click_ok_to_confirm_leave_assignment', 4, 'Click OK to confirm leave assignment.', 'This is a waring message that appears when we try to assign leave more than the available leave balance', '5.0.0'),
(592, 'entitlement_value_confirmation_message', 4, 'Existing Entitlement value {oldvalue} will be updated to {newvalue}', NULL, '5.0.0'),
(593, 'leave_balance', 4, 'Leave Balance', 'The number of leave available to be taken for an employee.', '5.0.0'),
(594, 'balance_not_sufficient', 4, 'Balance not sufficient', 'There is no sufficient leave balance for the current leave period.', '5.0.0'),
(595, 'insufficient_leave_balance', 4, 'Insufficient Leave Balance', NULL, '5.0.0'),
(596, 'balance', 4, 'Balance', 'Number of leave remaining.', '5.0.0'),
(597, 'days', 4, 'Days', 'No of leave days', '5.0.0'),
(598, 'available_balance', 4, 'Available Balance', 'To view the remaining leave balance for the specific leave type, click on “Check Leave Balance”, and the following window will appear with the available balance.', '5.0.0'),
(599, 'leave_balance_details', 4, 'Leave Balance Details', 'To view leave balance details, select the leave type from the drop down menu. Check the Leave Balance available.', '5.0.0'),
(600, 'as_of_date', 4, 'As of Date', NULL, '5.0.0'),
(601, 'total_entitlement', 4, 'Total Entitlement', NULL, '5.0.0'),
(602, 'leave_status', 4, 'Leave Status', NULL, '5.0.0'),
(603, 'taken', 4, 'Taken', 'Number of leave taken.', '5.0.0'),
(604, 'scheduled', 4, 'Scheduled', 'To Approve a session, the user the appropriate privileges will need to change the Status to “Scheduled”.', '5.0.0'),
(605, 'pending_approval', 4, 'Pending Approval', 'The Status of the session will be “Pending Approval” until an Admin user approves the session.', '5.0.0'),
(606, 'bulk_leave_action_confirm_message_one', 4, '{action, select, APPROVE {{count, plural, =0 {You are about to Approve no Leave Requests} =1 {You are about to Approve 1 Leave Request} other {You are about to Approve # Leave Requests} }} REJECT {{count, plural, =0 {You are about to Reject no Leave Requests} =1 {You are about to Reject 1 Leave Request} other {You are about to Reject # Leave Requests} }} other {{count, plural, =0 {You are about to Cancel no Leave Requests} =1 {You are about to Cancel 1 Leave Request} other {You are about to Cancel # Leave Requests} }} }', 'Action might either be Approve, Reject or Cancel of a single/number of leave requests', '5.0.0'),
(607, 'bulk_leave_action_confirm_message_two', 4, 'Are you sure you want to continue?', 'It is a confirmation message which asks whether you want to continue the process.', '5.0.0'),
(608, 'yes_confirm', 4, 'Yes, Confirm', NULL, '5.0.0'),
(609, 'leave_request_comments', 4, 'Leave Request Comments', 'you can add a comment if necessary, when you request for a leave from your supervisor / Admin', '5.0.0'),
(610, 'no_of_hours', 4, 'No. of Hours', NULL, '5.0.0'),
(611, 'workshift_length_exceeded_due_to_the_following_leave_request', 4, 'Workshift Length Exceeded Due To the Following Leave Requests', NULL, '5.0.0'),
(612, 'overlapping_leave_request_found', 4, 'Overlapping Leave Request(s) Found', NULL, '5.0.0'),
(613, 'duration_should_be_less_than_work_shift_length', 4, 'Duration should be less than work shift length', 'Duration between punch in and punch out should be less than work shift length assigned', '5.0.0'),
(614, 'half_day_morning', 4, 'Half Day - Morning', NULL, '5.0.0'),
(615, 'half_day_evening', 4, 'Half Day - Afternoon', NULL, '5.0.0'),
(616, 'specify_time', 4, 'Specify Time', 'If “Specify Time” is selected, you can select the “From Time”', '5.0.0'),
(617, 'valid_from', 4, 'Valid From', 'Under Accrual Valid From Two options are available to choose from:- 1. Date of Accrual - valid from the date of accrual to the end of the leave period. 2. Leave Period Start Date - valid from the beginning of the leave period. ', '5.0.0'),
(618, 'valid_to', 4, 'Valid To', 'To edit the leave entitlement, click on the number of days entitled under “Days”, or the date under “Valid From” or “Valid To”', '5.0.0'),
(619, 'entitlements_will_not_be_deleted_since_already_in_use', 4, 'Entitlement(s) will not be deleted since it\'\'s already in use', NULL, '5.0.0'),
(620, 'number_of_days', 4, 'Number of Days', 'The admin/ESS Supervisor is also able to export the leave list to a CSV file and number of leave days will be captured in a CSV file', '5.0.0'),
(621, 'leave_balance_days', 4, 'Leave Balance (Days)', 'The number of leave days available to be taken for an employee.', '5.0.0'),
(622, 'view_leave_details', 4, 'View Leave Details', NULL, '5.0.0'),
(623, 'view_pim_info', 4, 'View PIM Info', NULL, '5.0.0'),
(624, 'cancel_leave', 4, 'Cancel Leave', NULL, '5.0.0'),
(626, 'leave_action', 4, '{action, select, APPROVE {Approve Leave} REJECT {Reject Leave} other {Cancel Leave}}', NULL, '5.0.0'),
(627, 'failed_to_submit', 4, 'Failed to Submit', 'This validation message appears when failing to submit a report', '5.0.0'),
(628, 'failed_to_submit_no_working_days_selected', 4, 'Failed to Submit: No Working Days Selected', 'This validation message appears when failing to submit since no working days selected', '5.0.0'),
(629, 'entitlement_added_to_n_employees', 4, '{count, plural, =0{No Entitlement added} one{Entitlement added to 1 employee} other {Entitlement added to # employees}}', NULL, '5.0.0'),
(630, 'half_day', 4, 'Half Day', 'You can define the days of the work week as Full Day, Half Day and Non-Working Day', '5.0.0'),
(631, 'non_working_day', 4, 'Non-working Day', 'Admin defines the work weeks for all employees based in different locations/countries by specifying non working days.', '5.0.0'),
(632, 'rejected', 4, 'Rejected', 'When exporting timesheet data as CSV,there is a check box named \"Rejected\". If you ticked it, all the time sheets under that status would be listed down.', '5.0.0'),
(633, 'cancelled', 4, 'Cancelled', 'Cancelled a leave request , session etc..', '5.0.0'),
(634, 'leave_entitlements_days', 4, 'Leave Entitlements (Days)', 'The Admin user can see view no of leave days entitled in the Leave Entitlements and Usage Report of all employees', '5.0.0'),
(635, 'leave_pending_aproval_days', 4, 'Leave Pending Approval (Days)', NULL, '5.0.0'),
(636, 'leave_scheduled_days', 4, 'Leave Scheduled (Days)', 'The number of leave days that an employee has booked for the future.', '5.0.0'),
(637, 'leave_taken_days', 4, 'Leave Taken (Days)', 'It is shown in the Leave Entitlements and Usage Report of a single employee, total no of leave taken from his days of leave entitlement', '5.0.0'),
(638, 'requested_for', 4, 'Leave requested for', NULL, '5.0.0'),
(639, 'all_days', 4, 'All Days', 'When employees apply for a partial day leave date range for via Leave>>Apply Leave, or leave is assigned via Leave>>Assign Leave, this option is displayed to confirm whether all days are partial.', '5.0.0'),
(640, 'start_day_only', 4, 'Start Day Only', 'When employees apply for a partial day leave date range for via Leave>>Apply Leave, or leave is assigned via Leave>>Assign Leave, this option is displayed to confirm whether Start day only is partial.', '5.0.0'),
(641, 'end_day_only', 4, 'End Day Only', 'When applying leave for a date range with desired partial days the employee has to select this option.', '5.0.0'),
(642, 'start_and_end_day', 4, 'Start and End Day', 'Custom Leave Period - leave period can be manually set by selecting a ‘Start Month’, ‘Start Date’ and \'End Date\'', '5.0.0'),
(643, 'activities', 5, 'Activities', 'Amount of work performed', '5.0.0'),
(644, 'copy_from', 5, 'Copy From', 'Copying KPI\'s from one profession to another and copying activities from one project to another.', '5.0.0'),
(645, 'activity_name', 5, 'Activity Name', 'Name of the work performed', '5.0.0'),
(646, 'not_allowed_to_delete_project_activities_which_have_time_logged_against', 5, 'Not Allowed to Delete Project Activities Which Have Time Logged Against', NULL, '5.0.0'),
(647, 'add_customer', 5, 'Add Customer', 'Add a customer to the system.', '5.0.0'),
(648, 'add_timesheet', 5, 'Add Timesheet', 'Add a time sheet for a week period, the projects he/she was assigned to by clicking “Add Time sheet”', '5.0.0'),
(649, 'select_a_day_to_create_timesheet', 5, 'Select a Day to Create Timesheet', 'You may also add a timesheet for another week period by clicking “Add Timesheet” and another field, “Select a Day to Create Timesheet” will appear in which you can select the first day of the week from the drop down menu and the system will automatically calculate a one-week time period from the date entered', '5.0.0'),
(650, 'copy_activity', 5, 'Copy Activity', 'make a similar or identical version of an activity', '5.0.0'),
(651, 'project_name', 5, 'Project Name', 'Name of the project to be done for the customer.', '5.0.0'),
(652, 'no_assigned_activities', 5, 'No assigned activities', 'This message appears when there is no on-boarding activities were assigned to task owners', '5.0.0'),
(653, 'no_activities_selected', 5, 'No activities selected', 'This message appears when there is no Project activities selected for a particular project in order to update time sheets', '5.0.0'),
(654, 'customer_name', 5, 'Customer Name', 'Name of the customer; Needs to be defined first before adding a project name', '5.0.0'),
(655, 'edit_project_activity', 5, 'Edit Project Activity', 'Project activities can be changed depending on the project.', '5.0.0'),
(656, 'project_admin', 5, 'Project Admin', 'The employee assigned for the project to monitor it. You may assign more employees for the project.', '5.0.0'),
(657, 'project', 5, 'Project', 'Add Project Information; Customers, Projects and Activities', '5.0.0'),
(658, 'add_project_activity', 5, 'Add Project Activity', 'Project activities can be added for the particular project', '5.0.0'),
(659, 'timesheet_action', 5, 'Timesheet Action', NULL, '5.0.0'),
(660, 'no_timesheets_found', 5, 'No Timesheets Found', 'This message appears when there is no Time sheets Found', '5.0.0'),
(661, 'activity', 5, 'Activity', NULL, '5.0.0'),
(662, 'add_row', 5, 'Add Row', 'You may also add a row by clicking “Add Row” to enter another time sheet record for another project activity.', '5.0.0'),
(663, 'select_a_project', 5, 'Select a Project', NULL, '5.0.0'),
(664, 'select_an_activity', 5, 'Select an Activity', NULL, '5.0.0'),
(665, 'duplicate_record', 5, 'Duplicate Record', NULL, '5.0.0'),
(666, 'select_a_project_and_an_activity', 5, 'Select a Project and an Activity', 'It is a user friendly text which asked the user to select a Project and an Activity when submitting time-sheets', '5.0.0'),
(667, 'should_be_less_than_24_and_in_hh_mm_or_decimal_format', 5, 'Should Be Less Than 24 and in HH:MM or Decimal Format', 'It is a validation message which says the time should Be Less Than 24 and in HH:MM or Decimal Format', '5.0.0'),
(668, 'total_should_be_less_than_24_hours', 5, 'Total Should Be Less Than 24 Hours', 'It is a validation message which says the total time should Be Less Than 24', '5.0.0'),
(669, 'actions_performed_on_the_timesheet', 5, 'Actions Performed on the Timesheet', 'Tasks performed relevant to time sheets.', '5.0.0'),
(670, 'timesheets_pending_action', 5, 'Timesheets Pending Action', 'Timesheet with pending action can also be viewed on the screen. Click “View” to see the details of the time sheet under “Time sheets Pending Action”', '5.0.0'),
(671, 'timesheet_period', 5, 'Timesheet Period', 'When user select the first day of the week from the drop down menu and the system will automatically calculate a one-week timesheet period (to find Time sheet End Date ) from the date entered (Time sheet Start Date)', '5.0.0'),
(672, 'timesheet_period_config', 5, 'Define Timesheet Period', 'It will populate under the “Time sheet for week”,define one-week time period from the date entered', '5.0.0'),
(673, 'add_timesheet_period_config', 5, 'First Day of the Week', NULL, '5.0.0'),
(674, 'not_allowed_to_delete_customer_who_have_time_logged_against', 5, 'Not allowed to delete customer(s) associated with projects that have time logged against them', NULL, '5.0.0'),
(675, 'edit_customer', 5, 'Edit Customer', 'You can edit details of your customers that can be used to define projects and project activities.', '5.0.0'),
(676, 'project_admins', 5, 'Project Admins', 'The employee assigned for the project to monitor it. You may assign more employees for the project.', '5.0.0'),
(677, 'not_allowed_to_delete_projects_which_have_time_logged', 5, 'Not allowed to delete project(s) which have time logged against them', NULL, '5.0.0'),
(678, 'edit_project', 5, 'Edit Project', 'Edit Project Information; Customers, Projects and Activities.', '5.0.0'),
(679, 'project_report', 5, 'Project Report', 'The Admin can view can reports for all projects and the ESS – Supervisors can view reports of projects administered by them or projects assigned to them. To view project reports go to Time>> Reports>> Project Reports', '5.0.0'),
(680, 'project_date_range', 5, 'Project Date Range', 'if you want to view projects reports with time sheets,Select the “Project Name” from the drop down menu and the “Project Date Range” by selecting the dates.', '5.0.0'),
(681, 'only_include_approved_timesheets', 5, 'Only Include Approved Timesheets', 'You may also click on the “Only Include Approved Time sheets” if you want to view only projects reports with approved time sheets.', '5.0.0'),
(682, 'total_duration', 5, 'Total Duration (Hours)', NULL, '5.0.0'),
(683, 'employee_report', 5, 'Employee Report', 'Generate reports that are relevant to employees', '5.0.0'),
(684, 'select_employee', 5, 'Select Employee', 'It is a user friendly text which asked the user to select Employee to view employee’s time-sheet', '5.0.0'),
(685, 'timesheet_period_not_defined', 5, 'Timesheet Period Start Day has not being defined. Please Contact the HR Administrator', NULL, '5.0.0'),
(686, 'my_timesheet', 5, 'My Timesheet', 'When an ESS-Employee or an ESS-Supervisor wants to enter his/her time sheet, they can go to Time>> Time sheets>> My Time sheets', '5.0.0'),
(687, 'edit_timesheet', 5, 'Edit Timesheet', NULL, '5.0.0'),
(688, 'create_timesheet', 5, 'Create Timesheet', NULL, '5.0.0'),
(689, 'timesheet_for', 5, 'Timesheet for', 'The current week will populate under the “Time sheet for week”.', '5.0.0'),
(690, 'edit_timesheet_for', 5, 'Edit Timesheet for', 'You may edit time sheet details for a certain period of time.', '5.0.0'),
(691, 'add_project', 5, 'Add Project', 'Add Project Information; Customers, Projects and Activities.', '5.0.0'),
(692, 'timesheet_successfully_created', 5, 'Timesheet Successfully Created', NULL, '5.0.0'),
(693, 'timesheet_rejected', 5, 'Timesheet Rejected', 'Once rejected the timesheet, particular employee will also be updated with the status “Rejected”.', '5.0.0'),
(694, 'timesheet_approved', 5, 'Timesheet Approved', 'Once approved the timesheet, particular employee will also be updated with the status “Approved”.', '5.0.0'),
(695, 'timesheet_reset', 5, 'Timesheet Reset', NULL, '5.0.0'),
(696, 'punch_out_time_should_be_later_than_punch_in_time', 5, 'Punch Out Time Should Be Later Than Punch In Time', NULL, '5.0.0'),
(697, 'time_hours', 5, 'Time (Hours)', NULL, '5.0.0'),
(698, 'timesheet_submitted', 5, 'Timesheet Submitted', 'It is a a status of the timesheet, when an employee submitted their weekly timesheets on time.', '5.0.0'),
(699, 'punched_in_time', 17, 'Punched in time', NULL, '5.0.0'),
(700, 'attendance_configuration', 17, 'Attendance Configuration', 'The admin can select what privileges the employees and supervisors will have on the punch in/out and attendance. For configuration, go to Time>> Attendance>> Configuration.', '5.0.0'),
(701, 'employee_can_change_current_time_when_punching_in_out', 17, 'Employee can change current time when punching in/out', 'The “Time” for both punch in/out could be changed otherwise the system will automatically capture the “system time”.', '5.0.0'),
(702, 'employee_can_edit_delete_own_attendance_records', 17, 'Employee can edit/delete own attendance records', 'If the HR Admin has configured the attendance settings the following options: “Edit” and “Delete could be seen and selected. To edit the record, click “Edit” and to delete the record, click on the check box beside the record and click “Delete”.', '5.0.0'),
(703, 'supervisor_can_add_edit_delete_attendance_records_of_subordinates', 17, 'Supervisor can add/edit/delete attendance records of subordinates', 'Only if the user has assigned subordinates, the supervisor user role privileges will work like accessing to his/her subordinates and his/her subordinates particulars attendance information. ', '5.0.0'),
(704, 'attendance_total_summary_report', 17, 'Attendance Total Summary Report', '\"Select the “Employee Name” from the drop down list, his/her “Job Title” and “Sub- Unit” he/she falls under and his/her “Employment Status”. The default job title/sub-unit/employment status is “All”. You may also select the date range you want to view the report for.', '5.0.0'),
(705, 'edit_attendance_records', 17, 'Edit Attendance Records', NULL, '5.0.0'),
(706, 'punch_in', 17, 'Punch In', 'This feature allows capturing the date and time that an employee reports to work', '5.0.0'),
(707, 'hh_mm', 17, 'hh:mm', NULL, '5.0.0'),
(708, 'punch_out', 17, 'Punch Out', 'This feature allows capturing the date and time that an employee leaves office after finishing work.', '5.0.0'),
(709, 'overlapping_records_found', 17, 'Overlapping Records Found', 'To avoid the leave overlaps with other employees, when applying a leave an employee should be able to check the availability of others of same division subunit)', '5.0.0'),
(710, 'punch_in_note', 17, 'Punch In Note', 'This helps adding a small description of why the employee was not punctual on that day or why came early to office.', '5.0.0'),
(711, 'punch_out_note', 17, 'Punch Out Note', 'This helps adding a small description of why the employee stayed late on that day or why leaving office early', '5.0.0'),
(712, 'duration_hours', 17, 'Duration (Hours)', 'It is for a specific duration of time.Ex: No of hours spent.When viewing attendance records of employees, duration ( from punch in to punch out ) will be shown in hours', '5.0.0'),
(713, 'employee_attendance_records', 17, 'Employee Attendance Records', NULL, '5.0.0'),
(714, 'my_attendance_records', 17, 'My Attendance Records', 'View personal attendance records that are maintained and recorded under “Attendance” menu', '5.0.0'),
(715, 'timezone', 17, 'Timezone', 'Time Zones are a geographical world globe division of 15o each, starting at Greenwich, in England, created to help people know what time is it now in another part of the world.', '5.0.0'),
(716, 'punched_in_note', 17, 'Punched In Note', NULL, '5.0.0'),
(717, 'in', 17, 'In', NULL, '5.0.0'),
(718, 'out', 17, 'Out', 'Enter punch in/out time', '5.0.0'),
(719, 'purge_employee_records', 10, 'Purge Employee Records', NULL, '5.0.0'),
(720, 'past_employee', 10, 'Past Employee', 'An employee who has worked in the organization in the past', '5.0.0'),
(721, 'gdpr_note', 10, 'Users who seek access to their data, or who seek to correct, amend, or delete the given information should direct their requests to Data@orangehrm.com with the subject \"Purge Records (Instance Identifier: {instanceIdentifier})\"', NULL, '5.0.0'),
(722, 'purge', 10, 'Purge', NULL, '5.0.0'),
(723, 'purge_employee', 10, 'Purge Employee', NULL, '5.0.0'),
(724, 'purge_employee_warning', 10, 'You are about to purge the employee permanently. Are you sure you want to continue? This operation cannot be undone', NULL, '5.0.0'),
(725, 'yes_purge', 10, 'Yes, Purge', NULL, '5.0.0'),
(726, 'selected_employee', 10, 'Selected Employee', NULL, '5.0.0'),
(727, 'purge_success', 10, 'Successfully Purged', NULL, '5.0.0'),
(728, 'download_personal_data', 10, 'Download Personal Data', NULL, '5.0.0'),
(730, 'customer_support', 14, 'Customer Support', NULL, '5.0.0'),
(731, 'getting_started_with_orangehrm_message_1', 14, 'Learning how to use a new application can be challenging. At OrangeHRM, we are committed to providing you with the necessary knowledge and skills required to fully utilize the application thereby allowing you to quickly and efficiently manage your HR processes.', NULL, '5.0.0'),
(732, 'getting_started_with_orangehrm_message_2', 14, 'The following information repositories are available to help you understand the application:', NULL, '5.0.0'),
(733, 'contact_us_on_message', 14, 'Should you experience any issues, please do not hesitate to contact us on', NULL, '5.0.0'),
(734, 'we_will_be_delighted_to_help', 14, 'We will be delighted to help.', NULL, '5.0.0'),
(735, 'login', 19, 'Login', 'User login could be created when adding employees under the PIM Module.', '5.0.0'),
(736, 'username', 19, 'username', NULL, '5.0.0'),
(737, 'password', 19, 'password', NULL, '5.0.0'),
(738, 'credential_required', 19, 'Credential Required', NULL, '5.0.0'),
(739, 'admin_access', 19, 'Administrator Access', NULL, '5.0.0'),
(740, 'admin_access_note', 19, 'You have requested to access a critical Administrator function in OrangeHRM and are required to validate your credentials below', NULL, '5.0.0'),
(741, 'your_password_should_not_contain_spaces', 19, 'Your password should not contain spaces.', NULL, '5.0.0'),
(742, 'must_contain_lower_case_upper_case_digit_character_message', 19, 'Your password must contain a lower-case letter, an upper-case letter, a digit and a special character. Try a different password', NULL, '5.0.0'),
(743, 'should_have_min_8_characters', 19, 'Should have at least 8 characters', NULL, '5.0.0'),
(744, 'reset_password', 19, 'Reset Password', NULL, '5.0.0'),
(745, 'username_identify_reset_note', 19, 'Please enter your username to identify your account to reset your password', NULL, '5.0.0'),
(746, 'set_new_password', 19, 'Set a new Password', NULL, '5.0.0'),
(747, 'new_password', 19, 'New Password', 'The user can now enter the new password. The password reset options are provided based on the prior selections made by user.', '5.0.0'),
(748, 'reset_password_token_expired_note', 19, 'The user account cannot be found or the reset password token has expired', NULL, '5.0.0'),
(749, 'request_new_password_token', 19, 'to request a new password reset token', NULL, '5.0.0'),
(750, 'reset_password_link_sent_successfully', 19, 'Reset Password link sent successfully', NULL, '5.0.0'),
(751, 'configured_receive_email_notification_note', 19, 'The OrangeHRM  system is not configured to receive email notifications. Please contact your OrangeHRM administrator to reset your password', NULL, '5.0.0'),
(752, 'back_to_login', 19, 'to go back to login page', NULL, '5.0.0'),
(753, 'reset_password_link_via_email', 19, 'A reset password link has been sent to you via email.', NULL, '5.0.0'),
(754, 'follow_link_to_select_password', 19, 'You can follow that link and select a new password.', NULL, '5.0.0'),
(755, 'email_not_receive_note', 19, 'If the email does not arrive, please contact your OrangeHRM Administrator.', NULL, '5.0.0'),
(756, 'forgot_password', 19, 'Forgot Your Password', NULL, '5.0.0'),
(757, 'invalid_credentials', 19, 'Invalid credentials', 'This error means that your user name/ password is incorrect in order to access the system', '5.0.0'),
(758, 'csrf_token_validation_failed', 19, 'CSRF token validation failed', NULL, '5.0.0'),
(759, 'account_disabled', 19, 'Account disabled', NULL, '5.0.0'),
(760, 'employee_is_terminated', 19, 'Employee is terminated', NULL, '5.0.0'),
(761, 'employee_is_assigned', 19, 'Employee not assigned', NULL, '5.0.0'),
(762, 'view_action_history', 6, 'View Action History', 'When admin go to Audit trail, all actions done by employees are recorded in the action history.', '5.1.0'),
(763, 'interviewer', 6, 'Interviewer', NULL, '5.1.0'),
(764, 'interview_title', 6, 'Interview Title', 'When configuring interviews, the topic of the interview should be added as Interview title.', '5.1.0'),
(765, 'schedule_interview', 6, 'Schedule Interview', 'Once a candidate is shortlisted, they can now be scheduled for an interview, to schedule an interview, select “Schedule Interview” from the “Action” drop down menu', '5.1.0');
INSERT INTO `ohrm_i18n_lang_string` (`id`, `unit_id`, `group_id`, `value`, `note`, `version`) VALUES
(766, 'shortlist', 6, 'Shortlist', 'The Admin or the Hiring Manager can choose to shortlist a particular candidate; Select “Shortlist” from the “Action” drop down menu', '5.1.0'),
(767, 'current_status', 6, 'Current Status', 'Current Employment status such as full time permanent, part time contract', '5.1.0'),
(768, 'performed_action', 6, 'Performed Action', 'The Admin/Evaluator views the history of a review (actions performed).', '5.1.0'),
(769, 'performed_date', 6, 'Performed Date', 'When viewing the review history,it shows when evaluator has performed a certain action. (Date and Time)', '5.1.0'),
(770, 'vacancy', 6, 'Vacancy', 'Here the Admin can create a vacancy for a particular job title required by the company.', '5.1.0'),
(771, 'hiring_manager', 6, 'Hiring Manager', 'The person who manages the recruitment process of a company by setting up interviews and hiring candidates', '5.1.0'),
(772, 'candidate_name', 6, 'Candidate Name', 'The name of the applicant/candidate, When search for a particular candidate, use a specific keyword like \" candidate name\"', '5.1.0'),
(773, 'keywords', 6, 'Keywords', 'Search for candidates using specific keywords that the candidates may have entered on the application form for easy short-listing for a particular vacancy', '5.1.0'),
(774, 'date_of_application', 6, 'Date of Application', 'Search for candidates who have applied for a specific period of time .Select the dates from “From” to \"To”.', '5.1.0'),
(775, 'method_of_application', 6, 'Method of Application', '\"Method of Application: search for candidates who have applied for any vacancy via: Manual: through post/email or Online: through the job portal\"', '5.1.0'),
(776, 'enter_comma_seperated_words', 6, 'Enter comma seperated words', NULL, '5.1.0'),
(777, 'candidate', 6, 'Candidate', 'The applicant needs to enter the following fields and click “Submit” to submit the application and the candidate will appear under the candidate database', '5.1.0'),
(778, 'application_initiated', 6, 'Application Initiated', 'Status of the application to select when the it initiates.', '5.1.0'),
(779, 'shortlisted', 6, 'Shortlisted', 'Vacancy succession report generate a graphical summary of how many candidates have applied and how many candidates have been shortlisted', '5.1.0'),
(780, 'interview_scheduled', 6, 'Interview Scheduled', 'Search for candidate with the status of the application: Ex: Interview Scheduled', '5.1.0'),
(781, 'interview_passed', 6, 'Interview Passed', 'Once a candidate has completed his interview, the HR Admin or the Hiring Manager may pass or fail the candidate based on the interview. To mark interview as passed, select “Mark Interview Passed” from the “Action “drop down menu', '5.1.0'),
(782, 'interview_failed', 6, 'Interview Failed', 'The HR Admin or the Hiring Manager can also mark the interview failed.', '5.1.0'),
(783, 'job_offered', 6, 'Job Offered', 'Allows the admin to subscribe to recruitment notification that will be sent to hiring manager and candidate on the event of job offering', '5.1.0'),
(784, 'offer_declined', 6, 'Offer Declined', 'search for candidate with the status of the application such as Offer Declined', '5.1.0'),
(785, 'manual', 6, 'Manual', 'Method of Application: search for candidates who have applied for any vacancy via manual: through post/email', '5.1.0'),
(786, 'online', 6, 'Online', 'A candidate applies for a particular vacancy that is posted online', '5.1.0'),
(787, 'contact_number', 6, 'Contact Number', NULL, '5.1.0'),
(788, 'consent_to_keep_data', 6, 'Consent to keep data', NULL, '5.1.0'),
(789, 'resume', 6, 'Resume', 'Curriculum Vitae of an employee', '5.1.0'),
(790, 'add_candidate', 6, 'Add Candidate', 'Add a candidate to the system.', '5.1.0'),
(791, 'should_be_current_date_previous_date', 6, 'Should be the current date or a previous date', NULL, '5.1.0'),
(792, 'application_stage', 6, 'Application Stage', NULL, '5.1.0'),
(793, 'offer_job', 6, 'Offer Job', 'The HR Admin or the Hiring Manager may offer the candidate the job. To do so, click “Edit” and select “Offer Job” from the “Action” drop down menu', '5.1.0'),
(794, 'mark_interview_failed', 6, 'Mark Interview Failed', 'The HR Admin or the Hiring Manager can also mark the interview failed. To do so, select “Mark Interview Failed” from the “Action” drop down menu', '5.1.0'),
(795, 'mark_interview_passed', 6, 'Mark Interview Passed', 'To mark interview as passed, select “Mark Interview Passed” from the “Action “drop down menu', '5.1.0'),
(796, 'decline_offer', 6, 'Decline Offer', 'If in case the offer was declined by the applicant then it can be listed as a “Decline Offer”.', '5.1.0'),
(797, 'hire', 6, 'Hire', 'The HR Admin or the Hiring Manager may choose to hire the candidate at this point. To hire the candidate, click “Edit” and select “Hire” from the “Action” drop down menu', '5.1.0'),
(798, 'profile', 6, 'Profile', NULL, '5.1.0'),
(799, 'job_vacancy', 6, 'Job Vacancy', 'When an applicant visits the company’s website or through RSS feed, they will be directed to the job vacancy portal where they will see all the active vacancies of the company.', '5.1.0'),
(800, 'history', 6, 'History', NULL, '5.1.0'),
(801, 'candidate_profile', 6, 'Candidate Profile', NULL, '5.1.0'),
(802, 'candidate_history', 6, 'Candidate History', NULL, '5.1.0'),
(803, 'add_vacancy', 6, 'Add Vacancy', NULL, '5.1.0'),
(804, 'edit_vacancy', 6, 'Edit Vacancy', NULL, '5.1.0'),
(805, 'vacancy_name', 6, 'Vacancy Name', 'Vacancy list can be filtered by the field of \"Vacancy Name\"', '5.1.0'),
(806, 'num_of_positions', 6, 'Number of Positions', 'This report is generated to extract details of the number of positions vacant.', '5.1.0'),
(807, 'rss_feed_url', 6, 'RSS Feed URL', 'you may publish the vacancy of RSS feed URL and on the company’s webpage', '5.1.0'),
(808, 'web_page_url', 6, 'Web Page URL', 'It is the address you see on top of your Internet browser that identifies the unique location of the Internet page your are looking at.', '5.1.0'),
(809, 'publish_in_rss_feed_and_web_page', 6, 'Publish in RSS Feed and Web Page', NULL, '5.1.0'),
(810, 'employee_added_candidate', 6, '{employee} added {candidate}', NULL, '5.1.0'),
(811, 'employee_assigned_vacancy_to_candidate', 6, '{employee} assigned the job vacancy {vacancy}', NULL, '5.1.0'),
(812, 'candidate_shortlisted_for_vacancy_by_employee', 6, 'Shortlisted for {vacancy} by {employee}', NULL, '5.1.0'),
(813, 'employee_schedule_interview_with_interviewers', 6, '{employee} scheduled {interview} on {interviewDate} with {interviewers} for {vacancy}', NULL, '5.1.0'),
(814, 'employee_marked_interveiw_passed', 6, '{employee} marked {interview} as passed for {vacancy}', NULL, '5.1.0'),
(815, 'employee_marked_interveiw_failed', 6, '{employee} marked {interview} as failed for {vacancy}', NULL, '5.1.0'),
(816, 'employee_offered_the_job', 6, '{employee} offered the job for {vacancy}', NULL, '5.1.0'),
(817, 'employee_marked_the_offer_declined', 6, '{employee} marked the offer as declined for {vacancy}', NULL, '5.1.0'),
(818, 'employee_hired_the_candidate', 6, '{employee} hired {candidate} for {vacancy}', NULL, '5.1.0'),
(819, 'employee_rejected_the_candidate', 6, '{employee} rejected {candidate} from the {vacancy}', NULL, '5.1.0'),
(820, 'employee_removed_candidate_from_vacancy', 6, '{employee} removed {candidate} from the {vacancy}', NULL, '5.1.0'),
(821, 'candidate_applied_for_the_vacancy', 6, '{candidate} applied for the vacancy {vacancy}', NULL, '5.1.0'),
(822, 'shortlist_candidate', 6, 'Shortlist Candidate', NULL, '5.1.0'),
(823, 'hired', 6, 'Hired', 'Once the candidate is hired, he/she will be added to the employee database under the PIM Module.', '5.1.0'),
(824, 'powered_by', 6, 'Powered By', NULL, '5.1.0'),
(825, 'apply_for_n_vacancy', 6, 'Apply for {vacancyName}', NULL, '5.1.0'),
(826, 'application_received', 6, 'Application Received', 'Status of the application to select when it receives.', '5.1.0'),
(827, 'your_application_has_been_submitted_successfully', 6, 'Your application has been submitted successfully', NULL, '5.1.0'),
(828, 'hire_candidate', 6, 'Hire Candidate', NULL, '5.1.0'),
(829, 'reject_candidate', 6, 'Reject Candidate', NULL, '5.1.0'),
(830, 'candidate_vacancy_change_message', 6, 'This action will remove previous vacancy. Are you sure you want to continue?', NULL, '5.1.0'),
(831, 'supervisor_reviewer', 7, 'Supervisor Reviewer', NULL, '5.1.0'),
(832, 'add_review', 7, 'Add Review', 'The reviewer can then leave a Positive or Negative review.', '5.1.0'),
(833, 'review_period_start_date', 7, 'Review Period Start Date', NULL, '5.1.0'),
(834, 'review_period_end_date', 7, 'Review Period End Date', NULL, '5.1.0'),
(835, 'due_date', 7, 'Due Date', 'It will represent the date the student is expected to complete all the courses in that package.', '5.1.0'),
(836, 'activate', 7, 'Activate', 'Cause to make a certain function active.', '5.1.0'),
(837, 'review_period_start_date_should_be_before_end_date', 7, 'Review period start date should be before period end date', NULL, '5.1.0'),
(838, 'review_period_end_date_should_be_after_start_date', 7, 'Review period end date should be after period start date', NULL, '5.1.0'),
(839, 'due_date_should_be_after_review_period_end_date', 7, 'Due date should be after period end date', NULL, '5.1.0'),
(840, 'cannot_activate_review_without_job_title_subdivision', 7, 'Cannot activate review for employees who doesn\'t have Job Title and/or Sub-Division', 'It is a validation message that appears when we try to active an employee review without selecting atleast the job title,sub division or both.', '5.1.0'),
(841, 'cannot_activate_review_without_kpi', 7, 'Cannot activate review without KPIs', 'it is a validation message that appears when we try to active an employee review without selecting KPIs', '5.1.0'),
(842, 'reviewers', 7, 'Reviewers', NULL, '5.1.0'),
(843, 'tracker_name', 7, 'Tracker Name', 'The Admin can then enter a Tracker Name, select Employee who will be tracked, and then pick the relevant reviewers who will be able to track that employees performance.', '5.1.0'),
(844, 'edit_performance_tracker', 7, 'Edit Performance Tracker', NULL, '5.1.0'),
(845, 'add_performance_tracker', 7, 'Add Performance Tracker', NULL, '5.1.0'),
(846, 'employee_cannot_be_assigned_as_his_own_reviewer', 7, 'Employee cannot be assigned as his own reviewer', 'Employees can only view (not modify) the comments added by the reviewers.Also he cannot be a reviewer to his performance logs.', '5.1.0'),
(847, 'performance_trackers', 7, 'Performance Trackers', NULL, '5.1.0'),
(848, 'key_performance_indicators_for_job_title', 7, 'Key Performance Indicators for Job Title', 'You may enter multiple entries of KPIs for different Job titles.', '5.1.0'),
(849, 'key_performance_indicator', 7, 'Key Performance Indicator', 'This feature enlists all Key Performance Indicator (KPI) for all job titles.', '5.1.0'),
(850, 'min_rate', 7, 'Min Rate', 'Rate the employee based on the KPI with the assigned Min rate', '5.1.0'),
(851, 'max_rate', 7, 'Max Rate', 'Rate the employee based on the KPI with the assigned Min and Max Rate', '5.1.0'),
(852, 'is_default', 7, 'Is Default', 'When mapping KPI for job titles, you can reserve one KPI as the default one', '5.1.0'),
(853, 'add_key_performance_indicator', 7, 'Add Key Performance Indicator', NULL, '5.1.0'),
(854, 'edit_key_performance_indicator', 7, 'Edit Key Performance Indicator', NULL, '5.1.0'),
(855, 'minimum_rating', 7, 'Minimum Rating', 'Rate the employee based on the KPI with the assigned Min rate', '5.1.0'),
(856, 'maximum_rating', 7, 'Maximum Rating', 'Maximum rating that can be given for a particular KPI', '5.1.0'),
(857, 'make_default_scale', 7, 'Make Default Scale', 'If you select “Make Default Scale” the defined minimum and maximum rating will be pre-populated for all KPIs added in the future.', '5.1.0'),
(858, 'minimum_rating_should_be_less_than_maximum_rating', 7, 'Minimum Rating should be less than Maximum Rating', NULL, '5.1.0'),
(859, 'maximum_rating_should_be_greater_than_minimum_rating', 7, 'Maximum Rating should be greater than Minimum Rating', NULL, '5.1.0'),
(860, 'employee_performance_trackers', 7, 'Employee Performance Trackers', NULL, '5.1.0'),
(861, 'modified_date', 7, 'Modified Date', 'Once added, they can be modified.Added and Modified dates are captured automatically. Modified date log entries added to the tracker captured automatically.', '5.1.0'),
(862, 'added_date', 7, 'Added Date', 'Date that performance tracker log is added captured automatically.', '5.1.0'),
(863, 'tracker', 7, 'Tracker', NULL, '5.1.0'),
(864, 'my_performance_trackers', 7, 'My Performance Trackers', NULL, '5.1.0'),
(865, 'review_period', 7, 'Review Period', 'An employee can have a performance appraisal which is expected to be used to review his or her performance during a specific time period.', '5.1.0'),
(866, 'self_evaluation_status', 7, 'Self Evaluation Status', NULL, '5.1.0'),
(867, 'review_status', 7, 'Review Status', 'For the Global Admin to view the review status and the progress of the appraisal, go to Performance>> Reports>>Reviews and Appraisal Progress,', '5.1.0'),
(868, 'evaluate', 7, 'Evaluate', 'Impartial analysis conducted according to established criteria to determine the acceptability or worth of an employee.', '5.1.0'),
(869, 'employee_reviews', 7, 'Employee Reviews', NULL, '5.1.0'),
(870, 'activated', 7, 'Activated', 'Your performance appraisal a certain time period has been activated.The Email is sent to the employee who is being reviewed (if self-review is activated):', '5.1.0'),
(871, 'in_progress', 7, 'In Progress', 'When an employee performs a self-evaluation, status of the appraisal will be in progress until it is submitted.', '5.1.0'),
(872, 'completed', 7, 'Completed', 'The performance appraisal for a certain time period for an Employee has been completed.', '5.1.0'),
(873, 'reviewer', 7, 'Reviewer', 'The person who reviews an employee performance,A Reviewer can be any employee regardless of him/her being a supervisor/subordinate or any other role.', '5.1.0'),
(874, 'manage_performance_reviews', 7, 'Manage Performance Reviews', NULL, '5.1.0'),
(875, 'inactive', 7, 'Inactive', 'Many application forms can be created for a particular vacancy, but only one is active at a time, others are inactive.', '5.1.0'),
(876, 'tracker_logs', 7, 'Tracker Logs', NULL, '5.1.0'),
(877, 'add_log', 7, 'Add Log', NULL, '5.1.0'),
(878, 'added_on', 7, 'Added On', NULL, '5.1.0'),
(879, 'modified_on', 7, 'Modified On', NULL, '5.1.0'),
(880, 'delete', 7, 'Delete', 'Delete/remove an entry/ multiple entries', '5.1.0'),
(881, 'add_tracker_log', 7, 'Add Tracker Log', NULL, '5.1.0'),
(882, 'log', 7, 'Log', 'Once a tracker is created, reviewers can add logs (comments about positive/negative performance) to the tracker.', '5.1.0'),
(883, 'positive', 7, 'Positive', NULL, '5.1.0'),
(884, 'negative', 7, 'Negative', NULL, '5.1.0'),
(885, 'edit_tracker_log', 7, 'Edit Tracker Log', NULL, '5.1.0'),
(886, 'performance_review', 7, 'Performance Review', 'Reviewing an employee\'s performance in an appraisal by evaluator groups.', '5.1.0'),
(887, 'review_summary', 7, 'Review Summary', NULL, '5.1.0'),
(888, 'review_due_date', 7, 'Review Due Date', 'The due date on which the final performance review to be held', '5.1.0'),
(889, 'complete', 7, 'Complete', 'Complete a certain task', '5.1.0'),
(890, 'review_finalization', 7, 'Review Finalization', NULL, '5.1.0'),
(891, 'date_of_completion', 7, 'Date of Completion', NULL, '5.1.0'),
(892, 'final_rating', 7, 'Final Rating', 'Main evaluator can set the final rating for employee appraisals at the final review based on the weighted average of goals and competencies', '5.1.0'),
(893, 'final_comments', 7, 'Final Comments', NULL, '5.1.0'),
(894, 'rating_should_be_greater_than_or_equal_to_minValue', 7, 'Rating should be greater than or equal to {minValue}', NULL, '5.1.0'),
(895, 'rating_should_be_less_than_or_equal_to_maxValue', 7, 'Rating should be less than or equal to {maxValue}', NULL, '5.1.0'),
(896, 'self_evaluation_by', 7, 'Self Evaluation by', NULL, '5.1.0'),
(897, 'supervisor_evaluation_by', 7, 'Supervisor Evaluation by', NULL, '5.1.0'),
(898, 'kpi', 7, 'KPI', 'Key Performance Indicator', '5.1.0'),
(899, 'rating', 7, 'Rating', 'Evaluators view their reviews and ratings given for the employee', '5.1.0'),
(900, 'min', 7, 'Min', 'Minimum salary', '5.1.0'),
(901, 'max', 7, 'Max', 'Maximum amount which is specified in the system for a particular pay-grade.', '5.1.0'),
(902, 'evaluation_activated', 7, 'Evaluation Activated', NULL, '5.1.0'),
(903, 'evaluation_in_progress', 7, 'Evaluation In Progress', NULL, '5.1.0'),
(904, 'evaluation_completed', 7, 'Evaluation Completed', NULL, '5.1.0'),
(905, 'cannot_activate_review_for_employee_without_job_title_with_kpi', 7, 'Cannot activate review for employees who doesn\'t have a Job Title with KPI', NULL, '5.1.0'),
(906, 'cannot_add_a_past_employee_as_reviewer', 7, 'Cannot add a past employee as reviewer', NULL, '5.1.0'),
(907, 'selected_supervisor_for_reviewer_is_invalid', 7, 'Selected supervisor for reviewer is invalid', NULL, '5.1.0'),
(908, 'general_comment', 7, 'General Comment', NULL, '5.1.0'),
(909, 'confirm_review_submission', 7, 'Confirm Review Submission', NULL, '5.1.0'),
(910, 'confirm_review_submission_message', 7, 'The review will be made read-only after completion. This action cannot be undone. Are you sure you want to continue?', NULL, '5.1.0'),
(911, 'cannot_add_a_past_employee_as_a_reviewer', 7, 'Cannot add a past employee as a reviewer', NULL, '5.1.0'),
(912, 'edit_review', 7, 'Edit Review', NULL, '5.1.0'),
(913, 'primary_color', 2, 'Primary Color', NULL, '5.1.0'),
(914, 'secondary_color', 2, 'Secondary Color', NULL, '5.1.0'),
(915, 'primary_font_color', 2, 'Primary Font Color', NULL, '5.1.0'),
(916, 'secondary_font_color', 2, 'Secondary Font Color', NULL, '5.1.0'),
(917, 'primary_gradient_color_one', 2, 'Primary Gradient Color 1', NULL, '5.1.0'),
(918, 'primary_gradient_color_two', 2, 'Primary Gradient Color 2', NULL, '5.1.0'),
(919, 'client_logo', 2, 'Client Logo', NULL, '5.1.0'),
(920, 'client_banner', 2, 'Client Banner', NULL, '5.1.0'),
(921, 'login_banner', 2, 'Login Banner', NULL, '5.1.0'),
(922, 'social_media_images', 2, 'Social Media Images', NULL, '5.1.0'),
(923, 'export', 2, 'Export', NULL, '5.1.0'),
(924, 'translate', 2, 'Translate', NULL, '5.1.0'),
(925, 'translate_text_manually', 2, 'Users will require translate texts manually after creating the language package.', NULL, '5.1.0'),
(926, 'add_language_package', 2, 'Add Language Package', NULL, '5.1.0'),
(927, 'directory_module', 2, 'Directory Module', NULL, '5.1.0'),
(928, 'january', 1, 'January', 'First Month of a Year', '5.1.0'),
(929, 'february', 1, 'February', 'Month of February', '5.1.0'),
(930, 'march', 1, 'March', 'Third month of the year', '5.1.0'),
(931, 'april', 1, 'April', 'Month of April', '5.1.0'),
(932, 'may', 1, 'May', 'Fifth Month of the year', '5.1.0'),
(933, 'june', 1, 'June', 'Sixth Month of a year', '5.1.0'),
(934, 'july', 1, 'July', 'Seventh Month of a year', '5.1.0'),
(935, 'august', 1, 'August', 'Month of August.', '5.1.0'),
(936, 'september', 1, 'September', '9th Month of the year', '5.1.0'),
(937, 'october', 1, 'October', 'Tenth Month of the year', '5.1.0'),
(938, 'november', 1, 'November', '11th Month of the year', '5.1.0'),
(939, 'december', 1, 'December', 'Month of December', '5.1.0'),
(940, 'jan', 1, 'Jan', NULL, '5.1.0'),
(941, 'feb', 1, 'Feb', NULL, '5.1.0'),
(942, 'mar', 1, 'Mar', NULL, '5.1.0'),
(943, 'apr', 1, 'Apr', NULL, '5.1.0'),
(944, 'jun', 1, 'Jun', NULL, '5.1.0'),
(945, 'jul', 1, 'Jul', NULL, '5.1.0'),
(946, 'aug', 1, 'Aug', NULL, '5.1.0'),
(947, 'sep', 1, 'Sep', NULL, '5.1.0'),
(948, 'oct', 1, 'Oct', NULL, '5.1.0'),
(949, 'nov', 1, 'Nov', NULL, '5.1.0'),
(950, 'dec', 1, 'Dec', NULL, '5.1.0'),
(951, 'accept_custom_format_file', 1, 'Accepts .docx, .doc, .odt, .pdf, .rtf, .txt up to 1MB', 'The files uploading cannot be over 1MB in size and must be in one of the formats .docx, .doc, .odt, .PDF, .rtf, .txt', '5.1.0'),
(952, 'should_be_lower_than_maximum_value', 1, 'Should be lower than maximum value', NULL, '5.1.0'),
(953, 'should_be_a_number_between_min_and_max', 1, 'Should be a number between {min}-{max}', NULL, '5.1.0'),
(954, 'active', 1, 'Active', 'Many application forms can be created for a particular vacancy, but only one is active at a time', '5.1.0'),
(955, 'closed', 1, 'Closed', 'Closing an appraisal cycle, moves all appraisals in the cycle to CLOSED state. Also, Disciplinary case is in the closed status ', '5.1.0'),
(956, 'file_size', 1, 'File Size', NULL, '5.1.0'),
(957, 'file_type', 1, 'File Type', NULL, '5.1.0'),
(958, 'full_name', 1, 'Full Name', 'Full Name of the employee will be populated under the leave summary and captured in a CSV file', '5.1.0'),
(959, 'reset_to_default', 1, 'Reset to Default', NULL, '5.1.0'),
(960, 'preview', 1, 'Preview', NULL, '5.1.0'),
(961, 'accept_jpg_png_gif_upto_recommended_dimensions', 1, 'Accepts jpg, .png, .gif, .svg up to {fileSize}. Recommended dimensions: {width}px X {height}px', NULL, '5.1.0'),
(962, 'incorrect_dimensions', 1, 'Incorrect Dimensions', NULL, '5.1.0'),
(963, 'invalid', 1, 'Invalid', 'Invalid username or password', '5.1.0'),
(964, 'or_login_with', 1, 'Or login with', NULL, '5.1.0'),
(965, 'successfully_activated', 1, 'Successfully Activated', NULL, '5.1.0'),
(966, 'publish', 1, 'Publish', NULL, '5.1.0'),
(967, 'less_than_or_equal_to_n', 1, 'Number should be less than or equal to {maxValue}', NULL, '5.1.0'),
(968, 'greater_than_or_equal_to_n', 1, 'Number should be greater than or equal to {minValue}', NULL, '5.1.0'),
(969, 'purged_employee', 1, 'Purged Employee', NULL, '5.1.0'),
(970, 'show_more', 1, 'Show More', NULL, '5.1.0'),
(971, 'show_less', 1, 'Show Less', NULL, '5.1.0'),
(972, 'upload_n_file', 1, 'Upload {fileName}', NULL, '5.1.0'),
(974, 'should_be_a_numeric_value', 1, 'Should be a numeric value', NULL, '5.1.0'),
(975, 'confirmation_required', 1, 'Confirmation Required', 'A warning message that appeals you to confirm a certain action.', '5.1.0'),
(976, 'purge_candidate_records', 10, 'Purge Candidate Records', NULL, '5.1.0'),
(977, 'purge_candidates', 10, 'Purge Candidates', NULL, '5.1.0'),
(978, 'purge_candidates_warning', 10, 'You are about to purge selected candidates permanently. Are you sure you want to continue? This operation cannot be undone', NULL, '5.1.0'),
(979, 'purge_all', 10, 'Purge All', NULL, '5.1.0'),
(980, 'selected_candidates', 10, 'Selected Candidates', NULL, '5.1.0'),
(981, 'language_package', 2, 'Language Package', NULL, '5.2.0'),
(982, 'source_language', 2, 'Source Language', NULL, '5.2.0'),
(983, 'module', 2, 'Module', NULL, '5.2.0'),
(984, 'source_text', 2, 'Source Text', NULL, '5.2.0'),
(985, 'translated_text', 2, 'Translated Text', NULL, '5.2.0'),
(986, 'source_note', 2, 'Source Note', NULL, '5.2.0'),
(987, 'show', 2, 'Show', NULL, '5.2.0'),
(988, 'all', 2, 'All', NULL, '5.2.0'),
(989, 'translated', 2, 'Translated', NULL, '5.2.0'),
(990, 'not_translated', 2, 'Not Translated', NULL, '5.2.0'),
(991, 'translate_language_package', 2, 'Translate Language Package', NULL, '5.2.0'),
(992, 'order', 2, 'Order', NULL, '5.2.0'),
(993, 'server_settings', 2, 'Server Settings', NULL, '5.2.0'),
(994, 'bind_settings', 2, 'Bind Settings', NULL, '5.2.0'),
(995, 'user_lookup_settings', 2, 'User Lookup Settings', NULL, '5.2.0'),
(996, 'data_mapping', 2, 'Data Mapping', NULL, '5.2.0'),
(997, 'additional_settings', 2, 'Additional Settings', NULL, '5.2.0'),
(998, 'host', 2, 'Host', NULL, '5.2.0'),
(999, 'ldap_host_input_hint', 2, 'LDAP Server IP or Hostname without the protocol (without ldap:// or ldaps://)', NULL, '5.2.0'),
(1000, 'port', 2, 'Port', NULL, '5.2.0'),
(1001, 'port_input_hint', 2, 'If SSL use port 636 by default', NULL, '5.2.0'),
(1002, 'encryption', 2, 'Encryption', NULL, '5.2.0'),
(1003, 'ldap_implementation', 2, 'LDAP Implementation', NULL, '5.2.0'),
(1004, 'distinguished_name', 2, 'Distinguished Name', NULL, '5.2.0'),
(1005, 'base_distinguished_name', 2, 'Base Distinguished Name', NULL, '5.2.0'),
(1006, 'search_scope', 2, 'Search Scope', NULL, '5.2.0'),
(1007, 'search_scope_input_hint', 2, 'Subtree option will allow searching base directory and sub directories. One level will only search within the base directory', NULL, '5.2.0'),
(1008, 'user_name_attribute', 2, 'User Name Attribute', NULL, '5.2.0'),
(1009, 'firstname_field', 2, 'Firstname Field', NULL, '5.2.0'),
(1010, 'middlename_field', 2, 'Middlename Field', NULL, '5.2.0'),
(1011, 'lastname_field', 2, 'Lastname Field', NULL, '5.2.0'),
(1012, 'user_status_field', 2, 'User Status Field', NULL, '5.2.0'),
(1013, 'work_email_field', 2, 'Work E-mail Field', NULL, '5.2.0'),
(1014, 'employee_id_field', 2, 'Employee ID Field', NULL, '5.2.0'),
(1015, 'test_connection', 2, 'Test Connection', NULL, '5.2.0'),
(1016, 'bind_anonymously', 2, 'Bind Anonymously', NULL, '5.2.0'),
(1017, 'sync_interval', 2, 'Sync Interval (in Hours)', NULL, '5.2.0'),
(1018, 'group_object_class', 2, 'Group Object Class', NULL, '5.2.0'),
(1019, 'group_object_filter', 2, 'Group Object Filter', NULL, '5.2.0'),
(1020, 'group_name_attribute', 2, 'Group Name Attribute', NULL, '5.2.0'),
(1021, 'group_members_attribute', 2, 'Group Members Attribute', NULL, '5.2.0'),
(1022, 'user_membership_attribute', 2, 'User Membership Attribute', NULL, '5.2.0'),
(1023, 'user_name_input_hint', 2, 'Attribute field to use when loading the username. Ex: cn, SMA account name', NULL, '5.2.0'),
(1024, 'ssl', 2, 'SSL', NULL, '5.2.0'),
(1025, 'subtree', 2, 'Subtree', NULL, '5.2.0'),
(1026, 'one_level', 2, 'One level', NULL, '5.2.0'),
(1027, 'open_ldap_v3', 2, 'Open LDAP v3', NULL, '5.2.0'),
(1028, 'ms_active_directory', 2, 'MS Active Directory', NULL, '5.2.0'),
(1029, 'connection_status', 2, 'Connection Status', NULL, '5.2.0'),
(1030, 'sync_connection', 2, 'Sync Connection', NULL, '5.2.0'),
(1031, 'sync_now', 2, 'Sync Now', NULL, '5.2.0'),
(1032, 'last_synced_on_datetime', 2, 'Last synced on {datetime}', NULL, '5.2.0'),
(1033, 'last_sync_failed_on_datetime', 2, 'Last sync failed on {datetime}', NULL, '5.2.0'),
(1034, 'synchronization_successful', 2, 'Synchronization Successful', NULL, '5.2.0'),
(1035, 'synchronization_failed', 2, 'Synchronization Failed', NULL, '5.2.0'),
(1036, 'user_search_filter', 2, 'User Search Filter', NULL, '5.2.0'),
(1037, 'user_unique_id_attribute', 2, 'User Unique ID Attribute', NULL, '5.2.0'),
(1038, 'merge_ldap_users_with_existing_system_users', 2, 'Merge LDAP Users With Existing System Users', NULL, '5.2.0'),
(1039, 'please_check_the_settings_for_your_ldap_configuration', 2, 'Please check the settings for your LDAP configuration', NULL, '5.2.0'),
(1040, 'user_search_filter_input_hint', 2, 'Attribute field to use when searching user objects. Ex: objectClass=person', NULL, '5.2.0'),
(1041, 'user_unique_attribute_input_hint', 2, 'Attribute field to use as a unique immutable identifier for user objects. This is used to track username changes. Ex: entryUUID, objectGUID', NULL, '5.2.0'),
(1042, 'field_in_orangehrm', 2, 'Field in OrangeHRM', NULL, '5.2.0'),
(1043, 'field_in_ldap_directory', 2, 'Field in LDAP Directory', NULL, '5.2.0'),
(1044, 'use_this_field_as_the_employee_user_mapping_field', 2, 'Use this field as the employee / user mapping field', NULL, '5.2.0'),
(1045, 'n_users_found', 2, '{count} user(s) found', NULL, '5.2.0'),
(1046, 'n_users_will_be_imported', 2, '{count} user(s) will be imported', NULL, '5.2.0'),
(1047, 'lookup', 2, 'Lookup', NULL, '5.2.0'),
(1048, 'user_lookup', 2, 'User lookup', NULL, '5.2.0'),
(1049, 'authentication', 2, 'Authentication', NULL, '5.2.0'),
(1050, 'search_results', 2, 'Search results', NULL, '5.2.0'),
(1051, 'leave_applications', 2, 'Leave Applications', NULL, '5.2.0'),
(1052, 'leave_assignments', 2, 'Leave Assignments', NULL, '5.2.0'),
(1053, 'leave_approvals', 2, 'Leave Approvals', NULL, '5.2.0'),
(1054, 'leave_cancellation', 2, 'Leave Cancellations', NULL, '5.2.0'),
(1055, 'leave_rejections', 2, 'Leave Rejections', NULL, '5.2.0'),
(1056, 'ldap_settings_not_configured', 2, 'LDAP settings not configured', NULL, '5.2.0'),
(1057, 'ldap_sync_not_enabled', 2, 'LDAP sync not enabled', NULL, '5.2.0'),
(1058, 'ldap_configuration_warning_message', 2, 'Before activating the LDAP service, make sure that all LDAP settings are functioning properly since incorrect configuration may result in corrupted data. As a precaution, we recommend you to create a backup of your database before continuing.', NULL, '5.2.0'),
(1059, 'ascending', 1, 'Ascending', NULL, '5.2.0'),
(1060, 'descending', 1, 'Descending', NULL, '5.2.0'),
(1061, 'ldap_configuration', 1, 'LDAP Configuration', NULL, '5.2.0'),
(1062, 'enable', 1, 'Enable', NULL, '5.2.0'),
(1063, 'enter_valid_port_between_a_to_b', 1, 'Enter a valid port number between {minValue} to {maxValue}', NULL, '5.2.0'),
(1064, 'user_status', 1, 'User Status', NULL, '5.2.0'),
(1065, 'should_be_least_n_characters', 1, 'Should be at least {amount} characters', NULL, '5.2.0'),
(1066, 'entitlement_type', 4, 'Entitlement Type', NULL, '5.2.0'),
(1067, 'leave_requests_action', 4, '{action, select, APPROVE {{count, plural, =0 {No Leave Requests Approved} =1 {1 Leave Request Approved} other {# Leave Requests Approved} }} REJECT {{count, plural, =0 {No Leave Requests Rejected} =1 {1 Leave Request Rejected} other {# Leave Requests Rejected} }} other {{count, plural, =0 {No Leave Requests Cancelled} =1 {1 Leave Request Cancelled} other {# Leave Requests Cancelled} }} }', 'Action might either be Approve, Reject or Cancel of a single/number of leave requests', '5.2.0'),
(1068, 'state_income_tax', 3, 'State Income Tax', NULL, '5.2.0'),
(1069, 'bi_weekly', 3, 'Bi Weekly', NULL, '5.2.0'),
(1070, 'hourly', 3, 'Hourly', NULL, '5.2.0'),
(1071, 'monthly', 3, 'Monthly', NULL, '5.2.0'),
(1072, 'monthly_on_first_pay', 3, 'Monthly on first pay of month', NULL, '5.2.0'),
(1073, 'semi_monthly', 3, 'Semi Monthly', NULL, '5.2.0'),
(1074, 'weekly', 3, 'Weekly', NULL, '5.2.0'),
(1075, 'savings', 3, 'Savings', NULL, '5.2.0'),
(1076, 'checking', 3, 'Checking', NULL, '5.2.0'),
(1077, 'add_supervisor', 3, 'Add Supervisor', NULL, '5.2.0'),
(1078, 'add_subordinate', 3, 'Add Subordinate', NULL, '5.2.0'),
(1079, 'username_already_exists', 3, 'Username already exists', NULL, '5.2.0'),
(1080, 'n_records_successfully_imported', 3, '{count,plural, =0{No Records Imported} one{1 Record Successfully Imported} other{ # Records Successfully Imported}}', NULL, '5.2.0'),
(1081, 'n_records_failed_to_import', 3, '{count,plural, =0{No Records Failed to Import} one{1 Record Failed to Import} other{ # Records Failed to Import}}', NULL, '5.2.0'),
(1082, 'failed_rows', 3, 'Failed Rows', NULL, '5.2.0'),
(1083, 'import_details', 3, 'Import Details', NULL, '5.2.0'),
(1084, 'punched_in', 17, 'Punched In', NULL, '5.2.0'),
(1085, 'punched_out', 17, 'Punched Out', NULL, '5.2.0'),
(1086, 'not_punched_in', 17, 'Not Punched In', NULL, '5.2.0'),
(1087, 'employee_distribution_by_sub_unit', 8, 'Employee Distribution by Sub Unit', NULL, '5.2.0'),
(1088, 'employee_distribution_by_location', 8, 'Employee Distribution by Location', NULL, '5.2.0'),
(1089, 'unassigned', 8, 'Unassigned', NULL, '5.2.0'),
(1090, 'employees_on_leave_today', 8, 'Employees on Leave Today', NULL, '5.2.0'),
(1091, 'no_employees_are_on_leave_today', 8, 'No Employees are on Leave Today', NULL, '5.2.0'),
(1092, 'leave_period_not_defined', 8, 'Leave Period Not Defined', NULL, '5.2.0'),
(1093, 'time_at_work', 8, 'Time at Work', NULL, '5.2.0'),
(1094, 'today', 1, 'Today', NULL, '5.2.0'),
(1095, 'this_week', 8, 'This Week', NULL, '5.2.0'),
(1096, 'state_date_at_time_timezone_offset', 8, '{lastState}: {date} at {time} (GMT {timezoneOffset})', NULL, '5.2.0'),
(1097, 'state_today_at_time_timezone_offset', 8, '{lastState}: Today at {time} (GMT {timezoneOffset})', NULL, '5.2.0'),
(1098, 'quick_launch', 8, 'Quick Launch', NULL, '5.2.0'),
(1099, 'my_actions', 8, 'My Actions', NULL, '5.2.0'),
(1100, 'n_pending_leave_request', 8, '{pendingActionsCount,plural, =0{No Records Found} one{(1) Leave Request to Approve} other{ (#) Leave Requests to Approve}}', NULL, '5.2.0'),
(1101, 'n_pending_time_sheet', 8, '{pendingActionsCount,plural, =0{No Records Found} one{(1) Timesheet to Approve} other{ (#) Timesheets to Approve}}', NULL, '5.2.0'),
(1102, 'n_pending_performance_evaluate', 8, '{pendingActionsCount,plural, =0{No Records Found} one{(1) Performance Review to Evaluate} other{ (#) Performance Reviews to Evaluate}}', NULL, '5.2.0'),
(1103, 'n_pending_candidate_interview', 8, '{pendingActionsCount,plural, =0{No Records Found} one{(1) Candidate to Interview} other{ (#) Candidates to Interview}}', NULL, '5.2.0'),
(1104, 'no_pending_actions', 8, 'No Pending Actions to Perform', NULL, '5.2.0'),
(1105, 'n_pending_self_review', 8, '{pendingActionsCount,plural, =0{No Records Found} one{(1) Pending Self Review} other{ (#) Pending Self Reviews}}', NULL, '5.2.0'),
(1106, 'configurations', 8, 'Configurations', NULL, '5.2.0'),
(1107, 'only_show_accessible_employees_on_leave_for_other_users', 8, 'Only show accessible employees on leave for other users', NULL, '5.2.0'),
(1108, 'not_available', 8, 'Not Available', NULL, '5.2.0'),
(1109, 'submitted', 5, 'Submitted', NULL, '5.2.0'),
(1110, 'not_submitted', 5, 'Not Submitted', NULL, '5.2.0'),
(1111, 'approved', 5, 'Approved', NULL, '5.2.0'),
(1112, 'upcoming_anniversaries', 11, 'Upcoming Anniversaries', NULL, '5.3.0'),
(1113, 'n_year', 11, '{yearsCount,plural, =0{} one{Year} other{Years}}', NULL, '5.3.0'),
(1114, 'buzz_newsfeed', 11, 'Buzz Newsfeed', NULL, '5.3.0'),
(1115, 'post', 11, 'Post', NULL, '5.3.0'),
(1116, 'post_placeholder', 11, 'What\'s on your mind?', NULL, '5.3.0'),
(1117, 'share_photos', 11, 'Share Photos', NULL, '5.3.0'),
(1118, 'share_video', 11, 'Share Video', NULL, '5.3.0'),
(1119, 'years', 11, 'Years', NULL, '5.3.0'),
(1120, 'n_like', 11, '{likesCount,plural, =0{0 Likes} one{1 Like} other{# Likes}}', NULL, '5.3.0'),
(1121, 'n_comment', 11, '{commentCount,plural, =0{0 Comments} one{1 Comment} other{# Comments}}', NULL, '5.3.0'),
(1122, 'n_share', 11, '{shareCount,plural, =0{0 Shares} one{1 Share} other{# Shares}}', NULL, '5.3.0'),
(1123, 'write_your_comment', 11, 'Write your comment...', NULL, '5.3.0'),
(1124, 'delete_post', 11, 'Delete Post', NULL, '5.3.0'),
(1125, 'edit_post', 11, 'Edit Post', NULL, '5.3.0'),
(1126, 'most_recent_posts', 11, 'Most Recent Posts', NULL, '5.3.0'),
(1127, 'most_liked_posts', 11, 'Most Liked Posts', NULL, '5.3.0'),
(1128, 'most_commented_posts', 11, 'Most Commented Posts', NULL, '5.3.0'),
(1129, 'share', 11, 'Share', NULL, '5.3.0'),
(1130, 'video_url', 11, 'Video URL', NULL, '5.3.0'),
(1131, 'paste_video_url', 11, 'Paste Video URL', NULL, '5.3.0'),
(1132, 'add_photos', 11, 'Add Photos', NULL, '5.3.0'),
(1133, 'file_type_validation_message', 11, 'Only \'gif\', \'png\', \'jpg\', \'jpeg\' type images are allowed!', NULL, '5.3.0'),
(1134, 'file_size_validation_message', 11, 'Maximum allowed file size is 2MB', NULL, '5.3.0'),
(1135, 'share_post', 11, 'Share Post', NULL, '5.3.0'),
(1136, 'read_more', 11, 'Read More', NULL, '5.3.0'),
(1137, 'press_esc_to', 11, 'Press Esc to', NULL, '5.3.0'),
(1138, 'like', 11, 'Like', NULL, '5.3.0'),
(1139, 'no_posts_available', 11, 'No Posts Available', NULL, '5.3.0'),
(1140, 'no_work_anniversaries_for_the_next_30_days', 11, 'No work anniversaries for the next 30 days', NULL, '5.3.0'),
(1141, 'post_delete_confirmation_message', 11, 'The selected item will be permanently deleted. Are you sure you want to continue?', NULL, '5.3.0'),
(1142, 'invalid_video_url_message', 1, 'This URL is not a valid URL of a video or it is not supported by the system', NULL, '5.3.0'),
(1143, 'buzz_latest_posts', 8, 'Buzz Latest Posts', NULL, '5.3.0'),
(1144, 'no_posts_added', 8, 'No Posts Added', NULL, '5.3.0'),
(1145, 'getting_started_with_orangehrm', 14, 'Getting Started with OrangeHRM', NULL, '5.3.0'),
(1146, 'client_id', 2, 'Client ID', NULL, '5.4.0'),
(1147, 'client_secret', 2, 'Client Secret', NULL, '5.4.0'),
(1148, 'redirect_uri', 2, 'Redirect URI', NULL, '5.4.0'),
(1149, 'oauth_client_list', 2, 'OAuth Client List', NULL, '5.4.0'),
(1150, 'add_oauth_client', 2, 'Add OAuth Client', NULL, '5.4.0'),
(1151, 'edit_oauth_client', 2, 'Edit OAuth Client', NULL, '5.4.0'),
(1152, 'enable_client', 2, 'Enable Client', NULL, '5.4.0'),
(1153, 'confidential_client', 2, 'Confidential Client', NULL, '5.4.0'),
(1154, 'client_secret_warning_message', 2, 'Make sure to copy the client secret now. You won’t be able to see it again.', NULL, '5.4.0'),
(1155, 'password_min_length', 19, '{count,plural, one{Should have at least 1 character} other{Should have at least # characters}}', NULL, '5.4.0'),
(1156, 'password_max_length', 19, '{count,plural, one{Should not exceed 1 character} other{Should not exceed # characters}}', NULL, '5.4.0'),
(1157, 'password_n_lowercase_letters', 19, '{count,plural, one{Your password must contain minimum 1 lower-case letter} other{Your password must contain minimum # lower-case letters}}', NULL, '5.4.0'),
(1158, 'password_n_uppercase_letters', 19, '{count,plural, one{Your password must contain minimum 1 upper-case letter} other{Your password must contain minimum # upper-case letters}}', NULL, '5.4.0'),
(1159, 'password_n_numbers', 19, '{count,plural, one{Your password must contain minimum 1 number} other{Your password must contain minimum # numbers}}', NULL, '5.4.0'),
(1160, 'password_n_special_characters', 19, '{count,plural, one{Your password must contain minimum 1 special character} other{Your password must contain minimum # special characters}}', NULL, '5.4.0'),
(1161, 'password_spaces_not_allowed', 19, 'Your password should not contain spaces', NULL, '5.4.0'),
(1162, 'password_could_be_guessable', 19, 'Your password meets the minimum requirements, but it could be guessable', NULL, '5.4.0'),
(1163, 'change_weak_password', 19, 'Change Weak Password', NULL, '5.4.0'),
(1164, 'password_not_strong', 19, 'Your current password is weak. Please choose a stronger password.', NULL, '5.4.0'),
(1165, 'invalid_password_reset_code', 19, 'Invalid password reset code', NULL, '5.4.0'),
(1166, 'client_name_would_like_to', 19, '{clientName} would like to', NULL, '5.4.0'),
(1167, 'access_and_manage_your_data', 19, 'Access and manage your data', NULL, '5.4.0'),
(1168, 'perform_actions_on_your_behalf', 19, 'Perform actions on your behalf', NULL, '5.4.0'),
(1169, 'do_you_want_to_allow_access', 19, 'Do you want to allow access?', NULL, '5.4.0'),
(1170, 'deny', 19, 'Deny', NULL, '5.4.0'),
(1171, 'allow_access', 19, 'Allow Access', NULL, '5.4.0'),
(1172, 'this_request_is_invalid', 19, 'This request is invalid', NULL, '5.4.0'),
(1173, 'mobile_client_disabled_error', 19, 'Mobile app is not enabled. Please contact your OrangeHRM administrator.', NULL, '5.4.0'),
(1174, 'strong', 1, 'Strong', NULL, '5.4.0'),
(1175, 'help', 1, 'Help', NULL, '5.4.0'),
(1176, 'claim', 20, 'Claim', NULL, '5.5.0'),
(1177, 'events', 20, 'Events', NULL, '5.5.0'),
(1178, 'add_event', 20, 'Add Event', NULL, '5.5.0'),
(1179, 'edit_event', 20, 'Edit Event', NULL, '5.5.0'),
(1180, 'event_name', 20, 'Event Name', NULL, '5.5.0'),
(1181, 'expense_types', 20, 'Expense Types', NULL, '5.5.0'),
(1182, 'add_expense_type', 20, 'Add Expense Type', NULL, '5.5.0'),
(1183, 'edit_expense_type', 20, 'Edit Expense Type', NULL, '5.5.0'),
(1184, 'event', 20, 'Event', NULL, '5.5.0'),
(1185, 'create_claim_request', 20, 'Create Claim Request', NULL, '5.5.0'),
(1186, 'remarks', 20, 'Remarks', NULL, '5.5.0'),
(1187, 'create', 20, 'Create', NULL, '5.5.0'),
(1188, 'submit_claim', 20, 'Submit Claim', NULL, '5.5.0'),
(1189, 'reference_id', 20, 'Reference Id', NULL, '5.5.0'),
(1190, 'expenses', 20, 'Expenses', NULL, '5.5.0'),
(1191, 'expense_type', 20, 'Expense Type', NULL, '5.5.0'),
(1192, 'pay', 20, 'Pay', NULL, '5.5.0'),
(1193, 'add_expense', 20, 'Add Expense', NULL, '5.5.0'),
(1194, 'edit_expense', 20, 'Edit Expense', NULL, '5.5.0'),
(1195, 'should_be_a_valid_number', 20, 'Should be a valid number (xxx.xx)', NULL, '5.5.0'),
(1196, 'total_amount', 20, 'Total Amount ({currencyName}) : {totalAmount}', NULL, '5.5.0'),
(1197, 'submitted_date', 20, 'Submitted Date', NULL, '5.5.0'),
(1198, 'view_details', 20, 'View Details', NULL, '5.5.0'),
(1199, 'my_claims', 20, 'My Claims', NULL, '5.5.0'),
(1200, 'claim_module', 20, 'Claim Module', NULL, '5.5.0'),
(1201, 'initiated', 20, 'Initiated', NULL, '5.5.0'),
(1202, 'paid', 20, 'Paid', NULL, '5.5.0'),
(1203, 'assign_claim', 20, 'Assign Claim', NULL, '5.5.0'),
(1204, 'employee_claims', 20, 'Employee Claims', NULL, '5.5.0'),
(1205, 'page_under_development', 1, 'This page is currently under development.', NULL, '5.5.0'),
(1206, 'download_latest_release', 1, 'to download the latest stable release.', NULL, '5.5.0'),
(1207, 'clear', 1, 'Clear', NULL, '5.5.0'),
(1208, 'close', 1, 'Close', NULL, '5.5.0');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_i18n_translate`
--

CREATE TABLE `ohrm_i18n_translate` (
  `id` int(11) NOT NULL,
  `lang_string_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `customized` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `version` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ohrm_i18n_translate`
--

INSERT INTO `ohrm_i18n_translate` (`id`, `lang_string_id`, `language_id`, `value`, `customized`, `version`, `modified_at`) VALUES
(1, 87, 63, 'Добави', 0, NULL, NULL),
(2, 208, 63, 'Добавяне на прикачване', 0, NULL, NULL),
(3, 180, 63, 'Добавяне на служителите', 0, NULL, NULL),
(4, 503, 63, 'Добавено от', 0, NULL, NULL),
(5, 7, 63, 'Адрес', 0, NULL, NULL),
(6, 129, 63, 'Admin', 0, NULL, NULL),
(7, 530, 63, 'Възрастова група', 0, NULL, NULL),
(8, 143, 63, 'Позволява номера и само + / ()', 0, NULL, NULL),
(9, 125, 63, 'Вече съществува', 0, NULL, NULL),
(10, 434, 63, 'Размер', 0, NULL, NULL),
(11, 223, 63, 'Нанесете', 0, NULL, NULL),
(12, 573, 63, 'Присвояване Оставете', 0, NULL, NULL),
(13, 489, 63, 'Емисионни компоненти на заплатите', 0, NULL, NULL),
(14, 140, 63, 'Прикачен файл Размер на товара', 0, NULL, NULL),
(15, 286, 63, 'Посещаемост', 0, NULL, NULL),
(16, 313, 63, 'Участие Обобщение', 0, NULL, NULL),
(17, 224, 63, 'Обратно', 0, NULL, NULL),
(18, 92, 63, 'Отказ', 0, NULL, NULL),
(19, 291, 63, 'Кандидатите', 0, NULL, NULL),
(20, 248, 63, 'Смяна на паролата', 0, NULL, NULL),
(21, 186, 63, 'Коментар', 0, NULL, NULL),
(22, 191, 63, 'Коментари', 0, NULL, NULL),
(23, 496, 63, 'Компания', 0, NULL, NULL),
(24, 484, 63, 'Компетентност', 0, NULL, NULL),
(25, 264, 63, 'Конфигурация', 0, NULL, NULL),
(26, 317, 63, 'Конфигуриране', 0, NULL, NULL),
(27, 393, 63, 'Данни за контакт', 0, NULL, NULL),
(28, 413, 63, 'Договор Край Дата', 0, NULL, NULL),
(29, 412, 63, 'Дата на Договора', 0, NULL, NULL),
(30, 84, 63, 'Държава', 0, NULL, NULL),
(31, 102, 63, 'Валута', 0, NULL, NULL),
(32, 168, 63, 'Настоящи и бивши служители', 0, NULL, NULL),
(33, 170, 63, 'Текущи служители само', 0, NULL, NULL),
(34, 367, 63, 'Потребителски полета', 0, NULL, NULL),
(35, 287, 63, 'Клиентите', 0, NULL, NULL),
(36, 379, 63, 'Импортиране на данни', 0, NULL, NULL),
(37, 210, 63, 'Дата', 0, NULL, NULL),
(38, 502, 63, 'Дата на добавяне', 0, NULL, NULL),
(39, 401, 63, 'Дата на раждане', 0, NULL, NULL),
(40, 597, 63, 'Дни', 0, NULL, NULL),
(41, 330, 63, 'Изтриване на текущото', 0, NULL, NULL),
(42, 341, 63, 'Зависимите', 0, NULL, NULL),
(43, 101, 63, 'Описание', 0, NULL, NULL),
(44, 521, 63, 'Директен номер на депозит', 0, NULL, NULL),
(45, 522, 63, 'Директен Депозит Тип', 0, NULL, NULL),
(46, 436, 63, 'Директен депозит', 0, NULL, NULL),
(47, 150, 63, 'Хора с увреждания', 0, NULL, NULL),
(48, 455, 63, 'Покажат полетата', 0, NULL, NULL),
(49, 519, 63, 'Тип на документа', 0, NULL, NULL),
(50, 422, 63, 'Номер на шофьорска книжка', 0, NULL, NULL),
(51, 222, 63, 'Продължителност', 0, NULL, NULL),
(52, 98, 63, 'Редактирам', 0, NULL, NULL),
(53, 151, 63, 'Редактиране на прикачен файл', 0, NULL, NULL),
(54, 477, 63, 'Редактиране на имиграцията', 0, NULL, NULL),
(55, 488, 63, 'Редактиране Компонент Заплата', 0, NULL, NULL),
(56, 106, 63, 'Образование', 0, NULL, NULL),
(57, 481, 63, 'Разходомери за датата на преразглеждането', 0, NULL, NULL),
(58, 480, 63, 'Допустими Статус', 0, NULL, NULL),
(59, 340, 63, 'Спешни Контакти', 0, NULL, NULL),
(60, 218, 63, 'На служителите', 0, NULL, NULL),
(61, 515, 63, 'Име на служителите', 0, NULL, NULL),
(62, 163, 63, 'Служител Id', 0, NULL, NULL),
(63, 514, 63, 'Фамилия на служителите', 0, NULL, NULL),
(64, 269, 63, 'Служител Списък', 0, NULL, NULL),
(65, 516, 63, 'Име на служителите в Близкия', 0, NULL, NULL),
(66, 122, 63, 'Служител Име', 0, NULL, NULL),
(67, 285, 63, 'Наети Records', 0, NULL, NULL),
(68, 183, 63, 'Наети Доклади', 0, NULL, NULL),
(69, 282, 63, 'Наети работа на', 0, NULL, NULL),
(70, 142, 63, 'Статус в заетостта', 0, NULL, NULL),
(71, 149, 63, 'Разрешено', 0, NULL, NULL),
(72, 190, 63, 'Крайна дата', 0, NULL, NULL),
(73, 148, 63, 'ЕСС', 0, NULL, NULL),
(74, 347, 63, 'Очаквано формат: admin@example.com', 0, NULL, NULL),
(75, 172, 63, 'Срок на валидност', 0, NULL, NULL),
(76, 482, 63, 'Срок на валидност трябва да бъде след издадено дата', 0, NULL, NULL),
(77, 176, 63, 'Жена', 0, NULL, NULL),
(78, 202, 63, 'Име на файла', 0, NULL, NULL),
(79, 523, 63, 'Собствено име', 0, NULL, NULL),
(80, 483, 63, 'Плавност', 0, NULL, NULL),
(81, 215, 63, 'Петък', 0, NULL, NULL),
(82, 123, 63, 'От', 0, NULL, NULL),
(83, 427, 63, 'Пол', 0, NULL, NULL),
(84, 44, 63, 'Обща информация', 0, NULL, NULL),
(85, 540, 63, 'Ваканция', 0, NULL, NULL),
(86, 403, 63, 'Домашен телефон', 0, NULL, NULL),
(87, 164, 63, 'Id', 0, NULL, NULL),
(88, 342, 63, 'Имиграция', 0, NULL, NULL),
(89, 389, 63, 'Включете', 0, NULL, NULL),
(90, 207, 63, 'Включи Header', 0, NULL, NULL),
(91, 568, 63, 'Включване на бивши служители', 0, NULL, NULL),
(92, 408, 63, 'Издадена от', 0, NULL, NULL),
(93, 409, 63, 'Издаден Дата', 0, NULL, NULL),
(94, 258, 63, 'Работа', 0, NULL, NULL),
(95, 72, 63, 'Работа Категории', 0, NULL, NULL),
(96, 133, 63, 'Job Категория', 0, NULL, NULL),
(97, 200, 63, 'Работа Спецификация', 0, NULL, NULL),
(98, 166, 63, 'Длъжност', 0, NULL, NULL),
(99, 3, 63, 'Работа дялове', 0, NULL, NULL),
(100, 173, 63, 'Дата', 0, NULL, NULL),
(101, 329, 63, 'Запазване на текущия', 0, NULL, NULL),
(102, 193, 63, 'Език', 0, NULL, NULL),
(103, 110, 63, 'Езици', 0, NULL, NULL),
(104, 165, 63, 'Фамилия', 0, NULL, NULL),
(105, 229, 63, 'Оставете', 0, NULL, NULL),
(106, 621, 63, 'Оставете Баланс (дни)', 0, NULL, NULL),
(107, 577, 63, 'Оставете Списък', 0, NULL, NULL),
(108, 543, 63, 'Оставете Период', 0, NULL, NULL),
(109, 564, 63, 'Оставете Видове', 0, NULL, NULL),
(110, 105, 63, 'Ниво', 0, NULL, NULL),
(111, 497, 63, 'Разрешително', 0, NULL, NULL),
(112, 423, 63, 'Лиценз срок на годност', 0, NULL, NULL),
(113, 486, 63, 'Номер на лиценз', 0, NULL, NULL),
(114, 485, 63, 'Тип лиценз', 0, NULL, NULL),
(115, 77, 63, 'Лицензи', 0, NULL, NULL),
(116, 78, 63, 'Локализация', 0, NULL, NULL),
(117, 174, 63, 'Място', 0, NULL, NULL),
(118, 4, 63, 'Места', 0, NULL, NULL),
(119, 249, 63, 'Изход', 0, NULL, NULL),
(120, 175, 63, 'Мъж', 0, NULL, NULL),
(121, 426, 63, 'Семейно положение', 0, NULL, NULL),
(122, 416, 63, 'Членство', 0, NULL, NULL),
(123, 115, 63, 'Членства', 0, NULL, NULL),
(124, 171, 63, 'Mobile', 0, NULL, NULL),
(125, 266, 63, 'Модули', 0, NULL, NULL),
(126, 211, 63, 'Понеделник', 0, NULL, NULL),
(127, 314, 63, 'Отпуската ми', 0, NULL, NULL),
(128, 281, 63, 'Моите Records', 0, NULL, NULL),
(129, 280, 63, 'Моите работа на', 0, NULL, NULL),
(130, 82, 63, 'Име', 0, NULL, NULL),
(131, 42, 63, 'Националност', 0, NULL, NULL),
(132, 97, 63, 'Националност', 0, NULL, NULL),
(133, 94, 63, 'Не', 0, NULL, NULL),
(134, 256, 63, 'Бележки', 0, NULL, NULL),
(135, 407, 63, 'Брой', 0, NULL, NULL),
(136, 681, 63, 'Да включва само Одобрени работа на', 0, NULL, NULL),
(137, 442, 63, 'Допълнителни полета', 0, NULL, NULL),
(138, 262, 63, 'Организация', 0, NULL, NULL),
(139, 470, 63, 'Друг', 0, NULL, NULL),
(140, 321, 63, 'Други E-mail', 0, NULL, NULL),
(141, 421, 63, 'Други Id', 0, NULL, NULL),
(142, 720, 63, 'Минало на служителите', 0, NULL, NULL),
(143, 169, 63, 'Минали служители само', 0, NULL, NULL),
(144, 435, 63, 'Плати Честота', 0, NULL, NULL),
(145, 194, 63, 'Плати степен', 0, NULL, NULL),
(146, 58, 63, 'Обърнете клас', 0, NULL, NULL),
(147, 275, 63, 'Изпълнение', 0, NULL, NULL),
(148, 512, 63, 'Личен', 0, NULL, NULL),
(149, 271, 63, 'PIM', 0, NULL, NULL),
(150, 680, 63, 'Обхват на проекта Дата', 0, NULL, NULL),
(151, 261, 63, 'Информация за проекта', 0, NULL, NULL),
(152, 289, 63, 'Доклади по проекти на', 0, NULL, NULL),
(153, 288, 63, 'Проекти', 0, NULL, NULL),
(154, 284, 63, 'Punch In / Out', 0, NULL, NULL),
(155, 272, 63, 'Набиране', 0, NULL, NULL),
(156, 400, 63, 'Връзка', 0, NULL, NULL),
(157, 331, 63, 'Замяна на текущото', 0, NULL, NULL),
(158, 181, 63, 'Име на отчета', 0, NULL, NULL),
(159, 476, 63, 'Метод на отчитане', 0, NULL, NULL),
(160, 452, 63, 'Методи за докладване', 0, NULL, NULL),
(161, 270, 63, 'Доклади', 0, NULL, NULL),
(162, 130, 63, 'Задължително', 0, NULL, NULL),
(163, 85, 63, 'Проучване', 0, NULL, NULL),
(164, 493, 63, 'Маршрутен номер', 0, NULL, NULL),
(165, 343, 63, 'Заплата', 0, NULL, NULL),
(166, 433, 63, 'Заплата Компонент', 0, NULL, NULL),
(167, 216, 63, 'Събота', 0, NULL, NULL),
(168, 131, 63, 'Запази', 0, NULL, NULL),
(169, 524, 63, 'Резултат', 0, NULL, NULL),
(170, 86, 63, 'Търсене', 0, NULL, NULL),
(171, 156, 63, 'Изберете File', 0, NULL, NULL),
(172, 454, 63, 'Критериите за подбор', 0, NULL, NULL),
(173, 529, 63, 'Трудов стаж', 0, NULL, NULL),
(174, 137, 63, 'Трябва да бъде номер', 0, NULL, NULL),
(175, 179, 63, 'Трябва да бъде положително число', 0, NULL, NULL),
(176, 504, 63, 'Трябва да бъде в рамките на Min / Max стойности', 0, NULL, NULL),
(177, 203, 63, 'Размер', 0, NULL, NULL),
(178, 494, 63, 'Умение', 0, NULL, NULL),
(179, 118, 63, 'Умения', 0, NULL, NULL),
(180, 189, 63, 'Начална дата', 0, NULL, NULL),
(181, 144, 63, 'Начална дата трябва да бъде преди крайната дата', 0, NULL, NULL),
(182, 178, 63, 'Състояние', 0, NULL, NULL),
(183, 120, 63, 'Статус', 0, NULL, NULL),
(184, 302, 63, 'Структура', 0, NULL, NULL),
(185, 167, 63, 'Под звено', 0, NULL, NULL),
(186, 528, 63, 'Подчинените', 0, NULL, NULL),
(187, 418, 63, 'Размер на инвестициите', 0, NULL, NULL),
(188, 419, 63, 'Абонамент Започва Дата', 0, NULL, NULL),
(189, 417, 63, 'Абонамент Платено от', 0, NULL, NULL),
(190, 420, 63, 'Абонамент за подновяване Дата', 0, NULL, NULL),
(191, 255, 63, 'Съхранен успешно', 0, NULL, NULL),
(192, 254, 63, 'Успешно променен', 0, NULL, NULL),
(193, 217, 63, 'Неделя', 0, NULL, NULL),
(194, 392, 63, 'Ръководител', 0, NULL, NULL),
(195, 390, 63, 'Надзорен орган по Име', 0, NULL, NULL),
(196, 527, 63, 'Надзорници', 0, NULL, NULL),
(197, 462, 63, 'Прекратяване Причини', 0, NULL, NULL),
(198, 214, 63, 'Четвъртък', 0, NULL, NULL),
(199, 273, 63, 'Време', 0, NULL, NULL),
(200, 283, 63, 'Работа на', 0, NULL, NULL),
(201, 124, 63, 'За', 0, NULL, NULL),
(202, 195, 63, 'Към днешна дата трябва да бъде, след като от датата', 0, NULL, NULL),
(203, 212, 63, 'Вторник', 0, NULL, NULL),
(204, 154, 63, 'Тип', 0, NULL, NULL),
(205, 263, 63, 'Потребителите', 0, NULL, NULL),
(206, 290, 63, 'Свободни работни места', 0, NULL, NULL),
(207, 213, 63, 'Сряда', 0, NULL, NULL),
(208, 320, 63, 'Работен имейл', 0, NULL, NULL),
(209, 500, 63, 'Професионален опит', 0, NULL, NULL),
(210, 65, 63, 'Работят на смени', 0, NULL, NULL),
(211, 404, 63, 'Работа телефон', 0, NULL, NULL),
(212, 547, 63, 'Работна седмица', 0, NULL, NULL),
(213, 188, 63, 'Година', 0, NULL, NULL),
(214, 495, 63, 'Години на опит', 0, NULL, NULL),
(215, 93, 63, 'Да', 0, NULL, NULL),
(216, 241, 63, 'Паролите не съвпадат', 0, NULL, NULL),
(217, 228, 63, 'Добре', 0, NULL, NULL),
(218, 158, 63, 'Приема се до 1MB', 0, NULL, NULL),
(219, 121, 63, 'Потребителско име', 0, NULL, NULL),
(220, 238, 63, 'Парола', 0, NULL, NULL),
(221, 159, 63, 'Качи', 0, NULL, NULL),
(222, 353, 63, 'Общо', 0, NULL, NULL),
(223, 509, 63, 'Прекратяване Дата', 0, NULL, NULL),
(224, 510, 63, 'Прекратяване Причина', 0, NULL, NULL),
(225, 645, 63, 'Активност Име', 0, NULL, NULL),
(226, 107, 63, 'Добави образование', 0, NULL, NULL),
(227, 109, 63, 'Добавяне на език', 0, NULL, NULL),
(228, 112, 63, 'Добави Лиценз', 0, NULL, NULL),
(229, 117, 63, 'Добави умения', 0, NULL, NULL),
(230, 99, 63, 'Адрес Улица 1', 0, NULL, NULL),
(231, 100, 63, 'Адрес Street 2', 0, NULL, NULL),
(232, 83, 63, 'Град', 0, NULL, NULL),
(233, 240, 63, 'Потвърждение на паролата', 0, NULL, NULL),
(234, 644, 63, 'Копиране от', 0, NULL, NULL),
(235, 651, 63, 'Наименование на проекта', 0, NULL, NULL),
(236, 104, 63, 'Редактиране на образованието', 0, NULL, NULL),
(237, 108, 63, 'Редактиране Език', 0, NULL, NULL),
(238, 111, 63, 'Редактиране на лиценз', 0, NULL, NULL),
(239, 116, 63, 'Редактиране на умения', 0, NULL, NULL),
(240, 89, 63, 'Щат / Провинция', 0, NULL, NULL),
(241, 90, 63, 'Zip / Postal код', 0, NULL, NULL),
(242, 234, 63, 'Одобряване', 0, NULL, NULL),
(243, 604, 63, 'Планиран', 0, NULL, NULL),
(244, 91, 63, 'Внимание', 0, NULL, NULL),
(245, 201, 63, 'Прикачени файлове', 0, NULL, NULL),
(246, 155, 63, 'Изтегляне', 0, NULL, NULL),
(247, 95, 63, 'E-mail', 0, NULL, NULL),
(248, 310, 63, 'Извършва се от', 0, NULL, NULL),
(249, 235, 63, 'Отхвърли', 0, NULL, NULL),
(250, 632, 63, 'Отхвърлено', 0, NULL, NULL),
(251, 348, 63, 'Подайте', 0, NULL, NULL),
(252, 312, 63, 'Преглед', 0, NULL, NULL),
(253, 177, 63, 'Квалификационна', 0, NULL, NULL),
(254, 311, 63, 'Добавяне на друг', 0, NULL, NULL),
(255, 225, 63, 'Потвърдете', 0, NULL, NULL),
(256, 643, 63, 'Дейности', 0, NULL, NULL),
(257, 59, 63, 'Добави валути', 0, NULL, NULL),
(258, 647, 63, 'Добави клиенти', 0, NULL, NULL),
(259, 30, 63, 'Добави трудов статус', 0, NULL, NULL),
(260, 73, 63, 'Добави Категория работа', 0, NULL, NULL),
(261, 1, 63, 'Добави длъжност', 0, NULL, NULL),
(262, 6, 63, 'Добавяне място', 0, NULL, NULL),
(263, 114, 63, 'Добави членство', 0, NULL, NULL),
(264, 43, 63, 'Добави националност', 0, NULL, NULL),
(265, 53, 63, 'Добави Плати степен', 0, NULL, NULL),
(266, 691, 63, 'Добави проект', 0, NULL, NULL),
(267, 658, 63, 'Добави дейност по проекта', 0, NULL, NULL),
(268, 28, 63, 'Добавяне на абоната', 0, NULL, NULL),
(269, 61, 63, 'Добави потребител', 0, NULL, NULL),
(270, 76, 63, 'Добави работа на смени', 0, NULL, NULL),
(271, 69, 63, 'Присвоени Служителите', 0, NULL, NULL),
(272, 244, 63, 'По-добре', 0, NULL, NULL),
(273, 380, 63, 'Колона за да не трябва да се промени', 0, NULL, NULL),
(274, 650, 63, 'Копие Активност', 0, NULL, NULL),
(275, 465, 63, 'Настояща Парола', 0, NULL, NULL),
(276, 654, 63, 'Customer Name', 0, NULL, NULL),
(277, 80, 63, 'Формат на датата', 0, NULL, NULL),
(278, 384, 63, 'Всеки внос на файла трябва да бъдат конфигурирани за 100 записа или по-малко', 0, NULL, NULL),
(279, 54, 63, 'Редактиране на валута', 0, NULL, NULL),
(280, 675, 63, 'Редактиране на клиенти', 0, NULL, NULL),
(281, 29, 63, 'Редактиране трудов статус', 0, NULL, NULL),
(282, 74, 63, 'Редактиране Категория работа', 0, NULL, NULL),
(283, 2, 63, 'Редактиране длъжност', 0, NULL, NULL),
(284, 32, 63, 'Редактиране на местоположението', 0, NULL, NULL),
(285, 113, 63, 'Редактиране на членство', 0, NULL, NULL),
(286, 41, 63, 'Редактиране на Националност', 0, NULL, NULL),
(287, 57, 63, 'Редактиране Плати степен', 0, NULL, NULL),
(288, 678, 63, 'Редактиране на проекта', 0, NULL, NULL),
(289, 655, 63, 'Редактиране дейност по проекта', 0, NULL, NULL),
(290, 25, 63, 'Редактиране на абоната', 0, NULL, NULL),
(291, 60, 63, 'Редактиране на потребителя', 0, NULL, NULL),
(292, 62, 63, 'Редактиране работа на смени', 0, NULL, NULL),
(293, 96, 63, 'Факс', 0, NULL, NULL),
(294, 381, 63, 'Име и фамилия са задължителни', 0, NULL, NULL),
(295, 66, 63, 'Часа на ден', 0, NULL, NULL),
(296, 31, 63, 'Описание на длъжността', 0, NULL, NULL),
(297, 9, 63, 'Съобщение, изпратено като', 0, NULL, NULL),
(298, 56, 63, 'Максимална Заплата', 0, NULL, NULL),
(299, 55, 63, 'Минималната работна заплата', 0, NULL, NULL),
(300, 33, 63, 'Модул конфигурация', 0, NULL, NULL),
(301, 747, 63, 'За нова парола', 0, NULL, NULL),
(302, 653, 63, 'Не е избран дейности', 0, NULL, NULL),
(303, 652, 63, 'Няма възложените дейности', 0, NULL, NULL),
(304, 27, 63, 'Уведомление Вид', 0, NULL, NULL),
(305, 5, 63, 'Брой на заетите лица', 0, NULL, NULL),
(306, 45, 63, 'Име на организацията', 0, NULL, NULL),
(307, 14, 63, 'Път към Sendmail', 0, NULL, NULL),
(308, 88, 63, 'Телефон', 0, NULL, NULL),
(309, 657, 63, 'Проект', 0, NULL, NULL),
(310, 656, 63, 'Проект Admin', 0, NULL, NULL),
(311, 676, 63, 'Проект администратори', 0, NULL, NULL),
(312, 46, 63, 'Номер', 0, NULL, NULL),
(313, 10, 63, 'Метод на изпращане', 0, NULL, NULL),
(314, 63, 63, 'Преместване Име', 0, NULL, NULL),
(315, 19, 63, 'SMTP Парола', 0, NULL, NULL),
(316, 16, 63, 'SMTP Port', 0, NULL, NULL),
(317, 18, 63, 'SMTP Потребител', 0, NULL, NULL),
(318, 245, 63, 'Силната', 0, NULL, NULL),
(319, 24, 63, 'Абонати', 0, NULL, NULL),
(320, 75, 63, 'Потребители на системата', 0, NULL, NULL),
(321, 47, 63, 'Данъчен номер', 0, NULL, NULL),
(322, 23, 63, 'Тест E-mail Адрес', 0, NULL, NULL),
(323, 52, 63, 'Това звено ще бъде добавена под', 0, NULL, NULL),
(324, 20, 63, 'TLS', 0, NULL, NULL),
(325, 49, 63, 'Звеното Id', 0, NULL, NULL),
(326, 17, 63, 'Използвайте SMTP Authentication', 0, NULL, NULL),
(327, 243, 63, 'Много слаб', 0, NULL, NULL),
(328, 242, 63, 'Слаб', 0, NULL, NULL),
(329, 71, 63, 'Трябва да бъде по-висока от минималната работна заплата', 0, NULL, NULL),
(330, 382, 63, 'Всички полетата за дата трябва да бъде в ГГГГ-ММ-ДД формат', 0, NULL, NULL),
(331, 385, 63, 'Множество файлове за внос може да се изисква', 0, NULL, NULL),
(332, 570, 63, 'Нанесете Оставете', 0, NULL, NULL),
(333, 669, 63, 'Действия, извършени на по график', 0, NULL, NULL),
(334, 662, 63, 'Добави Row', 0, NULL, NULL),
(335, 648, 63, 'Добави график', 0, NULL, NULL),
(336, 704, 63, 'Участие Общо обобщен доклад', 0, NULL, NULL),
(337, 672, 63, 'Определете график Период', 0, NULL, NULL),
(338, 690, 63, 'Редактиране на график за', 0, NULL, NULL),
(339, 683, 63, 'Служител доклад', 0, NULL, NULL),
(340, 667, 63, 'Трябва да бъде по-малко от 24 и в HH: MM или десетичен формат', 0, NULL, NULL),
(341, 308, 63, 'Пт', 0, NULL, NULL),
(342, 304, 63, 'Пн', 0, NULL, NULL),
(343, 679, 63, 'Отчет за проекта', 0, NULL, NULL),
(344, 309, 63, 'Пет', 0, NULL, NULL),
(345, 649, 63, 'Изберете ден, за да създадете график', 0, NULL, NULL),
(346, 684, 63, 'Изберете служителите', 0, NULL, NULL),
(347, 303, 63, 'Слънце', 0, NULL, NULL),
(348, 307, 63, 'Чт', 0, NULL, NULL),
(349, 689, 63, 'График за', 0, NULL, NULL),
(350, 671, 63, 'График Период', 0, NULL, NULL),
(351, 670, 63, 'Работа на В очакване на действие', 0, NULL, NULL),
(352, 305, 63, 'Вт', 0, NULL, NULL),
(353, 306, 63, 'Омъжвам', 0, NULL, NULL),
(354, 666, 63, 'Изберете проект и дейност', 0, NULL, NULL),
(355, 660, 63, 'Няма работа на Намерени', 0, NULL, NULL),
(356, 694, 63, 'График Одобрени', 0, NULL, NULL),
(357, 693, 63, 'График Прекратено', 0, NULL, NULL),
(358, 668, 63, 'Общата сума трябва да бъде по-малко от 24 часа', 0, NULL, NULL),
(359, 491, 63, 'Номер на сметката', 0, NULL, NULL),
(360, 492, 63, 'Тип Сметка', 0, NULL, NULL),
(361, 513, 63, 'Активирайте Employement', 0, NULL, NULL),
(362, 378, 63, 'Добави персонализирано поле', 0, NULL, NULL),
(363, 506, 63, 'Добави зависимост', 0, NULL, NULL),
(364, 505, 63, 'Добави имиграцията', 0, NULL, NULL),
(365, 450, 63, 'Добави метод на отчитане', 0, NULL, NULL),
(366, 461, 63, 'Добави Причина Прекратяване', 0, NULL, NULL),
(367, 501, 63, 'Добави професионален опит', 0, NULL, NULL),
(368, 399, 63, 'Присвоени зависимите', 0, NULL, NULL),
(369, 402, 63, 'Емисионни Контакти Спешни', 0, NULL, NULL),
(370, 415, 63, 'Присвоени Членства', 0, NULL, NULL),
(371, 498, 63, 'Присвоени подчинените', 0, NULL, NULL),
(372, 499, 63, 'Присвоени надзорници', 0, NULL, NULL),
(373, 475, 63, 'Най-малко един телефонен номер се изисква', 0, NULL, NULL),
(374, 469, 63, 'Дете', 0, NULL, NULL),
(375, 414, 63, 'Договор Детайли', 0, NULL, NULL),
(376, 445, 63, 'Специфична за страната информация', 0, NULL, NULL),
(377, 441, 63, 'Създаване на вход', 0, NULL, NULL),
(378, 370, 63, 'Име на персонализирано поле', 0, NULL, NULL),
(379, 406, 63, 'Документ', 0, NULL, NULL),
(380, 526, 63, 'Падащо меню', 0, NULL, NULL),
(381, 374, 63, 'Редактиране на потребителски поле', 0, NULL, NULL),
(382, 467, 63, 'Редактиране на зависимост', 0, NULL, NULL),
(383, 474, 63, 'Редактирайте се свържете с аварийния', 0, NULL, NULL),
(384, 449, 63, 'Редактиране метод на отчитане', 0, NULL, NULL),
(385, 460, 63, 'Редактиране Причина Прекратяване', 0, NULL, NULL),
(386, 388, 63, 'Employee Information', 0, NULL, NULL),
(387, 377, 63, 'Въведете позволените опции, разделени със запетая', 0, NULL, NULL),
(388, 438, 63, 'Освобождаване', 0, NULL, NULL),
(389, 437, 63, 'Федерален данък', 0, NULL, NULL),
(390, 375, 63, 'Име на поле', 0, NULL, NULL),
(391, 372, 63, 'Тип на полето', 0, NULL, NULL),
(392, 205, 63, 'От дата трябва да бъде преди към днешна дата', 0, NULL, NULL),
(393, 473, 63, 'GPA / Резултат', 0, NULL, NULL),
(394, 471, 63, 'Институт', 0, NULL, NULL),
(395, 472, 63, 'Майор / Специализация', 0, NULL, NULL),
(396, 428, 63, 'Военна служба', 0, NULL, NULL),
(397, 478, 63, 'Паспорт', 0, NULL, NULL),
(398, 339, 63, 'Лични данни', 0, NULL, NULL),
(399, 468, 63, 'Моля, посочете', 0, NULL, NULL),
(400, 344, 63, 'Доклад за', 0, NULL, NULL),
(401, 371, 63, 'Екран', 0, NULL, NULL),
(402, 376, 63, 'Изберете Опции', 0, NULL, NULL),
(403, 443, 63, 'Покажи непрепоръчителен полета', 0, NULL, NULL),
(404, 444, 63, 'Покажи номер, Пушене и военната служба в Лични данни', 0, NULL, NULL),
(405, 447, 63, 'Покажи област SIN в лични детайли', 0, NULL, NULL),
(406, 446, 63, 'Покажи област SSN в лични детайли', 0, NULL, NULL),
(407, 448, 63, 'Показване на САЩ Данък Освобождаване меню', 0, NULL, NULL),
(408, 425, 63, 'SIN Брой', 0, NULL, NULL),
(409, 429, 63, 'Пушач', 0, NULL, NULL),
(410, 424, 63, 'SSN Брой', 0, NULL, NULL),
(411, 345, 63, 'Освобождаване от данъци', 0, NULL, NULL),
(412, 508, 63, 'Прекратяване Employement', 0, NULL, NULL),
(413, 525, 63, 'Текст или брой', 0, NULL, NULL),
(414, 439, 63, 'Безработицата членка', 0, NULL, NULL),
(415, 479, 63, 'Виза', 0, NULL, NULL),
(416, 440, 63, 'Работата на държавната', 0, NULL, NULL),
(417, 152, 63, 'Мерки', 0, NULL, NULL),
(418, 576, 63, 'Присвояване', 0, NULL, NULL),
(419, 545, 63, 'Текущ отпуск Период', 0, NULL, NULL),
(420, 712, 63, 'Продължителност (часове)', 0, NULL, NULL),
(421, 546, 63, 'След година', 0, NULL, NULL),
(422, 220, 63, 'От Дата', 0, NULL, NULL),
(423, 542, 63, 'Цял ден', 0, NULL, NULL),
(424, 630, 63, 'Половин ден', 0, NULL, NULL),
(425, 593, 63, 'Оставете Баланс', 0, NULL, NULL),
(426, 567, 63, 'Оставете Вид', 0, NULL, NULL),
(427, 581, 63, 'Списъка отпуската ми', 0, NULL, NULL),
(428, 571, 63, 'Няма отпуск Видове с разрешение баланс', 0, NULL, NULL),
(429, 631, 63, 'Неработен ден', 0, NULL, NULL),
(430, 620, 63, 'Броя на дните', 0, NULL, NULL),
(431, 605, 63, 'В очакване на одобрение', 0, NULL, NULL),
(432, 538, 63, 'Повтаря годишно', 0, NULL, NULL),
(433, 578, 63, 'Покажи Оставете със статут', 0, NULL, NULL),
(434, 603, 63, 'Взети', 0, NULL, NULL),
(435, 221, 63, 'Към днешна дата', 0, NULL, NULL),
(436, 628, 63, 'Не успяха да представят: Няма Работни дни Избрани', 0, NULL, NULL),
(437, 627, 63, 'Не е представил', 0, NULL, NULL),
(438, 562, 63, 'Добави Оставете Вид', 0, NULL, NULL),
(439, 563, 63, 'Редактиране Оставете Вид', 0, NULL, NULL),
(440, 706, 63, 'Удар в', 0, NULL, NULL),
(441, 710, 63, 'Punch в бележка', 0, NULL, NULL),
(442, 708, 63, 'Пробийте', 0, NULL, NULL),
(443, 711, 63, 'Пробийте Забележка', 0, NULL, NULL),
(444, 709, 63, 'Припокриващи се Records са открити', 0, NULL, NULL),
(445, 715, 63, 'Часовата зона', 0, NULL, NULL),
(446, 717, 63, 'В', 0, NULL, NULL),
(447, 718, 63, 'От', 0, NULL, NULL),
(448, 700, 63, 'Участие Конфигурация', 0, NULL, NULL),
(449, 701, 63, 'Служител може да се променя текущото време, когато пробиване /', 0, NULL, NULL),
(450, 702, 63, 'Служител може да редактира / изтривате собствените записи посещаемост', 0, NULL, NULL),
(451, 703, 63, 'Надзорен орган могат да добавят / редактиране / изтриване на записи на посещаемост на подчинените', 0, NULL, NULL),
(452, 714, 63, 'Присъствието ми записи', 0, NULL, NULL),
(453, 352, 63, 'Добавен успешно', 0, NULL, NULL),
(454, 696, 63, 'Удар време трябва да бъде по-висока, отколкото Punch във времето', 0, NULL, NULL),
(455, 736, 63, 'Потребителско име', 0, NULL, NULL),
(456, 737, 63, 'Парола', 0, NULL, NULL),
(457, 250, 63, 'Няма намерени резултати', 0, NULL, NULL),
(458, 698, 63, 'График представи', 0, NULL, NULL),
(459, 198, 63, 'Бащино име', 0, NULL, NULL),
(460, 197, 63, 'Собствено име', 0, NULL, NULL),
(461, 87, 89, 'Tilføj', 0, NULL, NULL),
(462, 208, 89, 'Tilføj vedhæftet fil', 0, NULL, NULL),
(463, 180, 89, 'Tilføj Medarbejder', 0, NULL, NULL),
(464, 503, 89, 'Tilføjet Af', 0, NULL, NULL),
(465, 7, 89, 'Adresse', 0, NULL, NULL),
(466, 129, 89, 'Admin', 0, NULL, NULL),
(467, 530, 89, 'Aldersgruppe', 0, NULL, NULL),
(468, 143, 89, 'Tillader tal og kun + - / ()', 0, NULL, NULL),
(469, 125, 89, 'Findes allerede', 0, NULL, NULL),
(470, 434, 89, 'Beløb', 0, NULL, NULL),
(471, 223, 89, 'Anvend', 0, NULL, NULL),
(472, 573, 89, 'Tildel fravær', 0, NULL, NULL),
(473, 489, 89, 'Tildelte Løn Komponenter', 0, NULL, NULL),
(474, 140, 89, 'Størrelse for vedhæftning overskredet', 0, NULL, NULL),
(475, 286, 89, 'Deltagelse', 0, NULL, NULL),
(476, 313, 89, 'Deltagelse Oversigt', 0, NULL, NULL),
(477, 224, 89, 'Tilbage', 0, NULL, NULL),
(478, 92, 89, 'Annuller', 0, NULL, NULL),
(479, 291, 89, 'Kandidater', 0, NULL, NULL),
(480, 248, 89, 'Skift adgangskode', 0, NULL, NULL),
(481, 186, 89, 'Kommentar', 0, NULL, NULL),
(482, 191, 89, 'Kommentarer', 0, NULL, NULL),
(483, 496, 89, 'Firma', 0, NULL, NULL),
(484, 484, 89, 'Kompetenceudvikling', 0, NULL, NULL),
(485, 264, 89, 'Konfiguration', 0, NULL, NULL),
(486, 317, 89, 'Konfigurer', 0, NULL, NULL),
(487, 393, 89, 'Kontakt detaljer', 0, NULL, NULL),
(488, 413, 89, 'Kontrakt slutdato', 0, NULL, NULL),
(489, 412, 89, 'Kontrakt startdato', 0, NULL, NULL),
(490, 84, 89, 'Land', 0, NULL, NULL),
(491, 102, 89, 'Valuta', 0, NULL, NULL),
(492, 168, 89, 'Nuværende og tidligere medarbejdere', 0, NULL, NULL),
(493, 170, 89, 'Kun aktuelle medarbejderne', 0, NULL, NULL),
(494, 367, 89, 'Brugerdefinerede felter', 0, NULL, NULL),
(495, 287, 89, 'Kunder', 0, NULL, NULL),
(496, 379, 89, 'Dataimport', 0, NULL, NULL),
(497, 210, 89, 'Dato', 0, NULL, NULL),
(498, 502, 89, 'Dato tilføjet', 0, NULL, NULL),
(499, 401, 89, 'Fødselsdato', 0, NULL, NULL),
(500, 597, 89, 'Dage', 0, NULL, NULL),
(501, 330, 89, 'Slet nuværende', 0, NULL, NULL),
(502, 341, 89, 'Pårørende', 0, NULL, NULL),
(503, 101, 89, 'Beskrivelse', 0, NULL, NULL),
(504, 521, 89, 'Kontonummer, direkte indbetaling', 0, NULL, NULL),
(505, 522, 89, 'Kontotype, direkte indbetaling', 0, NULL, NULL),
(506, 436, 89, 'Beløb, direkte indbetaling', 0, NULL, NULL),
(507, 150, 89, 'Deaktiveret', 0, NULL, NULL),
(508, 455, 89, 'Vis felter', 0, NULL, NULL),
(509, 519, 89, 'Dokumenttyper', 0, NULL, NULL),
(510, 422, 89, 'Kørekort', 0, NULL, NULL),
(511, 222, 89, 'Varighed', 0, NULL, NULL),
(512, 98, 89, 'Rediger', 0, NULL, NULL),
(513, 151, 89, 'Rediger vedhæftning', 0, NULL, NULL),
(514, 477, 89, 'Rediger indvandring', 0, NULL, NULL),
(515, 488, 89, 'Rediger Løn Komponent', 0, NULL, NULL),
(516, 106, 89, 'Uddannelse', 0, NULL, NULL),
(517, 481, 89, 'Kvalificeret anmeldelsedato', 0, NULL, NULL),
(518, 480, 89, 'Privilegerede status', 0, NULL, NULL),
(519, 340, 89, 'Kontakter ved nødsituation', 0, NULL, NULL),
(520, 218, 89, 'Medarbejder', 0, NULL, NULL),
(521, 515, 89, 'Medarbejder Fornavn', 0, NULL, NULL),
(522, 163, 89, 'Medarbejder-id', 0, NULL, NULL),
(523, 514, 89, 'Medarbejder Efternavn', 0, NULL, NULL),
(524, 269, 89, 'Medarbejder Liste', 0, NULL, NULL),
(525, 516, 89, 'Medarbejder Mellemnavn', 0, NULL, NULL),
(526, 122, 89, 'Medarbejder Navn', 0, NULL, NULL),
(527, 285, 89, 'Medarbejder Journal', 0, NULL, NULL),
(528, 183, 89, 'Medarbejder Rapporter', 0, NULL, NULL),
(529, 282, 89, 'Medarbejder Timesedler', 0, NULL, NULL),
(530, 142, 89, 'Beskæftigelsesstatus', 0, NULL, NULL),
(531, 149, 89, 'Aktiveret', 0, NULL, NULL),
(532, 190, 89, 'Slutdato', 0, NULL, NULL),
(533, 148, 89, 'Selvbetjening', 0, NULL, NULL),
(534, 347, 89, 'Forventet format: admin@example.com', 0, NULL, NULL),
(535, 172, 89, 'Udløbsdato', 0, NULL, NULL),
(536, 482, 89, 'Udløbsdato skal være efter udgivelsesdatoen', 0, NULL, NULL),
(537, 176, 89, 'Kvinde', 0, NULL, NULL),
(538, 202, 89, 'Filnavn', 0, NULL, NULL),
(539, 523, 89, 'Fornavn', 0, NULL, NULL),
(540, 483, 89, 'Flydende', 0, NULL, NULL),
(541, 215, 89, 'Fredag', 0, NULL, NULL),
(542, 123, 89, 'Fra', 0, NULL, NULL),
(543, 427, 89, 'Køn', 0, NULL, NULL),
(544, 44, 89, 'Generelle oplysninger', 0, NULL, NULL),
(545, 540, 89, 'Ferie- og helligdage', 0, NULL, NULL),
(546, 403, 89, 'Telefon (hjem)', 0, NULL, NULL),
(547, 164, 89, 'Id', 0, NULL, NULL),
(548, 342, 89, 'Indvandring', 0, NULL, NULL),
(549, 389, 89, 'Inkludér', 0, NULL, NULL),
(550, 207, 89, 'Inkludér hoved', 0, NULL, NULL),
(551, 568, 89, 'Medtag tidligere medarbejdere', 0, NULL, NULL),
(552, 408, 89, 'Udstedt af', 0, NULL, NULL),
(553, 409, 89, 'Udgivelses dato', 0, NULL, NULL),
(554, 258, 89, 'Job', 0, NULL, NULL),
(555, 72, 89, 'Stillingskategorier', 0, NULL, NULL),
(556, 133, 89, 'Stillingskategori', 0, NULL, NULL),
(557, 200, 89, 'Jobspecifikation', 0, NULL, NULL),
(558, 166, 89, 'Jobtitel', 0, NULL, NULL),
(559, 3, 89, 'Stillingsbetegnelser', 0, NULL, NULL),
(560, 173, 89, 'Tilmeldt dato', 0, NULL, NULL),
(561, 329, 89, 'Hold dig opdateret', 0, NULL, NULL),
(562, 193, 89, 'Sprog', 0, NULL, NULL),
(563, 110, 89, 'Sprog', 0, NULL, NULL),
(564, 165, 89, 'Efternavn', 0, NULL, NULL),
(565, 229, 89, 'Lad', 0, NULL, NULL),
(566, 621, 89, 'Ferie og fravær saldo (dage)', 0, NULL, NULL),
(567, 577, 89, 'Ferie og fravær liste', 0, NULL, NULL),
(568, 543, 89, 'Ferie og fravær periode', 0, NULL, NULL),
(569, 564, 89, 'Ferie og fravær typer', 0, NULL, NULL),
(570, 105, 89, 'Niveau', 0, NULL, NULL),
(571, 497, 89, 'Licens', 0, NULL, NULL),
(572, 423, 89, 'Licens Udløbsdato', 0, NULL, NULL),
(573, 486, 89, 'Licensnummer', 0, NULL, NULL),
(574, 485, 89, 'Licenstype', 0, NULL, NULL),
(575, 77, 89, 'Licenser', 0, NULL, NULL),
(576, 78, 89, 'Lokalisering', 0, NULL, NULL),
(577, 174, 89, 'Placering', 0, NULL, NULL),
(578, 4, 89, 'Steder', 0, NULL, NULL),
(579, 249, 89, 'Log', 0, NULL, NULL),
(580, 175, 89, 'Mand', 0, NULL, NULL),
(581, 426, 89, 'Civilstand', 0, NULL, NULL),
(582, 416, 89, 'Medlemskab', 0, NULL, NULL),
(583, 115, 89, 'Medlemskaber', 0, NULL, NULL),
(584, 171, 89, 'Mobil', 0, NULL, NULL),
(585, 266, 89, 'Moduler', 0, NULL, NULL),
(586, 211, 89, 'Mandag', 0, NULL, NULL),
(587, 314, 89, 'Mit Ferie og fravær', 0, NULL, NULL),
(588, 281, 89, 'Min journal', 0, NULL, NULL),
(589, 280, 89, 'Mine timesedler', 0, NULL, NULL),
(590, 82, 89, 'Navn', 0, NULL, NULL),
(591, 42, 89, 'Nationaliteter', 0, NULL, NULL),
(592, 97, 89, 'Nationalitet', 0, NULL, NULL),
(593, 94, 89, 'Nej', 0, NULL, NULL),
(594, 256, 89, 'Noter', 0, NULL, NULL),
(595, 407, 89, 'Nummer', 0, NULL, NULL),
(596, 681, 89, 'Medtag kun godkendte timesedler', 0, NULL, NULL),
(597, 442, 89, 'Valgfrie felter', 0, NULL, NULL),
(598, 262, 89, 'Organisation', 0, NULL, NULL),
(599, 470, 89, 'Andet', 0, NULL, NULL),
(600, 321, 89, 'Andre e-mail', 0, NULL, NULL),
(601, 421, 89, 'Andet Id', 0, NULL, NULL),
(602, 720, 89, 'Tidligere medarbejder', 0, NULL, NULL),
(603, 169, 89, 'Kun tidligere medarbejdere', 0, NULL, NULL),
(604, 435, 89, 'Løn frekvens', 0, NULL, NULL),
(605, 194, 89, 'Lønniveau', 0, NULL, NULL),
(606, 58, 89, 'Lønniveauer', 0, NULL, NULL),
(607, 275, 89, 'Præstation', 0, NULL, NULL),
(608, 512, 89, 'Personlig', 0, NULL, NULL),
(609, 271, 89, 'PIM', 0, NULL, NULL),
(610, 680, 89, 'Projekt Datointerval', 0, NULL, NULL),
(611, 261, 89, 'Projekt Info', 0, NULL, NULL),
(612, 289, 89, 'Projekt rapporter', 0, NULL, NULL),
(613, 288, 89, 'Projekter', 0, NULL, NULL),
(614, 284, 89, 'Punch In / Out', 0, NULL, NULL),
(615, 272, 89, 'Rekruttering', 0, NULL, NULL),
(616, 400, 89, 'Relationship', 0, NULL, NULL),
(617, 331, 89, 'Erstatte den aktuelle', 0, NULL, NULL),
(618, 181, 89, 'Rapport Navn', 0, NULL, NULL),
(619, 476, 89, 'Rapporteringsmetode', 0, NULL, NULL),
(620, 452, 89, 'Rapporteringsmetoder', 0, NULL, NULL),
(621, 270, 89, 'Rapporter', 0, NULL, NULL),
(622, 130, 89, 'Påkrævet', 0, NULL, NULL),
(623, 85, 89, 'Nulstil', 0, NULL, NULL),
(624, 493, 89, 'Routing Number', 0, NULL, NULL),
(625, 343, 89, 'Løn', 0, NULL, NULL),
(626, 433, 89, 'Løn Komponent', 0, NULL, NULL),
(627, 216, 89, 'Lørdag', 0, NULL, NULL),
(628, 131, 89, 'Gem', 0, NULL, NULL),
(629, 524, 89, 'Score', 0, NULL, NULL),
(630, 86, 89, 'Søg', 0, NULL, NULL),
(631, 156, 89, 'Vælg filer', 0, NULL, NULL),
(632, 454, 89, 'Udvælgelseskriterier', 0, NULL, NULL),
(633, 529, 89, 'Tjenesteperiode', 0, NULL, NULL),
(634, 137, 89, 'Skal være et tal', 0, NULL, NULL),
(635, 179, 89, 'Skal være et positivt tal', 0, NULL, NULL),
(636, 504, 89, 'Skal være inden for Min / Max værdier', 0, NULL, NULL),
(637, 203, 89, 'Størrelse', 0, NULL, NULL),
(638, 494, 89, 'Evner', 0, NULL, NULL),
(639, 118, 89, 'Skills', 0, NULL, NULL),
(640, 189, 89, 'Startdato', 0, NULL, NULL),
(641, 144, 89, 'Startdato skal være, før slutdato', 0, NULL, NULL),
(642, 178, 89, 'Stat', 0, NULL, NULL),
(643, 120, 89, 'Status', 0, NULL, NULL),
(644, 302, 89, 'Struktur', 0, NULL, NULL),
(645, 167, 89, 'Sub Unit', 0, NULL, NULL),
(646, 528, 89, 'Underordnede', 0, NULL, NULL),
(647, 418, 89, 'Abonnementsbeløb', 0, NULL, NULL),
(648, 419, 89, 'Abonnement startdato', 0, NULL, NULL),
(649, 417, 89, 'Abonnement indbetalt af', 0, NULL, NULL),
(650, 420, 89, 'Abonnement fornyelsesdato', 0, NULL, NULL),
(651, 255, 89, 'Gemt succesfuldt', 0, NULL, NULL),
(652, 254, 89, 'Opdateret succesfuldt', 0, NULL, NULL),
(653, 217, 89, 'Søndag', 0, NULL, NULL),
(654, 392, 89, 'Supervisor', 0, NULL, NULL),
(655, 390, 89, 'Supervisor Navn', 0, NULL, NULL),
(656, 527, 89, 'Vejledere', 0, NULL, NULL),
(657, 462, 89, 'Årsag til afslutning', 0, NULL, NULL),
(658, 214, 89, 'Torsdag', 0, NULL, NULL),
(659, 273, 89, 'Tid', 0, NULL, NULL),
(660, 283, 89, 'Timesedler', 0, NULL, NULL),
(661, 124, 89, 'Til', 0, NULL, NULL),
(662, 195, 89, 'Til dato skal være efter fra dato', 0, NULL, NULL),
(663, 212, 89, 'Tirsdag', 0, NULL, NULL),
(664, 154, 89, 'Type', 0, NULL, NULL),
(665, 263, 89, 'Brugere', 0, NULL, NULL),
(666, 290, 89, 'Ledige stillinger', 0, NULL, NULL),
(667, 213, 89, 'Onsdag', 0, NULL, NULL),
(668, 320, 89, 'E-mail arbejde', 0, NULL, NULL),
(669, 500, 89, 'Erhvervsmæssig erfaring', 0, NULL, NULL),
(670, 65, 89, 'Vagter', 0, NULL, NULL),
(671, 404, 89, 'Telefon arbejde ', 0, NULL, NULL),
(672, 547, 89, 'Arbejdsuge', 0, NULL, NULL),
(673, 188, 89, 'År', 0, NULL, NULL),
(674, 495, 89, 'Års erfaring', 0, NULL, NULL),
(675, 93, 89, 'Ja', 0, NULL, NULL),
(676, 241, 89, 'Passwords matcher ikke', 0, NULL, NULL),
(677, 228, 89, 'Ok', 0, NULL, NULL),
(678, 158, 89, 'Accepterer op til 1 MB', 0, NULL, NULL),
(679, 121, 89, 'Brugernavn', 0, NULL, NULL),
(680, 238, 89, 'Adgangskode', 0, NULL, NULL),
(681, 159, 89, 'Upload', 0, NULL, NULL),
(682, 353, 89, 'Total', 0, NULL, NULL),
(683, 509, 89, 'Opsigelsesdato', 0, NULL, NULL),
(684, 510, 89, 'Opsigelsesårsag', 0, NULL, NULL),
(685, 645, 89, 'Aktivitetsnavn', 0, NULL, NULL),
(686, 107, 89, 'Tilføj uddannelse', 0, NULL, NULL),
(687, 109, 89, 'Tilføj sprog', 0, NULL, NULL),
(688, 112, 89, 'Tilføj license', 0, NULL, NULL),
(689, 117, 89, 'Tilføj færdighed', 0, NULL, NULL),
(690, 99, 89, 'Adresse Gade 1', 0, NULL, NULL),
(691, 100, 89, 'Adresse Gade 2', 0, NULL, NULL),
(692, 83, 89, 'By', 0, NULL, NULL),
(693, 240, 89, 'Bekræft adgangskode', 0, NULL, NULL),
(694, 644, 89, 'Kopiér fra', 0, NULL, NULL),
(695, 651, 89, 'Projekt Navn', 0, NULL, NULL),
(696, 104, 89, 'Rediger uddannelse', 0, NULL, NULL),
(697, 108, 89, 'Rediger sprog', 0, NULL, NULL),
(698, 111, 89, 'Rediger License', 0, NULL, NULL),
(699, 116, 89, 'Rediger færdighed', 0, NULL, NULL),
(700, 89, 89, 'Stat / provins', 0, NULL, NULL),
(701, 90, 89, 'Zip / Postnummer', 0, NULL, NULL),
(702, 234, 89, 'Godkend', 0, NULL, NULL),
(703, 604, 89, 'Planlagt', 0, NULL, NULL),
(704, 91, 89, 'Bemærk', 0, NULL, NULL),
(705, 201, 89, 'Tilbehør', 0, NULL, NULL),
(706, 155, 89, 'Download', 0, NULL, NULL),
(707, 95, 89, 'E-mail', 0, NULL, NULL),
(708, 310, 89, 'Udføres af', 0, NULL, NULL),
(709, 235, 89, 'Afvis', 0, NULL, NULL),
(710, 632, 89, 'Afvist', 0, NULL, NULL),
(711, 348, 89, 'Indsend', 0, NULL, NULL),
(712, 312, 89, 'Vis', 0, NULL, NULL),
(713, 274, 89, 'Min info', 0, NULL, NULL),
(714, 177, 89, 'Kvalifikationer', 0, NULL, NULL),
(715, 311, 89, 'Tilføj en anden', 0, NULL, NULL),
(716, 225, 89, 'Bekræft', 0, NULL, NULL),
(717, 643, 89, 'Aktiviteter', 0, NULL, NULL),
(718, 59, 89, 'Tilføj Valuta', 0, NULL, NULL),
(719, 647, 89, 'Tilføj Kunde', 0, NULL, NULL),
(720, 30, 89, 'Tilføj Beskæftigelsesstatus', 0, NULL, NULL),
(721, 73, 89, 'Tilføj Jobkategori', 0, NULL, NULL),
(722, 1, 89, 'Tilføj Stillingsbetegnelse', 0, NULL, NULL),
(723, 6, 89, 'Tilføj Placering', 0, NULL, NULL),
(724, 114, 89, 'Tilføj Medlemskab', 0, NULL, NULL),
(725, 43, 89, 'Tilføj Nationalitet', 0, NULL, NULL),
(726, 53, 89, 'Tilføj Lønramme', 0, NULL, NULL),
(727, 691, 89, 'Tilføj Projekt', 0, NULL, NULL),
(728, 658, 89, 'Tilføj Projektaktivitet', 0, NULL, NULL),
(729, 28, 89, 'Tilføj Abonnement', 0, NULL, NULL),
(730, 61, 89, 'Tilføj Bruger', 0, NULL, NULL),
(731, 76, 89, 'Tilføj Arbejdsskift', 0, NULL, NULL),
(732, 69, 89, 'Tildelte Medarbejdere', 0, NULL, NULL),
(733, 244, 89, 'Bedre', 0, NULL, NULL),
(734, 380, 89, 'Kolonne orden bør ikke ændres', 0, NULL, NULL),
(735, 650, 89, 'Kopier Aktivitet', 0, NULL, NULL),
(736, 465, 89, 'Nuværende adgangskode', 0, NULL, NULL),
(737, 654, 89, 'Kundenavn', 0, NULL, NULL),
(738, 80, 89, 'Datoformat', 0, NULL, NULL),
(739, 384, 89, 'Hver import fil skal konfigureres til 100 poster eller mindre', 0, NULL, NULL),
(740, 54, 89, 'Rediger Valuta', 0, NULL, NULL),
(741, 675, 89, 'Rediger Kunde', 0, NULL, NULL),
(742, 29, 89, 'Rediger Beskæftigelse status', 0, NULL, NULL),
(743, 74, 89, 'Rediger Job Kategori', 0, NULL, NULL),
(744, 2, 89, 'Rediger Stillingsbetegnelse', 0, NULL, NULL),
(745, 32, 89, 'Rediger Placering', 0, NULL, NULL),
(746, 113, 89, 'Rediger Medlemskab', 0, NULL, NULL),
(747, 41, 89, 'Rediger Nationalitet', 0, NULL, NULL),
(748, 57, 89, 'Rediger Lønramme', 0, NULL, NULL),
(749, 678, 89, 'Rediger Project', 0, NULL, NULL),
(750, 655, 89, 'Rediger Projekt Aktivitet', 0, NULL, NULL),
(751, 25, 89, 'Rediger Subscriber', 0, NULL, NULL),
(752, 60, 89, 'Rediger Bruger', 0, NULL, NULL),
(753, 62, 89, 'Rediger arbejdsskift', 0, NULL, NULL),
(754, 96, 89, 'Fax', 0, NULL, NULL),
(755, 381, 89, 'Fornavn og Efternavn er obligatoriske', 0, NULL, NULL),
(756, 66, 89, 'Timer per dag', 0, NULL, NULL),
(757, 31, 89, 'Jobbeskrivelse', 0, NULL, NULL),
(758, 9, 89, 'Mail Sendt som', 0, NULL, NULL),
(759, 56, 89, 'Maksimal Løn', 0, NULL, NULL),
(760, 55, 89, 'Mindste Løn', 0, NULL, NULL),
(761, 33, 89, 'Modulkonfiguration', 0, NULL, NULL),
(762, 747, 89, 'Ny adgangskode', 0, NULL, NULL),
(763, 653, 89, 'Ingen udvalgte aktiviteter', 0, NULL, NULL),
(764, 652, 89, 'Ingen tildelt aktiviteter', 0, NULL, NULL),
(765, 27, 89, 'Anmeldelsestype', 0, NULL, NULL),
(766, 5, 89, 'Antal medarbejdere', 0, NULL, NULL),
(767, 45, 89, 'Organisationens navn', 0, NULL, NULL),
(768, 14, 89, 'Sti til Sendmail', 0, NULL, NULL),
(769, 88, 89, 'Telefon', 0, NULL, NULL),
(770, 657, 89, 'Projekt', 0, NULL, NULL),
(771, 656, 89, 'Projekt Admin', 0, NULL, NULL),
(772, 676, 89, 'Projekt Admins', 0, NULL, NULL),
(773, 46, 89, 'Registreringsnummer', 0, NULL, NULL),
(774, 10, 89, 'Sende Metode', 0, NULL, NULL),
(775, 63, 89, 'Skift navn', 0, NULL, NULL),
(776, 19, 89, 'SMTP-adgangskode', 0, NULL, NULL),
(777, 16, 89, 'SMTP Port', 0, NULL, NULL),
(778, 18, 89, 'SMTP-brugernavn', 0, NULL, NULL),
(779, 245, 89, 'Stærkest', 0, NULL, NULL),
(780, 24, 89, 'Abonnenter', 0, NULL, NULL),
(781, 75, 89, 'Systembrugere', 0, NULL, NULL),
(782, 47, 89, 'Skat ID', 0, NULL, NULL),
(783, 23, 89, 'Test e-mail adresse', 0, NULL, NULL),
(784, 52, 89, 'Denne enhed vil blive tilføjet under', 0, NULL, NULL),
(785, 20, 89, 'TLS', 0, NULL, NULL),
(786, 49, 89, 'Unit Id', 0, NULL, NULL),
(787, 17, 89, 'Brug SMTP-godkendelse', 0, NULL, NULL),
(788, 243, 89, 'Meget svag', 0, NULL, NULL),
(789, 242, 89, 'Svag', 0, NULL, NULL),
(790, 71, 89, 'Skal være højere end mindstelønnen', 0, NULL, NULL),
(791, 382, 89, 'Alle datofelter skal være i ÅÅÅÅ-MM-DD format', 0, NULL, NULL),
(792, 385, 89, 'Flere importere filer kan være påkrævet', 0, NULL, NULL),
(793, 570, 89, 'Anvend Ferie og Fravær', 0, NULL, NULL),
(794, 669, 89, 'Handlinger, der udføres på timeseddel', 0, NULL, NULL),
(795, 662, 89, 'Tilføj række', 0, NULL, NULL),
(796, 648, 89, 'Tilføj timeseddel', 0, NULL, NULL),
(797, 704, 89, 'Deltagelse alt sammenfattende rapport', 0, NULL, NULL),
(798, 672, 89, 'Definer periode for timeseddel ', 0, NULL, NULL),
(799, 690, 89, 'Rediger timeseddel for', 0, NULL, NULL),
(800, 683, 89, 'Medarbejderrapport', 0, NULL, NULL),
(801, 667, 89, 'Bør være mindre end 24 og i TT: MM eller decimalformat', 0, NULL, NULL),
(802, 308, 89, 'Fre', 0, NULL, NULL),
(803, 304, 89, 'Man', 0, NULL, NULL),
(804, 679, 89, 'Projektrapport', 0, NULL, NULL),
(805, 309, 89, 'Sat', 0, NULL, NULL),
(806, 649, 89, 'Vælg en dag til oprettelse af timeseddel', 0, NULL, NULL),
(807, 684, 89, 'Vælg medarbejder', 0, NULL, NULL),
(808, 303, 89, 'Søn', 0, NULL, NULL),
(809, 307, 89, 'Tor', 0, NULL, NULL),
(810, 689, 89, 'Timeseddel til', 0, NULL, NULL),
(811, 671, 89, 'Timeseddel Periode', 0, NULL, NULL),
(812, 670, 89, 'Timesedler verserende retssag', 0, NULL, NULL),
(813, 305, 89, 'Tir', 0, NULL, NULL),
(814, 306, 89, 'Ons', 0, NULL, NULL),
(815, 666, 89, 'Vælg et projekt og en aktivitet', 0, NULL, NULL),
(816, 660, 89, 'Ingen Timesedler fundet', 0, NULL, NULL),
(817, 694, 89, 'Timeseddel Godkendt', 0, NULL, NULL),
(818, 693, 89, 'Timeseddel Afvist', 0, NULL, NULL),
(819, 668, 89, 'Samlet skal være mindre end 24 timer', 0, NULL, NULL),
(820, 491, 89, 'Kontonummer', 0, NULL, NULL),
(821, 492, 89, 'Kontotype', 0, NULL, NULL),
(822, 513, 89, 'Aktiver ansættelse', 0, NULL, NULL),
(823, 378, 89, 'Tilføj brugerdefineret felt', 0, NULL, NULL),
(824, 506, 89, 'Tilføj Afhængig', 0, NULL, NULL),
(825, 505, 89, 'Tilføj Indvandring', 0, NULL, NULL),
(826, 450, 89, 'Tilføj Rapporteringsmetode', 0, NULL, NULL),
(827, 461, 89, 'Tilføj Opsigelsesårsag', 0, NULL, NULL),
(828, 501, 89, 'Tilføj Erhvervserfaring', 0, NULL, NULL),
(829, 399, 89, 'Tildelte underordnede', 0, NULL, NULL),
(830, 402, 89, 'Tildelte Nødkontakter', 0, NULL, NULL),
(831, 415, 89, 'Tildelte Medlemsskaber', 0, NULL, NULL),
(832, 498, 89, 'Tildelte Underordnede', 0, NULL, NULL),
(833, 499, 89, 'Tildelte Vejledere', 0, NULL, NULL),
(834, 475, 89, 'Mindst ét ​​telefonnummer er påkrævet', 0, NULL, NULL),
(835, 469, 89, 'Barn', 0, NULL, NULL),
(836, 414, 89, 'Kontrakt Detaljer', 0, NULL, NULL),
(837, 445, 89, 'Landespecifikke oplysninger', 0, NULL, NULL),
(838, 441, 89, 'Opret login Detaljer', 0, NULL, NULL),
(839, 370, 89, 'Tilpasset Feltnavn', 0, NULL, NULL),
(840, 406, 89, 'Dokument', 0, NULL, NULL),
(841, 526, 89, 'Drop Down', 0, NULL, NULL),
(842, 374, 89, 'Redigér brugerdefineret felt', 0, NULL, NULL),
(843, 467, 89, 'Edit Afhængig', 0, NULL, NULL),
(844, 474, 89, 'Rediger nødkontakt', 0, NULL, NULL),
(845, 449, 89, 'Rediger Rapporteringsmetode', 0, NULL, NULL),
(846, 460, 89, 'Rediger Opsigelse Årsag', 0, NULL, NULL),
(847, 388, 89, 'Medarbejder Information', 0, NULL, NULL),
(848, 377, 89, 'Indtast tilladte valgmuligheder adskilt af komma', 0, NULL, NULL),
(849, 438, 89, 'Undtagelser', 0, NULL, NULL),
(850, 437, 89, 'Federal Income Tax', 0, NULL, NULL),
(851, 375, 89, 'Feltnavn', 0, NULL, NULL),
(852, 372, 89, 'Felttype', 0, NULL, NULL),
(853, 205, 89, 'Fra dato skal være før til dato', 0, NULL, NULL),
(854, 473, 89, 'GPA / Score', 0, NULL, NULL),
(855, 471, 89, 'Institut', 0, NULL, NULL),
(856, 472, 89, 'Videregående uddannelse/ Specialisering', 0, NULL, NULL),
(857, 428, 89, 'Militærtjeneste', 0, NULL, NULL),
(858, 478, 89, 'Pas', 0, NULL, NULL),
(859, 339, 89, 'Personlige oplysninger', 0, NULL, NULL),
(860, 468, 89, 'Angiv', 0, NULL, NULL),
(861, 344, 89, 'Rapport til', 0, NULL, NULL),
(862, 371, 89, 'Skærm', 0, NULL, NULL),
(863, 376, 89, 'Vælg Valgmuligheder', 0, NULL, NULL),
(864, 443, 89, 'Vis frabedte felter', 0, NULL, NULL),
(865, 444, 89, 'Vis kaldenavn, ryger og værnepligt i personlige oplysninger', 0, NULL, NULL),
(866, 447, 89, 'Vis CPR nummerfelt i personlige oplysninger', 0, NULL, NULL),
(867, 446, 89, 'Vis CPR nummerfelt i personlige oplysninger', 0, NULL, NULL),
(868, 448, 89, 'Vis amerikanske skattefritagelser menuen', 0, NULL, NULL),
(869, 425, 89, 'CPR nummer', 0, NULL, NULL),
(870, 429, 89, 'Ryger', 0, NULL, NULL),
(871, 424, 89, 'CPR Nummer', 0, NULL, NULL),
(872, 345, 89, 'Afgiftsfritagelse', 0, NULL, NULL),
(873, 508, 89, 'Afslut ansættelse', 0, NULL, NULL),
(874, 525, 89, 'Tekst eller tal', 0, NULL, NULL),
(875, 439, 89, 'Arbejdsløshed tilstand', 0, NULL, NULL),
(876, 479, 89, 'Visa', 0, NULL, NULL),
(877, 440, 89, 'Arbejde State', 0, NULL, NULL),
(878, 152, 89, 'Handlinger', 0, NULL, NULL),
(879, 576, 89, 'Tildel', 0, NULL, NULL),
(880, 545, 89, 'Aktuel orlov', 0, NULL, NULL),
(881, 712, 89, 'Varighed (timer)', 0, NULL, NULL),
(882, 546, 89, 'Efter År', 0, NULL, NULL),
(883, 220, 89, 'Fra Dato', 0, NULL, NULL),
(884, 542, 89, 'Fuld dag', 0, NULL, NULL),
(885, 630, 89, 'Halv Day', 0, NULL, NULL),
(886, 593, 89, 'Ferie og fravær saldo', 0, NULL, NULL),
(887, 567, 89, 'Ferie og fraværstype', 0, NULL, NULL),
(888, 581, 89, 'Min ferie og fraværsliste', 0, NULL, NULL),
(889, 571, 89, 'Ingen ferie og fraværstyper med ferie og fraværssaldo', 0, NULL, NULL),
(890, 631, 89, 'Fridag', 0, NULL, NULL),
(891, 620, 89, 'Antal dage', 0, NULL, NULL),
(892, 605, 89, 'Indtil godkendelse', 0, NULL, NULL),
(893, 538, 89, 'Gentager Årligt', 0, NULL, NULL),
(894, 578, 89, 'Vis ferie og fravær med status', 0, NULL, NULL),
(895, 603, 89, 'Taget', 0, NULL, NULL),
(896, 221, 89, 'Til dato', 0, NULL, NULL),
(897, 628, 89, 'Undlod at indsende: Ingen Arbejdsdage Selected', 0, NULL, NULL),
(898, 627, 89, 'Undlod at indsende', 0, NULL, NULL),
(899, 562, 89, 'Tilføj Lad Type', 0, NULL, NULL),
(900, 563, 89, 'Rediger Lad Type', 0, NULL, NULL),
(901, 706, 89, 'Stempel ind', 0, NULL, NULL),
(902, 710, 89, 'Stempel ind note', 0, NULL, NULL),
(903, 708, 89, 'Stempel ud', 0, NULL, NULL),
(904, 711, 89, 'Stempel ud Note', 0, NULL, NULL),
(905, 709, 89, 'Overlappende Records fundet', 0, NULL, NULL),
(906, 715, 89, 'Tidszone', 0, NULL, NULL),
(907, 717, 89, 'Ind', 0, NULL, NULL),
(908, 718, 89, 'Ud', 0, NULL, NULL),
(909, 700, 89, 'Deltagelse Konfiguration', 0, NULL, NULL),
(910, 701, 89, 'Medarbejder kan ændre aktuelle tidspunkt, hvor stansning ind / ud', 0, NULL, NULL),
(911, 702, 89, 'Medarbejder kan redigere / slette egne fremmødekontrol', 0, NULL, NULL),
(912, 703, 89, 'Supervisor kan tilføje / redigere / slette fremmødekontrol af underordnede', 0, NULL, NULL),
(913, 714, 89, 'Min deltagelseregistrering', 0, NULL, NULL),
(914, 352, 89, 'Slettet succesfuldt', 0, NULL, NULL),
(915, 696, 89, 'Tiden for \'Stempel ud\' bør være højere end tidspunkt for Stempel ind', 0, NULL, NULL),
(916, 736, 89, 'Brugernavn', 0, NULL, NULL),
(917, 737, 89, 'Adgangskode', 0, NULL, NULL),
(918, 250, 89, 'Ingen poster fundet', 0, NULL, NULL),
(919, 698, 89, 'Timeseddel Indsendt', 0, NULL, NULL),
(920, 198, 89, 'Mellemnavn', 0, NULL, NULL),
(921, 197, 89, 'Fornavn', 0, NULL, NULL),
(922, 87, 6, 'Hinzufügen', 0, NULL, NULL),
(923, 208, 6, 'Anhang hinzufügen', 0, NULL, NULL),
(924, 180, 6, 'Mitarbeiter hinzufügen', 0, NULL, NULL),
(925, 503, 6, 'Hinzugefügt von', 0, NULL, NULL),
(926, 7, 6, 'Adresse', 0, NULL, NULL),
(927, 129, 6, 'Admin', 0, NULL, NULL),
(928, 530, 6, 'Altersgruppe', 0, NULL, NULL),
(929, 143, 6, 'Nur Zahlen und + - / ( ) sind erlaubt', 0, NULL, NULL),
(930, 125, 6, 'Bereits vorhanden', 0, NULL, NULL),
(931, 434, 6, 'Betrag', 0, NULL, NULL),
(932, 223, 6, 'Antrag stellen', 0, NULL, NULL),
(933, 573, 6, 'Abwesenheiten zuweisen', 0, NULL, NULL),
(934, 489, 6, 'Zugewiesene Gehaltsbestandteile', 0, NULL, NULL),
(935, 140, 6, 'Anhangsgröße überschritten', 0, NULL, NULL),
(936, 286, 6, 'Zeiterfassung', 0, NULL, NULL),
(937, 313, 6, 'Teilnahme-Übersicht', 0, NULL, NULL),
(938, 224, 6, 'Zurück', 0, NULL, NULL),
(939, 92, 6, 'Abbrechen', 0, NULL, NULL),
(940, 291, 6, 'Bewerber', 0, NULL, NULL),
(941, 248, 6, 'Passwort ändern', 0, NULL, NULL),
(942, 186, 6, 'Kommentar', 0, NULL, NULL),
(943, 191, 6, 'Beschreibung', 0, NULL, NULL),
(944, 496, 6, 'Unternehmen', 0, NULL, NULL),
(945, 484, 6, 'Kompetenz', 0, NULL, NULL),
(946, 264, 6, 'Konfiguration', 0, NULL, NULL),
(947, 317, 6, 'Konfigurieren', 0, NULL, NULL),
(948, 393, 6, 'Kontaktinformationen', 0, NULL, NULL),
(949, 413, 6, 'Vertragsende', 0, NULL, NULL),
(950, 412, 6, 'Vertragsbeginn', 0, NULL, NULL),
(951, 84, 6, 'Land', 0, NULL, NULL),
(952, 102, 6, 'Währung', 0, NULL, NULL),
(953, 168, 6, 'Aktuelle und ehemalige Mitarbeiter', 0, NULL, NULL),
(954, 170, 6, 'Nur aktuelle Mitarbeiter', 0, NULL, NULL),
(955, 367, 6, 'Benutzerdefinierte Felder', 0, NULL, NULL),
(956, 287, 6, 'Kunden', 0, NULL, NULL),
(957, 379, 6, 'Datenimport', 0, NULL, NULL),
(958, 210, 6, 'Datum', 0, NULL, NULL),
(959, 502, 6, 'Datum hinzugefügt', 0, NULL, NULL),
(960, 401, 6, 'Geburtsdatum', 0, NULL, NULL),
(961, 597, 6, 'Tage', 0, NULL, NULL),
(962, 330, 6, 'Aktuelles löschen', 0, NULL, NULL),
(963, 341, 6, 'Angehörige', 0, NULL, NULL),
(964, 101, 6, 'Beschreibung', 0, NULL, NULL),
(965, 521, 6, 'Kto.-Nr./IBAN', 0, NULL, NULL),
(966, 522, 6, 'Überweisungsart', 0, NULL, NULL),
(967, 436, 6, 'Überweisungsbetrag', 0, NULL, NULL),
(968, 150, 6, 'Deaktiviert', 0, NULL, NULL),
(969, 455, 6, 'Felder anzeigen', 0, NULL, NULL),
(970, 519, 6, 'Dokumententyp', 0, NULL, NULL),
(971, 422, 6, 'Führerscheinnummer', 0, NULL, NULL),
(972, 222, 6, 'Dauer', 0, NULL, NULL),
(973, 98, 6, 'Bearbeiten', 0, NULL, NULL),
(974, 151, 6, 'Anhang bearbeiten', 0, NULL, NULL),
(975, 477, 6, 'Immigration bearbeiten', 0, NULL, NULL),
(976, 488, 6, 'Gehaltsbestandteil bearbeiten', 0, NULL, NULL),
(977, 106, 6, 'Aus- und Weiterbildung', 0, NULL, NULL),
(978, 481, 6, 'Geeignetes Bewertungsdatum', 0, NULL, NULL),
(979, 480, 6, 'Geeigneter Status', 0, NULL, NULL),
(980, 340, 6, 'Notfall-Kontakte', 0, NULL, NULL),
(981, 218, 6, 'Mitarbeiter', 0, NULL, NULL),
(982, 515, 6, 'Mitarbeiter-Vorname', 0, NULL, NULL),
(983, 163, 6, 'Mitarbeiter-ID', 0, NULL, NULL),
(984, 514, 6, 'Mitarbeiter-Nachname', 0, NULL, NULL),
(985, 269, 6, 'Mitarbeiterliste', 0, NULL, NULL),
(986, 516, 6, 'Mitarbeiter-Zweiter Vorname', 0, NULL, NULL),
(987, 122, 6, 'Mitarbeiter-Name', 0, NULL, NULL),
(988, 285, 6, 'Mitarbeiter-Datensätze', 0, NULL, NULL),
(989, 183, 6, 'Mitarbeiter-Berichte', 0, NULL, NULL),
(990, 282, 6, 'Mitarbeiter-Zeiterfassung', 0, NULL, NULL),
(991, 142, 6, 'Erwerbsstatus', 0, NULL, NULL),
(992, 149, 6, 'Aktiviert', 0, NULL, NULL),
(993, 190, 6, 'Enddatum', 0, NULL, NULL),
(994, 148, 6, 'Standard Mitarbeiter', 0, NULL, NULL),
(995, 347, 6, 'Erwartetes Format: admin@example.com', 0, NULL, NULL),
(996, 172, 6, 'Gültigkeitsdatum', 0, NULL, NULL),
(997, 482, 6, 'Das Gültigkeitsdatum muss nach dem Ausstellungsdatum sein', 0, NULL, NULL),
(998, 176, 6, 'Weiblich', 0, NULL, NULL),
(999, 202, 6, 'Dateiname', 0, NULL, NULL),
(1000, 523, 6, 'Vorname', 0, NULL, NULL),
(1001, 483, 6, 'Sprachkompetenz', 0, NULL, NULL),
(1002, 215, 6, 'Freitag', 0, NULL, NULL),
(1003, 123, 6, 'Von', 0, NULL, NULL),
(1004, 427, 6, 'Geschlecht', 0, NULL, NULL),
(1005, 44, 6, 'Allgemeine Informationen', 0, NULL, NULL),
(1006, 540, 6, 'Feiertage', 0, NULL, NULL),
(1007, 403, 6, 'Privattelefon', 0, NULL, NULL),
(1008, 164, 6, 'ID', 0, NULL, NULL),
(1009, 342, 6, 'Immigration', 0, NULL, NULL),
(1010, 389, 6, 'Berücksichtigen', 0, NULL, NULL),
(1011, 207, 6, 'Überschrift einfügen', 0, NULL, NULL),
(1012, 568, 6, 'Ehemalige Arbeitnehmer berücksichtigen', 0, NULL, NULL),
(1013, 408, 6, 'Ausgestellt von', 0, NULL, NULL),
(1014, 409, 6, 'Ausstellungsdatum', 0, NULL, NULL),
(1015, 258, 6, 'Job', 0, NULL, NULL),
(1016, 72, 6, 'Job-Kategorien', 0, NULL, NULL),
(1017, 133, 6, 'Job-Kategorie', 0, NULL, NULL),
(1018, 200, 6, 'Job-Spezifikation', 0, NULL, NULL),
(1019, 166, 6, 'Berufsbezeichnung', 0, NULL, NULL),
(1020, 3, 6, 'Berufsbezeichnungen', 0, NULL, NULL),
(1021, 173, 6, 'Eintrittsdatum', 0, NULL, NULL),
(1022, 329, 6, 'Aktuelles beibehalten', 0, NULL, NULL),
(1023, 193, 6, 'Sprache', 0, NULL, NULL),
(1024, 110, 6, 'Sprachen', 0, NULL, NULL),
(1025, 165, 6, 'Nachname', 0, NULL, NULL);
INSERT INTO `ohrm_i18n_translate` (`id`, `lang_string_id`, `language_id`, `value`, `customized`, `version`, `modified_at`) VALUES
(1026, 229, 6, 'Abwesenheiten', 0, NULL, NULL),
(1027, 621, 6, 'Abwesenheits-Kontingent (in Tagen)', 0, NULL, NULL),
(1028, 577, 6, 'Abwesenheitsübersicht (pro Mitarbeiter)', 0, NULL, NULL),
(1029, 543, 6, 'Abwesenheitszeitraum', 0, NULL, NULL),
(1030, 564, 6, 'Abwesenheitsarten', 0, NULL, NULL),
(1031, 105, 6, 'Bildungsgrad', 0, NULL, NULL),
(1032, 497, 6, 'Lizenz', 0, NULL, NULL),
(1033, 423, 6, 'Ablaufdatum', 0, NULL, NULL),
(1034, 486, 6, 'Lizenz-Nummer', 0, NULL, NULL),
(1035, 485, 6, 'Lizenz-Typ', 0, NULL, NULL),
(1036, 77, 6, 'Lizenzen', 0, NULL, NULL),
(1037, 78, 6, 'Lokalisierung', 0, NULL, NULL),
(1038, 174, 6, 'Filiale', 0, NULL, NULL),
(1039, 4, 6, 'Filialen', 0, NULL, NULL),
(1040, 249, 6, 'Abmelden', 0, NULL, NULL),
(1041, 175, 6, 'Männlich', 0, NULL, NULL),
(1042, 426, 6, 'Familienstand', 0, NULL, NULL),
(1043, 416, 6, 'Mitgliedschaft', 0, NULL, NULL),
(1044, 115, 6, 'Mitgliedschaften', 0, NULL, NULL),
(1045, 171, 6, 'Handy', 0, NULL, NULL),
(1046, 266, 6, 'Module', 0, NULL, NULL),
(1047, 211, 6, 'Montag', 0, NULL, NULL),
(1048, 314, 6, 'Abwesenheiten (Übersicht)', 0, NULL, NULL),
(1049, 281, 6, 'Meine Aufzeichnungen', 0, NULL, NULL),
(1050, 280, 6, 'Zeiterfassung', 0, NULL, NULL),
(1051, 82, 6, 'Name', 0, NULL, NULL),
(1052, 42, 6, 'Nationalitäten', 0, NULL, NULL),
(1053, 97, 6, 'Nationalität', 0, NULL, NULL),
(1054, 94, 6, 'Kein', 0, NULL, NULL),
(1055, 256, 6, 'Notizen', 0, NULL, NULL),
(1056, 407, 6, 'Anzahl', 0, NULL, NULL),
(1057, 681, 6, 'Nur genehmigte Zeiterfassungen anzeigen', 0, NULL, NULL),
(1058, 442, 6, 'Optionale Felder', 0, NULL, NULL),
(1059, 262, 6, 'Unternehmen', 0, NULL, NULL),
(1060, 470, 6, 'Andere /-s /-r', 0, NULL, NULL),
(1061, 321, 6, 'Weitere Email', 0, NULL, NULL),
(1062, 421, 6, 'Weitere ID', 0, NULL, NULL),
(1063, 720, 6, 'Ehemalige Mitarbeiter', 0, NULL, NULL),
(1064, 169, 6, 'Nur ehemalige Mitarbeiter', 0, NULL, NULL),
(1065, 435, 6, 'Bezahlrate', 0, NULL, NULL),
(1066, 194, 6, 'Gehaltsgruppe', 0, NULL, NULL),
(1067, 58, 6, 'Gehaltsgruppen', 0, NULL, NULL),
(1068, 512, 6, 'Persönliche Daten', 0, NULL, NULL),
(1069, 271, 6, 'Personendaten Management', 0, NULL, NULL),
(1070, 680, 6, 'Projektzeitraum', 0, NULL, NULL),
(1071, 261, 6, 'Projekt-Info', 0, NULL, NULL),
(1072, 289, 6, 'Projektberichte', 0, NULL, NULL),
(1073, 288, 6, 'Projekte', 0, NULL, NULL),
(1074, 284, 6, 'Start Arbeitszeit/Ende Arbeitszeit', 0, NULL, NULL),
(1075, 272, 6, 'Bewerber Management', 0, NULL, NULL),
(1076, 400, 6, 'Verwandtschaftsstatus', 0, NULL, NULL),
(1077, 331, 6, 'Aktuelle /-s ersetzen', 0, NULL, NULL),
(1078, 181, 6, 'Berichtsname', 0, NULL, NULL),
(1079, 476, 6, 'Berichtsmethode', 0, NULL, NULL),
(1080, 452, 6, 'Berichtsmethoden', 0, NULL, NULL),
(1081, 270, 6, 'Berichte', 0, NULL, NULL),
(1082, 130, 6, 'Erforderlich', 0, NULL, NULL),
(1083, 85, 6, 'Zurücksetzen', 0, NULL, NULL),
(1084, 493, 6, 'BLZ/BIC-SWIFT', 0, NULL, NULL),
(1085, 343, 6, 'Gehalt', 0, NULL, NULL),
(1086, 433, 6, 'Gehaltsbestandteil', 0, NULL, NULL),
(1087, 216, 6, 'Samstag', 0, NULL, NULL),
(1088, 131, 6, 'Speichern', 0, NULL, NULL),
(1089, 524, 6, 'Punkte', 0, NULL, NULL),
(1090, 86, 6, 'Suche', 0, NULL, NULL),
(1091, 156, 6, 'Datei auswählen', 0, NULL, NULL),
(1092, 454, 6, 'Auswahlkriterien', 0, NULL, NULL),
(1093, 529, 6, 'Anstellungszeit', 0, NULL, NULL),
(1094, 137, 6, 'Es muss eine Zahl sein', 0, NULL, NULL),
(1095, 179, 6, 'Es muss eine positive Zahl sein', 0, NULL, NULL),
(1096, 504, 6, 'Es muss innerhalb der Min/Max-Werte liegen', 0, NULL, NULL),
(1097, 203, 6, 'Größe', 0, NULL, NULL),
(1098, 494, 6, 'Fertigkeit', 0, NULL, NULL),
(1099, 118, 6, 'Projekterfahrung', 0, NULL, NULL),
(1100, 189, 6, 'Startdatum', 0, NULL, NULL),
(1101, 144, 6, 'Das Startdatum muss vor dem Enddatum liegen', 0, NULL, NULL),
(1102, 178, 6, 'Staat', 0, NULL, NULL),
(1103, 120, 6, 'Status', 0, NULL, NULL),
(1104, 302, 6, 'Struktur', 0, NULL, NULL),
(1105, 167, 6, 'Abteilung', 0, NULL, NULL),
(1106, 528, 6, 'Mitarbeiter', 0, NULL, NULL),
(1107, 418, 6, 'Abo-Beitrag', 0, NULL, NULL),
(1108, 419, 6, 'Abo-Beginn', 0, NULL, NULL),
(1109, 417, 6, 'Das Abo wird bezahlt durch', 0, NULL, NULL),
(1110, 420, 6, 'Abo-Erneuerungsdatum', 0, NULL, NULL),
(1111, 255, 6, 'Gespeichert', 0, NULL, NULL),
(1112, 254, 6, 'Aktualisiert', 0, NULL, NULL),
(1113, 217, 6, 'Sonntag', 0, NULL, NULL),
(1114, 392, 6, 'Vorgesetzter', 0, NULL, NULL),
(1115, 390, 6, 'Vorgesetztenname', 0, NULL, NULL),
(1116, 527, 6, 'Vorgesetzte', 0, NULL, NULL),
(1117, 462, 6, 'Kündigungsgründe', 0, NULL, NULL),
(1118, 214, 6, 'Donnerstag', 0, NULL, NULL),
(1119, 273, 6, 'Zeit', 0, NULL, NULL),
(1120, 283, 6, 'Zeiterfassung', 0, NULL, NULL),
(1121, 124, 6, 'Bis', 0, NULL, NULL),
(1122, 195, 6, 'Das Enddatum muss nach dem Anfangsdatum liegen', 0, NULL, NULL),
(1123, 212, 6, 'Dienstag', 0, NULL, NULL),
(1124, 154, 6, 'Typ', 0, NULL, NULL),
(1125, 263, 6, 'Benutzer', 0, NULL, NULL),
(1126, 290, 6, 'Stellenangebote', 0, NULL, NULL),
(1127, 213, 6, 'Mittwoch', 0, NULL, NULL),
(1128, 320, 6, 'Geschäftliche Emailadresse', 0, NULL, NULL),
(1129, 500, 6, 'Berufserfahrung', 0, NULL, NULL),
(1130, 65, 6, 'Arbeitsschichten', 0, NULL, NULL),
(1131, 404, 6, 'Arbeitstelefon', 0, NULL, NULL),
(1132, 547, 6, 'Arbeitswoche', 0, NULL, NULL),
(1133, 188, 6, 'Jahr', 0, NULL, NULL),
(1134, 495, 6, 'Projekterfahrung (zeitl. Angaben)', 0, NULL, NULL),
(1135, 93, 6, 'Ja', 0, NULL, NULL),
(1136, 241, 6, 'Die Passwörter stimmen nicht überein', 0, NULL, NULL),
(1137, 228, 6, 'OK', 0, NULL, NULL),
(1138, 158, 6, 'Es wird bis zu 1MB akzeptiert', 0, NULL, NULL),
(1139, 121, 6, 'Benutzername', 0, NULL, NULL),
(1140, 238, 6, 'Passwort', 0, NULL, NULL),
(1141, 159, 6, 'Hochladen', 0, NULL, NULL),
(1142, 353, 6, 'Gesamt', 0, NULL, NULL),
(1143, 509, 6, 'Kündigungstag', 0, NULL, NULL),
(1144, 510, 6, 'Kündigungsgrund', 0, NULL, NULL),
(1145, 645, 6, 'Aktivität', 0, NULL, NULL),
(1146, 107, 6, 'Ausbildung hinzufügen', 0, NULL, NULL),
(1147, 109, 6, 'Sprache hinzufügen', 0, NULL, NULL),
(1148, 112, 6, 'Lizenz hinzufügen', 0, NULL, NULL),
(1149, 117, 6, 'Fertigkeit hinzufügen', 0, NULL, NULL),
(1150, 99, 6, 'Adresse', 0, NULL, NULL),
(1151, 100, 6, 'Adresszusatz', 0, NULL, NULL),
(1152, 83, 6, 'Stadt', 0, NULL, NULL),
(1153, 240, 6, 'Passwort bestätigen', 0, NULL, NULL),
(1154, 644, 6, 'Kopieren von', 0, NULL, NULL),
(1155, 651, 6, 'Projektname', 0, NULL, NULL),
(1156, 104, 6, 'Ausbildung bearbeiten', 0, NULL, NULL),
(1157, 108, 6, 'Sprache bearbeiten', 0, NULL, NULL),
(1158, 111, 6, 'Lizenz bearbeiten', 0, NULL, NULL),
(1159, 116, 6, 'Fertigkeit bearbeiten', 0, NULL, NULL),
(1160, 89, 6, 'Bundesland / Kanton', 0, NULL, NULL),
(1161, 90, 6, 'PLZ', 0, NULL, NULL),
(1162, 234, 6, 'Genehmigen', 0, NULL, NULL),
(1163, 604, 6, 'geplant', 0, NULL, NULL),
(1164, 91, 6, 'Notiz', 0, NULL, NULL),
(1165, 201, 6, 'Anhänge', 0, NULL, NULL),
(1166, 155, 6, 'Download', 0, NULL, NULL),
(1167, 95, 6, 'Email', 0, NULL, NULL),
(1168, 310, 6, 'Ausgeführt durch', 0, NULL, NULL),
(1169, 235, 6, 'Ablehnen', 0, NULL, NULL),
(1170, 632, 6, 'abgelehnt', 0, NULL, NULL),
(1171, 348, 6, 'Einreichen / abschicken', 0, NULL, NULL),
(1172, 312, 6, 'Sehen / Ansehen', 0, NULL, NULL),
(1173, 274, 6, 'Persönliche Informationen', 0, NULL, NULL),
(1174, 119, 6, 'Benutzerrolle', 0, NULL, NULL),
(1175, 177, 6, 'Qualifikationen', 0, NULL, NULL),
(1176, 184, 6, 'Gegenwärtige Datei', 0, NULL, NULL),
(1177, 185, 6, 'Ersetzen mit', 0, NULL, NULL),
(1178, 311, 6, 'Einen weiteren hinzufügen', 0, NULL, NULL),
(1179, 544, 6, 'Anfangsmonat', 0, NULL, NULL),
(1180, 633, 6, 'storniert', 0, NULL, NULL),
(1181, 549, 6, 'Abwesenheitsanspruch hinzufügen', 0, NULL, NULL),
(1182, 557, 6, 'Anspruch', 0, NULL, NULL),
(1183, 226, 6, 'Keine passenden Mitarbeiter gefunden', 0, NULL, NULL),
(1184, 319, 6, 'Ansprüche', 0, NULL, NULL),
(1185, 316, 6, 'Ansprüche hinzufügen', 0, NULL, NULL),
(1186, 318, 6, 'Mitarbeiteransprüche', 0, NULL, NULL),
(1187, 617, 6, 'Gültig ab', 0, NULL, NULL),
(1188, 618, 6, 'Gültig bis', 0, NULL, NULL),
(1189, 227, 6, 'Keinen passenden Mitarbeiter bei diesem Filter gefunden', 0, NULL, NULL),
(1190, 565, 6, 'Abwesenheitsansprüche und Nutzungsbericht', 0, NULL, NULL),
(1191, 569, 6, 'Meine Abwesenheitsansprüche und mein Nutzungsbericht', 0, NULL, NULL),
(1192, 583, 6, 'Passende Mitarbeiter', 0, NULL, NULL),
(1193, 566, 6, 'Generieren für', 0, NULL, NULL),
(1194, 225, 6, 'Bestätigen', 0, NULL, NULL),
(1195, 315, 6, 'Meine (Abwesenheits)-Ansprüche', 0, NULL, NULL),
(1196, 260, 6, 'Benutzerverwaltung', 0, NULL, NULL),
(1197, 598, 6, 'zu beanspruchender Urlaub', 0, NULL, NULL),
(1198, 594, 6, 'Das Abwesenheitskontingent reicht nicht aus.', 0, NULL, NULL),
(1199, 8, 6, 'Emailkonfiguration', 0, NULL, NULL),
(1200, 26, 6, 'Emailabonnement', 0, NULL, NULL),
(1201, 246, 6, 'Über', 0, NULL, NULL),
(1202, 298, 6, 'Mitarbeiter Tracker', 0, NULL, NULL),
(1203, 295, 6, 'Meine Beobachter', 0, NULL, NULL),
(1204, 643, 6, 'Aktivitäten', 0, NULL, NULL),
(1205, 59, 6, 'Währung hinzufügen', 0, NULL, NULL),
(1206, 647, 6, 'Kunde hinzufügen', 0, NULL, NULL),
(1207, 30, 6, 'Erwerbsstatus hinzufügen', 0, NULL, NULL),
(1208, 73, 6, 'Jobkategorie hinzufügen', 0, NULL, NULL),
(1209, 1, 6, 'Jobtitel hinzufügen', 0, NULL, NULL),
(1210, 6, 6, 'Filiale hinzufügen', 0, NULL, NULL),
(1211, 114, 6, 'Mitgliedschaft hinzufügen', 0, NULL, NULL),
(1212, 43, 6, 'Nationalität hinzufügen', 0, NULL, NULL),
(1213, 53, 6, 'Gehaltsgruppe hinzufügen', 0, NULL, NULL),
(1214, 691, 6, 'Projekt hinzufügen', 0, NULL, NULL),
(1215, 658, 6, 'Projektaktivität hinzufügen', 0, NULL, NULL),
(1216, 28, 6, 'Abonnent hinzufügen', 0, NULL, NULL),
(1217, 61, 6, 'Benutzer hinzufügen', 0, NULL, NULL),
(1218, 76, 6, 'Arbeitsschicht hinzufügen', 0, NULL, NULL),
(1219, 69, 6, 'Zugewiesene Mitarbeiter', 0, NULL, NULL),
(1220, 244, 6, 'Besser', 0, NULL, NULL),
(1221, 380, 6, 'Die Spaltenordnung sollte nicht geändert werden', 0, NULL, NULL),
(1222, 650, 6, 'Aktivität kopieren', 0, NULL, NULL),
(1223, 465, 6, 'Gegenwärtiges Passwort', 0, NULL, NULL),
(1224, 654, 6, 'Kundenname', 0, NULL, NULL),
(1225, 80, 6, 'Datumsformat', 0, NULL, NULL),
(1226, 384, 6, 'Jede Importdatei sollte für 100 Einträge oder weniger konfiguriert sein', 0, NULL, NULL),
(1227, 54, 6, 'Währung bearbeiten', 0, NULL, NULL),
(1228, 675, 6, 'Kunde bearbeiten', 0, NULL, NULL),
(1229, 29, 6, 'Erwerbsstatus bearbeiten', 0, NULL, NULL),
(1230, 74, 6, 'Jobkategorie bearbeiten', 0, NULL, NULL),
(1231, 2, 6, 'Jobtitel bearbeiten', 0, NULL, NULL),
(1232, 32, 6, 'Filiale bearbeiten', 0, NULL, NULL),
(1233, 113, 6, 'Mitgliedschaft bearbeiten', 0, NULL, NULL),
(1234, 41, 6, 'Nationalität bearbeiten', 0, NULL, NULL),
(1235, 57, 6, 'Gehaltsgruppe bearbeiten', 0, NULL, NULL),
(1236, 678, 6, 'Projekt bearbeiten', 0, NULL, NULL),
(1237, 655, 6, 'Projektaktivität bearbeiten', 0, NULL, NULL),
(1238, 25, 6, 'Abonnent bearbeiten', 0, NULL, NULL),
(1239, 60, 6, 'Benutzer bearbeiten', 0, NULL, NULL),
(1240, 62, 6, 'Arbeitsschicht bearbeiten', 0, NULL, NULL),
(1241, 96, 6, 'Fax', 0, NULL, NULL),
(1242, 381, 6, 'Vorname und Nachname sind Pflichtfelder', 0, NULL, NULL),
(1243, 66, 6, 'Stunden pro Tag', 0, NULL, NULL),
(1244, 31, 6, 'Jobbeschreibung', 0, NULL, NULL),
(1245, 9, 6, 'Email gesendet als', 0, NULL, NULL),
(1246, 56, 6, 'Maximalgehalt', 0, NULL, NULL),
(1247, 55, 6, 'Minimalgehalt', 0, NULL, NULL),
(1248, 33, 6, 'Modulkonfiguration', 0, NULL, NULL),
(1249, 747, 6, 'Neues Passwort', 0, NULL, NULL),
(1250, 653, 6, 'Keine Aktivitäten ausgewählt', 0, NULL, NULL),
(1251, 652, 6, 'Keine zugewiesenen Aktivitäten', 0, NULL, NULL),
(1252, 27, 6, 'Benachrichtigungstyp', 0, NULL, NULL),
(1253, 5, 6, 'Anzahl der Mitarbeiter', 0, NULL, NULL),
(1254, 45, 6, 'Organisationsname', 0, NULL, NULL),
(1255, 14, 6, 'Emailadresse ??', 0, NULL, NULL),
(1256, 88, 6, 'Telefon', 0, NULL, NULL),
(1257, 657, 6, 'Projekt', 0, NULL, NULL),
(1258, 656, 6, 'Projektadministrator', 0, NULL, NULL),
(1259, 676, 6, 'Projektadministratoren', 0, NULL, NULL),
(1260, 46, 6, 'Registrationsnummer', 0, NULL, NULL),
(1261, 10, 6, 'Versandmethode', 0, NULL, NULL),
(1262, 63, 6, 'Arbeitsschichtname', 0, NULL, NULL),
(1263, 19, 6, 'SMTP Passwort', 0, NULL, NULL),
(1264, 16, 6, 'SMTP Port', 0, NULL, NULL),
(1265, 18, 6, 'SMTP Benutzer', 0, NULL, NULL),
(1266, 245, 6, 'Sehr sicher', 0, NULL, NULL),
(1267, 24, 6, 'Abonnenten', 0, NULL, NULL),
(1268, 75, 6, 'Systembenutzer', 0, NULL, NULL),
(1269, 47, 6, 'Steuernummer', 0, NULL, NULL),
(1270, 23, 6, 'Test-Emailadresse', 0, NULL, NULL),
(1271, 52, 6, 'Diese Abteilung wird unter folgendem eingeordnet', 0, NULL, NULL),
(1272, 20, 6, 'TLS', 0, NULL, NULL),
(1273, 49, 6, 'Abteilungs-ID', 0, NULL, NULL),
(1274, 17, 6, 'SMTP Authentifizierung verwenden', 0, NULL, NULL),
(1275, 243, 6, 'Sehr unsicher', 0, NULL, NULL),
(1276, 242, 6, 'Unsicher', 0, NULL, NULL),
(1277, 71, 6, 'Sollte mehr als das Minimalgehalt sein', 0, NULL, NULL),
(1278, 382, 6, 'Alle Datumsangaben sollten im Format YYYY-MM-DD sein', 0, NULL, NULL),
(1279, 385, 6, 'Es könnten mehrere Importdateien notwendig sein', 0, NULL, NULL),
(1280, 50, 6, 'Unternehmensstruktur', 0, NULL, NULL),
(1281, 276, 6, 'Cockpit', 0, NULL, NULL),
(1282, 570, 6, 'Abwesenheit beantragen', 0, NULL, NULL),
(1283, 686, 6, 'Meine Zeiterfassung', 0, NULL, NULL),
(1284, 669, 6, 'Durchgeführte Zeiterfassungsaktionen', 0, NULL, NULL),
(1285, 662, 6, 'Zeile hinzufügen', 0, NULL, NULL),
(1286, 648, 6, 'Zeiterfassung hinzufügen', 0, NULL, NULL),
(1287, 704, 6, 'Gesamtanwesenheitsübersicht', 0, NULL, NULL),
(1288, 672, 6, 'Zeiterfassungsperiode definieren', 0, NULL, NULL),
(1289, 690, 6, 'Zeiterfassung bearbeiten', 0, NULL, NULL),
(1290, 683, 6, 'Mitarbeiterbericht', 0, NULL, NULL),
(1291, 667, 6, 'Es sollte weniger als 24 und in einem HH:MM oder dezimalen Format sein', 0, NULL, NULL),
(1292, 308, 6, 'FR', 0, NULL, NULL),
(1293, 304, 6, 'MO', 0, NULL, NULL),
(1294, 679, 6, 'Projektbericht', 0, NULL, NULL),
(1295, 309, 6, 'SA', 0, NULL, NULL),
(1296, 649, 6, 'Zum Erstellen der Zeiterfassung einen Tag wählen', 0, NULL, NULL),
(1297, 684, 6, 'Mitarbeiter auswählen', 0, NULL, NULL),
(1298, 303, 6, 'SO', 0, NULL, NULL),
(1299, 307, 6, 'DO', 0, NULL, NULL),
(1300, 689, 6, 'Zeiterfassung für', 0, NULL, NULL),
(1301, 671, 6, 'Zeiterfassungsperiode', 0, NULL, NULL),
(1302, 670, 6, 'Ausstehende Zeiterfassungen', 0, NULL, NULL),
(1303, 305, 6, 'DI', 0, NULL, NULL),
(1304, 306, 6, 'MI', 0, NULL, NULL),
(1305, 666, 6, 'Ein Projekt und eine Aktivität wählen', 0, NULL, NULL),
(1306, 660, 6, 'Keine Zeiterfassung gefunden', 0, NULL, NULL),
(1307, 694, 6, 'Zeiterfassung bestätigt', 0, NULL, NULL),
(1308, 693, 6, 'Zeiterfassung abgelehnt', 0, NULL, NULL),
(1309, 668, 6, 'Die Gesamtzahl sollte weniger als 24 Stunden betragen', 0, NULL, NULL),
(1310, 491, 6, 'Kto.-Nr./IBAN', 0, NULL, NULL),
(1311, 492, 6, 'Kontenart', 0, NULL, NULL),
(1312, 513, 6, 'Dienstverhältnis aktivieren', 0, NULL, NULL),
(1313, 378, 6, 'Benutzerfeld hinzufügen', 0, NULL, NULL),
(1314, 506, 6, 'Angehörige hinzufügen', 0, NULL, NULL),
(1315, 505, 6, 'Pass/Visumsdaten hinzufügen', 0, NULL, NULL),
(1316, 450, 6, 'Berichtsmethode hinzufügen', 0, NULL, NULL),
(1317, 461, 6, 'Kündigungsgrund hinzufügen', 0, NULL, NULL),
(1318, 501, 6, 'Berufserfahrung hinzufügen', 0, NULL, NULL),
(1319, 399, 6, 'Zugewiesene Angehörige', 0, NULL, NULL),
(1320, 402, 6, 'Zugewiesene Notfallkontaktdaten', 0, NULL, NULL),
(1321, 405, 6, 'Zugewiesene Immigrationsdokumente', 0, NULL, NULL),
(1322, 415, 6, 'Zugewiesene Mitgliedschaften', 0, NULL, NULL),
(1323, 498, 6, 'Zugewiesene Mitarbeiter', 0, NULL, NULL),
(1324, 499, 6, 'Zugewiesene Vorgesetzte', 0, NULL, NULL),
(1325, 475, 6, 'Mindestens eine Telefonnummer wird benötigt', 0, NULL, NULL),
(1326, 469, 6, 'Kind', 0, NULL, NULL),
(1327, 414, 6, 'Vertragsdetails', 0, NULL, NULL),
(1328, 445, 6, 'Länderspezifische Informationen', 0, NULL, NULL),
(1329, 441, 6, 'Logindaten generieren', 0, NULL, NULL),
(1330, 370, 6, 'Benutzerfeldname', 0, NULL, NULL),
(1331, 406, 6, 'Dokument', 0, NULL, NULL),
(1332, 526, 6, 'Drop Down-Feld', 0, NULL, NULL),
(1333, 374, 6, 'Benutzerfeld bearbeiten', 0, NULL, NULL),
(1334, 467, 6, 'Angehörige bearbeiten', 0, NULL, NULL),
(1335, 474, 6, 'Notfallkontaktdaten bearbeiten', 0, NULL, NULL),
(1336, 449, 6, 'Benachrichtigungsmethode bearbeiten', 0, NULL, NULL),
(1337, 460, 6, 'Kündigungsgrund bearbeiten', 0, NULL, NULL),
(1338, 388, 6, 'Mitarbeiter Informationen', 0, NULL, NULL),
(1339, 377, 6, 'Mögliche Optionen werden mit Kommata getrennt', 0, NULL, NULL),
(1340, 438, 6, 'Ausnahmen', 0, NULL, NULL),
(1341, 437, 6, 'Bundesertragssteuer', 0, NULL, NULL),
(1342, 375, 6, 'Feldname', 0, NULL, NULL),
(1343, 372, 6, 'Feldtyp', 0, NULL, NULL),
(1344, 205, 6, 'Anfangsdatum sollte vor dem Enddatum liegen', 0, NULL, NULL),
(1345, 473, 6, 'Durchschnittsnote / Punkte', 0, NULL, NULL),
(1346, 471, 6, 'Institut', 0, NULL, NULL),
(1347, 472, 6, 'Hauptfach / Spezialisierung', 0, NULL, NULL),
(1348, 428, 6, 'Wehrdienst', 0, NULL, NULL),
(1349, 478, 6, 'Reisepass', 0, NULL, NULL),
(1350, 339, 6, 'Persönliche Informationen', 0, NULL, NULL),
(1351, 468, 6, 'Bitte angeben', 0, NULL, NULL),
(1352, 344, 6, 'Bericht an', 0, NULL, NULL),
(1353, 371, 6, 'Anzeigename', 0, NULL, NULL),
(1354, 376, 6, 'Optionen wählen', 0, NULL, NULL),
(1355, 443, 6, 'Veraltete Felder anzeigen', 0, NULL, NULL),
(1356, 444, 6, 'Spitzname, Raucher und Wehrdienst bei den persönlichen Informationen anzeigen', 0, NULL, NULL),
(1357, 447, 6, 'Personalausweisnummer bei den persönlichen Informationen anzeigen', 0, NULL, NULL),
(1358, 446, 6, 'Sozialversicherungsnummer bei den persönlichen Informationen anzeigen', 0, NULL, NULL),
(1359, 448, 6, 'Das US Steuerbefreiungsmenü anzeigen', 0, NULL, NULL),
(1360, 425, 6, 'Personalausweisnummer', 0, NULL, NULL),
(1361, 429, 6, 'Raucher', 0, NULL, NULL),
(1362, 424, 6, 'Sozialversicherungsnummer', 0, NULL, NULL),
(1363, 345, 6, 'Steuerbefreiungen', 0, NULL, NULL),
(1364, 508, 6, 'Beschäftigungsverhältnis kündigen', 0, NULL, NULL),
(1365, 525, 6, 'Text oder Zahl', 0, NULL, NULL),
(1366, 439, 6, 'Erwerbslos', 0, NULL, NULL),
(1367, 479, 6, 'Visum', 0, NULL, NULL),
(1368, 440, 6, 'Erwerbstätig', 0, NULL, NULL),
(1369, 391, 6, 'Vorname (Zweiter Vorname)', 0, NULL, NULL),
(1370, 517, 6, 'Berechtigungs- / Eignungsstatus', 0, NULL, NULL),
(1371, 518, 6, 'Eignungsübersichtsdatum', 0, NULL, NULL),
(1372, 152, 6, 'Aktionen', 0, NULL, NULL),
(1373, 576, 6, 'Zuweisen', 0, NULL, NULL),
(1374, 545, 6, 'Aktueller Anspruchszeitraum', 0, NULL, NULL),
(1375, 712, 6, 'Dauer (in Stunden)', 0, NULL, NULL),
(1376, 546, 6, 'Folgendes Jahr / Nächstes Jahr', 0, NULL, NULL),
(1377, 220, 6, 'Anfangsdatum', 0, NULL, NULL),
(1378, 542, 6, 'Ganztags', 0, NULL, NULL),
(1379, 630, 6, 'Halbtags', 0, NULL, NULL),
(1380, 593, 6, 'Anspruchskonto', 0, NULL, NULL),
(1381, 567, 6, 'Abwesenheitsart', 0, NULL, NULL),
(1382, 581, 6, 'Mein Abwesenheitsliste', 0, NULL, NULL),
(1383, 571, 6, 'Kein Anspruchskontingent vorhanden.', 0, NULL, NULL),
(1384, 631, 6, 'Sonn- und Feiertag', 0, NULL, NULL),
(1385, 620, 6, 'genommenes Abwesenheits-Kontingent (Tage)', 0, NULL, NULL),
(1386, 605, 6, 'in Bearbeitung', 0, NULL, NULL),
(1387, 538, 6, 'Jährliche Wiederholung', 0, NULL, NULL),
(1388, 578, 6, 'Bearbeitungsstatus Abwesenheit', 0, NULL, NULL),
(1389, 603, 6, 'genommen', 0, NULL, NULL),
(1390, 221, 6, 'Enddatum', 0, NULL, NULL),
(1391, 628, 6, 'Fehler beim Absenden: Keine Werktage ausgewählt', 0, NULL, NULL),
(1392, 627, 6, 'Fehler beim Absenden', 0, NULL, NULL),
(1393, 562, 6, 'Abwesenheitsarten hinzufügen', 0, NULL, NULL),
(1394, 563, 6, 'Abwesenheitsarten bearbeiten', 0, NULL, NULL),
(1395, 582, 6, 'Anspruch aktualisieren', 0, NULL, NULL),
(1396, 556, 6, 'Urlaubsanspruch bearbeiten', 0, NULL, NULL),
(1397, 584, 6, 'Der gewählte Urlaubsanspruch wird bei den folgenden Mitarbeitern angewendet', 0, NULL, NULL),
(1398, 585, 6, 'Rest-Urlaubsanspruch', 0, NULL, NULL),
(1399, 586, 6, 'Neuer Urlaubsanspruch', 0, NULL, NULL),
(1400, 558, 6, 'Die verwendete Menge übersteigt die aktuelle Menge', 0, NULL, NULL),
(1401, 599, 6, 'Urlaubskonto-Details', 0, NULL, NULL),
(1402, 596, 6, 'Rest-Urlaubskontingent', 0, NULL, NULL),
(1403, 613, 6, 'Die Dauer sollte weniger als die Arbeitsschichtlänge betragen', 0, NULL, NULL),
(1404, 600, 6, 'Anfangsdatum', 0, NULL, NULL),
(1405, 560, 6, 'Meine Abwesenheitsansprüche', 0, NULL, NULL),
(1406, 609, 6, 'Anmerkungen Abwesenheitsanträge', 0, NULL, NULL),
(1407, 589, 6, 'Abwesenheitszuordnung bestätigen', 0, NULL, NULL),
(1408, 590, 6, 'Der Mitarbeiter hat kein ausreichendes Anspruchskontingent.', 0, NULL, NULL),
(1409, 591, 6, 'Klicken Sie OK, um die Abwesenheitszuordnung zu bestätigen.', 0, NULL, NULL),
(1410, 616, 6, 'Zeit spezifizieren', 0, NULL, NULL),
(1411, 572, 6, 'Teil-Tag', 0, NULL, NULL),
(1412, 574, 6, 'Anfangstag', 0, NULL, NULL),
(1413, 575, 6, 'Endtag', 0, NULL, NULL),
(1414, 293, 6, 'Berichte verwalten', 0, NULL, NULL),
(1415, 294, 6, 'Meine Berichte', 0, NULL, NULL),
(1416, 296, 6, 'Bericht-Liste', 0, NULL, NULL),
(1417, 138, 6, 'Das Enddatum muss nach dem Startdatum sein', 0, NULL, NULL),
(1418, 607, 6, 'Sind Sie sicher, dass Sie fortfahren wollen?', 0, NULL, NULL),
(1419, 706, 6, 'Start Arbeitszeit', 0, NULL, NULL),
(1420, 710, 6, 'Start Arbeitszeit - Notiz', 0, NULL, NULL),
(1421, 708, 6, 'Ausstempeln', 0, NULL, NULL),
(1422, 711, 6, 'Ausstempelnotiz', 0, NULL, NULL),
(1423, 709, 6, 'Überlappende Aufzeichnungen gefunden', 0, NULL, NULL),
(1424, 715, 6, 'Zeitzone', 0, NULL, NULL),
(1425, 717, 6, 'Ein', 0, NULL, NULL),
(1426, 718, 6, 'Aus', 0, NULL, NULL),
(1427, 700, 6, 'Anwesenheitskonfiguration', 0, NULL, NULL),
(1428, 701, 6, 'Beim Ein/Ausstempeln kann der Mitarbeiter die aktuelle Zeit ändern', 0, NULL, NULL),
(1429, 702, 6, 'Der Mitarbeiter kann die ein eigenen Anwesenheitsaufzeichnungen bearbeiten/löschen', 0, NULL, NULL),
(1430, 703, 6, 'Der Vorgesetzte kann die Anwesenheitsaufzeichnungen von Mitarbeitern hinzufügen/bearbeiten/löschen.', 0, NULL, NULL),
(1431, 714, 6, 'Meine Zeiterfassung', 0, NULL, NULL),
(1432, 735, 6, 'Login', 0, NULL, NULL),
(1433, 239, 6, 'Für ein starkes Passwort verwenden Sie bitte eine schwer zu erratende Kombination von Text mit Groß- und Kleinbuchstaben, Symbolen und Zahlen', 0, NULL, NULL),
(1434, 559, 6, 'Abwesenheitsansprüche', 0, NULL, NULL),
(1435, 278, 6, 'Buzz', 0, NULL, NULL),
(1436, 160, 6, 'Erfolg', 0, NULL, NULL),
(1437, 352, 6, 'Gelöscht', 0, NULL, NULL),
(1438, 696, 6, 'Die Ausstempelzeit sollte nach der Einstempelzeit liegen', 0, NULL, NULL),
(1439, 756, 6, 'Haben Sie ihr Passwort vergessen', 0, NULL, NULL),
(1440, 736, 6, 'Benutzername', 0, NULL, NULL),
(1441, 737, 6, 'Passwort', 0, NULL, NULL),
(1442, 250, 6, 'Keine Aufzeichnung vorhanden', 0, NULL, NULL),
(1443, 698, 6, 'Zeiterfassung abgesendet', 0, NULL, NULL),
(1444, 198, 6, 'Zweiter Vorname', 0, NULL, NULL),
(1445, 197, 6, 'Vorname', 0, NULL, NULL),
(1446, 87, 4, 'Add', 0, NULL, NULL),
(1447, 208, 4, 'Add Attachment', 0, NULL, NULL),
(1448, 180, 4, 'Add Employee', 0, NULL, NULL),
(1449, 503, 4, 'Added By', 0, NULL, NULL),
(1450, 7, 4, 'Address', 0, NULL, NULL),
(1451, 129, 4, 'Admin', 0, NULL, NULL),
(1452, 530, 4, 'Age Group', 0, NULL, NULL),
(1453, 143, 4, 'Allows numbers and only + - / ( )', 0, NULL, NULL),
(1454, 125, 4, 'Already exists', 0, NULL, NULL),
(1455, 434, 4, 'Amount', 0, NULL, NULL),
(1456, 223, 4, 'Apply', 0, NULL, NULL),
(1457, 573, 4, 'Assign Leave', 0, NULL, NULL),
(1458, 489, 4, 'Assigned Salary Components', 0, NULL, NULL),
(1459, 140, 4, 'Attachment Size Exceeded', 0, NULL, NULL),
(1460, 286, 4, 'Attendance', 0, NULL, NULL),
(1461, 313, 4, 'Attendance Summary', 0, NULL, NULL),
(1462, 224, 4, 'Back', 0, NULL, NULL),
(1463, 92, 4, 'Cancel', 0, NULL, NULL),
(1464, 291, 4, 'Candidates', 0, NULL, NULL),
(1465, 248, 4, 'Change Password', 0, NULL, NULL),
(1466, 186, 4, 'Comment', 0, NULL, NULL),
(1467, 191, 4, 'Comments', 0, NULL, NULL),
(1468, 496, 4, 'Company', 0, NULL, NULL),
(1469, 484, 4, 'Competency', 0, NULL, NULL),
(1470, 264, 4, 'Configuration', 0, NULL, NULL),
(1471, 317, 4, 'Configure', 0, NULL, NULL),
(1472, 393, 4, 'Contact Details', 0, NULL, NULL),
(1473, 413, 4, 'Contract End Date', 0, NULL, NULL),
(1474, 412, 4, 'Contract Start Date', 0, NULL, NULL),
(1475, 84, 4, 'Country', 0, NULL, NULL),
(1476, 102, 4, 'Currency', 0, NULL, NULL),
(1477, 168, 4, 'Current and Past Employees', 0, NULL, NULL),
(1478, 170, 4, 'Current Employees Only', 0, NULL, NULL),
(1479, 367, 4, 'Custom Fields', 0, NULL, NULL),
(1480, 287, 4, 'Customers', 0, NULL, NULL),
(1481, 379, 4, 'Data Import', 0, NULL, NULL),
(1482, 210, 4, 'Date', 0, NULL, NULL),
(1483, 502, 4, 'Date Added', 0, NULL, NULL),
(1484, 401, 4, 'Date of Birth', 0, NULL, NULL),
(1485, 597, 4, 'Days', 0, NULL, NULL),
(1486, 330, 4, 'Delete Current', 0, NULL, NULL),
(1487, 341, 4, 'Dependents', 0, NULL, NULL),
(1488, 101, 4, 'Description', 0, NULL, NULL),
(1489, 521, 4, 'Direct Deposit Account Number', 0, NULL, NULL),
(1490, 522, 4, 'Direct Deposit Account Type', 0, NULL, NULL),
(1491, 436, 4, 'Direct Deposit Amount', 0, NULL, NULL),
(1492, 150, 4, 'Disabled', 0, NULL, NULL),
(1493, 455, 4, 'Display Fields', 0, NULL, NULL),
(1494, 519, 4, 'Document Type', 0, NULL, NULL),
(1495, 422, 4, 'Driver\'s License Number', 0, NULL, NULL),
(1496, 222, 4, 'Duration', 0, NULL, NULL),
(1497, 98, 4, 'Edit', 0, NULL, NULL),
(1498, 151, 4, 'Edit Attachment', 0, NULL, NULL),
(1499, 477, 4, 'Edit Immigration', 0, NULL, NULL),
(1500, 488, 4, 'Edit Salary Component', 0, NULL, NULL),
(1501, 106, 4, 'Education', 0, NULL, NULL),
(1502, 481, 4, 'Eligible Review Date', 0, NULL, NULL),
(1503, 480, 4, 'Eligible Status', 0, NULL, NULL),
(1504, 340, 4, 'Emergency Contacts', 0, NULL, NULL),
(1505, 218, 4, 'Employee', 0, NULL, NULL),
(1506, 515, 4, 'Employee First Name', 0, NULL, NULL),
(1507, 163, 4, 'Employee Id', 0, NULL, NULL),
(1508, 514, 4, 'Employee Last Name', 0, NULL, NULL),
(1509, 269, 4, 'Employee List', 0, NULL, NULL),
(1510, 516, 4, 'Employee Middle Name', 0, NULL, NULL),
(1511, 122, 4, 'Employee Name', 0, NULL, NULL),
(1512, 285, 4, 'Employee Records', 0, NULL, NULL),
(1513, 183, 4, 'Employee Reports', 0, NULL, NULL),
(1514, 282, 4, 'Employee Timesheets', 0, NULL, NULL),
(1515, 142, 4, 'Employment Status', 0, NULL, NULL),
(1516, 149, 4, 'Enabled', 0, NULL, NULL),
(1517, 190, 4, 'End Date', 0, NULL, NULL),
(1518, 148, 4, 'ESS', 0, NULL, NULL),
(1519, 347, 4, 'Expected format: admin@example.com', 0, NULL, NULL),
(1520, 172, 4, 'Expiry Date', 0, NULL, NULL),
(1521, 482, 4, 'Expiry date should be after issued date', 0, NULL, NULL),
(1522, 176, 4, 'Female', 0, NULL, NULL),
(1523, 202, 4, 'File Name', 0, NULL, NULL),
(1524, 523, 4, 'First Name', 0, NULL, NULL),
(1525, 483, 4, 'Fluency', 0, NULL, NULL),
(1526, 215, 4, 'Friday', 0, NULL, NULL),
(1527, 123, 4, 'From', 0, NULL, NULL),
(1528, 427, 4, 'Gender', 0, NULL, NULL),
(1529, 44, 4, 'General Information', 0, NULL, NULL),
(1530, 540, 4, 'Holidays', 0, NULL, NULL),
(1531, 403, 4, 'Home Telephone', 0, NULL, NULL),
(1532, 164, 4, 'Id', 0, NULL, NULL),
(1533, 342, 4, 'Immigration', 0, NULL, NULL),
(1534, 389, 4, 'Include', 0, NULL, NULL),
(1535, 207, 4, 'Include Header', 0, NULL, NULL),
(1536, 568, 4, 'Include Past Employees', 0, NULL, NULL),
(1537, 408, 4, 'Issued By', 0, NULL, NULL),
(1538, 409, 4, 'Issued Date', 0, NULL, NULL),
(1539, 258, 4, 'Job', 0, NULL, NULL),
(1540, 72, 4, 'Job Categories', 0, NULL, NULL),
(1541, 133, 4, 'Job Category', 0, NULL, NULL),
(1542, 200, 4, 'Job Specification', 0, NULL, NULL),
(1543, 166, 4, 'Job Title', 0, NULL, NULL),
(1544, 3, 4, 'Job Titles', 0, NULL, NULL),
(1545, 173, 4, 'Joined Date', 0, NULL, NULL),
(1546, 329, 4, 'Keep Current', 0, NULL, NULL),
(1547, 193, 4, 'Language', 0, NULL, NULL),
(1548, 110, 4, 'Languages', 0, NULL, NULL),
(1549, 165, 4, 'Last Name', 0, NULL, NULL),
(1550, 229, 4, 'Leave', 0, NULL, NULL),
(1551, 621, 4, 'Leave Balance (Days)', 0, NULL, NULL),
(1552, 577, 4, 'Leave List', 0, NULL, NULL),
(1553, 543, 4, 'Leave Period', 0, NULL, NULL),
(1554, 564, 4, 'Leave Types', 0, NULL, NULL),
(1555, 105, 4, 'Level', 0, NULL, NULL),
(1556, 497, 4, 'License', 0, NULL, NULL),
(1557, 423, 4, 'License Expiry Date', 0, NULL, NULL),
(1558, 486, 4, 'License Number', 0, NULL, NULL),
(1559, 485, 4, 'License Type', 0, NULL, NULL),
(1560, 77, 4, 'Licenses', 0, NULL, NULL),
(1561, 78, 4, 'Localization', 0, NULL, NULL),
(1562, 174, 4, 'Location', 0, NULL, NULL),
(1563, 4, 4, 'Locations', 0, NULL, NULL),
(1564, 249, 4, 'Logout', 0, NULL, NULL),
(1565, 175, 4, 'Male', 0, NULL, NULL),
(1566, 426, 4, 'Marital Status', 0, NULL, NULL),
(1567, 416, 4, 'Membership', 0, NULL, NULL),
(1568, 115, 4, 'Memberships', 0, NULL, NULL),
(1569, 171, 4, 'Mobile', 0, NULL, NULL),
(1570, 266, 4, 'Modules', 0, NULL, NULL),
(1571, 211, 4, 'Monday', 0, NULL, NULL),
(1572, 314, 4, 'My Leave', 0, NULL, NULL),
(1573, 281, 4, 'My Records', 0, NULL, NULL),
(1574, 280, 4, 'My Timesheets', 0, NULL, NULL),
(1575, 82, 4, 'Name', 0, NULL, NULL),
(1576, 42, 4, 'Nationalities', 0, NULL, NULL),
(1577, 97, 4, 'Nationality', 0, NULL, NULL),
(1578, 94, 4, 'No', 0, NULL, NULL),
(1579, 256, 4, 'Notes', 0, NULL, NULL),
(1580, 407, 4, 'Number', 0, NULL, NULL),
(1581, 681, 4, 'Only Include Approved Timesheets', 0, NULL, NULL),
(1582, 442, 4, 'Optional Fields', 0, NULL, NULL),
(1583, 262, 4, 'Organization', 0, NULL, NULL),
(1584, 470, 4, 'Other', 0, NULL, NULL),
(1585, 321, 4, 'Other Email', 0, NULL, NULL),
(1586, 421, 4, 'Other Id', 0, NULL, NULL),
(1587, 720, 4, 'Past Employee', 0, NULL, NULL),
(1588, 169, 4, 'Past Employees Only', 0, NULL, NULL),
(1589, 435, 4, 'Pay Frequency', 0, NULL, NULL),
(1590, 194, 4, 'Pay Grade', 0, NULL, NULL),
(1591, 58, 4, 'Pay Grades', 0, NULL, NULL),
(1592, 275, 4, 'Performance', 0, NULL, NULL),
(1593, 512, 4, 'Personal', 0, NULL, NULL),
(1594, 271, 4, 'PIM', 0, NULL, NULL),
(1595, 680, 4, 'Project Date Range', 0, NULL, NULL),
(1596, 261, 4, 'Project Info', 0, NULL, NULL),
(1597, 289, 4, 'Project Reports', 0, NULL, NULL),
(1598, 288, 4, 'Projects', 0, NULL, NULL),
(1599, 284, 4, 'Punch In/Out', 0, NULL, NULL),
(1600, 272, 4, 'Recruitment', 0, NULL, NULL),
(1601, 400, 4, 'Relationship', 0, NULL, NULL),
(1602, 331, 4, 'Replace Current', 0, NULL, NULL),
(1603, 181, 4, 'Report Name', 0, NULL, NULL),
(1604, 476, 4, 'Reporting Method', 0, NULL, NULL),
(1605, 452, 4, 'Reporting Methods', 0, NULL, NULL),
(1606, 270, 4, 'Reports', 0, NULL, NULL),
(1607, 130, 4, 'Required', 0, NULL, NULL),
(1608, 85, 4, 'Reset', 0, NULL, NULL),
(1609, 493, 4, 'Routing Number', 0, NULL, NULL),
(1610, 343, 4, 'Salary', 0, NULL, NULL),
(1611, 433, 4, 'Salary Component', 0, NULL, NULL),
(1612, 216, 4, 'Saturday', 0, NULL, NULL),
(1613, 131, 4, 'Save', 0, NULL, NULL),
(1614, 524, 4, 'Score', 0, NULL, NULL),
(1615, 86, 4, 'Search', 0, NULL, NULL),
(1616, 156, 4, 'Select File', 0, NULL, NULL),
(1617, 454, 4, 'Selection Criteria', 0, NULL, NULL),
(1618, 529, 4, 'Service Period', 0, NULL, NULL),
(1619, 137, 4, 'Should be a number', 0, NULL, NULL),
(1620, 179, 4, 'Should be a positive number', 0, NULL, NULL),
(1621, 504, 4, 'Should be within Min/Max values', 0, NULL, NULL),
(1622, 203, 4, 'Size', 0, NULL, NULL),
(1623, 494, 4, 'Skill', 0, NULL, NULL),
(1624, 118, 4, 'Skills', 0, NULL, NULL),
(1625, 189, 4, 'Start Date', 0, NULL, NULL),
(1626, 144, 4, 'Start date should be before end date', 0, NULL, NULL),
(1627, 178, 4, 'State', 0, NULL, NULL),
(1628, 120, 4, 'Status', 0, NULL, NULL),
(1629, 302, 4, 'Structure', 0, NULL, NULL),
(1630, 167, 4, 'Sub Unit', 0, NULL, NULL),
(1631, 528, 4, 'Subordinates', 0, NULL, NULL),
(1632, 418, 4, 'Subscription Amount', 0, NULL, NULL),
(1633, 419, 4, 'Subscription Commence Date', 0, NULL, NULL),
(1634, 417, 4, 'Subscription Paid By', 0, NULL, NULL),
(1635, 420, 4, 'Subscription Renewal Date', 0, NULL, NULL),
(1636, 255, 4, 'Successfully Saved', 0, NULL, NULL),
(1637, 254, 4, 'Successfully Updated', 0, NULL, NULL),
(1638, 217, 4, 'Sunday', 0, NULL, NULL),
(1639, 392, 4, 'Supervisor', 0, NULL, NULL),
(1640, 390, 4, 'Supervisor Name', 0, NULL, NULL),
(1641, 527, 4, 'Supervisors', 0, NULL, NULL),
(1642, 462, 4, 'Termination Reasons', 0, NULL, NULL),
(1643, 214, 4, 'Thursday', 0, NULL, NULL),
(1644, 273, 4, 'Time', 0, NULL, NULL),
(1645, 283, 4, 'Timesheets', 0, NULL, NULL),
(1646, 124, 4, 'To', 0, NULL, NULL),
(1647, 195, 4, 'To date should be after from date', 0, NULL, NULL),
(1648, 212, 4, 'Tuesday', 0, NULL, NULL),
(1649, 154, 4, 'Type', 0, NULL, NULL),
(1650, 263, 4, 'Users', 0, NULL, NULL),
(1651, 290, 4, 'Vacancies', 0, NULL, NULL),
(1652, 213, 4, 'Wednesday', 0, NULL, NULL),
(1653, 320, 4, 'Work Email', 0, NULL, NULL),
(1654, 500, 4, 'Work Experience', 0, NULL, NULL),
(1655, 65, 4, 'Work Shifts', 0, NULL, NULL),
(1656, 404, 4, 'Work Telephone', 0, NULL, NULL),
(1657, 547, 4, 'Work Week', 0, NULL, NULL),
(1658, 188, 4, 'Year', 0, NULL, NULL),
(1659, 495, 4, 'Years of Experience', 0, NULL, NULL),
(1660, 93, 4, 'Yes', 0, NULL, NULL),
(1661, 241, 4, 'Passwords do not match', 0, NULL, NULL),
(1662, 228, 4, 'Ok', 0, NULL, NULL),
(1663, 158, 4, 'Accepts up to 1MB', 0, NULL, NULL),
(1664, 121, 4, 'Username', 0, NULL, NULL),
(1665, 238, 4, 'Password', 0, NULL, NULL),
(1666, 159, 4, 'Upload', 0, NULL, NULL),
(1667, 353, 4, 'Total', 0, NULL, NULL),
(1668, 509, 4, 'Termination Date', 0, NULL, NULL),
(1669, 510, 4, 'Termination Reason', 0, NULL, NULL),
(1670, 645, 4, 'Activity Name', 0, NULL, NULL),
(1671, 107, 4, 'Add Education', 0, NULL, NULL),
(1672, 109, 4, 'Add Language', 0, NULL, NULL),
(1673, 112, 4, 'Add License', 0, NULL, NULL),
(1674, 117, 4, 'Add Skill', 0, NULL, NULL),
(1675, 99, 4, 'Address Street 1', 0, NULL, NULL),
(1676, 100, 4, 'Address Street 2', 0, NULL, NULL),
(1677, 83, 4, 'City', 0, NULL, NULL),
(1678, 240, 4, 'Confirm Password', 0, NULL, NULL),
(1679, 644, 4, 'Copy From', 0, NULL, NULL),
(1680, 651, 4, 'Project Name', 0, NULL, NULL),
(1681, 104, 4, 'Edit Education', 0, NULL, NULL),
(1682, 108, 4, 'Edit Language', 0, NULL, NULL),
(1683, 111, 4, 'Edit License', 0, NULL, NULL),
(1684, 116, 4, 'Edit Skill', 0, NULL, NULL),
(1685, 89, 4, 'State/Province', 0, NULL, NULL),
(1686, 90, 4, 'Zip/Postal Code', 0, NULL, NULL),
(1687, 234, 4, 'Approve', 0, NULL, NULL),
(1688, 604, 4, 'Scheduled', 0, NULL, NULL),
(1689, 91, 4, 'Note', 0, NULL, NULL),
(1690, 201, 4, 'Attachments', 0, NULL, NULL),
(1691, 155, 4, 'Download', 0, NULL, NULL),
(1692, 95, 4, 'Email', 0, NULL, NULL),
(1693, 310, 4, 'Performed By', 0, NULL, NULL),
(1694, 235, 4, 'Reject', 0, NULL, NULL),
(1695, 632, 4, 'Rejected', 0, NULL, NULL),
(1696, 348, 4, 'Submit', 0, NULL, NULL),
(1697, 312, 4, 'View', 0, NULL, NULL),
(1698, 274, 4, 'My Info', 0, NULL, NULL),
(1699, 119, 4, 'User Role', 0, NULL, NULL),
(1700, 177, 4, 'Qualifications', 0, NULL, NULL),
(1701, 184, 4, 'Current File', 0, NULL, NULL),
(1702, 185, 4, 'Replace With', 0, NULL, NULL),
(1703, 311, 4, 'Add Another', 0, NULL, NULL),
(1704, 544, 4, 'Start Month', 0, NULL, NULL),
(1705, 633, 4, 'Cancelled', 0, NULL, NULL),
(1706, 549, 4, 'Add Leave Entitlement', 0, NULL, NULL),
(1707, 557, 4, 'Entitlement', 0, NULL, NULL),
(1708, 226, 4, 'No matching employees', 0, NULL, NULL),
(1709, 319, 4, 'Entitlements', 0, NULL, NULL),
(1710, 316, 4, 'Add Entitlements', 0, NULL, NULL),
(1711, 318, 4, 'Employee Entitlements', 0, NULL, NULL),
(1712, 617, 4, 'Valid From', 0, NULL, NULL),
(1713, 618, 4, 'Valid To', 0, NULL, NULL),
(1714, 227, 4, 'No employees match the selected filters', 0, NULL, NULL),
(1715, 565, 4, 'Leave Entitlements and Usage Report', 0, NULL, NULL),
(1716, 569, 4, 'My Leave Entitlements and Usage Report', 0, NULL, NULL),
(1717, 583, 4, 'Matching Employees', 0, NULL, NULL),
(1718, 566, 4, 'Generate For', 0, NULL, NULL),
(1719, 225, 4, 'Confirm', 0, NULL, NULL),
(1720, 315, 4, 'My Entitlements', 0, NULL, NULL),
(1721, 260, 4, 'User Management', 0, NULL, NULL),
(1722, 598, 4, 'Available Balance', 0, NULL, NULL),
(1723, 594, 4, 'Balance not sufficient', 0, NULL, NULL),
(1724, 8, 4, 'Email Configuration', 0, NULL, NULL),
(1725, 26, 4, 'Email Subscriptions', 0, NULL, NULL),
(1726, 246, 4, 'About', 0, NULL, NULL),
(1727, 297, 4, 'Trackers', 0, NULL, NULL),
(1728, 298, 4, 'Employee Trackers', 0, NULL, NULL),
(1729, 295, 4, 'My Trackers', 0, NULL, NULL),
(1730, 643, 4, 'Activities', 0, NULL, NULL),
(1731, 59, 4, 'Add Currency', 0, NULL, NULL),
(1732, 647, 4, 'Add Customer', 0, NULL, NULL),
(1733, 30, 4, 'Add Employment Status', 0, NULL, NULL),
(1734, 73, 4, 'Add Job Category', 0, NULL, NULL),
(1735, 1, 4, 'Add Job Title', 0, NULL, NULL),
(1736, 6, 4, 'Add Location', 0, NULL, NULL),
(1737, 114, 4, 'Add Membership', 0, NULL, NULL),
(1738, 43, 4, 'Add Nationality', 0, NULL, NULL),
(1739, 53, 4, 'Add Pay Grade', 0, NULL, NULL),
(1740, 691, 4, 'Add Project', 0, NULL, NULL),
(1741, 658, 4, 'Add Project Activity', 0, NULL, NULL),
(1742, 28, 4, 'Add Subscriber', 0, NULL, NULL),
(1743, 61, 4, 'Add User', 0, NULL, NULL),
(1744, 76, 4, 'Add Work Shift', 0, NULL, NULL),
(1745, 69, 4, 'Assigned Employees', 0, NULL, NULL),
(1746, 244, 4, 'Better', 0, NULL, NULL),
(1747, 380, 4, 'Column order should not be changed', 0, NULL, NULL),
(1748, 650, 4, 'Copy Activity', 0, NULL, NULL),
(1749, 465, 4, 'Current Password', 0, NULL, NULL),
(1750, 654, 4, 'Customer Name', 0, NULL, NULL),
(1751, 80, 4, 'Date Format', 0, NULL, NULL),
(1752, 384, 4, 'Each import file should be configured for 100 records or less', 0, NULL, NULL),
(1753, 54, 4, 'Edit Currency', 0, NULL, NULL),
(1754, 675, 4, 'Edit Customer', 0, NULL, NULL),
(1755, 29, 4, 'Edit Employment Status', 0, NULL, NULL),
(1756, 74, 4, 'Edit Job Category', 0, NULL, NULL),
(1757, 2, 4, 'Edit Job Title', 0, NULL, NULL),
(1758, 32, 4, 'Edit Location', 0, NULL, NULL),
(1759, 113, 4, 'Edit Membership', 0, NULL, NULL),
(1760, 41, 4, 'Edit Nationality', 0, NULL, NULL),
(1761, 57, 4, 'Edit Pay Grade', 0, NULL, NULL),
(1762, 678, 4, 'Edit Project', 0, NULL, NULL),
(1763, 655, 4, 'Edit Project Activity', 0, NULL, NULL),
(1764, 25, 4, 'Edit Subscriber', 0, NULL, NULL),
(1765, 60, 4, 'Edit User', 0, NULL, NULL),
(1766, 62, 4, 'Edit Work Shift', 0, NULL, NULL),
(1767, 96, 4, 'Fax', 0, NULL, NULL),
(1768, 381, 4, 'First Name and Last Name are compulsory', 0, NULL, NULL),
(1769, 66, 4, 'Hours Per Day', 0, NULL, NULL),
(1770, 31, 4, 'Job Description', 0, NULL, NULL),
(1771, 9, 4, 'Mail Sent As', 0, NULL, NULL),
(1772, 56, 4, 'Maximum Salary', 0, NULL, NULL),
(1773, 55, 4, 'Minimum Salary', 0, NULL, NULL),
(1774, 33, 4, 'Module Configuration', 0, NULL, NULL),
(1775, 747, 4, 'New Password', 0, NULL, NULL),
(1776, 653, 4, 'No activities selected', 0, NULL, NULL),
(1777, 652, 4, 'No assigned activities', 0, NULL, NULL),
(1778, 27, 4, 'Notification Type', 0, NULL, NULL),
(1779, 5, 4, 'Number of Employees', 0, NULL, NULL),
(1780, 45, 4, 'Organization Name', 0, NULL, NULL),
(1781, 14, 4, 'Path to Sendmail', 0, NULL, NULL),
(1782, 88, 4, 'Phone', 0, NULL, NULL),
(1783, 657, 4, 'Project', 0, NULL, NULL),
(1784, 656, 4, 'Project Admin', 0, NULL, NULL),
(1785, 676, 4, 'Project Admins', 0, NULL, NULL),
(1786, 46, 4, 'Registration Number', 0, NULL, NULL),
(1787, 10, 4, 'Sending Method', 0, NULL, NULL),
(1788, 63, 4, 'Shift Name', 0, NULL, NULL),
(1789, 19, 4, 'SMTP Password', 0, NULL, NULL),
(1790, 16, 4, 'SMTP Port', 0, NULL, NULL),
(1791, 18, 4, 'SMTP User', 0, NULL, NULL),
(1792, 245, 4, 'Strongest', 0, NULL, NULL),
(1793, 24, 4, 'Subscribers', 0, NULL, NULL),
(1794, 75, 4, 'System Users', 0, NULL, NULL),
(1795, 47, 4, 'Tax ID', 0, NULL, NULL),
(1796, 23, 4, 'Test Email Address', 0, NULL, NULL),
(1797, 52, 4, 'This unit will be added under', 0, NULL, NULL),
(1798, 20, 4, 'TLS', 0, NULL, NULL),
(1799, 49, 4, 'Unit Id', 0, NULL, NULL),
(1800, 17, 4, 'Use SMTP Authentication', 0, NULL, NULL),
(1801, 243, 4, 'Very Weak', 0, NULL, NULL),
(1802, 242, 4, 'Weak', 0, NULL, NULL),
(1803, 71, 4, 'Should be higher than Minimum Salary', 0, NULL, NULL),
(1804, 382, 4, 'All date fields should be in YYYY-MM-DD format', 0, NULL, NULL),
(1805, 385, 4, 'Multiple import files may be required', 0, NULL, NULL),
(1806, 50, 4, 'Organization Structure', 0, NULL, NULL),
(1807, 276, 4, 'Dashboard', 0, NULL, NULL),
(1808, 570, 4, 'Apply Leave', 0, NULL, NULL),
(1809, 686, 4, 'My Timesheet', 0, NULL, NULL),
(1810, 669, 4, 'Actions Performed on the Timesheet', 0, NULL, NULL),
(1811, 662, 4, 'Add Row', 0, NULL, NULL),
(1812, 648, 4, 'Add Timesheet', 0, NULL, NULL),
(1813, 704, 4, 'Attendance Total Summary Report', 0, NULL, NULL),
(1814, 672, 4, 'Define Timesheet Period', 0, NULL, NULL),
(1815, 690, 4, 'Edit Timesheet for', 0, NULL, NULL),
(1816, 683, 4, 'Employee Report', 0, NULL, NULL),
(1817, 667, 4, 'Should Be Less Than 24 and in HH:MM or Decimal Format', 0, NULL, NULL),
(1818, 308, 4, 'Fri', 0, NULL, NULL),
(1819, 304, 4, 'Mon', 0, NULL, NULL),
(1820, 679, 4, 'Project Report', 0, NULL, NULL),
(1821, 309, 4, 'Sat', 0, NULL, NULL),
(1822, 649, 4, 'Select a Day to Create Timesheet', 0, NULL, NULL),
(1823, 684, 4, 'Select Employee', 0, NULL, NULL),
(1824, 303, 4, 'Sun', 0, NULL, NULL),
(1825, 307, 4, 'Thu', 0, NULL, NULL),
(1826, 689, 4, 'Timesheet for', 0, NULL, NULL),
(1827, 671, 4, 'Timesheet Period', 0, NULL, NULL),
(1828, 670, 4, 'Timesheets Pending Action', 0, NULL, NULL),
(1829, 305, 4, 'Tue', 0, NULL, NULL),
(1830, 306, 4, 'Wed', 0, NULL, NULL),
(1831, 666, 4, 'Select a Project and an Activity', 0, NULL, NULL),
(1832, 660, 4, 'No Timesheets Found', 0, NULL, NULL),
(1833, 694, 4, 'Timesheet Approved', 0, NULL, NULL),
(1834, 693, 4, 'Timesheet Rejected', 0, NULL, NULL),
(1835, 668, 4, 'Total Should Be Less Than 24 Hours', 0, NULL, NULL),
(1836, 491, 4, 'Account Number', 0, NULL, NULL),
(1837, 492, 4, 'Account Type', 0, NULL, NULL),
(1838, 513, 4, 'Activate Employment', 0, NULL, NULL),
(1839, 378, 4, 'Add Custom Field', 0, NULL, NULL),
(1840, 506, 4, 'Add Dependent', 0, NULL, NULL),
(1841, 505, 4, 'Add Immigration', 0, NULL, NULL),
(1842, 450, 4, 'Add Reporting Method', 0, NULL, NULL),
(1843, 461, 4, 'Add Termination Reason', 0, NULL, NULL),
(1844, 501, 4, 'Add Work Experience', 0, NULL, NULL),
(1845, 399, 4, 'Assigned Dependents', 0, NULL, NULL),
(1846, 402, 4, 'Assigned Emergency Contacts', 0, NULL, NULL),
(1847, 405, 4, 'Assigned Immigration Records', 0, NULL, NULL),
(1848, 415, 4, 'Assigned Memberships', 0, NULL, NULL),
(1849, 498, 4, 'Assigned Subordinates', 0, NULL, NULL),
(1850, 499, 4, 'Assigned Supervisors', 0, NULL, NULL),
(1851, 475, 4, 'At least one phone number is required', 0, NULL, NULL),
(1852, 469, 4, 'Child', 0, NULL, NULL),
(1853, 414, 4, 'Contract Details', 0, NULL, NULL),
(1854, 445, 4, 'Country Specific Information', 0, NULL, NULL),
(1855, 441, 4, 'Create Login Details', 0, NULL, NULL),
(1856, 370, 4, 'Custom Field Name', 0, NULL, NULL),
(1857, 406, 4, 'Document', 0, NULL, NULL),
(1858, 526, 4, 'Drop Down', 0, NULL, NULL),
(1859, 374, 4, 'Edit Custom Field', 0, NULL, NULL),
(1860, 467, 4, 'Edit Dependent', 0, NULL, NULL),
(1861, 474, 4, 'Edit Emergency Contact', 0, NULL, NULL),
(1862, 449, 4, 'Edit Reporting Method', 0, NULL, NULL),
(1863, 460, 4, 'Edit Termination Reason', 0, NULL, NULL),
(1864, 388, 4, 'Employee Information', 0, NULL, NULL),
(1865, 377, 4, 'Enter allowed options separated by commas', 0, NULL, NULL),
(1866, 438, 4, 'Exemptions', 0, NULL, NULL),
(1867, 437, 4, 'Federal Income Tax', 0, NULL, NULL),
(1868, 375, 4, 'Field Name', 0, NULL, NULL),
(1869, 372, 4, 'Field Type', 0, NULL, NULL),
(1870, 205, 4, 'From date should be before to date', 0, NULL, NULL),
(1871, 473, 4, 'GPA/Score', 0, NULL, NULL),
(1872, 471, 4, 'Institute', 0, NULL, NULL),
(1873, 472, 4, 'Major/Specialization', 0, NULL, NULL),
(1874, 428, 4, 'Military Service', 0, NULL, NULL),
(1875, 478, 4, 'Passport', 0, NULL, NULL),
(1876, 339, 4, 'Personal Details', 0, NULL, NULL),
(1877, 468, 4, 'Please Specify', 0, NULL, NULL),
(1878, 344, 4, 'Report-to', 0, NULL, NULL),
(1879, 371, 4, 'Screen', 0, NULL, NULL),
(1880, 376, 4, 'Select Options', 0, NULL, NULL),
(1881, 443, 4, 'Show Deprecated Fields', 0, NULL, NULL),
(1882, 444, 4, 'Show Nick Name, Smoker and Military Service in Personal Details', 0, NULL, NULL),
(1883, 447, 4, 'Show SIN field in Personal Details', 0, NULL, NULL),
(1884, 446, 4, 'Show SSN field in Personal Details', 0, NULL, NULL),
(1885, 448, 4, 'Show US Tax Exemptions menu', 0, NULL, NULL),
(1886, 425, 4, 'SIN Number', 0, NULL, NULL),
(1887, 429, 4, 'Smoker', 0, NULL, NULL),
(1888, 424, 4, 'SSN Number', 0, NULL, NULL),
(1889, 345, 4, 'Tax Exemptions', 0, NULL, NULL),
(1890, 508, 4, 'Terminate Employment', 0, NULL, NULL),
(1891, 525, 4, 'Text or Number', 0, NULL, NULL),
(1892, 439, 4, 'Unemployment State', 0, NULL, NULL),
(1893, 479, 4, 'Visa', 0, NULL, NULL),
(1894, 440, 4, 'Work State', 0, NULL, NULL),
(1895, 391, 4, 'First (& Middle) Name', 0, NULL, NULL),
(1896, 517, 4, 'Eligibility Status', 0, NULL, NULL),
(1897, 518, 4, 'Eligibility Review Date', 0, NULL, NULL),
(1898, 152, 4, 'Actions', 0, NULL, NULL),
(1899, 576, 4, 'Assign', 0, NULL, NULL),
(1900, 545, 4, 'Current Leave Period', 0, NULL, NULL),
(1901, 712, 4, 'Duration (Hours)', 0, NULL, NULL),
(1902, 546, 4, 'Following Year', 0, NULL, NULL),
(1903, 220, 4, 'From Date', 0, NULL, NULL),
(1904, 542, 4, 'Full Day', 0, NULL, NULL),
(1905, 630, 4, 'Half Day', 0, NULL, NULL),
(1906, 593, 4, 'Leave Balance', 0, NULL, NULL),
(1907, 567, 4, 'Leave Type', 0, NULL, NULL),
(1908, 581, 4, 'My Leave List', 0, NULL, NULL),
(1909, 571, 4, 'No Leave Types with Leave Balance', 0, NULL, NULL),
(1910, 631, 4, 'Non-working Day', 0, NULL, NULL),
(1911, 620, 4, 'Number of Days', 0, NULL, NULL),
(1912, 605, 4, 'Pending Approval', 0, NULL, NULL),
(1913, 538, 4, 'Repeats Annually', 0, NULL, NULL),
(1914, 578, 4, 'Show Leave with Status', 0, NULL, NULL),
(1915, 603, 4, 'Taken', 0, NULL, NULL),
(1916, 221, 4, 'To Date', 0, NULL, NULL),
(1917, 628, 4, 'Failed to Submit: No Working Days Selected', 0, NULL, NULL),
(1918, 627, 4, 'Failed to Submit', 0, NULL, NULL),
(1919, 562, 4, 'Add Leave Type', 0, NULL, NULL),
(1920, 563, 4, 'Edit Leave Type', 0, NULL, NULL),
(1921, 582, 4, 'Updating Entitlement', 0, NULL, NULL),
(1922, 556, 4, 'Edit Leave Entitlement', 0, NULL, NULL),
(1923, 584, 4, 'The selected leave entitlement will be applied to the following employees.', 0, NULL, NULL),
(1924, 585, 4, 'Old Entitlement', 0, NULL, NULL),
(1925, 586, 4, 'New Entitlement', 0, NULL, NULL),
(1926, 558, 4, 'Used amount exceeds the current amount', 0, NULL, NULL),
(1927, 599, 4, 'Leave Balance Details', 0, NULL, NULL),
(1928, 596, 4, 'Balance', 0, NULL, NULL),
(1929, 613, 4, 'Duration should be less than work shift length', 0, NULL, NULL),
(1930, 600, 4, 'As of Date', 0, NULL, NULL),
(1931, 560, 4, 'My Leave Entitlements', 0, NULL, NULL),
(1932, 609, 4, 'Leave Request Comments', 0, NULL, NULL),
(1933, 589, 4, 'Confirm Leave Assignment', 0, NULL, NULL),
(1934, 590, 4, 'Employee does not have sufficient leave balance for leave request.', 0, NULL, NULL),
(1935, 591, 4, 'Click OK to confirm leave assignment.', 0, NULL, NULL),
(1936, 616, 4, 'Specify Time', 0, NULL, NULL),
(1937, 572, 4, 'Partial Days', 0, NULL, NULL),
(1938, 574, 4, 'Start Day', 0, NULL, NULL),
(1939, 575, 4, 'End Day', 0, NULL, NULL),
(1940, 292, 4, 'KPIs', 0, NULL, NULL),
(1941, 293, 4, 'Manage Reviews', 0, NULL, NULL),
(1942, 294, 4, 'My Reviews', 0, NULL, NULL),
(1943, 296, 4, 'Review List', 0, NULL, NULL),
(1944, 138, 4, 'End date should be after Start date', 0, NULL, NULL),
(1945, 607, 4, 'Are you sure you want to continue?', 0, NULL, NULL),
(1946, 706, 4, 'Punch In', 0, NULL, NULL),
(1947, 710, 4, 'Punch In Note', 0, NULL, NULL),
(1948, 708, 4, 'Punch Out', 0, NULL, NULL),
(1949, 711, 4, 'Punch Out Note', 0, NULL, NULL),
(1950, 709, 4, 'Overlapping Records Found', 0, NULL, NULL),
(1951, 715, 4, 'Timezone', 0, NULL, NULL),
(1952, 717, 4, 'In', 0, NULL, NULL),
(1953, 718, 4, 'Out', 0, NULL, NULL),
(1954, 700, 4, 'Attendance Configuration', 0, NULL, NULL),
(1955, 701, 4, 'Employee can change current time when punching in/out', 0, NULL, NULL),
(1956, 702, 4, 'Employee can edit/delete own attendance records', 0, NULL, NULL),
(1957, 703, 4, 'Supervisor can add/edit/delete attendance records of subordinates', 0, NULL, NULL),
(1958, 714, 4, 'My Attendance Records', 0, NULL, NULL),
(1959, 268, 4, 'Social Media Authentication', 0, NULL, NULL),
(1960, 735, 4, 'Login', 0, NULL, NULL),
(1961, 267, 4, 'Register OAuth Client', 0, NULL, NULL),
(1962, 239, 4, 'For a strong password, please use a hard to guess combination of text with upper and lower case characters, symbols and numbers', 0, NULL, NULL),
(1963, 559, 4, 'Leave Entitlements', 0, NULL, NULL),
(1964, 279, 4, 'Maintenance', 0, NULL, NULL),
(1965, 719, 4, 'Purge Employee Records', 0, NULL, NULL),
(1966, 301, 4, 'Purge Records', 0, NULL, NULL),
(1967, 300, 4, 'Access Records', 0, NULL, NULL),
(1968, 728, 4, 'Download Personal Data', 0, NULL, NULL),
(1969, 726, 4, 'Selected Employee', 0, NULL, NULL),
(1970, 722, 4, 'Purge', 0, NULL, NULL),
(1971, 723, 4, 'Purge Employee', 0, NULL, NULL),
(1972, 744, 4, 'Reset Password', 0, NULL, NULL),
(1973, 278, 4, 'Buzz', 0, NULL, NULL),
(1974, 160, 4, 'Success', 0, NULL, NULL),
(1975, 277, 4, 'Directory', 0, NULL, NULL),
(1976, 13, 4, 'Sendmail', 0, NULL, NULL),
(1977, 12, 4, 'SMTP', 0, NULL, NULL),
(1978, 554, 4, 'No leave types defined', 0, NULL, NULL),
(1979, 265, 4, 'Language Packages', 0, NULL, NULL),
(1980, 247, 4, 'Support', 0, NULL, NULL),
(1981, 731, 4, 'Learning how to use a new application can be challenging. At OrangeHRM, we are committed to providing you with the necessary knowledge and skills required to fully utilize the application thereby allowing you to quickly and efficiently manage your HR processes.', 0, NULL, NULL),
(1982, 732, 4, 'The following information repositories are available to help you understand the application:', 0, NULL, NULL),
(1983, 730, 4, 'Customer Support', 0, NULL, NULL),
(1984, 733, 4, 'Should you experience any issues, please do not hesitate to contact us on', 0, NULL, NULL),
(1985, 322, 4, 'Company Name', 0, NULL, NULL),
(1986, 352, 4, 'Successfully Deleted', 0, NULL, NULL),
(1987, 696, 4, 'Punch out Time Should Be Later Than Punch in Time', 0, NULL, NULL),
(1988, 756, 4, 'Forgot your password', 0, NULL, NULL),
(1989, 736, 4, 'Username', 0, NULL, NULL),
(1990, 737, 4, 'Password', 0, NULL, NULL),
(1991, 250, 4, 'No Records Found', 0, NULL, NULL),
(1992, 698, 4, 'Timesheet Submitted', 0, NULL, NULL),
(1993, 198, 4, 'Middle Name', 0, NULL, NULL),
(1994, 197, 4, 'First Name', 0, NULL, NULL),
(1995, 87, 7, 'Agregar', 0, NULL, NULL),
(1996, 208, 7, 'Adjuntar Archivo', 0, NULL, NULL),
(1997, 180, 7, 'Agregar Empleado', 0, NULL, NULL),
(1998, 503, 7, 'Añadido por', 0, NULL, NULL),
(1999, 7, 7, 'Domicilio', 0, NULL, NULL),
(2000, 129, 7, 'Administrador', 0, NULL, NULL),
(2001, 530, 7, 'Grupo Etario', 0, NULL, NULL),
(2002, 143, 7, 'Solo permite números y + - / ( )', 0, NULL, NULL),
(2003, 125, 7, 'Ya existe', 0, NULL, NULL),
(2004, 434, 7, 'Monto', 0, NULL, NULL),
(2005, 223, 7, 'Solicitar', 0, NULL, NULL),
(2006, 573, 7, 'Asignar Permiso', 0, NULL, NULL),
(2007, 489, 7, 'Asignación de conceptos salariales', 0, NULL, NULL),
(2008, 140, 7, 'Tamaño del adjunto demasiado grande', 0, NULL, NULL),
(2009, 286, 7, 'Asistencia', 0, NULL, NULL),
(2010, 313, 7, 'Resumen de Asistencia', 0, NULL, NULL),
(2011, 224, 7, 'Atrás', 0, NULL, NULL),
(2012, 92, 7, 'Cancelar', 0, NULL, NULL),
(2013, 291, 7, 'Candidatos', 0, NULL, NULL),
(2014, 248, 7, 'Cambiar contraseña', 0, NULL, NULL),
(2015, 186, 7, 'Comentario', 0, NULL, NULL),
(2016, 191, 7, 'Comentarios', 0, NULL, NULL),
(2017, 496, 7, 'Empresa', 0, NULL, NULL),
(2018, 484, 7, 'Habilidades/ Competencias', 0, NULL, NULL),
(2019, 264, 7, 'Configuración', 0, NULL, NULL);
INSERT INTO `ohrm_i18n_translate` (`id`, `lang_string_id`, `language_id`, `value`, `customized`, `version`, `modified_at`) VALUES
(2020, 317, 7, 'Configurar', 0, NULL, NULL),
(2021, 393, 7, 'Datos de contacto', 0, NULL, NULL),
(2022, 413, 7, 'Fecha de finalización del contrato', 0, NULL, NULL),
(2023, 412, 7, 'Fecha de inicio del contrato', 0, NULL, NULL),
(2024, 84, 7, 'País', 0, NULL, NULL),
(2025, 102, 7, 'Moneda', 0, NULL, NULL),
(2026, 168, 7, 'Empleados actuales y anteriores', 0, NULL, NULL),
(2027, 170, 7, 'Sólo los empleados actuales', 0, NULL, NULL),
(2028, 367, 7, 'Campos personalizados', 0, NULL, NULL),
(2029, 287, 7, 'Clientes', 0, NULL, NULL),
(2030, 379, 7, 'Importación de datos', 0, NULL, NULL),
(2031, 210, 7, 'Fecha', 0, NULL, NULL),
(2032, 502, 7, 'Fecha en la que fue agregado', 0, NULL, NULL),
(2033, 401, 7, 'Fecha de Nacimiento', 0, NULL, NULL),
(2034, 597, 7, 'Días', 0, NULL, NULL),
(2035, 330, 7, 'Eliminar actual', 0, NULL, NULL),
(2036, 341, 7, 'Cargas Familiares', 0, NULL, NULL),
(2037, 101, 7, 'Descripción', 0, NULL, NULL),
(2038, 521, 7, 'Número de Cuenta Bancaria', 0, NULL, NULL),
(2039, 522, 7, 'Tipo de Cuenta Bancaria', 0, NULL, NULL),
(2040, 436, 7, 'Monto del Depósito Bancario', 0, NULL, NULL),
(2041, 150, 7, 'Deshabilitado', 0, NULL, NULL),
(2042, 455, 7, 'Mostrar los campos', 0, NULL, NULL),
(2043, 519, 7, 'Tipo de documento', 0, NULL, NULL),
(2044, 422, 7, 'Número de licencia de conducir\'s', 0, NULL, NULL),
(2045, 222, 7, 'Duración', 0, NULL, NULL),
(2046, 98, 7, 'Editar', 0, NULL, NULL),
(2047, 151, 7, 'Editar adjunto', 0, NULL, NULL),
(2048, 477, 7, 'Editar Inmigración', 0, NULL, NULL),
(2049, 488, 7, 'Editar conceptos salariales', 0, NULL, NULL),
(2050, 106, 7, 'Educación/Formación', 0, NULL, NULL),
(2051, 481, 7, 'Fecha de habilitación', 0, NULL, NULL),
(2052, 480, 7, 'Estado', 0, NULL, NULL),
(2053, 340, 7, 'Contactos de Emergencia', 0, NULL, NULL),
(2054, 218, 7, 'Empleado', 0, NULL, NULL),
(2055, 515, 7, 'Nombre del Empleado', 0, NULL, NULL),
(2056, 163, 7, 'Id del empleado', 0, NULL, NULL),
(2057, 514, 7, 'Apellido del empleado', 0, NULL, NULL),
(2058, 269, 7, 'Lista de empleados', 0, NULL, NULL),
(2059, 516, 7, 'Segundo Nombre', 0, NULL, NULL),
(2060, 122, 7, 'Nombre del Empleado', 0, NULL, NULL),
(2061, 285, 7, 'Registros de empleados', 0, NULL, NULL),
(2062, 183, 7, 'Reportes de empleados', 0, NULL, NULL),
(2063, 282, 7, 'Hojas de asistencia de los empleados', 0, NULL, NULL),
(2064, 142, 7, 'Estado del Empleado', 0, NULL, NULL),
(2065, 149, 7, 'Habilitado', 0, NULL, NULL),
(2066, 190, 7, 'Fecha de finalización', 0, NULL, NULL),
(2067, 148, 7, 'Autogestión del Empleado', 0, NULL, NULL),
(2068, 347, 7, 'El formato esperado es: admin@example.com', 0, NULL, NULL),
(2069, 172, 7, 'Fecha de Vencimiento', 0, NULL, NULL),
(2070, 482, 7, 'La fecha de vencimiento debe ser posterior a la fecha de emisión', 0, NULL, NULL),
(2071, 176, 7, 'Femenino', 0, NULL, NULL),
(2072, 202, 7, 'Nombre del archivo', 0, NULL, NULL),
(2073, 523, 7, 'Primer Nombre', 0, NULL, NULL),
(2074, 483, 7, 'Fluidez', 0, NULL, NULL),
(2075, 215, 7, 'Viernes', 0, NULL, NULL),
(2076, 123, 7, 'Desde', 0, NULL, NULL),
(2077, 427, 7, 'Género', 0, NULL, NULL),
(2078, 44, 7, 'Información General', 0, NULL, NULL),
(2079, 540, 7, 'Vacaciones', 0, NULL, NULL),
(2080, 403, 7, 'Teléfono de la casa', 0, NULL, NULL),
(2081, 164, 7, 'Identificación', 0, NULL, NULL),
(2082, 342, 7, 'Inmigración', 0, NULL, NULL),
(2083, 389, 7, 'Incluir', 0, NULL, NULL),
(2084, 207, 7, 'Incluir Encabezado', 0, NULL, NULL),
(2085, 568, 7, 'Incluir a los empleados anteriores', 0, NULL, NULL),
(2086, 408, 7, 'Emitido por', 0, NULL, NULL),
(2087, 409, 7, 'Fecha de Emisión', 0, NULL, NULL),
(2088, 258, 7, 'Puesto de Trabajo', 0, NULL, NULL),
(2089, 72, 7, 'Categorías de Puestos', 0, NULL, NULL),
(2090, 133, 7, 'Categoría del Puesto', 0, NULL, NULL),
(2091, 200, 7, 'Descripción del Puesto', 0, NULL, NULL),
(2092, 166, 7, 'Título del Puesto', 0, NULL, NULL),
(2093, 3, 7, 'Títulos de los Puestos', 0, NULL, NULL),
(2094, 173, 7, 'Fecha de Ingreso', 0, NULL, NULL),
(2095, 329, 7, 'Mantener actualizado', 0, NULL, NULL),
(2096, 193, 7, 'Idioma', 0, NULL, NULL),
(2097, 110, 7, 'Idiomas', 0, NULL, NULL),
(2098, 165, 7, 'Apellido del empleado', 0, NULL, NULL),
(2099, 229, 7, 'Licencias y Permisos', 0, NULL, NULL),
(2100, 621, 7, 'Días disponibles', 0, NULL, NULL),
(2101, 577, 7, 'Listado de licencias y permisos', 0, NULL, NULL),
(2102, 543, 7, 'Período de permiso', 0, NULL, NULL),
(2103, 564, 7, 'Tipos de permisos', 0, NULL, NULL),
(2104, 105, 7, 'Nivel', 0, NULL, NULL),
(2105, 497, 7, 'Licencia', 0, NULL, NULL),
(2106, 423, 7, 'Fecha de caducidad de licencia', 0, NULL, NULL),
(2107, 486, 7, 'Número de licencia', 0, NULL, NULL),
(2108, 485, 7, 'Tipo de licencia', 0, NULL, NULL),
(2109, 77, 7, 'Licencias', 0, NULL, NULL),
(2110, 78, 7, 'Localización', 0, NULL, NULL),
(2111, 174, 7, 'Ubicación', 0, NULL, NULL),
(2112, 4, 7, 'Localizaciones', 0, NULL, NULL),
(2113, 249, 7, 'Cerrar sesión', 0, NULL, NULL),
(2114, 175, 7, 'Masculino', 0, NULL, NULL),
(2115, 426, 7, 'Estado civil', 0, NULL, NULL),
(2116, 416, 7, 'Membresía', 0, NULL, NULL),
(2117, 115, 7, 'Membresías', 0, NULL, NULL),
(2118, 171, 7, 'Celular', 0, NULL, NULL),
(2119, 266, 7, 'Módulos', 0, NULL, NULL),
(2120, 211, 7, 'Lunes', 0, NULL, NULL),
(2121, 314, 7, 'Mis Permisos', 0, NULL, NULL),
(2122, 281, 7, 'Mis registros', 0, NULL, NULL),
(2123, 280, 7, 'Mis hojas de asistencia', 0, NULL, NULL),
(2124, 82, 7, 'Nombre', 0, NULL, NULL),
(2125, 42, 7, 'Nacionalidades', 0, NULL, NULL),
(2126, 97, 7, 'Nacionalidad', 0, NULL, NULL),
(2127, 94, 7, 'No', 0, NULL, NULL),
(2128, 256, 7, 'Comentarios- Notas', 0, NULL, NULL),
(2129, 407, 7, 'Número', 0, NULL, NULL),
(2130, 681, 7, 'Sólo incluir hojas de asistencia aprobadas', 0, NULL, NULL),
(2131, 442, 7, 'Campos opcionales', 0, NULL, NULL),
(2132, 262, 7, 'Estructura Organizacional', 0, NULL, NULL),
(2133, 470, 7, 'Otro', 0, NULL, NULL),
(2134, 321, 7, 'Otros correos electrónicos', 0, NULL, NULL),
(2135, 421, 7, 'Otra ID', 0, NULL, NULL),
(2136, 720, 7, 'Empleado anterior', 0, NULL, NULL),
(2137, 169, 7, 'Empleados anteriores solamente', 0, NULL, NULL),
(2138, 435, 7, 'Frecuencia de pago', 0, NULL, NULL),
(2139, 194, 7, 'Escala salarial', 0, NULL, NULL),
(2140, 58, 7, 'Escalas salariales', 0, NULL, NULL),
(2141, 275, 7, 'Desempeño', 0, NULL, NULL),
(2142, 512, 7, 'Personal', 0, NULL, NULL),
(2143, 271, 7, 'Módulo de Información Personal', 0, NULL, NULL),
(2144, 680, 7, 'Rango de fechas del proyecto', 0, NULL, NULL),
(2145, 261, 7, 'Información del Proyecto', 0, NULL, NULL),
(2146, 289, 7, 'Reportes de Proyectos', 0, NULL, NULL),
(2147, 288, 7, 'Proyectos', 0, NULL, NULL),
(2148, 284, 7, 'Registrar Entrada/ Salida', 0, NULL, NULL),
(2149, 272, 7, 'Reclutamiento', 0, NULL, NULL),
(2150, 400, 7, 'Relación', 0, NULL, NULL),
(2151, 331, 7, 'Reemplaza a la actual', 0, NULL, NULL),
(2152, 181, 7, 'Nombre del reporte', 0, NULL, NULL),
(2153, 476, 7, 'Método de reporte', 0, NULL, NULL),
(2154, 452, 7, 'Métodos de reporte', 0, NULL, NULL),
(2155, 270, 7, 'Reportes', 0, NULL, NULL),
(2156, 130, 7, 'Obligatorio', 0, NULL, NULL),
(2157, 85, 7, 'Reiniciar', 0, NULL, NULL),
(2158, 493, 7, 'Número de ruta', 0, NULL, NULL),
(2159, 343, 7, 'Salario/ Sueldo', 0, NULL, NULL),
(2160, 433, 7, 'Componente Salarial', 0, NULL, NULL),
(2161, 216, 7, 'Sábado', 0, NULL, NULL),
(2162, 131, 7, 'Guardar', 0, NULL, NULL),
(2163, 524, 7, 'Calificación', 0, NULL, NULL),
(2164, 86, 7, 'Buscar', 0, NULL, NULL),
(2165, 156, 7, 'Seleccione Archivo', 0, NULL, NULL),
(2166, 454, 7, 'Criterio de selección', 0, NULL, NULL),
(2167, 529, 7, 'Periodo de servicio', 0, NULL, NULL),
(2168, 137, 7, 'Debe ser un número', 0, NULL, NULL),
(2169, 179, 7, 'Debe ser un número positivo', 0, NULL, NULL),
(2170, 504, 7, 'Debe estar dentro del mín / máx de los valores', 0, NULL, NULL),
(2171, 203, 7, 'Tamaño', 0, NULL, NULL),
(2172, 494, 7, 'Habilidad', 0, NULL, NULL),
(2173, 118, 7, 'Habilidades', 0, NULL, NULL),
(2174, 189, 7, 'Fecha de inicio', 0, NULL, NULL),
(2175, 144, 7, 'La fecha de inicio debe ser anterior a la fecha de finalización', 0, NULL, NULL),
(2176, 178, 7, 'Estado', 0, NULL, NULL),
(2177, 120, 7, 'Estatus', 0, NULL, NULL),
(2178, 302, 7, 'Estructura', 0, NULL, NULL),
(2179, 167, 7, 'Sub Unidad', 0, NULL, NULL),
(2180, 528, 7, 'Colaboradores', 0, NULL, NULL),
(2181, 418, 7, 'Costo de la suscripción', 0, NULL, NULL),
(2182, 419, 7, 'Fecha de inicio de la suscripción', 0, NULL, NULL),
(2183, 417, 7, 'Pago de la suscripción a cargo de', 0, NULL, NULL),
(2184, 420, 7, 'Fecha de Renovación de la Suscripción', 0, NULL, NULL),
(2185, 255, 7, 'Guardado correctamente', 0, NULL, NULL),
(2186, 254, 7, 'Se ha actualizado correctamente', 0, NULL, NULL),
(2187, 217, 7, 'Domingo', 0, NULL, NULL),
(2188, 392, 7, 'Supervisor', 0, NULL, NULL),
(2189, 390, 7, 'Nombre de Supervisor', 0, NULL, NULL),
(2190, 527, 7, 'Supervisores', 0, NULL, NULL),
(2191, 462, 7, 'Razones de terminación de relación laboral', 0, NULL, NULL),
(2192, 214, 7, 'Jueves', 0, NULL, NULL),
(2193, 273, 7, 'Tiempo', 0, NULL, NULL),
(2194, 283, 7, 'Hojas de asistencia', 0, NULL, NULL),
(2195, 124, 7, 'A', 0, NULL, NULL),
(2196, 195, 7, 'La fecha \"hasta\" debe ser posterior de la fecha \"desde\"', 0, NULL, NULL),
(2197, 212, 7, 'Martes', 0, NULL, NULL),
(2198, 154, 7, 'Tipo', 0, NULL, NULL),
(2199, 263, 7, 'Usuarios', 0, NULL, NULL),
(2200, 290, 7, 'Vacantes', 0, NULL, NULL),
(2201, 213, 7, 'Miércoles', 0, NULL, NULL),
(2202, 320, 7, 'Correo electrónico laboral', 0, NULL, NULL),
(2203, 500, 7, 'Experiencia laboral', 0, NULL, NULL),
(2204, 65, 7, 'Turnos de trabajo', 0, NULL, NULL),
(2205, 404, 7, 'Teléfono del laboral', 0, NULL, NULL),
(2206, 547, 7, 'Semana laboral', 0, NULL, NULL),
(2207, 188, 7, 'Año', 0, NULL, NULL),
(2208, 495, 7, 'Años de experiencia', 0, NULL, NULL),
(2209, 93, 7, 'Sí', 0, NULL, NULL),
(2210, 241, 7, 'Las contraseñas no coinciden', 0, NULL, NULL),
(2211, 228, 7, 'Ok', 0, NULL, NULL),
(2212, 158, 7, 'Acepta hasta 1MB', 0, NULL, NULL),
(2213, 121, 7, 'Nombre de usuario', 0, NULL, NULL),
(2214, 238, 7, 'Contraseña', 0, NULL, NULL),
(2215, 159, 7, 'Cargar', 0, NULL, NULL),
(2216, 353, 7, 'Total', 0, NULL, NULL),
(2217, 509, 7, 'Fecha de salida', 0, NULL, NULL),
(2218, 510, 7, 'Razón de finalización del contrato', 0, NULL, NULL),
(2219, 645, 7, 'Nombre de la actividad', 0, NULL, NULL),
(2220, 107, 7, 'Añadir Formación', 0, NULL, NULL),
(2221, 109, 7, 'Agregar idioma', 0, NULL, NULL),
(2222, 112, 7, 'Agregar licencia', 0, NULL, NULL),
(2223, 117, 7, 'Añadir Habilidad', 0, NULL, NULL),
(2224, 99, 7, 'Dirección 1', 0, NULL, NULL),
(2225, 100, 7, 'Dirección 2', 0, NULL, NULL),
(2226, 83, 7, 'Ciudad', 0, NULL, NULL),
(2227, 240, 7, 'Confirme contraseña', 0, NULL, NULL),
(2228, 644, 7, 'Copiar desde', 0, NULL, NULL),
(2229, 651, 7, 'Nombre del proyecto', 0, NULL, NULL),
(2230, 104, 7, 'Editar educación/formación', 0, NULL, NULL),
(2231, 108, 7, 'Editar Idioma', 0, NULL, NULL),
(2232, 111, 7, 'Editar Licencia/Matrícula', 0, NULL, NULL),
(2233, 116, 7, 'Editar Habilidad', 0, NULL, NULL),
(2234, 89, 7, 'Estado / Provincia', 0, NULL, NULL),
(2235, 90, 7, 'Código Postal', 0, NULL, NULL),
(2236, 234, 7, 'Aprobar', 0, NULL, NULL),
(2237, 604, 7, 'Agendado', 0, NULL, NULL),
(2238, 91, 7, 'Nota', 0, NULL, NULL),
(2239, 201, 7, 'Archivos adjuntos', 0, NULL, NULL),
(2240, 155, 7, 'Descargar', 0, NULL, NULL),
(2241, 95, 7, 'Correo eléctronico', 0, NULL, NULL),
(2242, 310, 7, 'Realizado por', 0, NULL, NULL),
(2243, 235, 7, 'Rechazar', 0, NULL, NULL),
(2244, 632, 7, 'Rechazado', 0, NULL, NULL),
(2245, 348, 7, 'Ingresar', 0, NULL, NULL),
(2246, 312, 7, 'Ver', 0, NULL, NULL),
(2247, 274, 7, 'Mi Información', 0, NULL, NULL),
(2248, 119, 7, 'Rol de Usuario', 0, NULL, NULL),
(2249, 177, 7, 'Currículum', 0, NULL, NULL),
(2250, 184, 7, 'Archivo actual', 0, NULL, NULL),
(2251, 185, 7, 'Remplazar con', 0, NULL, NULL),
(2252, 311, 7, 'Añadir otro', 0, NULL, NULL),
(2253, 544, 7, 'Mes de comienzo', 0, NULL, NULL),
(2254, 633, 7, 'Cancelado', 0, NULL, NULL),
(2255, 549, 7, 'Agregar título de Licencia', 0, NULL, NULL),
(2256, 557, 7, 'Cargo', 0, NULL, NULL),
(2257, 226, 7, 'No coincide con ningún empleado', 0, NULL, NULL),
(2258, 319, 7, 'Autorizaciones', 0, NULL, NULL),
(2259, 316, 7, 'Agregar Autorizaciones', 0, NULL, NULL),
(2260, 318, 7, 'Autorizaciones del Empleado', 0, NULL, NULL),
(2261, 617, 7, 'Válido desde', 0, NULL, NULL),
(2262, 618, 7, 'Válido hasta', 0, NULL, NULL),
(2263, 227, 7, 'No coincide ningún empleado con el filtro seleccionado', 0, NULL, NULL),
(2264, 565, 7, 'Permisos y reportes de ausencias', 0, NULL, NULL),
(2265, 569, 7, 'Informe de mis licencias y permisos y los que ya se han utilizado', 0, NULL, NULL),
(2266, 583, 7, 'Empleados que coinciden', 0, NULL, NULL),
(2267, 566, 7, 'Generado por', 0, NULL, NULL),
(2268, 225, 7, 'Confirmar', 0, NULL, NULL),
(2269, 315, 7, 'Mis derechos', 0, NULL, NULL),
(2270, 260, 7, 'Administración de usuarios', 0, NULL, NULL),
(2271, 598, 7, 'Disponibilidad', 0, NULL, NULL),
(2272, 594, 7, 'Disponibilidad insuficiente', 0, NULL, NULL),
(2273, 8, 7, 'Configuración de Email', 0, NULL, NULL),
(2274, 26, 7, 'Suscripciones de Emails', 0, NULL, NULL),
(2275, 246, 7, 'Acerca de', 0, NULL, NULL),
(2276, 298, 7, 'Buscadores de Empleados', 0, NULL, NULL),
(2277, 295, 7, 'Mis Búsquedas', 0, NULL, NULL),
(2278, 643, 7, 'Actividades', 0, NULL, NULL),
(2279, 59, 7, 'Añadir Moneda', 0, NULL, NULL),
(2280, 647, 7, 'Añadir Usuario- Cliente', 0, NULL, NULL),
(2281, 30, 7, 'Añadir tipo de contrato', 0, NULL, NULL),
(2282, 73, 7, 'Agregar Categoría de Trabajo', 0, NULL, NULL),
(2283, 1, 7, 'Añadir Título del Puesto', 0, NULL, NULL),
(2284, 6, 7, 'Agregar ubicación', 0, NULL, NULL),
(2285, 114, 7, 'Agregar membresía', 0, NULL, NULL),
(2286, 43, 7, 'Agregar Nacionalidad', 0, NULL, NULL),
(2287, 53, 7, 'Añadir escala salarial', 0, NULL, NULL),
(2288, 691, 7, 'Agregar proyecto', 0, NULL, NULL),
(2289, 658, 7, 'Agregar Actividad del Proyecto', 0, NULL, NULL),
(2290, 28, 7, 'Agregar suscriptor', 0, NULL, NULL),
(2291, 61, 7, 'Agregar usuario', 0, NULL, NULL),
(2292, 76, 7, 'Agregar turno de trabajo', 0, NULL, NULL),
(2293, 69, 7, 'Empleados asignados', 0, NULL, NULL),
(2294, 244, 7, 'Mejor', 0, NULL, NULL),
(2295, 380, 7, 'El orden de la columna no debe ser cambiado', 0, NULL, NULL),
(2296, 650, 7, 'Copia Actividad', 0, NULL, NULL),
(2297, 465, 7, 'Contraseña actual', 0, NULL, NULL),
(2298, 654, 7, 'Nombre del cliente', 0, NULL, NULL),
(2299, 80, 7, 'Formato de fecha', 0, NULL, NULL),
(2300, 384, 7, 'Cada archivo de importación debe estar configurado para 100 registros o menos', 0, NULL, NULL),
(2301, 54, 7, 'Editar divisas/monedas', 0, NULL, NULL),
(2302, 675, 7, 'Editar Cliente', 0, NULL, NULL),
(2303, 29, 7, 'Editar tipo de contrato', 0, NULL, NULL),
(2304, 74, 7, 'Editar Jerarquía de Trabajo', 0, NULL, NULL),
(2305, 2, 7, 'Editar Nombe del Puesto', 0, NULL, NULL),
(2306, 32, 7, 'Editar ubicación', 0, NULL, NULL),
(2307, 113, 7, 'Editar membresía', 0, NULL, NULL),
(2308, 41, 7, 'Editar Nacionalidad', 0, NULL, NULL),
(2309, 57, 7, 'Editar el Escala Salarial', 0, NULL, NULL),
(2310, 678, 7, 'Editar Proyecto', 0, NULL, NULL),
(2311, 655, 7, 'Editar Actividad del Proyecto', 0, NULL, NULL),
(2312, 25, 7, 'Editar suscriptor', 0, NULL, NULL),
(2313, 60, 7, 'Editar usuario', 0, NULL, NULL),
(2314, 62, 7, 'Editar turno de trabajo', 0, NULL, NULL),
(2315, 96, 7, 'Fax', 0, NULL, NULL),
(2316, 381, 7, 'Los nombres y apellidos son obligatorios', 0, NULL, NULL),
(2317, 66, 7, 'Horas por día', 0, NULL, NULL),
(2318, 31, 7, 'Descripción del puesto', 0, NULL, NULL),
(2319, 9, 7, 'Correo enviado como', 0, NULL, NULL),
(2320, 56, 7, 'Salario máximo', 0, NULL, NULL),
(2321, 55, 7, 'Salario Mínimo', 0, NULL, NULL),
(2322, 33, 7, 'Configuración del módulo', 0, NULL, NULL),
(2323, 747, 7, 'Nueva contraseña', 0, NULL, NULL),
(2324, 653, 7, 'No hay actividades seleccionadas', 0, NULL, NULL),
(2325, 652, 7, 'No hay actividades asignadas', 0, NULL, NULL),
(2326, 27, 7, 'Tipo de notificación', 0, NULL, NULL),
(2327, 5, 7, 'Número de empleados', 0, NULL, NULL),
(2328, 45, 7, 'Nombre de la Firma', 0, NULL, NULL),
(2329, 14, 7, 'Ruta a Sendmail', 0, NULL, NULL),
(2330, 88, 7, 'Teléfono', 0, NULL, NULL),
(2331, 657, 7, 'Proyecto', 0, NULL, NULL),
(2332, 656, 7, 'Administrador del proyecto', 0, NULL, NULL),
(2333, 676, 7, 'Administradores del proyecto', 0, NULL, NULL),
(2334, 46, 7, 'Número de registro / matrícula', 0, NULL, NULL),
(2335, 10, 7, 'Método de Envío', 0, NULL, NULL),
(2336, 63, 7, 'Nombre del turno', 0, NULL, NULL),
(2337, 19, 7, 'Contraseña SMTP', 0, NULL, NULL),
(2338, 16, 7, 'Puerto SMTP', 0, NULL, NULL),
(2339, 18, 7, 'Usuario SMTP', 0, NULL, NULL),
(2340, 245, 7, 'Muy fuerte', 0, NULL, NULL),
(2341, 24, 7, 'Suscriptores', 0, NULL, NULL),
(2342, 75, 7, 'Usuarios del Sistema', 0, NULL, NULL),
(2343, 47, 7, 'CUIT- Clave Única de Identificación Tributaria', 0, NULL, NULL),
(2344, 23, 7, 'dirección de correo electrónico de prueba', 0, NULL, NULL),
(2345, 52, 7, 'Esta unidad se añadió debajo', 0, NULL, NULL),
(2346, 20, 7, 'TLS', 0, NULL, NULL),
(2347, 49, 7, 'Identificación de la Unidad', 0, NULL, NULL),
(2348, 17, 7, 'Utilizar autenticación SMTP', 0, NULL, NULL),
(2349, 243, 7, 'Muy débil', 0, NULL, NULL),
(2350, 242, 7, 'Débil', 0, NULL, NULL),
(2351, 71, 7, 'debe ser superior al Salario Mínimo', 0, NULL, NULL),
(2352, 382, 7, 'Todos los campos de fecha deben ser en formato AAAA-MM-DD', 0, NULL, NULL),
(2353, 385, 7, 'Varios archivos de importación pueden ser requeridos', 0, NULL, NULL),
(2354, 50, 7, 'Estructura Organizacional', 0, NULL, NULL),
(2355, 276, 7, 'Pizarra de pendientes', 0, NULL, NULL),
(2356, 570, 7, 'Solicitar Licencia/ Permiso', 0, NULL, NULL),
(2357, 686, 7, 'Mi hoja de asistencia', 0, NULL, NULL),
(2358, 669, 7, 'Acciones realizadas en los reportes de asistencia', 0, NULL, NULL),
(2359, 662, 7, 'Añadir fila', 0, NULL, NULL),
(2360, 648, 7, 'Añadir Reportes de asistencia', 0, NULL, NULL),
(2361, 704, 7, 'Informe de asistencias totales', 0, NULL, NULL),
(2362, 672, 7, 'Definir período de reporte de asistencia', 0, NULL, NULL),
(2363, 690, 7, 'Editar Reportes de Asistencia para', 0, NULL, NULL),
(2364, 683, 7, 'Reporte del Empleado', 0, NULL, NULL),
(2365, 667, 7, 'Debe ser inferior a 24 y en HH: MM o formato decimal', 0, NULL, NULL),
(2366, 308, 7, 'Vie', 0, NULL, NULL),
(2367, 304, 7, 'Lun', 0, NULL, NULL),
(2368, 679, 7, 'Informe del proyecto', 0, NULL, NULL),
(2369, 309, 7, 'Sab', 0, NULL, NULL),
(2370, 649, 7, 'Seleccione un día para crear Reporte de Asistencia', 0, NULL, NULL),
(2371, 684, 7, 'Seleccione Empleado', 0, NULL, NULL),
(2372, 303, 7, 'Dom', 0, NULL, NULL),
(2373, 307, 7, 'Jue', 0, NULL, NULL),
(2374, 689, 7, 'Reporte de asistencia de', 0, NULL, NULL),
(2375, 671, 7, 'Período de reporte de asistencia', 0, NULL, NULL),
(2376, 670, 7, 'Reportes pendientes de ejecutar', 0, NULL, NULL),
(2377, 305, 7, 'Mar', 0, NULL, NULL),
(2378, 306, 7, 'Mie', 0, NULL, NULL),
(2379, 666, 7, 'Seleccione un proyecto y una actividad', 0, NULL, NULL),
(2380, 660, 7, 'No se han encontrado reportes de asistencia', 0, NULL, NULL),
(2381, 694, 7, 'Reporte de asistencia Aprobado', 0, NULL, NULL),
(2382, 693, 7, 'Reporte de asistencia Rechazado', 0, NULL, NULL),
(2383, 668, 7, 'Elotal debe ser menor de 24 horas', 0, NULL, NULL),
(2384, 491, 7, 'Número de cuenta', 0, NULL, NULL),
(2385, 492, 7, 'Tipo de Cuenta', 0, NULL, NULL),
(2386, 513, 7, 'Activar Empleado', 0, NULL, NULL),
(2387, 378, 7, 'Agregar campos personalizables', 0, NULL, NULL),
(2388, 506, 7, 'Agregar carga familiar', 0, NULL, NULL),
(2389, 505, 7, 'Añadir datos de Inmigración', 0, NULL, NULL),
(2390, 450, 7, 'Agregar método de reporte de la organización', 0, NULL, NULL),
(2391, 461, 7, 'Añadir motivo de finalización de relación laboral', 0, NULL, NULL),
(2392, 501, 7, 'Agregar Experiencia Laboral', 0, NULL, NULL),
(2393, 399, 7, 'Cargas de familia asignados', 0, NULL, NULL),
(2394, 402, 7, 'Contactos de Emergencia asignados', 0, NULL, NULL),
(2395, 405, 7, 'Registro de Inmigración asignado', 0, NULL, NULL),
(2396, 415, 7, 'Membresías asignadas', 0, NULL, NULL),
(2397, 498, 7, 'Colaboradores asignados', 0, NULL, NULL),
(2398, 499, 7, 'Supervisores asignados', 0, NULL, NULL),
(2399, 475, 7, 'Por lo menos un número de teléfono es necesario', 0, NULL, NULL),
(2400, 469, 7, 'Hijo/a', 0, NULL, NULL),
(2401, 414, 7, 'Detalles del Contrato', 0, NULL, NULL),
(2402, 445, 7, 'Información Específica del País', 0, NULL, NULL),
(2403, 441, 7, 'Crear Usuarios y Contraseñas', 0, NULL, NULL),
(2404, 370, 7, 'Campo Personalizado', 0, NULL, NULL),
(2405, 406, 7, 'Documento', 0, NULL, NULL),
(2406, 526, 7, 'Menú Desplegable', 0, NULL, NULL),
(2407, 374, 7, 'Editar campo personalizado', 0, NULL, NULL),
(2408, 467, 7, 'Editar carga de familia', 0, NULL, NULL),
(2409, 474, 7, 'Editar Contacto de Emergencia', 0, NULL, NULL),
(2410, 449, 7, 'Editar método de reporte', 0, NULL, NULL),
(2411, 460, 7, 'Editar motivo del despido', 0, NULL, NULL),
(2412, 388, 7, 'Información del empleado', 0, NULL, NULL),
(2413, 377, 7, 'Ingrese las opciones permitidas separados por comas', 0, NULL, NULL),
(2414, 438, 7, 'Excepciones', 0, NULL, NULL),
(2415, 437, 7, 'Impuesto sobre la Renta Federal', 0, NULL, NULL),
(2416, 375, 7, 'Nombre de campo', 0, NULL, NULL),
(2417, 372, 7, 'Tipo de campo', 0, NULL, NULL),
(2418, 205, 7, 'La fecha ingresada debe ser anterior', 0, NULL, NULL),
(2419, 473, 7, 'Promedio', 0, NULL, NULL),
(2420, 471, 7, 'Institución', 0, NULL, NULL),
(2421, 472, 7, 'Título de Grado/ Posgrado', 0, NULL, NULL),
(2422, 428, 7, 'Servicio militar', 0, NULL, NULL),
(2423, 478, 7, 'Pasaporte', 0, NULL, NULL),
(2424, 339, 7, 'Datos Personales', 0, NULL, NULL),
(2425, 468, 7, 'Por favor, especifique', 0, NULL, NULL),
(2426, 344, 7, 'Reporta a', 0, NULL, NULL),
(2427, 371, 7, 'Pantalla', 0, NULL, NULL),
(2428, 376, 7, 'Seleccione Opciones', 0, NULL, NULL),
(2429, 443, 7, 'Mostrar los espacios rechazados', 0, NULL, NULL),
(2430, 444, 7, 'Mostrar apodo, fumador y Servicio Militar en los datos personales', 0, NULL, NULL),
(2431, 447, 7, 'Mostrar campo DNI en Datos de Detalles Personal', 0, NULL, NULL),
(2432, 446, 7, 'Mostrar en el campo de número de CUIL en Datos de Detalles Personal', 0, NULL, NULL),
(2433, 448, 7, 'Mostrar Excepciones Tributarias del país', 0, NULL, NULL),
(2434, 425, 7, 'DNI', 0, NULL, NULL),
(2435, 429, 7, 'Fumador', 0, NULL, NULL),
(2436, 424, 7, 'CUIL', 0, NULL, NULL),
(2437, 345, 7, 'Exenciones de impuestos', 0, NULL, NULL),
(2438, 508, 7, 'Terminar Relación Contractual', 0, NULL, NULL),
(2439, 525, 7, 'Texto o Número', 0, NULL, NULL),
(2440, 439, 7, 'Desempleado / Estado de desempleo', 0, NULL, NULL),
(2441, 479, 7, 'Visado', 0, NULL, NULL),
(2442, 440, 7, 'Estado laboral', 0, NULL, NULL),
(2443, 391, 7, 'Primer (& Middle) Nombre', 0, NULL, NULL),
(2444, 517, 7, 'Estado de elegibilidad', 0, NULL, NULL),
(2445, 518, 7, 'Fecha de revision de elegibilidad', 0, NULL, NULL),
(2446, 152, 7, 'Acciones', 0, NULL, NULL),
(2447, 576, 7, 'Asignar', 0, NULL, NULL),
(2448, 545, 7, 'Período de permiso actual', 0, NULL, NULL),
(2449, 712, 7, 'Duración (horas)', 0, NULL, NULL),
(2450, 546, 7, 'Año siguiente', 0, NULL, NULL),
(2451, 220, 7, 'Desde la fecha', 0, NULL, NULL),
(2452, 542, 7, 'Día completo', 0, NULL, NULL),
(2453, 630, 7, 'Medio Día', 0, NULL, NULL),
(2454, 593, 7, 'Disponibilidad actual', 0, NULL, NULL),
(2455, 567, 7, 'Tipo de Licencia/Permiso', 0, NULL, NULL),
(2456, 581, 7, 'Mi lista de Licencias', 0, NULL, NULL),
(2457, 571, 7, 'No hay tipos de permisos con disponibilidad', 0, NULL, NULL),
(2458, 631, 7, 'Día no laborable', 0, NULL, NULL),
(2459, 620, 7, 'Número de días', 0, NULL, NULL),
(2460, 605, 7, 'Pendiente de aprobación', 0, NULL, NULL),
(2461, 538, 7, 'Periodicidad /frecuencia anual', 0, NULL, NULL),
(2462, 578, 7, 'Mostrar Permiso con estado', 0, NULL, NULL),
(2463, 603, 7, 'Tomado', 0, NULL, NULL),
(2464, 221, 7, 'Hasta (Fecha)', 0, NULL, NULL),
(2465, 628, 7, 'Error al guardar: No hay días laborables seleccionados', 0, NULL, NULL),
(2466, 627, 7, 'Error al enviar', 0, NULL, NULL),
(2467, 562, 7, 'Agregar tipo de permiso', 0, NULL, NULL),
(2468, 563, 7, 'Editar tipo de permiso', 0, NULL, NULL),
(2469, 582, 7, 'Actualizar autorizaciones', 0, NULL, NULL),
(2470, 556, 7, 'Editar autorización de Permiso', 0, NULL, NULL),
(2471, 584, 7, 'La autorización de permiso seleccionado se aplicará a los siguientes empleados.', 0, NULL, NULL),
(2472, 585, 7, 'Permisos antiguos', 0, NULL, NULL),
(2473, 586, 7, 'Nuevos Permisos', 0, NULL, NULL),
(2474, 558, 7, 'La cantidad utilizada excede a la cantidad de días disponibles', 0, NULL, NULL),
(2475, 599, 7, 'Detalles de disponibilidad de Permisos', 0, NULL, NULL),
(2476, 596, 7, 'Disponibilidad', 0, NULL, NULL),
(2477, 613, 7, 'La duración debe ser menor el largo de la jornada laboral diaria', 0, NULL, NULL),
(2478, 600, 7, 'A partir de la fecha', 0, NULL, NULL),
(2479, 560, 7, 'Mis licencias/ permisos', 0, NULL, NULL),
(2480, 609, 7, 'Comentarios de solicitud de permiso', 0, NULL, NULL),
(2481, 589, 7, 'Confirmar permisos asignados', 0, NULL, NULL),
(2482, 590, 7, 'El empleado no tiene disponibilidad suficiente del permiso para solicitar.', 0, NULL, NULL),
(2483, 591, 7, 'Presione OK para confirmar permiso asignado.', 0, NULL, NULL),
(2484, 616, 7, 'Especificar hora', 0, NULL, NULL),
(2485, 572, 7, 'Días Parciales', 0, NULL, NULL),
(2486, 574, 7, 'Fecha de Inicio', 0, NULL, NULL),
(2487, 575, 7, 'Fecha de finalización', 0, NULL, NULL),
(2488, 293, 7, 'Administrar Evaluaciones', 0, NULL, NULL),
(2489, 294, 7, 'Mis Evaluaciones', 0, NULL, NULL),
(2490, 296, 7, 'Revisar Lista', 0, NULL, NULL),
(2491, 138, 7, 'Fecha final debe ser posterior de la fecha de inicio', 0, NULL, NULL),
(2492, 607, 7, '¿Está seguro de continuar?', 0, NULL, NULL),
(2493, 706, 7, 'Marcar Entrada / Fichar', 0, NULL, NULL),
(2494, 710, 7, 'Comentario sobre el Ingreso', 0, NULL, NULL),
(2495, 708, 7, 'Marcar Salida / Fichar', 0, NULL, NULL),
(2496, 711, 7, 'Comentario sobre el Egreso', 0, NULL, NULL),
(2497, 709, 7, 'Superposición de registros encontrados', 0, NULL, NULL),
(2498, 715, 7, 'Zona horaria', 0, NULL, NULL),
(2499, 717, 7, 'Entrada', 0, NULL, NULL),
(2500, 718, 7, 'Salida', 0, NULL, NULL),
(2501, 700, 7, 'Configuración de Asistencia', 0, NULL, NULL),
(2502, 701, 7, 'El empleado puede cambiar la hora cuando marca entrada/salida', 0, NULL, NULL),
(2503, 702, 7, 'El empleado puede editar / borrar los registros propios de asistencia', 0, NULL, NULL),
(2504, 703, 7, 'Supervisor puede añadir / editar / borrar los registros de asistencia de sus subordinados', 0, NULL, NULL),
(2505, 714, 7, 'Mis Registros de asistencia', 0, NULL, NULL),
(2506, 735, 7, 'Ingresar', 0, NULL, NULL),
(2507, 239, 7, 'Para una contraseña más fuerte, por favor, utilice una combinación de texto con mayúsculas y minúsculas, símbolos y números más difícil de adivinar', 0, NULL, NULL),
(2508, 559, 7, 'Solicitud a permiso', 0, NULL, NULL),
(2509, 278, 7, 'Buzz', 0, NULL, NULL),
(2510, 160, 7, 'Exito', 0, NULL, NULL),
(2511, 352, 7, 'Se ha eliminado correctamente', 0, NULL, NULL),
(2512, 696, 7, 'La hora de salida debe ser mayor que la hora de entrada', 0, NULL, NULL),
(2513, 756, 7, '¿Olvidó su contraseña', 0, NULL, NULL),
(2514, 736, 7, 'Nombre de usuario', 0, NULL, NULL),
(2515, 737, 7, 'Contraseña', 0, NULL, NULL),
(2516, 250, 7, 'No se encontraron registros', 0, NULL, NULL),
(2517, 698, 7, 'Reporte de asistencia enviado', 0, NULL, NULL),
(2518, 198, 7, 'Segundo Nombre', 0, NULL, NULL),
(2519, 197, 7, 'Primer Nombre', 0, NULL, NULL),
(2520, 87, 425, 'Añadir', 0, NULL, NULL),
(2521, 208, 425, 'Agregar archivo adjunto', 0, NULL, NULL),
(2522, 180, 425, 'Agregar Empleado', 0, NULL, NULL),
(2523, 503, 425, 'Añadido por', 0, NULL, NULL),
(2524, 7, 425, 'Dirección', 0, NULL, NULL),
(2525, 129, 425, 'Administración', 0, NULL, NULL),
(2526, 530, 425, 'Grupo de Edad', 0, NULL, NULL),
(2527, 143, 425, 'Permite números y sólo + - / ()', 0, NULL, NULL),
(2528, 125, 425, 'Ya existe', 0, NULL, NULL),
(2529, 434, 425, 'Cantidad', 0, NULL, NULL),
(2530, 223, 425, 'Aplicar', 0, NULL, NULL),
(2531, 573, 425, 'Asignar Agregar', 0, NULL, NULL),
(2532, 489, 425, 'Asignación de componentes salariales', 0, NULL, NULL),
(2533, 140, 425, 'Adjunto Tamaño superado', 0, NULL, NULL),
(2534, 286, 425, 'Asistencia', 0, NULL, NULL),
(2535, 313, 425, 'Asistencia Resumen', 0, NULL, NULL),
(2536, 224, 425, 'Espalda', 0, NULL, NULL),
(2537, 92, 425, 'Cancelar', 0, NULL, NULL),
(2538, 291, 425, 'Los candidatos', 0, NULL, NULL),
(2539, 248, 425, 'Cambiar la contraseña', 0, NULL, NULL),
(2540, 186, 425, 'Comentario', 0, NULL, NULL),
(2541, 191, 425, 'Comentarios', 0, NULL, NULL),
(2542, 496, 425, 'Empresa', 0, NULL, NULL),
(2543, 484, 425, 'Competencia', 0, NULL, NULL),
(2544, 264, 425, 'Configuración', 0, NULL, NULL),
(2545, 317, 425, 'Configurar', 0, NULL, NULL),
(2546, 393, 425, 'Datos de contacto', 0, NULL, NULL),
(2547, 413, 425, 'Fecha de finalización del contrato', 0, NULL, NULL),
(2548, 412, 425, 'Fecha de inicio del contrato', 0, NULL, NULL),
(2549, 84, 425, 'País', 0, NULL, NULL),
(2550, 102, 425, 'Moneda', 0, NULL, NULL),
(2551, 168, 425, 'Los empleados actuales y anteriores', 0, NULL, NULL),
(2552, 170, 425, 'Sólo los empleados actuales', 0, NULL, NULL),
(2553, 367, 425, 'Campos personalizados', 0, NULL, NULL),
(2554, 287, 425, 'Clientes', 0, NULL, NULL),
(2555, 379, 425, 'Importación de datos', 0, NULL, NULL),
(2556, 210, 425, 'Fecha', 0, NULL, NULL),
(2557, 502, 425, 'Fecha Alta', 0, NULL, NULL),
(2558, 401, 425, 'Fecha de Nacimiento', 0, NULL, NULL),
(2559, 597, 425, 'Días', 0, NULL, NULL),
(2560, 330, 425, 'Eliminar actual', 0, NULL, NULL),
(2561, 341, 425, 'Dependientes', 0, NULL, NULL),
(2562, 101, 425, 'Descripción', 0, NULL, NULL),
(2563, 521, 425, 'Depósito Directo Número de Cuenta', 0, NULL, NULL),
(2564, 522, 425, 'Depósito Directo Tipo de Cuenta', 0, NULL, NULL),
(2565, 436, 425, 'Monto del Depósito Directo', 0, NULL, NULL),
(2566, 150, 425, 'Discapacitado', 0, NULL, NULL),
(2567, 455, 425, 'Mostrar los campos', 0, NULL, NULL),
(2568, 519, 425, 'Tipo de documento', 0, NULL, NULL),
(2569, 422, 425, 'Licencia de Conducir', 0, NULL, NULL),
(2570, 222, 425, 'Duración', 0, NULL, NULL),
(2571, 98, 425, 'Editar', 0, NULL, NULL),
(2572, 151, 425, 'Editar anexo', 0, NULL, NULL),
(2573, 477, 425, 'Edición de Inmigración', 0, NULL, NULL),
(2574, 488, 425, 'Editar componente de sueldos', 0, NULL, NULL),
(2575, 106, 425, 'Educación', 0, NULL, NULL),
(2576, 481, 425, 'Fecha de revisión Elegible', 0, NULL, NULL),
(2577, 480, 425, 'Estado de derecho', 0, NULL, NULL),
(2578, 340, 425, 'Contactos de Emergencia', 0, NULL, NULL),
(2579, 218, 425, 'Empleado', 0, NULL, NULL),
(2580, 515, 425, 'Nombre del Empleado', 0, NULL, NULL),
(2581, 163, 425, 'Identificación del empleado', 0, NULL, NULL),
(2582, 514, 425, 'Empleado Apellido', 0, NULL, NULL),
(2583, 269, 425, 'Lista de empleados', 0, NULL, NULL),
(2584, 516, 425, 'Nombre del Empleado Medio', 0, NULL, NULL),
(2585, 122, 425, 'Nombre del Empleado', 0, NULL, NULL),
(2586, 285, 425, 'Los registros de los empleados', 0, NULL, NULL),
(2587, 183, 425, 'Informes de los empleados', 0, NULL, NULL),
(2588, 282, 425, 'Los partes de horas de empleados', 0, NULL, NULL),
(2589, 142, 425, 'Estado de Empleo', 0, NULL, NULL),
(2590, 149, 425, 'Habilitado', 0, NULL, NULL),
(2591, 190, 425, 'Fecha de finalización', 0, NULL, NULL),
(2592, 148, 425, 'ESS', 0, NULL, NULL),
(2593, 347, 425, 'El formato previsto: admin@example.com', 0, NULL, NULL),
(2594, 172, 425, 'Fecha de Expiración', 0, NULL, NULL),
(2595, 482, 425, 'Fecha de caducidad debe ser posterior a la fecha de emisión', 0, NULL, NULL),
(2596, 176, 425, 'Femenino', 0, NULL, NULL),
(2597, 202, 425, 'Nombre de archivo', 0, NULL, NULL),
(2598, 523, 425, 'Nombre', 0, NULL, NULL),
(2599, 483, 425, 'Fluidez', 0, NULL, NULL),
(2600, 215, 425, 'Viernes', 0, NULL, NULL),
(2601, 123, 425, 'De', 0, NULL, NULL),
(2602, 427, 425, 'Género', 0, NULL, NULL),
(2603, 44, 425, 'Información General', 0, NULL, NULL),
(2604, 540, 425, 'Vacaciones', 0, NULL, NULL),
(2605, 403, 425, 'Teléfono de la casa', 0, NULL, NULL),
(2606, 164, 425, 'Identificación', 0, NULL, NULL),
(2607, 342, 425, 'Inmigración', 0, NULL, NULL),
(2608, 389, 425, 'Incluir', 0, NULL, NULL),
(2609, 207, 425, 'Incluir cabecera', 0, NULL, NULL),
(2610, 568, 425, 'Incluir a los empleados anteriores', 0, NULL, NULL),
(2611, 408, 425, 'Emitido por', 0, NULL, NULL),
(2612, 409, 425, 'Fecha de emisión', 0, NULL, NULL),
(2613, 258, 425, 'Trabajo', 0, NULL, NULL),
(2614, 72, 425, 'Categorías del Trabajo', 0, NULL, NULL),
(2615, 133, 425, 'Categoría de trabajo', 0, NULL, NULL),
(2616, 200, 425, 'Trabajo específico', 0, NULL, NULL),
(2617, 166, 425, 'Título del Trabajo', 0, NULL, NULL),
(2618, 3, 425, 'Profesiones', 0, NULL, NULL),
(2619, 173, 425, 'Fecha de Registro', 0, NULL, NULL),
(2620, 329, 425, 'Mantenga actual', 0, NULL, NULL),
(2621, 193, 425, 'Lengua', 0, NULL, NULL),
(2622, 110, 425, 'Idiomas', 0, NULL, NULL),
(2623, 165, 425, 'Apellido', 0, NULL, NULL),
(2624, 229, 425, 'Dejar', 0, NULL, NULL),
(2625, 621, 425, 'Deja Saldo (días)', 0, NULL, NULL),
(2626, 577, 425, 'Deja la lista de', 0, NULL, NULL),
(2627, 543, 425, 'Período de licencia', 0, NULL, NULL),
(2628, 564, 425, 'Deja los tipos de', 0, NULL, NULL),
(2629, 105, 425, 'Nivel', 0, NULL, NULL),
(2630, 497, 425, 'Licencia', 0, NULL, NULL),
(2631, 423, 425, 'Fecha de caducidad de licencia', 0, NULL, NULL),
(2632, 486, 425, 'Número de licencia', 0, NULL, NULL),
(2633, 485, 425, 'Tipo de licencia', 0, NULL, NULL),
(2634, 77, 425, 'Licencias', 0, NULL, NULL),
(2635, 78, 425, 'Localización', 0, NULL, NULL),
(2636, 174, 425, 'Ubicación', 0, NULL, NULL),
(2637, 4, 425, 'Ubicaciones', 0, NULL, NULL),
(2638, 249, 425, 'Cerrar sesión', 0, NULL, NULL),
(2639, 175, 425, 'Masculino', 0, NULL, NULL),
(2640, 426, 425, 'Estado civil', 0, NULL, NULL),
(2641, 416, 425, 'Afiliación', 0, NULL, NULL),
(2642, 115, 425, 'Membresías', 0, NULL, NULL),
(2643, 171, 425, 'Móvil', 0, NULL, NULL),
(2644, 266, 425, 'Módulos', 0, NULL, NULL),
(2645, 211, 425, 'Lunes', 0, NULL, NULL),
(2646, 314, 425, 'Mi licencia', 0, NULL, NULL),
(2647, 281, 425, 'Mis registros', 0, NULL, NULL),
(2648, 280, 425, 'Mis partes de horas', 0, NULL, NULL),
(2649, 82, 425, 'Nombre', 0, NULL, NULL),
(2650, 42, 425, 'Nacionalidades', 0, NULL, NULL),
(2651, 97, 425, 'Nacionalidad', 0, NULL, NULL),
(2652, 94, 425, 'No', 0, NULL, NULL),
(2653, 256, 425, 'Notas', 0, NULL, NULL),
(2654, 407, 425, 'Número', 0, NULL, NULL),
(2655, 681, 425, 'Sólo incluir partes de horas aprobadas', 0, NULL, NULL),
(2656, 442, 425, 'Campos opcionales', 0, NULL, NULL),
(2657, 262, 425, 'Organización', 0, NULL, NULL),
(2658, 470, 425, 'Otro', 0, NULL, NULL),
(2659, 321, 425, 'E-mail Otros', 0, NULL, NULL),
(2660, 421, 425, 'ID', 0, NULL, NULL),
(2661, 720, 425, 'Empleado Pasado', 0, NULL, NULL),
(2662, 169, 425, 'Los empleados anteriores sólo', 0, NULL, NULL),
(2663, 435, 425, 'Frecuencia de pago', 0, NULL, NULL),
(2664, 194, 425, 'El grado de pago', 0, NULL, NULL),
(2665, 58, 425, 'Pagar Grados', 0, NULL, NULL),
(2666, 275, 425, 'Rendimiento', 0, NULL, NULL),
(2667, 512, 425, 'Personal', 0, NULL, NULL),
(2668, 271, 425, 'PIM', 0, NULL, NULL),
(2669, 680, 425, 'Proyecto intervalo de fechas', 0, NULL, NULL),
(2670, 261, 425, 'Información del Proyecto', 0, NULL, NULL),
(2671, 289, 425, 'Informes de Proyectos', 0, NULL, NULL),
(2672, 288, 425, 'Proyectos', 0, NULL, NULL),
(2673, 284, 425, 'Punch In / Out', 0, NULL, NULL),
(2674, 272, 425, 'Reclutamiento', 0, NULL, NULL),
(2675, 400, 425, 'Relación', 0, NULL, NULL),
(2676, 331, 425, 'Reemplazará a la actual', 0, NULL, NULL),
(2677, 181, 425, 'Nombre del informe', 0, NULL, NULL),
(2678, 476, 425, 'Método de informes', 0, NULL, NULL),
(2679, 452, 425, 'Los métodos de notificación', 0, NULL, NULL),
(2680, 270, 425, 'Informes', 0, NULL, NULL),
(2681, 130, 425, 'Necesario', 0, NULL, NULL),
(2682, 85, 425, 'Reajustar', 0, NULL, NULL),
(2683, 493, 425, 'Número de ruta', 0, NULL, NULL),
(2684, 343, 425, 'Sueldo', 0, NULL, NULL),
(2685, 433, 425, 'Salario de componentes', 0, NULL, NULL),
(2686, 216, 425, 'Sábado', 0, NULL, NULL),
(2687, 131, 425, 'Ahorrar', 0, NULL, NULL),
(2688, 524, 425, 'Puntuación', 0, NULL, NULL),
(2689, 86, 425, 'Buscar', 0, NULL, NULL),
(2690, 156, 425, 'Seleccione Archivo', 0, NULL, NULL),
(2691, 454, 425, 'Criterios de selección', 0, NULL, NULL),
(2692, 529, 425, 'El servicio de las', 0, NULL, NULL),
(2693, 137, 425, 'Debe ser un número', 0, NULL, NULL),
(2694, 179, 425, 'En caso de ser un número positivo', 0, NULL, NULL),
(2695, 504, 425, 'Debe de estar dentro de mín / máx de los valores', 0, NULL, NULL),
(2696, 203, 425, 'Tamaño', 0, NULL, NULL),
(2697, 494, 425, 'Habilidad', 0, NULL, NULL),
(2698, 118, 425, 'Habilidades', 0, NULL, NULL),
(2699, 189, 425, 'Fecha de inicio', 0, NULL, NULL),
(2700, 144, 425, 'Fecha de inicio debe ser anterior a la fecha de finalización', 0, NULL, NULL),
(2701, 178, 425, 'Estado', 0, NULL, NULL),
(2702, 120, 425, 'Estado', 0, NULL, NULL),
(2703, 302, 425, 'Estructura', 0, NULL, NULL),
(2704, 167, 425, 'Unidad Sub', 0, NULL, NULL),
(2705, 528, 425, 'Los subordinados', 0, NULL, NULL),
(2706, 418, 425, 'Suscripción Cantidad', 0, NULL, NULL),
(2707, 419, 425, 'Suscripción Comenzar Fecha', 0, NULL, NULL),
(2708, 417, 425, 'Suscripción pagado por', 0, NULL, NULL),
(2709, 420, 425, 'Suscripción Fecha de Renovación', 0, NULL, NULL),
(2710, 255, 425, 'Guardado correctamente', 0, NULL, NULL),
(2711, 254, 425, 'Se ha actualizado correctamente', 0, NULL, NULL),
(2712, 217, 425, 'Domingo', 0, NULL, NULL),
(2713, 392, 425, 'Supervisor', 0, NULL, NULL),
(2714, 390, 425, 'Nombre de Supervisor', 0, NULL, NULL),
(2715, 527, 425, 'Los supervisores', 0, NULL, NULL),
(2716, 462, 425, 'Razones de terminación', 0, NULL, NULL),
(2717, 214, 425, 'Jueves', 0, NULL, NULL),
(2718, 273, 425, 'Tiempo', 0, NULL, NULL),
(2719, 283, 425, 'Los partes de horas', 0, NULL, NULL),
(2720, 124, 425, 'A', 0, NULL, NULL),
(2721, 195, 425, 'Hasta la fecha debe ser posterior a partir de la fecha', 0, NULL, NULL),
(2722, 212, 425, 'Martes', 0, NULL, NULL),
(2723, 154, 425, 'Tipo', 0, NULL, NULL),
(2724, 263, 425, 'Usuarios', 0, NULL, NULL),
(2725, 290, 425, 'Vacantes', 0, NULL, NULL),
(2726, 213, 425, 'Miércoles', 0, NULL, NULL),
(2727, 320, 425, 'Trabajo E-mail', 0, NULL, NULL),
(2728, 500, 425, 'Experiencia laboral', 0, NULL, NULL),
(2729, 65, 425, 'Los turnos de trabajo', 0, NULL, NULL),
(2730, 404, 425, 'Teléfono del trabajo', 0, NULL, NULL),
(2731, 547, 425, 'Semana laboral', 0, NULL, NULL),
(2732, 188, 425, 'Año', 0, NULL, NULL),
(2733, 495, 425, 'Años de experiencia', 0, NULL, NULL),
(2734, 93, 425, 'Sí', 0, NULL, NULL),
(2735, 241, 425, 'Las contraseñas no coinciden', 0, NULL, NULL),
(2736, 228, 425, 'Ok', 0, NULL, NULL),
(2737, 158, 425, 'Acepta hasta 1MB', 0, NULL, NULL),
(2738, 121, 425, 'Nombre de usuario', 0, NULL, NULL),
(2739, 238, 425, 'Contraseña', 0, NULL, NULL),
(2740, 159, 425, 'Subir', 0, NULL, NULL),
(2741, 353, 425, 'Total', 0, NULL, NULL),
(2742, 509, 425, 'Fecha de Terminación', 0, NULL, NULL),
(2743, 510, 425, 'Terminación de la Razón', 0, NULL, NULL),
(2744, 645, 425, 'Nombre de la actividad', 0, NULL, NULL),
(2745, 107, 425, 'Añadir Educación', 0, NULL, NULL),
(2746, 109, 425, 'Agregar idioma', 0, NULL, NULL),
(2747, 112, 425, 'Agregar licencia', 0, NULL, NULL),
(2748, 117, 425, 'Añadir Habilidad', 0, NULL, NULL),
(2749, 99, 425, 'Dirección 1', 0, NULL, NULL),
(2750, 100, 425, 'Dirección 2', 0, NULL, NULL),
(2751, 83, 425, 'Ciudad', 0, NULL, NULL),
(2752, 240, 425, 'Confirm Password', 0, NULL, NULL),
(2753, 644, 425, 'Copiar desde', 0, NULL, NULL),
(2754, 651, 425, 'Nombre del proyecto', 0, NULL, NULL),
(2755, 104, 425, 'Editar Educación', 0, NULL, NULL),
(2756, 108, 425, 'Editar Idioma', 0, NULL, NULL),
(2757, 111, 425, 'Editar Licencia', 0, NULL, NULL),
(2758, 116, 425, 'Editar Habilidad', 0, NULL, NULL),
(2759, 89, 425, 'Estado / Provincia', 0, NULL, NULL),
(2760, 90, 425, 'Zip / Código Postal', 0, NULL, NULL),
(2761, 234, 425, 'Aprobar', 0, NULL, NULL),
(2762, 604, 425, 'Programado', 0, NULL, NULL),
(2763, 91, 425, 'Nota', 0, NULL, NULL),
(2764, 201, 425, 'Archivos adjuntos', 0, NULL, NULL),
(2765, 155, 425, 'Descargar', 0, NULL, NULL),
(2766, 95, 425, 'E-mail', 0, NULL, NULL),
(2767, 310, 425, 'Interpretada por', 0, NULL, NULL),
(2768, 235, 425, 'Rechazar', 0, NULL, NULL),
(2769, 632, 425, 'Rechazado', 0, NULL, NULL),
(2770, 348, 425, 'Presentar', 0, NULL, NULL),
(2771, 312, 425, 'Ver', 0, NULL, NULL),
(2772, 274, 425, 'Mi Información', 0, NULL, NULL),
(2773, 177, 425, 'Calificaciones', 0, NULL, NULL),
(2774, 311, 425, 'Añadir otro', 0, NULL, NULL),
(2775, 225, 425, 'Confirmar', 0, NULL, NULL),
(2776, 643, 425, 'Actividades', 0, NULL, NULL),
(2777, 59, 425, 'Añadir divisas', 0, NULL, NULL),
(2778, 647, 425, 'Añadir al Cliente', 0, NULL, NULL),
(2779, 30, 425, 'Añade Estado de Empleo', 0, NULL, NULL),
(2780, 73, 425, 'Agregar Categoría de Trabajo', 0, NULL, NULL),
(2781, 1, 425, 'Añadir Título del Trabajo', 0, NULL, NULL),
(2782, 6, 425, 'Agregar ubicación', 0, NULL, NULL),
(2783, 114, 425, 'Añadir miembros', 0, NULL, NULL),
(2784, 43, 425, 'Añadir Nacionalidad', 0, NULL, NULL),
(2785, 53, 425, 'Añadir el grado de pago', 0, NULL, NULL),
(2786, 691, 425, 'Agregar proyecto', 0, NULL, NULL),
(2787, 658, 425, 'Añadir Actividad del Proyecto', 0, NULL, NULL),
(2788, 28, 425, 'Añadir suscriptor', 0, NULL, NULL),
(2789, 61, 425, 'Agregar usuario', 0, NULL, NULL),
(2790, 76, 425, 'Añadir turno de trabajo', 0, NULL, NULL),
(2791, 69, 425, 'Los empleados asignados', 0, NULL, NULL),
(2792, 244, 425, 'Mejor', 0, NULL, NULL),
(2793, 380, 425, 'Para la columna no debe ser cambiado', 0, NULL, NULL),
(2794, 650, 425, 'Copia Actividad', 0, NULL, NULL),
(2795, 465, 425, 'Contraseña actual', 0, NULL, NULL),
(2796, 654, 425, 'Nombre del cliente', 0, NULL, NULL),
(2797, 80, 425, 'Formato de fecha', 0, NULL, NULL),
(2798, 384, 425, 'Cada archivo de importación debe estar configurado para 100 registros o menos', 0, NULL, NULL),
(2799, 54, 425, 'Edición de divisas', 0, NULL, NULL),
(2800, 675, 425, 'Edición del Cliente', 0, NULL, NULL),
(2801, 29, 425, 'Editar Estado de Empleo', 0, NULL, NULL),
(2802, 74, 425, 'Editar Categoría de Trabajo', 0, NULL, NULL),
(2803, 2, 425, 'Editar Título del Trabajo', 0, NULL, NULL),
(2804, 32, 425, 'Editar ubicación', 0, NULL, NULL),
(2805, 113, 425, 'Editar miembros', 0, NULL, NULL),
(2806, 41, 425, 'Editar Nacionalidad', 0, NULL, NULL),
(2807, 57, 425, 'Editar el grado de pago', 0, NULL, NULL),
(2808, 678, 425, 'Editar Proyecto', 0, NULL, NULL),
(2809, 655, 425, 'Editar Actividad del Proyecto', 0, NULL, NULL),
(2810, 25, 425, 'Editar suscriptor', 0, NULL, NULL),
(2811, 60, 425, 'Editar usuario', 0, NULL, NULL),
(2812, 62, 425, 'Editar turno de trabajo', 0, NULL, NULL),
(2813, 96, 425, 'Envíe por fax', 0, NULL, NULL),
(2814, 381, 425, 'Nombre y Apellidos son obligatorios', 0, NULL, NULL),
(2815, 66, 425, 'Horas al día', 0, NULL, NULL),
(2816, 31, 425, 'Descripción del puesto', 0, NULL, NULL),
(2817, 9, 425, 'Correo enviado como', 0, NULL, NULL),
(2818, 56, 425, 'Salario máximo', 0, NULL, NULL),
(2819, 55, 425, 'Salario Mínimo', 0, NULL, NULL),
(2820, 33, 425, 'Módulo de Configuración', 0, NULL, NULL),
(2821, 747, 425, 'Nueva contraseña', 0, NULL, NULL),
(2822, 653, 425, 'No hay actividades seleccionadas', 0, NULL, NULL),
(2823, 652, 425, 'No hay actividades asignadas', 0, NULL, NULL),
(2824, 27, 425, 'Tipo de notificación', 0, NULL, NULL),
(2825, 5, 425, 'Número de empleados', 0, NULL, NULL),
(2826, 45, 425, 'Nombre de la Organización', 0, NULL, NULL),
(2827, 14, 425, 'Ruta a Sendmail', 0, NULL, NULL),
(2828, 88, 425, 'Teléfono', 0, NULL, NULL),
(2829, 657, 425, 'Proyecto', 0, NULL, NULL),
(2830, 656, 425, 'Proyecto de administración', 0, NULL, NULL),
(2831, 676, 425, 'Administradores del proyecto', 0, NULL, NULL),
(2832, 46, 425, 'Matrícula', 0, NULL, NULL),
(2833, 10, 425, 'Envío Método', 0, NULL, NULL),
(2834, 63, 425, 'Shift Nombre', 0, NULL, NULL),
(2835, 19, 425, 'Contraseña SMTP', 0, NULL, NULL),
(2836, 16, 425, 'Puerto SMTP', 0, NULL, NULL),
(2837, 18, 425, 'SMTP del usuario', 0, NULL, NULL),
(2838, 245, 425, 'Más fuerte', 0, NULL, NULL),
(2839, 24, 425, 'Suscriptores', 0, NULL, NULL),
(2840, 75, 425, 'Usuarios del Sistema', 0, NULL, NULL),
(2841, 47, 425, 'NIF', 0, NULL, NULL),
(2842, 23, 425, 'Prueba de dirección de correo electrónico', 0, NULL, NULL),
(2843, 52, 425, 'Esta unidad se añadió bajo', 0, NULL, NULL),
(2844, 20, 425, 'TLS', 0, NULL, NULL),
(2845, 49, 425, 'Unidad de identificación de', 0, NULL, NULL),
(2846, 17, 425, 'Utilizar autenticación SMTP', 0, NULL, NULL),
(2847, 243, 425, 'Muy débil', 0, NULL, NULL),
(2848, 242, 425, 'Débil', 0, NULL, NULL),
(2849, 71, 425, 'En caso de ser superior al Salario Mínimo', 0, NULL, NULL),
(2850, 382, 425, 'Todos los campos de fecha debe ser en formato AAAA-MM-DD', 0, NULL, NULL),
(2851, 385, 425, 'Varios archivos de importación puede ser necesario', 0, NULL, NULL),
(2852, 570, 425, 'Aplicar Agregar', 0, NULL, NULL),
(2853, 669, 425, 'Acciones realizadas en la parte de horas', 0, NULL, NULL),
(2854, 662, 425, 'Añadir fila', 0, NULL, NULL),
(2855, 648, 425, 'Añadir parte de horas', 0, NULL, NULL),
(2856, 704, 425, 'Informe resumido de asistencia total', 0, NULL, NULL),
(2857, 672, 425, 'Definir período del parte de horas', 0, NULL, NULL),
(2858, 690, 425, 'Editar parte de horas de', 0, NULL, NULL),
(2859, 683, 425, 'Informe del Empleado', 0, NULL, NULL),
(2860, 667, 425, 'En caso de ser inferior a 24 y en HH: MM o decimal', 0, NULL, NULL),
(2861, 308, 425, 'Vie', 0, NULL, NULL),
(2862, 304, 425, 'Lun', 0, NULL, NULL),
(2863, 679, 425, 'Informe del proyecto', 0, NULL, NULL),
(2864, 309, 425, 'Sab', 0, NULL, NULL),
(2865, 649, 425, 'Seleccione un día para crear partes de horas', 0, NULL, NULL),
(2866, 684, 425, 'Seleccione Empleado', 0, NULL, NULL),
(2867, 303, 425, 'Sol', 0, NULL, NULL),
(2868, 307, 425, 'Jue', 0, NULL, NULL),
(2869, 689, 425, 'Parte de horas de', 0, NULL, NULL),
(2870, 671, 425, 'Período de parte de horas', 0, NULL, NULL),
(2871, 670, 425, 'En espera de partes de horas de acción', 0, NULL, NULL),
(2872, 305, 425, 'Mar', 0, NULL, NULL),
(2873, 306, 425, 'Casarse', 0, NULL, NULL),
(2874, 666, 425, 'Seleccione un proyecto y una actividad', 0, NULL, NULL),
(2875, 660, 425, 'No se han encontrado partes de horas', 0, NULL, NULL),
(2876, 694, 425, 'Parte de horas Aprobado', 0, NULL, NULL),
(2877, 693, 425, 'Rechazado parte de horas', 0, NULL, NULL),
(2878, 668, 425, 'Total debe ser menos de 24 horas', 0, NULL, NULL),
(2879, 491, 425, 'Número de cuenta', 0, NULL, NULL),
(2880, 492, 425, 'Tipo de Cuenta', 0, NULL, NULL),
(2881, 513, 425, 'Activar Bolsa de Trabajo', 0, NULL, NULL),
(2882, 378, 425, 'Agregar campos personalizados', 0, NULL, NULL),
(2883, 506, 425, 'Agregar dependiente', 0, NULL, NULL),
(2884, 505, 425, 'Añadir Inmigración', 0, NULL, NULL),
(2885, 450, 425, 'Agregar método de notificación', 0, NULL, NULL),
(2886, 461, 425, 'Añadir motivo de la terminación', 0, NULL, NULL),
(2887, 501, 425, 'Agregar Experiencia', 0, NULL, NULL),
(2888, 399, 425, 'Dependientes de Asignación', 0, NULL, NULL),
(2889, 402, 425, 'Asignación de Contactos de Emergencia', 0, NULL, NULL),
(2890, 415, 425, 'Participación en la Asignación de', 0, NULL, NULL),
(2891, 498, 425, 'Los subordinados de Asignación', 0, NULL, NULL),
(2892, 499, 425, 'Los supervisores asignados', 0, NULL, NULL),
(2893, 475, 425, 'Por lo menos un número de teléfono es necesario', 0, NULL, NULL),
(2894, 469, 425, 'Niño', 0, NULL, NULL),
(2895, 414, 425, 'Detalles del Contrato', 0, NULL, NULL),
(2896, 445, 425, 'Información Específica del País', 0, NULL, NULL),
(2897, 441, 425, 'Crear Datos de Acceso', 0, NULL, NULL),
(2898, 370, 425, 'Campo Personalizado', 0, NULL, NULL),
(2899, 406, 425, 'Documento', 0, NULL, NULL),
(2900, 526, 425, 'Desplegable', 0, NULL, NULL),
(2901, 374, 425, 'Editar campo personalizado', 0, NULL, NULL),
(2902, 467, 425, 'Editar dependiente', 0, NULL, NULL),
(2903, 474, 425, 'Editar Contacto de Emergencia', 0, NULL, NULL),
(2904, 449, 425, 'Editar método de notificación', 0, NULL, NULL),
(2905, 460, 425, 'Editar motivo de la terminación', 0, NULL, NULL),
(2906, 388, 425, 'Información del empleado', 0, NULL, NULL),
(2907, 377, 425, 'Entre las opciones permitidas separados por comas', 0, NULL, NULL),
(2908, 438, 425, 'Exenciones', 0, NULL, NULL),
(2909, 437, 425, 'Impuesto sobre la Renta Federal', 0, NULL, NULL),
(2910, 375, 425, 'Nombre del campo', 0, NULL, NULL),
(2911, 372, 425, 'Tipo de campo', 0, NULL, NULL),
(2912, 205, 425, 'Desde la fecha debe ser anterior a la fecha', 0, NULL, NULL),
(2913, 473, 425, 'GPA / Puntuación', 0, NULL, NULL),
(2914, 471, 425, 'Instituto', 0, NULL, NULL),
(2915, 472, 425, 'Mayor / Especialización', 0, NULL, NULL),
(2916, 428, 425, 'Servicio militar', 0, NULL, NULL),
(2917, 478, 425, 'Pasaporte', 0, NULL, NULL),
(2918, 339, 425, 'Datos Personales', 0, NULL, NULL),
(2919, 468, 425, 'Por favor especifique', 0, NULL, NULL),
(2920, 344, 425, 'Informe a', 0, NULL, NULL),
(2921, 371, 425, 'Pantalla', 0, NULL, NULL),
(2922, 376, 425, 'Seleccione Opciones', 0, NULL, NULL),
(2923, 443, 425, 'Mostrar Los campos ya no se utilizan', 0, NULL, NULL),
(2924, 444, 425, 'Mostrar nombre de Nick, fuma y el Servicio Militar en los datos personales', 0, NULL, NULL),
(2925, 447, 425, 'Mostrar campo de la RIS en Datos de Carácter Personal', 0, NULL, NULL),
(2926, 446, 425, 'Mostrar en el campo de número de Seguro Social Datos de Carácter Personal', 0, NULL, NULL),
(2927, 448, 425, 'Mostrar Tributario de EE.UU. Las exenciones del menú', 0, NULL, NULL),
(2928, 425, 425, 'SIN Número', 0, NULL, NULL),
(2929, 429, 425, 'Fumador', 0, NULL, NULL),
(2930, 424, 425, 'Número de Seguro Social', 0, NULL, NULL),
(2931, 345, 425, 'Las exenciones de impuestos', 0, NULL, NULL),
(2932, 508, 425, 'Terminar Bolsa de Trabajo', 0, NULL, NULL),
(2933, 525, 425, 'Texto o Número de', 0, NULL, NULL),
(2934, 439, 425, 'Desempleo del Estado de', 0, NULL, NULL),
(2935, 479, 425, 'Visado', 0, NULL, NULL),
(2936, 440, 425, 'El trabajo del Estado', 0, NULL, NULL),
(2937, 152, 425, 'Acciones', 0, NULL, NULL),
(2938, 576, 425, 'Asignar', 0, NULL, NULL),
(2939, 545, 425, 'Período de licencia actual', 0, NULL, NULL),
(2940, 712, 425, 'Duración (horas)', 0, NULL, NULL),
(2941, 546, 425, 'Año Después', 0, NULL, NULL),
(2942, 220, 425, 'Desde la fecha', 0, NULL, NULL),
(2943, 542, 425, 'Día completo', 0, NULL, NULL),
(2944, 630, 425, 'Medio Día', 0, NULL, NULL),
(2945, 593, 425, 'Deja Saldo', 0, NULL, NULL),
(2946, 567, 425, 'Deja Tipo', 0, NULL, NULL),
(2947, 581, 425, 'Mi lista de la licencia', 0, NULL, NULL),
(2948, 571, 425, 'No hay tipos de licencia con balance de licencia', 0, NULL, NULL),
(2949, 631, 425, 'Día no laborable', 0, NULL, NULL),
(2950, 620, 425, 'Número de días', 0, NULL, NULL),
(2951, 605, 425, 'Pendiente de aprobación', 0, NULL, NULL),
(2952, 538, 425, 'Periodicidad anual', 0, NULL, NULL),
(2953, 578, 425, 'Mostrar Agregar con estado', 0, NULL, NULL),
(2954, 603, 425, 'Tomado', 0, NULL, NULL),
(2955, 221, 425, 'Conocer', 0, NULL, NULL),
(2956, 628, 425, 'Error al enviar: No Días de trabajo seleccionado', 0, NULL, NULL),
(2957, 627, 425, 'Error al enviar', 0, NULL, NULL),
(2958, 562, 425, 'Añadir Deja Tipo', 0, NULL, NULL),
(2959, 563, 425, 'Editar Deja Tipo', 0, NULL, NULL),
(2960, 706, 425, 'Punch In', 0, NULL, NULL),
(2961, 710, 425, 'Punch In Nota', 0, NULL, NULL);
INSERT INTO `ohrm_i18n_translate` (`id`, `lang_string_id`, `language_id`, `value`, `customized`, `version`, `modified_at`) VALUES
(2962, 708, 425, 'Punch Out', 0, NULL, NULL),
(2963, 711, 425, 'Punch Out Nota', 0, NULL, NULL),
(2964, 709, 425, 'La superposición de registros encontrados', 0, NULL, NULL),
(2965, 715, 425, 'Zona horaria', 0, NULL, NULL),
(2966, 717, 425, 'En', 0, NULL, NULL),
(2967, 718, 425, 'Fuera', 0, NULL, NULL),
(2968, 700, 425, 'La asistencia de configuración', 0, NULL, NULL),
(2969, 701, 425, 'Empleado puede cambiar la hora actual cuando la perforación de entrada / salida', 0, NULL, NULL),
(2970, 702, 425, 'Empleado puede editar / borrar los registros propios de asistencia', 0, NULL, NULL),
(2971, 703, 425, 'Supervisor puede añadir / editar / borrar los registros de asistencia de sus subordinados', 0, NULL, NULL),
(2972, 714, 425, 'Mis Registros de asistencia', 0, NULL, NULL),
(2973, 352, 425, 'Se ha eliminado correctamente', 0, NULL, NULL),
(2974, 696, 425, 'Perfore tiempo debe ser mayor de perforación en el tiempo', 0, NULL, NULL),
(2975, 736, 425, 'Nombre de usuario', 0, NULL, NULL),
(2976, 737, 425, 'Contraseña', 0, NULL, NULL),
(2977, 250, 425, 'No se encontraron registros', 0, NULL, NULL),
(2978, 698, 425, 'Parte de horas enviado', 0, NULL, NULL),
(2979, 198, 425, 'Segundo nombre', 0, NULL, NULL),
(2980, 197, 425, 'Nombre', 0, NULL, NULL),
(2981, 87, 426, 'Añadir/Agregar', 0, NULL, NULL),
(2982, 208, 426, 'Agregar archivo adjunto', 0, NULL, NULL),
(2983, 180, 426, 'Agregar Empleado', 0, NULL, NULL),
(2984, 503, 426, 'Añadido/Agregado por', 0, NULL, NULL),
(2985, 7, 426, 'Dirección', 0, NULL, NULL),
(2986, 129, 426, 'Administración', 0, NULL, NULL),
(2987, 530, 426, 'Grupo de Edad', 0, NULL, NULL),
(2988, 143, 426, 'Permite números y sólo + - / ()', 0, NULL, NULL),
(2989, 125, 426, 'Ya existe', 0, NULL, NULL),
(2990, 434, 426, 'Cantidad', 0, NULL, NULL),
(2991, 223, 426, 'Aplicar', 0, NULL, NULL),
(2992, 573, 426, 'Asignar Agregar', 0, NULL, NULL),
(2993, 489, 426, 'Asignación de componentes salariales', 0, NULL, NULL),
(2994, 140, 426, 'Adjunto Tamaño superado', 0, NULL, NULL),
(2995, 286, 426, 'Asistencia', 0, NULL, NULL),
(2996, 313, 426, 'Asistencia Resumen', 0, NULL, NULL),
(2997, 224, 426, 'Regresar', 0, NULL, NULL),
(2998, 92, 426, 'Cancelar', 0, NULL, NULL),
(2999, 291, 426, 'Los candidatos', 0, NULL, NULL),
(3000, 248, 426, 'Cambiar la contraseña', 0, NULL, NULL),
(3001, 186, 426, 'Comentario', 0, NULL, NULL),
(3002, 191, 426, 'Comentarios', 0, NULL, NULL),
(3003, 496, 426, 'Empresa', 0, NULL, NULL),
(3004, 484, 426, 'Competencia', 0, NULL, NULL),
(3005, 264, 426, 'Configuración', 0, NULL, NULL),
(3006, 317, 426, 'Configurar', 0, NULL, NULL),
(3007, 393, 426, 'Datos de contacto', 0, NULL, NULL),
(3008, 413, 426, 'Fecha de finalización del contrato', 0, NULL, NULL),
(3009, 412, 426, 'Fecha de inicio del contrato', 0, NULL, NULL),
(3010, 84, 426, 'País', 0, NULL, NULL),
(3011, 102, 426, 'Moneda', 0, NULL, NULL),
(3012, 168, 426, 'Los empleados actuales y anteriores', 0, NULL, NULL),
(3013, 170, 426, 'Sólo los empleados actuales', 0, NULL, NULL),
(3014, 367, 426, 'Campos personalizados', 0, NULL, NULL),
(3015, 287, 426, 'Clientes', 0, NULL, NULL),
(3016, 379, 426, 'Importación de datos', 0, NULL, NULL),
(3017, 210, 426, 'Fecha', 0, NULL, NULL),
(3018, 502, 426, 'Fecha de Agregacion', 0, NULL, NULL),
(3019, 401, 426, 'Fecha de Nacimiento', 0, NULL, NULL),
(3020, 597, 426, 'Días', 0, NULL, NULL),
(3021, 330, 426, 'Eliminar actual', 0, NULL, NULL),
(3022, 341, 426, 'Dependientes', 0, NULL, NULL),
(3023, 101, 426, 'Descripción', 0, NULL, NULL),
(3024, 521, 426, 'Depósito Directo Número de Cuenta', 0, NULL, NULL),
(3025, 522, 426, 'Depósito Directo Tipo de Cuenta', 0, NULL, NULL),
(3026, 436, 426, 'Monto del Depósito Directo', 0, NULL, NULL),
(3027, 150, 426, 'Discapacitado', 0, NULL, NULL),
(3028, 455, 426, 'Mostrar los campos', 0, NULL, NULL),
(3029, 519, 426, 'Tipo de documento', 0, NULL, NULL),
(3030, 422, 426, 'Licencia de Conducir', 0, NULL, NULL),
(3031, 222, 426, 'Duración', 0, NULL, NULL),
(3032, 98, 426, 'Editar', 0, NULL, NULL),
(3033, 151, 426, 'Editar anexo', 0, NULL, NULL),
(3034, 477, 426, 'Edición de Inmigración', 0, NULL, NULL),
(3035, 488, 426, 'Editar componente de sueldos', 0, NULL, NULL),
(3036, 106, 426, 'Educación', 0, NULL, NULL),
(3037, 481, 426, 'Fecha de revisión Elegible', 0, NULL, NULL),
(3038, 480, 426, 'Estado de derecho', 0, NULL, NULL),
(3039, 340, 426, 'Contactos de Emergencia', 0, NULL, NULL),
(3040, 218, 426, 'Empleado', 0, NULL, NULL),
(3041, 515, 426, 'Nombre del Empleado', 0, NULL, NULL),
(3042, 163, 426, 'Identificación del empleado', 0, NULL, NULL),
(3043, 514, 426, 'Appellido del Empleado', 0, NULL, NULL),
(3044, 269, 426, 'Lista de empleados', 0, NULL, NULL),
(3045, 516, 426, 'Segundo Nombre del Empleado ', 0, NULL, NULL),
(3046, 122, 426, 'Nombre del Empleado', 0, NULL, NULL),
(3047, 285, 426, 'Los registros de los empleados', 0, NULL, NULL),
(3048, 183, 426, 'Informes de los empleados', 0, NULL, NULL),
(3049, 282, 426, 'Hoja de assistencia de empleados', 0, NULL, NULL),
(3050, 142, 426, 'Estado de Empleo', 0, NULL, NULL),
(3051, 149, 426, 'Habilitado', 0, NULL, NULL),
(3052, 190, 426, 'Fecha de finalización', 0, NULL, NULL),
(3053, 148, 426, 'ESS', 0, NULL, NULL),
(3054, 347, 426, 'El formato previsto: admin@example.com', 0, NULL, NULL),
(3055, 172, 426, 'Fecha de Expiración', 0, NULL, NULL),
(3056, 482, 426, 'Fecha de caducidad debe ser posterior a la fecha de emisión', 0, NULL, NULL),
(3057, 176, 426, 'Femenino', 0, NULL, NULL),
(3058, 202, 426, 'Nombre de archivo', 0, NULL, NULL),
(3059, 523, 426, 'Nombre', 0, NULL, NULL),
(3060, 483, 426, 'Fluidez', 0, NULL, NULL),
(3061, 215, 426, 'Viernes', 0, NULL, NULL),
(3062, 123, 426, 'De', 0, NULL, NULL),
(3063, 427, 426, 'Género', 0, NULL, NULL),
(3064, 44, 426, 'Información General', 0, NULL, NULL),
(3065, 540, 426, 'Vacaciones', 0, NULL, NULL),
(3066, 403, 426, 'Teléfono de la casa', 0, NULL, NULL),
(3067, 164, 426, 'Identificación', 0, NULL, NULL),
(3068, 342, 426, 'Inmigración', 0, NULL, NULL),
(3069, 389, 426, 'Incluir', 0, NULL, NULL),
(3070, 207, 426, 'Incluir cabecera', 0, NULL, NULL),
(3071, 568, 426, 'Incluir a los empleados anteriores', 0, NULL, NULL),
(3072, 408, 426, 'Emitido por', 0, NULL, NULL),
(3073, 409, 426, 'Fecha de emisión', 0, NULL, NULL),
(3074, 258, 426, 'Trabajo', 0, NULL, NULL),
(3075, 72, 426, 'Categorías del Trabajo', 0, NULL, NULL),
(3076, 133, 426, 'Categoría de trabajo', 0, NULL, NULL),
(3077, 200, 426, 'Trabajo específico', 0, NULL, NULL),
(3078, 166, 426, 'Título del Trabajo', 0, NULL, NULL),
(3079, 3, 426, 'Profesiones', 0, NULL, NULL),
(3080, 173, 426, 'Fecha de Registro', 0, NULL, NULL),
(3081, 329, 426, 'Mantenga actual', 0, NULL, NULL),
(3082, 193, 426, 'Lengua', 0, NULL, NULL),
(3083, 110, 426, 'Idiomas', 0, NULL, NULL),
(3084, 165, 426, 'Apellido', 0, NULL, NULL),
(3085, 229, 426, 'Dias fuera de trabajo', 0, NULL, NULL),
(3086, 621, 426, 'Balance (días)', 0, NULL, NULL),
(3087, 577, 426, 'Listado de Dias', 0, NULL, NULL),
(3088, 543, 426, 'Periodo de Dias', 0, NULL, NULL),
(3089, 564, 426, 'Tipos de Dias', 0, NULL, NULL),
(3090, 105, 426, 'Nivel', 0, NULL, NULL),
(3091, 497, 426, 'Licencia', 0, NULL, NULL),
(3092, 423, 426, 'Fecha de caducidad de licencia', 0, NULL, NULL),
(3093, 486, 426, 'Número de licencia', 0, NULL, NULL),
(3094, 485, 426, 'Tipo de licencia', 0, NULL, NULL),
(3095, 77, 426, 'Licencias', 0, NULL, NULL),
(3096, 78, 426, 'Localización', 0, NULL, NULL),
(3097, 174, 426, 'Ubicación', 0, NULL, NULL),
(3098, 4, 426, 'Ubicaciones', 0, NULL, NULL),
(3099, 249, 426, 'Cerrar sesión', 0, NULL, NULL),
(3100, 175, 426, 'Masculino', 0, NULL, NULL),
(3101, 426, 426, 'Estado civil', 0, NULL, NULL),
(3102, 416, 426, 'Afiliación', 0, NULL, NULL),
(3103, 115, 426, 'Membresías', 0, NULL, NULL),
(3104, 171, 426, 'Móvil', 0, NULL, NULL),
(3105, 266, 426, 'Módulos', 0, NULL, NULL),
(3106, 211, 426, 'Lunes', 0, NULL, NULL),
(3107, 314, 426, 'Mi licencia', 0, NULL, NULL),
(3108, 281, 426, 'Mis registros', 0, NULL, NULL),
(3109, 280, 426, 'Mis partes de horas', 0, NULL, NULL),
(3110, 82, 426, 'Nombre', 0, NULL, NULL),
(3111, 42, 426, 'Nacionalidades', 0, NULL, NULL),
(3112, 97, 426, 'Nacionalidad', 0, NULL, NULL),
(3113, 94, 426, 'No', 0, NULL, NULL),
(3114, 256, 426, 'Notas', 0, NULL, NULL),
(3115, 407, 426, 'Número', 0, NULL, NULL),
(3116, 681, 426, 'Sólo incluir partes de horas aprobadas', 0, NULL, NULL),
(3117, 442, 426, 'Campos opcionales', 0, NULL, NULL),
(3118, 262, 426, 'Organización', 0, NULL, NULL),
(3119, 470, 426, 'Otro', 0, NULL, NULL),
(3120, 321, 426, 'Otros E-mail', 0, NULL, NULL),
(3121, 421, 426, 'ID', 0, NULL, NULL),
(3122, 720, 426, 'Empleado Pasado', 0, NULL, NULL),
(3123, 169, 426, 'Solo empleados anteriores', 0, NULL, NULL),
(3124, 435, 426, 'Frecuencia de pago', 0, NULL, NULL),
(3125, 194, 426, 'El grado de pago', 0, NULL, NULL),
(3126, 58, 426, 'Grados de pago', 0, NULL, NULL),
(3127, 275, 426, 'Rendimiento', 0, NULL, NULL),
(3128, 512, 426, 'Personal', 0, NULL, NULL),
(3129, 271, 426, 'PIM', 0, NULL, NULL),
(3130, 680, 426, 'Proyecto intervalo de fechas', 0, NULL, NULL),
(3131, 261, 426, 'Información del Proyecto', 0, NULL, NULL),
(3132, 289, 426, 'Informes de Proyectos', 0, NULL, NULL),
(3133, 288, 426, 'Proyectos', 0, NULL, NULL),
(3134, 284, 426, 'Punch In / Out', 0, NULL, NULL),
(3135, 272, 426, 'Reclutamiento', 0, NULL, NULL),
(3136, 400, 426, 'Relación', 0, NULL, NULL),
(3137, 331, 426, 'Reemplazará a la actual', 0, NULL, NULL),
(3138, 181, 426, 'Nombre del informe', 0, NULL, NULL),
(3139, 476, 426, 'Metodo de Reportar', 0, NULL, NULL),
(3140, 452, 426, 'Metodos de Reportar', 0, NULL, NULL),
(3141, 270, 426, 'Informes', 0, NULL, NULL),
(3142, 130, 426, 'Necesario', 0, NULL, NULL),
(3143, 85, 426, 'Reajustar', 0, NULL, NULL),
(3144, 493, 426, 'Número de ruta', 0, NULL, NULL),
(3145, 343, 426, 'Sueldo', 0, NULL, NULL),
(3146, 433, 426, 'Componentes de Salario', 0, NULL, NULL),
(3147, 216, 426, 'Sábado', 0, NULL, NULL),
(3148, 131, 426, 'Guardar/Salvar', 0, NULL, NULL),
(3149, 524, 426, 'Puntuación', 0, NULL, NULL),
(3150, 86, 426, 'Buscar', 0, NULL, NULL),
(3151, 156, 426, 'Seleccione Archivo', 0, NULL, NULL),
(3152, 454, 426, 'Criterios de selección', 0, NULL, NULL),
(3153, 529, 426, 'Periodo de Servicio', 0, NULL, NULL),
(3154, 137, 426, 'Debe ser un número', 0, NULL, NULL),
(3155, 179, 426, 'Debe ser un número positivo', 0, NULL, NULL),
(3156, 504, 426, 'Debe estar dentro de mín / máx de los valores', 0, NULL, NULL),
(3157, 203, 426, 'Tamaño', 0, NULL, NULL),
(3158, 494, 426, 'Habilidad', 0, NULL, NULL),
(3159, 118, 426, 'Habilidades', 0, NULL, NULL),
(3160, 189, 426, 'Fecha de inicio', 0, NULL, NULL),
(3161, 144, 426, 'Fecha de inicio debe ser anterior a la fecha de finalización', 0, NULL, NULL),
(3162, 178, 426, 'Estado', 0, NULL, NULL),
(3163, 120, 426, 'Estado', 0, NULL, NULL),
(3164, 302, 426, 'Estructura', 0, NULL, NULL),
(3165, 167, 426, 'Sub - Unidad', 0, NULL, NULL),
(3166, 528, 426, 'Los subordinados', 0, NULL, NULL),
(3167, 418, 426, 'Cantidad de Suscripción', 0, NULL, NULL),
(3168, 419, 426, 'Fecha Inicial de Suscripción', 0, NULL, NULL),
(3169, 417, 426, 'Suscripción pagado por', 0, NULL, NULL),
(3170, 420, 426, 'Fecha de Renovacion de Suscripción', 0, NULL, NULL),
(3171, 255, 426, 'Guardado correctamente', 0, NULL, NULL),
(3172, 254, 426, 'Se ha actualizado correctamente', 0, NULL, NULL),
(3173, 217, 426, 'Domingo', 0, NULL, NULL),
(3174, 392, 426, 'Supervisor', 0, NULL, NULL),
(3175, 390, 426, 'Nombre de Supervisor', 0, NULL, NULL),
(3176, 527, 426, 'Los supervisores', 0, NULL, NULL),
(3177, 462, 426, 'Razones de terminación', 0, NULL, NULL),
(3178, 214, 426, 'Jueves', 0, NULL, NULL),
(3179, 273, 426, 'Tiempo', 0, NULL, NULL),
(3180, 283, 426, 'Hojas de Assistencia', 0, NULL, NULL),
(3181, 124, 426, 'A', 0, NULL, NULL),
(3182, 195, 426, 'Hasta la fecha debe ser posterior a partir de la fecha', 0, NULL, NULL),
(3183, 212, 426, 'Martes', 0, NULL, NULL),
(3184, 154, 426, 'Tipo', 0, NULL, NULL),
(3185, 263, 426, 'Usuarios', 0, NULL, NULL),
(3186, 290, 426, 'Vacantes', 0, NULL, NULL),
(3187, 213, 426, 'Miércoles', 0, NULL, NULL),
(3188, 320, 426, 'E-mail de Trabajo', 0, NULL, NULL),
(3189, 500, 426, 'Experiencia laboral', 0, NULL, NULL),
(3190, 65, 426, 'Los turnos de trabajo', 0, NULL, NULL),
(3191, 404, 426, 'Teléfono del trabajo', 0, NULL, NULL),
(3192, 547, 426, 'Semana laboral', 0, NULL, NULL),
(3193, 188, 426, 'Año', 0, NULL, NULL),
(3194, 495, 426, 'Años de experiencia', 0, NULL, NULL),
(3195, 93, 426, 'Sí', 0, NULL, NULL),
(3196, 241, 426, 'Las contraseñas no coinciden', 0, NULL, NULL),
(3197, 228, 426, 'Ok', 0, NULL, NULL),
(3198, 158, 426, 'Acepta hasta 1MB', 0, NULL, NULL),
(3199, 121, 426, 'Nombre de usuario', 0, NULL, NULL),
(3200, 238, 426, 'Contraseña', 0, NULL, NULL),
(3201, 159, 426, 'Subir', 0, NULL, NULL),
(3202, 353, 426, 'Total', 0, NULL, NULL),
(3203, 509, 426, 'Fecha de Terminación', 0, NULL, NULL),
(3204, 510, 426, 'Razon de Terminación', 0, NULL, NULL),
(3205, 645, 426, 'Nombre de la actividad', 0, NULL, NULL),
(3206, 107, 426, 'Añadir Educación', 0, NULL, NULL),
(3207, 109, 426, 'Agregar idioma', 0, NULL, NULL),
(3208, 112, 426, 'Agregar licencia', 0, NULL, NULL),
(3209, 117, 426, 'Añadir Habilidad', 0, NULL, NULL),
(3210, 99, 426, 'Dirección 1', 0, NULL, NULL),
(3211, 100, 426, 'Dirección 2', 0, NULL, NULL),
(3212, 83, 426, 'Ciudad', 0, NULL, NULL),
(3213, 240, 426, 'Confirmar Contraseña', 0, NULL, NULL),
(3214, 644, 426, 'Copiar desde', 0, NULL, NULL),
(3215, 651, 426, 'Nombre del proyecto', 0, NULL, NULL),
(3216, 104, 426, 'Editar Educación', 0, NULL, NULL),
(3217, 108, 426, 'Editar Idioma', 0, NULL, NULL),
(3218, 111, 426, 'Editar Licencia', 0, NULL, NULL),
(3219, 116, 426, 'Editar Habilidad', 0, NULL, NULL),
(3220, 89, 426, 'Estado / Provincia', 0, NULL, NULL),
(3221, 90, 426, 'Zip / Código Postal', 0, NULL, NULL),
(3222, 234, 426, 'Aprobar', 0, NULL, NULL),
(3223, 604, 426, 'Programado', 0, NULL, NULL),
(3224, 91, 426, 'Nota', 0, NULL, NULL),
(3225, 201, 426, 'Archivos adjuntos', 0, NULL, NULL),
(3226, 155, 426, 'Descargar', 0, NULL, NULL),
(3227, 95, 426, 'E-mail', 0, NULL, NULL),
(3228, 310, 426, 'Interpretada por', 0, NULL, NULL),
(3229, 235, 426, 'Rechazar', 0, NULL, NULL),
(3230, 632, 426, 'Rechazado', 0, NULL, NULL),
(3231, 348, 426, 'Presentar', 0, NULL, NULL),
(3232, 312, 426, 'Ver', 0, NULL, NULL),
(3233, 274, 426, 'Mi informacion', 0, NULL, NULL),
(3234, 177, 426, 'Calificaciones', 0, NULL, NULL),
(3235, 311, 426, 'Añadir otro', 0, NULL, NULL),
(3236, 225, 426, 'Confirmar', 0, NULL, NULL),
(3237, 643, 426, 'Actividades', 0, NULL, NULL),
(3238, 59, 426, 'Añadir divisas', 0, NULL, NULL),
(3239, 647, 426, 'Añadir Cliente', 0, NULL, NULL),
(3240, 30, 426, 'Añade Estado de Empleo', 0, NULL, NULL),
(3241, 73, 426, 'Agregar Categoría de Trabajo', 0, NULL, NULL),
(3242, 1, 426, 'Añadir Título del Trabajo', 0, NULL, NULL),
(3243, 6, 426, 'Agregar ubicación', 0, NULL, NULL),
(3244, 114, 426, 'Añadir miembros', 0, NULL, NULL),
(3245, 43, 426, 'Añadir Nacionalidad', 0, NULL, NULL),
(3246, 53, 426, 'Añadir el grado de pago', 0, NULL, NULL),
(3247, 691, 426, 'Agregar proyecto', 0, NULL, NULL),
(3248, 658, 426, 'Añadir Actividad del Proyecto', 0, NULL, NULL),
(3249, 28, 426, 'Añadir suscriptor', 0, NULL, NULL),
(3250, 61, 426, 'Agregar usuario', 0, NULL, NULL),
(3251, 76, 426, 'Añadir turno de trabajo', 0, NULL, NULL),
(3252, 69, 426, 'Los empleados asignados', 0, NULL, NULL),
(3253, 244, 426, 'Mejor', 0, NULL, NULL),
(3254, 380, 426, 'Orden de la columna no debe ser cambiado', 0, NULL, NULL),
(3255, 650, 426, 'Copia Actividad', 0, NULL, NULL),
(3256, 465, 426, 'Contraseña actual', 0, NULL, NULL),
(3257, 654, 426, 'Nombre del cliente', 0, NULL, NULL),
(3258, 80, 426, 'Formato de fecha', 0, NULL, NULL),
(3259, 384, 426, 'Cada archivo de importación debe estar configurado para 100 registros o menos', 0, NULL, NULL),
(3260, 54, 426, 'Editar de divisas', 0, NULL, NULL),
(3261, 675, 426, 'Editar Cliente', 0, NULL, NULL),
(3262, 29, 426, 'Editar Estado de Empleo', 0, NULL, NULL),
(3263, 74, 426, 'Editar Categoría de Trabajo', 0, NULL, NULL),
(3264, 2, 426, 'Editar Título del Trabajo', 0, NULL, NULL),
(3265, 32, 426, 'Editar ubicación', 0, NULL, NULL),
(3266, 113, 426, 'Editar membresia', 0, NULL, NULL),
(3267, 41, 426, 'Editar Nacionalidad', 0, NULL, NULL),
(3268, 57, 426, 'Editar el grado de pago', 0, NULL, NULL),
(3269, 678, 426, 'Editar Proyecto', 0, NULL, NULL),
(3270, 655, 426, 'Editar Actividad del Proyecto', 0, NULL, NULL),
(3271, 25, 426, 'Editar suscriptor', 0, NULL, NULL),
(3272, 60, 426, 'Editar usuario', 0, NULL, NULL),
(3273, 62, 426, 'Editar turno de trabajo', 0, NULL, NULL),
(3274, 96, 426, 'Envíe por fax', 0, NULL, NULL),
(3275, 381, 426, 'Nombre y Apellidos son obligatorios', 0, NULL, NULL),
(3276, 66, 426, 'Horas al día', 0, NULL, NULL),
(3277, 31, 426, 'Descripción del puesto', 0, NULL, NULL),
(3278, 9, 426, 'Correo enviado como', 0, NULL, NULL),
(3279, 56, 426, 'Salario máximo', 0, NULL, NULL),
(3280, 55, 426, 'Salario Mínimo', 0, NULL, NULL),
(3281, 33, 426, 'Módulo de Configuración', 0, NULL, NULL),
(3282, 747, 426, 'Nueva contraseña', 0, NULL, NULL),
(3283, 653, 426, 'No hay actividades seleccionadas', 0, NULL, NULL),
(3284, 652, 426, 'No hay actividades asignadas', 0, NULL, NULL),
(3285, 27, 426, 'Tipo de notificación', 0, NULL, NULL),
(3286, 5, 426, 'Número de empleados', 0, NULL, NULL),
(3287, 45, 426, 'Nombre de la Organización', 0, NULL, NULL),
(3288, 14, 426, 'Ruta a Sendmail', 0, NULL, NULL),
(3289, 88, 426, 'Teléfono', 0, NULL, NULL),
(3290, 657, 426, 'Proyecto', 0, NULL, NULL),
(3291, 656, 426, 'Proyecto de administración', 0, NULL, NULL),
(3292, 676, 426, 'Administradores del proyecto', 0, NULL, NULL),
(3293, 46, 426, 'Matrícula', 0, NULL, NULL),
(3294, 10, 426, 'Envío Método', 0, NULL, NULL),
(3295, 63, 426, 'Shift Nombre', 0, NULL, NULL),
(3296, 19, 426, 'Contraseña SMTP', 0, NULL, NULL),
(3297, 16, 426, 'Puerto SMTP', 0, NULL, NULL),
(3298, 18, 426, 'SMTP del usuario', 0, NULL, NULL),
(3299, 245, 426, 'Más fuerte', 0, NULL, NULL),
(3300, 24, 426, 'Suscriptores', 0, NULL, NULL),
(3301, 75, 426, 'Usuarios del Sistema', 0, NULL, NULL),
(3302, 47, 426, 'NIF', 0, NULL, NULL),
(3303, 23, 426, 'Prueba de dirección de correo electrónico', 0, NULL, NULL),
(3304, 52, 426, 'Esta unidad se añadió bajo', 0, NULL, NULL),
(3305, 20, 426, 'TLS', 0, NULL, NULL),
(3306, 49, 426, 'Unidad de identificación de', 0, NULL, NULL),
(3307, 17, 426, 'Utilizar autenticación SMTP', 0, NULL, NULL),
(3308, 243, 426, 'Muy débil', 0, NULL, NULL),
(3309, 242, 426, 'Débil', 0, NULL, NULL),
(3310, 71, 426, 'En caso de ser superior al Salario Mínimo', 0, NULL, NULL),
(3311, 382, 426, 'Todos los campos de fecha debe ser en formato AAAA-MM-DD', 0, NULL, NULL),
(3312, 385, 426, 'Varios archivos de importación puede ser necesario', 0, NULL, NULL),
(3313, 570, 426, 'Aplicar Dias Fuera de Trabajo', 0, NULL, NULL),
(3314, 669, 426, 'Acciones realizadas en la hoja de asistencia', 0, NULL, NULL),
(3315, 662, 426, 'Añadir fila', 0, NULL, NULL),
(3316, 648, 426, 'Añadir hoja de asistencia', 0, NULL, NULL),
(3317, 704, 426, 'Informe resumido de asistencia total', 0, NULL, NULL),
(3318, 672, 426, 'Definir periodo de hoja de asistencia', 0, NULL, NULL),
(3319, 690, 426, 'Editar hoja de asistencia de', 0, NULL, NULL),
(3320, 683, 426, 'Informe del Empleado', 0, NULL, NULL),
(3321, 667, 426, 'Debe ser menos a 24 y en HH: MM o formato decimal', 0, NULL, NULL),
(3322, 308, 426, 'Vie', 0, NULL, NULL),
(3323, 304, 426, 'Lun', 0, NULL, NULL),
(3324, 679, 426, 'Informe del proyecto', 0, NULL, NULL),
(3325, 309, 426, 'Sab', 0, NULL, NULL),
(3326, 649, 426, 'Seleccione un día para crear  hojas de asistencia', 0, NULL, NULL),
(3327, 684, 426, 'Seleccione Empleado', 0, NULL, NULL),
(3328, 303, 426, 'Dom', 0, NULL, NULL),
(3329, 307, 426, 'Jue', 0, NULL, NULL),
(3330, 689, 426, 'Hoja de asistencia de', 0, NULL, NULL),
(3331, 671, 426, 'Período hoja de asistencia', 0, NULL, NULL),
(3332, 670, 426, 'Acción en espera de hoja de asistencia ', 0, NULL, NULL),
(3333, 305, 426, 'Mar', 0, NULL, NULL),
(3334, 306, 426, 'Mie', 0, NULL, NULL),
(3335, 666, 426, 'Seleccione un proyecto y una actividad', 0, NULL, NULL),
(3336, 660, 426, 'No se han encontrado hoja de asistencia', 0, NULL, NULL),
(3337, 694, 426, 'Hoja de asistencia Aprobado', 0, NULL, NULL),
(3338, 693, 426, 'Hoja de asistencia Rechazado', 0, NULL, NULL),
(3339, 668, 426, 'Total debe ser menos de 24 horas', 0, NULL, NULL),
(3340, 491, 426, 'Número de cuenta', 0, NULL, NULL),
(3341, 492, 426, 'Tipo de Cuenta', 0, NULL, NULL),
(3342, 513, 426, 'Activar Empleo', 0, NULL, NULL),
(3343, 378, 426, 'Agregar campos personalizados', 0, NULL, NULL),
(3344, 506, 426, 'Agregar dependiente', 0, NULL, NULL),
(3345, 505, 426, 'Añadir Inmigración', 0, NULL, NULL),
(3346, 450, 426, 'Agregar método de notificación', 0, NULL, NULL),
(3347, 461, 426, 'Añadir motivo de la terminación', 0, NULL, NULL),
(3348, 501, 426, 'Agregar Experiencia', 0, NULL, NULL),
(3349, 399, 426, 'Dependientes de Asignación', 0, NULL, NULL),
(3350, 402, 426, 'Asignación de Contactos de Emergencia', 0, NULL, NULL),
(3351, 415, 426, 'Asignación de Membresia', 0, NULL, NULL),
(3352, 498, 426, 'Asignación de Subordinados', 0, NULL, NULL),
(3353, 499, 426, 'Assignacion de Supervisores', 0, NULL, NULL),
(3354, 475, 426, 'Por lo menos un número de teléfono es necesario', 0, NULL, NULL),
(3355, 469, 426, 'Niño', 0, NULL, NULL),
(3356, 414, 426, 'Detalles del Contrato', 0, NULL, NULL),
(3357, 445, 426, 'Información Específica del País', 0, NULL, NULL),
(3358, 441, 426, 'Crear Datos de Acceso', 0, NULL, NULL),
(3359, 370, 426, 'Campo Personalizado', 0, NULL, NULL),
(3360, 406, 426, 'Documento', 0, NULL, NULL),
(3361, 526, 426, 'Desplegable', 0, NULL, NULL),
(3362, 374, 426, 'Editar campo personalizado', 0, NULL, NULL),
(3363, 467, 426, 'Editar dependiente', 0, NULL, NULL),
(3364, 474, 426, 'Editar Contacto de Emergencia', 0, NULL, NULL),
(3365, 449, 426, 'Editar método de notificación', 0, NULL, NULL),
(3366, 460, 426, 'Editar motivo de la terminación', 0, NULL, NULL),
(3367, 388, 426, 'Información del empleado', 0, NULL, NULL),
(3368, 377, 426, 'Entre las opciones permitidas separados por comas', 0, NULL, NULL),
(3369, 438, 426, 'Exenciones', 0, NULL, NULL),
(3370, 437, 426, 'Impuesto sobre la Renta Federal', 0, NULL, NULL),
(3371, 375, 426, 'Nombre del campo', 0, NULL, NULL),
(3372, 372, 426, 'Tipo de campo', 0, NULL, NULL),
(3373, 205, 426, 'Desde la fecha debe ser anterior a la fecha', 0, NULL, NULL),
(3374, 473, 426, 'GPA / Puntuación', 0, NULL, NULL),
(3375, 471, 426, 'Instituto', 0, NULL, NULL),
(3376, 472, 426, 'Mayor / Especialización', 0, NULL, NULL),
(3377, 428, 426, 'Servicio militar', 0, NULL, NULL),
(3378, 478, 426, 'Pasaporte', 0, NULL, NULL),
(3379, 339, 426, 'Datos Personales', 0, NULL, NULL),
(3380, 468, 426, 'Por favor especifique', 0, NULL, NULL),
(3381, 344, 426, 'Informe a', 0, NULL, NULL),
(3382, 371, 426, 'Pantalla', 0, NULL, NULL),
(3383, 376, 426, 'Seleccione Opciones', 0, NULL, NULL),
(3384, 443, 426, 'Mostrar Los campos que ya no se utilizan', 0, NULL, NULL),
(3385, 444, 426, 'Mostrar sobrenombre, fuma y el Servicio Militar en los datos personales', 0, NULL, NULL),
(3386, 447, 426, 'Mostrar campo de la RIS en Datos de Carácter Personal', 0, NULL, NULL),
(3387, 446, 426, 'Mostrar en el campo de número de Seguro Social Datos de Carácter Personal', 0, NULL, NULL),
(3388, 448, 426, 'Mostrar Tributario de EE.UU. Las exenciones del menú', 0, NULL, NULL),
(3389, 425, 426, 'SIN Número', 0, NULL, NULL),
(3390, 429, 426, 'Fumador', 0, NULL, NULL),
(3391, 424, 426, 'Número de Seguro Social', 0, NULL, NULL),
(3392, 345, 426, 'Las exenciones de impuestos', 0, NULL, NULL),
(3393, 508, 426, 'Terminar Empleo', 0, NULL, NULL),
(3394, 525, 426, 'Texto o Número de', 0, NULL, NULL),
(3395, 439, 426, 'Estado de Desempleo', 0, NULL, NULL),
(3396, 479, 426, 'Visado', 0, NULL, NULL),
(3397, 440, 426, 'Estado de Trabajo', 0, NULL, NULL),
(3398, 152, 426, 'Acciones', 0, NULL, NULL),
(3399, 576, 426, 'Asignar', 0, NULL, NULL),
(3400, 545, 426, 'Período de dias fuera de trabajo actuales', 0, NULL, NULL),
(3401, 712, 426, 'Duración (horas)', 0, NULL, NULL),
(3402, 546, 426, 'Año Después', 0, NULL, NULL),
(3403, 220, 426, 'Desde la fecha', 0, NULL, NULL),
(3404, 542, 426, 'Día completo', 0, NULL, NULL),
(3405, 630, 426, 'Medio Día', 0, NULL, NULL),
(3406, 593, 426, 'Balance de Dias fuera de trabajo', 0, NULL, NULL),
(3407, 567, 426, 'Tipo de Dias', 0, NULL, NULL),
(3408, 581, 426, 'Mi lista de dias fuera de trabajo', 0, NULL, NULL),
(3409, 571, 426, 'No hay tipos de dias con balance de dias', 0, NULL, NULL),
(3410, 631, 426, 'Día no laborable', 0, NULL, NULL),
(3411, 620, 426, 'Número de días', 0, NULL, NULL),
(3412, 605, 426, 'Pendiente de aprobación', 0, NULL, NULL),
(3413, 538, 426, 'Se repite anualmente', 0, NULL, NULL),
(3414, 578, 426, 'Mostrar Dias  con estado', 0, NULL, NULL),
(3415, 603, 426, 'Tomado', 0, NULL, NULL),
(3416, 221, 426, 'Hasta Fecha', 0, NULL, NULL),
(3417, 628, 426, 'Error al enviar: No hay Días de trabajo seleccionado', 0, NULL, NULL),
(3418, 627, 426, 'Error al enviar', 0, NULL, NULL),
(3419, 562, 426, 'Añadir Tipo de dias', 0, NULL, NULL),
(3420, 563, 426, 'Editar Tipo de dias', 0, NULL, NULL),
(3421, 706, 426, 'Perforacion al entrar', 0, NULL, NULL),
(3422, 710, 426, 'Nota de perforacion al entrar', 0, NULL, NULL),
(3423, 708, 426, 'Perforacion al salir', 0, NULL, NULL),
(3424, 711, 426, 'Nota de perforacion al salir', 0, NULL, NULL),
(3425, 709, 426, 'Superposición de registros encontrados', 0, NULL, NULL),
(3426, 715, 426, 'Zona horaria', 0, NULL, NULL),
(3427, 717, 426, 'En', 0, NULL, NULL),
(3428, 718, 426, 'Fuera', 0, NULL, NULL),
(3429, 700, 426, 'La asistencia de configuración', 0, NULL, NULL),
(3430, 701, 426, 'Empleado puede cambiar la hora actual cuando ocurra la perforación de entrada / salida', 0, NULL, NULL),
(3431, 702, 426, 'Empleado puede editar / borrar los registros propios de asistencia', 0, NULL, NULL),
(3432, 703, 426, 'Supervisor puede añadir / editar / borrar los registros de asistencia de sus subordinados', 0, NULL, NULL),
(3433, 714, 426, 'Mis Registros de asistencia', 0, NULL, NULL),
(3434, 352, 426, 'Se ha eliminado correctamente', 0, NULL, NULL),
(3435, 696, 426, 'Perfore tiempo debe ser mayor de tiempo de Fichar', 0, NULL, NULL),
(3436, 736, 426, 'Nombre de usuario', 0, NULL, NULL),
(3437, 737, 426, 'Contraseña', 0, NULL, NULL),
(3438, 250, 426, 'No se encontraron registros', 0, NULL, NULL),
(3439, 698, 426, 'Hoja de asistencia enviado', 0, NULL, NULL),
(3440, 198, 426, 'Segundo nombre', 0, NULL, NULL),
(3441, 197, 426, 'Nombre', 0, NULL, NULL),
(3442, 87, 8, 'Agregar', 0, NULL, NULL),
(3443, 208, 8, 'Adjuntar Archivo', 0, NULL, NULL),
(3444, 180, 8, 'Agregar Empleado', 0, NULL, NULL),
(3445, 503, 8, 'Añadido por', 0, NULL, NULL),
(3446, 7, 8, 'Domicilio', 0, NULL, NULL),
(3447, 129, 8, 'Administrador', 0, NULL, NULL),
(3448, 530, 8, 'Grupo Etario', 0, NULL, NULL),
(3449, 143, 8, 'Solo permite números y + - / ( )', 0, NULL, NULL),
(3450, 125, 8, 'Ya existe', 0, NULL, NULL),
(3451, 434, 8, 'Monto', 0, NULL, NULL),
(3452, 223, 8, 'Solicitar', 0, NULL, NULL),
(3453, 573, 8, 'Asignar Permiso', 0, NULL, NULL),
(3454, 489, 8, 'Asignación de conceptos salariales', 0, NULL, NULL),
(3455, 140, 8, 'Tamaño del adjunto demasiado grande', 0, NULL, NULL),
(3456, 286, 8, 'Asistencia', 0, NULL, NULL),
(3457, 313, 8, 'Resumen de Asistencia', 0, NULL, NULL),
(3458, 224, 8, 'Atrás', 0, NULL, NULL),
(3459, 92, 8, 'Cancelar', 0, NULL, NULL),
(3460, 291, 8, 'Candidatos', 0, NULL, NULL),
(3461, 248, 8, 'Cambiar contraseña', 0, NULL, NULL),
(3462, 186, 8, 'Comentario', 0, NULL, NULL),
(3463, 191, 8, 'Comentarios', 0, NULL, NULL),
(3464, 496, 8, 'Empresa', 0, NULL, NULL),
(3465, 484, 8, 'Habilidades/ Competencias', 0, NULL, NULL),
(3466, 264, 8, 'Configuración', 0, NULL, NULL),
(3467, 317, 8, 'Configurar', 0, NULL, NULL),
(3468, 393, 8, 'Datos de contacto', 0, NULL, NULL),
(3469, 413, 8, 'Fecha de finalización del contrato', 0, NULL, NULL),
(3470, 412, 8, 'Fecha de inicio del contrato', 0, NULL, NULL),
(3471, 84, 8, 'País', 0, NULL, NULL),
(3472, 102, 8, 'Moneda', 0, NULL, NULL),
(3473, 168, 8, 'Empleados actuales y anteriores', 0, NULL, NULL),
(3474, 170, 8, 'Sólo los empleados actuales', 0, NULL, NULL),
(3475, 367, 8, 'Campos personalizados', 0, NULL, NULL),
(3476, 287, 8, 'Clientes', 0, NULL, NULL),
(3477, 379, 8, 'Importación de datos', 0, NULL, NULL),
(3478, 210, 8, 'Fecha', 0, NULL, NULL),
(3479, 502, 8, 'Fecha en la que fue agregado', 0, NULL, NULL),
(3480, 401, 8, 'Fecha de Nacimiento', 0, NULL, NULL),
(3481, 597, 8, 'Días', 0, NULL, NULL),
(3482, 330, 8, 'Eliminar actual', 0, NULL, NULL),
(3483, 341, 8, 'Cargas Familiares', 0, NULL, NULL),
(3484, 101, 8, 'Descripción', 0, NULL, NULL),
(3485, 521, 8, 'Número de Cuenta Bancaria', 0, NULL, NULL),
(3486, 522, 8, 'Tipo de Cuenta Bancaria', 0, NULL, NULL),
(3487, 436, 8, 'Monto del Depósito Bancario', 0, NULL, NULL),
(3488, 150, 8, 'Deshabilitado', 0, NULL, NULL),
(3489, 455, 8, 'Mostrar los campos', 0, NULL, NULL),
(3490, 519, 8, 'Tipo de documento', 0, NULL, NULL),
(3491, 422, 8, 'Número de licencia de conducir\'s', 0, NULL, NULL),
(3492, 222, 8, 'Duración', 0, NULL, NULL),
(3493, 98, 8, 'Editar', 0, NULL, NULL),
(3494, 151, 8, 'Editar adjunto', 0, NULL, NULL),
(3495, 477, 8, 'Editar Inmigración', 0, NULL, NULL),
(3496, 488, 8, 'Editar conceptos salariales', 0, NULL, NULL),
(3497, 106, 8, 'Educación/Formación', 0, NULL, NULL),
(3498, 481, 8, 'Fecha de habilitación', 0, NULL, NULL),
(3499, 480, 8, 'Estado', 0, NULL, NULL),
(3500, 340, 8, 'Contactos de Emergencia', 0, NULL, NULL),
(3501, 218, 8, 'Empleado', 0, NULL, NULL),
(3502, 515, 8, 'Nombre del Empleado', 0, NULL, NULL),
(3503, 163, 8, 'Id del empleado', 0, NULL, NULL),
(3504, 514, 8, 'Apellido del empleado', 0, NULL, NULL),
(3505, 269, 8, 'Lista de empleados', 0, NULL, NULL),
(3506, 516, 8, 'Segundo Nombre', 0, NULL, NULL),
(3507, 122, 8, 'Nombre del Empleado', 0, NULL, NULL),
(3508, 285, 8, 'Registros de empleados', 0, NULL, NULL),
(3509, 183, 8, 'Informes de empleados', 0, NULL, NULL),
(3510, 282, 8, 'Hojas de asistencia de los empleados', 0, NULL, NULL),
(3511, 142, 8, 'Tipo de Contrato', 0, NULL, NULL),
(3512, 149, 8, 'Habilitado', 0, NULL, NULL),
(3513, 190, 8, 'Fecha de finalización', 0, NULL, NULL),
(3514, 148, 8, 'Autogestión del Empleado', 0, NULL, NULL),
(3515, 347, 8, 'El formato previsto es: admin@example.com', 0, NULL, NULL),
(3516, 172, 8, 'Fecha de Vencimiento', 0, NULL, NULL),
(3517, 482, 8, 'La fecha de vencimiento debe ser posterior a la fecha de emisión', 0, NULL, NULL),
(3518, 176, 8, 'Femenino', 0, NULL, NULL),
(3519, 202, 8, 'Nombre del archivo', 0, NULL, NULL),
(3520, 523, 8, 'Nombre', 0, NULL, NULL),
(3521, 483, 8, 'Fluidez', 0, NULL, NULL),
(3522, 215, 8, 'Viernes', 0, NULL, NULL),
(3523, 123, 8, 'Desde', 0, NULL, NULL),
(3524, 427, 8, 'Género', 0, NULL, NULL),
(3525, 44, 8, 'Información General', 0, NULL, NULL),
(3526, 540, 8, 'Feriados', 0, NULL, NULL),
(3527, 403, 8, 'Teléfono de la casa', 0, NULL, NULL),
(3528, 164, 8, 'Identificación', 0, NULL, NULL),
(3529, 342, 8, 'Inmigración', 0, NULL, NULL),
(3530, 389, 8, 'Incluir', 0, NULL, NULL),
(3531, 207, 8, 'Incluir Encabezado', 0, NULL, NULL),
(3532, 568, 8, 'Incluir a los empleados anteriores', 0, NULL, NULL),
(3533, 408, 8, 'Emitido por', 0, NULL, NULL),
(3534, 409, 8, 'Fecha de Emisión', 0, NULL, NULL),
(3535, 258, 8, 'Puesto', 0, NULL, NULL),
(3536, 72, 8, 'Categorías de Puestos', 0, NULL, NULL),
(3537, 133, 8, 'Categoría del Puesto', 0, NULL, NULL),
(3538, 200, 8, 'Descripción del Puesto', 0, NULL, NULL),
(3539, 166, 8, 'Título del Puesto', 0, NULL, NULL),
(3540, 3, 8, 'Títulos de los Puestos', 0, NULL, NULL),
(3541, 173, 8, 'Fecha de Ingreso', 0, NULL, NULL),
(3542, 329, 8, 'Mantener actualizado', 0, NULL, NULL),
(3543, 193, 8, 'Idioma', 0, NULL, NULL),
(3544, 110, 8, 'Idiomas', 0, NULL, NULL),
(3545, 165, 8, 'Apellido del empleado', 0, NULL, NULL),
(3546, 229, 8, 'Licencias y Permisos', 0, NULL, NULL),
(3547, 621, 8, 'Días disponibles', 0, NULL, NULL),
(3548, 577, 8, 'Listado de licencias y permisos', 0, NULL, NULL),
(3549, 543, 8, 'Período de permiso', 0, NULL, NULL),
(3550, 564, 8, 'Tipos de licencia', 0, NULL, NULL),
(3551, 105, 8, 'Nivel', 0, NULL, NULL),
(3552, 497, 8, 'Matrícula/ Registro', 0, NULL, NULL),
(3553, 423, 8, 'Fecha de caducidad de licencia', 0, NULL, NULL),
(3554, 486, 8, 'Número de licencia', 0, NULL, NULL),
(3555, 485, 8, 'Tipo de licencia', 0, NULL, NULL),
(3556, 77, 8, 'Matrículas', 0, NULL, NULL),
(3557, 78, 8, 'Ubicación/ Localización', 0, NULL, NULL),
(3558, 174, 8, 'Ubicación', 0, NULL, NULL),
(3559, 4, 8, 'Ubicaciones', 0, NULL, NULL),
(3560, 249, 8, 'Cerrar sesión', 0, NULL, NULL),
(3561, 175, 8, 'Masculino', 0, NULL, NULL),
(3562, 426, 8, 'Estado civil', 0, NULL, NULL),
(3563, 416, 8, 'Membresía', 0, NULL, NULL),
(3564, 115, 8, 'Membresías', 0, NULL, NULL),
(3565, 171, 8, 'Celular', 0, NULL, NULL),
(3566, 266, 8, 'Módulos', 0, NULL, NULL),
(3567, 211, 8, 'Lunes', 0, NULL, NULL),
(3568, 314, 8, 'Mis Licencias/ Permisos', 0, NULL, NULL),
(3569, 281, 8, 'Mis registros', 0, NULL, NULL),
(3570, 280, 8, 'Mis hojas de asistencia', 0, NULL, NULL),
(3571, 82, 8, 'Nombre', 0, NULL, NULL),
(3572, 42, 8, 'Nacionalidades', 0, NULL, NULL),
(3573, 97, 8, 'Nacionalidad', 0, NULL, NULL),
(3574, 94, 8, 'No', 0, NULL, NULL),
(3575, 256, 8, 'Comentarios- Notas', 0, NULL, NULL),
(3576, 407, 8, 'Número', 0, NULL, NULL),
(3577, 681, 8, 'Sólo incluir hojas de asistencia aprobadas', 0, NULL, NULL),
(3578, 442, 8, 'Campos opcionales', 0, NULL, NULL),
(3579, 262, 8, 'Estructura Organizacional', 0, NULL, NULL),
(3580, 470, 8, 'Otro', 0, NULL, NULL),
(3581, 321, 8, 'Otros correos electrónicos', 0, NULL, NULL),
(3582, 421, 8, 'Otra  ID', 0, NULL, NULL),
(3583, 720, 8, 'Empleado anterior', 0, NULL, NULL),
(3584, 169, 8, 'Empleados anteriores solamente', 0, NULL, NULL),
(3585, 435, 8, 'Frecuencia de pago', 0, NULL, NULL),
(3586, 194, 8, 'Escala salarial', 0, NULL, NULL),
(3587, 58, 8, 'Escalas salariales', 0, NULL, NULL),
(3588, 275, 8, 'Desempeño', 0, NULL, NULL),
(3589, 512, 8, 'Personal', 0, NULL, NULL),
(3590, 271, 8, 'Módulo de Información Personal', 0, NULL, NULL),
(3591, 680, 8, 'Intérvalo de fechas del proyecto', 0, NULL, NULL),
(3592, 261, 8, 'Información del Proyecto', 0, NULL, NULL),
(3593, 289, 8, 'Informes /reportes de Proyectos', 0, NULL, NULL),
(3594, 288, 8, 'Proyectos', 0, NULL, NULL),
(3595, 284, 8, 'Fichar Entrada/ Salida', 0, NULL, NULL),
(3596, 272, 8, 'Reclutamiento', 0, NULL, NULL),
(3597, 400, 8, 'Relación', 0, NULL, NULL),
(3598, 331, 8, 'Reemplazará a la actual', 0, NULL, NULL),
(3599, 181, 8, 'Nombre del informe', 0, NULL, NULL),
(3600, 476, 8, 'Método de reporte', 0, NULL, NULL),
(3601, 452, 8, 'Métodos de reporte', 0, NULL, NULL),
(3602, 270, 8, 'Informes', 0, NULL, NULL),
(3603, 130, 8, 'Obligatorio', 0, NULL, NULL),
(3604, 85, 8, 'Limpiar campos', 0, NULL, NULL),
(3605, 493, 8, 'Número de CBU', 0, NULL, NULL),
(3606, 343, 8, 'Salario/ Sueldo', 0, NULL, NULL),
(3607, 433, 8, 'Componente Salarial', 0, NULL, NULL),
(3608, 216, 8, 'Sábado', 0, NULL, NULL),
(3609, 131, 8, 'Guardar', 0, NULL, NULL),
(3610, 524, 8, 'Calificación', 0, NULL, NULL),
(3611, 86, 8, 'Buscar', 0, NULL, NULL),
(3612, 156, 8, 'Seleccione Archivo', 0, NULL, NULL),
(3613, 454, 8, 'Criterio de selección', 0, NULL, NULL),
(3614, 529, 8, 'Periodo de servicio', 0, NULL, NULL),
(3615, 137, 8, 'Debe ser un número', 0, NULL, NULL),
(3616, 179, 8, 'Debe ser un número positivo', 0, NULL, NULL),
(3617, 504, 8, 'Debe estar dentro del mín / máx de los valores', 0, NULL, NULL),
(3618, 203, 8, 'Tamaño', 0, NULL, NULL),
(3619, 494, 8, 'Habilidad', 0, NULL, NULL),
(3620, 118, 8, 'Habilidades', 0, NULL, NULL),
(3621, 189, 8, 'Fecha de inicio', 0, NULL, NULL),
(3622, 144, 8, 'La fecha de inicio debe ser anterior a la fecha de finalización', 0, NULL, NULL),
(3623, 178, 8, 'Estado/ Provincia', 0, NULL, NULL),
(3624, 120, 8, 'Estatus', 0, NULL, NULL),
(3625, 302, 8, 'Estructura', 0, NULL, NULL),
(3626, 167, 8, 'Sub Unidad', 0, NULL, NULL),
(3627, 528, 8, 'Colaboradores', 0, NULL, NULL),
(3628, 418, 8, 'Costo de la suscripción', 0, NULL, NULL),
(3629, 419, 8, 'Fecha de inicio de la suscripción', 0, NULL, NULL),
(3630, 417, 8, 'Pago de la suscripción a cargo de', 0, NULL, NULL),
(3631, 420, 8, 'Fecha de Renovación de la Suscripción', 0, NULL, NULL),
(3632, 255, 8, 'Guardado correctamente', 0, NULL, NULL),
(3633, 254, 8, 'Se ha actualizado correctamente', 0, NULL, NULL),
(3634, 217, 8, 'Domingo', 0, NULL, NULL),
(3635, 392, 8, 'Supervisor', 0, NULL, NULL),
(3636, 390, 8, 'Nombre de Supervisor', 0, NULL, NULL),
(3637, 527, 8, 'Supervisores', 0, NULL, NULL),
(3638, 462, 8, 'Razones de terminación de relación laboral', 0, NULL, NULL),
(3639, 214, 8, 'Jueves', 0, NULL, NULL),
(3640, 273, 8, 'Tiempo', 0, NULL, NULL),
(3641, 283, 8, 'Hojas de asistencia', 0, NULL, NULL),
(3642, 124, 8, 'A', 0, NULL, NULL),
(3643, 195, 8, 'La fecha \"hasta\" debe ser posterior de la fecha \"desde\"', 0, NULL, NULL),
(3644, 212, 8, 'Martes', 0, NULL, NULL),
(3645, 154, 8, 'Tipo', 0, NULL, NULL),
(3646, 263, 8, 'Usuarios', 0, NULL, NULL),
(3647, 290, 8, 'Vacantes', 0, NULL, NULL),
(3648, 213, 8, 'Miércoles', 0, NULL, NULL),
(3649, 320, 8, 'Correo electrónico laboral', 0, NULL, NULL),
(3650, 500, 8, 'Experiencia laboral', 0, NULL, NULL),
(3651, 65, 8, 'Turnos de trabajo', 0, NULL, NULL),
(3652, 404, 8, 'Teléfono del laboral', 0, NULL, NULL),
(3653, 547, 8, 'Semana laboral', 0, NULL, NULL),
(3654, 188, 8, 'Año', 0, NULL, NULL),
(3655, 495, 8, 'Años de experiencia', 0, NULL, NULL),
(3656, 93, 8, 'Sí', 0, NULL, NULL),
(3657, 241, 8, 'Las contraseñas no coinciden', 0, NULL, NULL),
(3658, 228, 8, 'Ok', 0, NULL, NULL),
(3659, 158, 8, 'Acepta hasta 1MB', 0, NULL, NULL),
(3660, 121, 8, 'Nombre de usuario', 0, NULL, NULL),
(3661, 238, 8, 'Contraseña', 0, NULL, NULL),
(3662, 159, 8, 'Cargar', 0, NULL, NULL),
(3663, 353, 8, 'Total', 0, NULL, NULL),
(3664, 509, 8, 'Fecha de salida', 0, NULL, NULL),
(3665, 510, 8, 'Razón de finalización del contrato', 0, NULL, NULL),
(3666, 645, 8, 'Nombre de la actividad', 0, NULL, NULL),
(3667, 107, 8, 'Añadir Formación', 0, NULL, NULL),
(3668, 109, 8, 'Agregar idioma', 0, NULL, NULL),
(3669, 112, 8, 'Agregar licencia', 0, NULL, NULL),
(3670, 117, 8, 'Añadir Habilidad', 0, NULL, NULL),
(3671, 99, 8, 'Dirección 1', 0, NULL, NULL),
(3672, 100, 8, 'Dirección 2', 0, NULL, NULL),
(3673, 83, 8, 'Ciudad', 0, NULL, NULL),
(3674, 240, 8, 'Confirme contraseña', 0, NULL, NULL),
(3675, 644, 8, 'Copiar desde', 0, NULL, NULL),
(3676, 651, 8, 'Nombre del proyecto', 0, NULL, NULL),
(3677, 104, 8, 'Editar educación/formación', 0, NULL, NULL),
(3678, 108, 8, 'Editar Idioma', 0, NULL, NULL),
(3679, 111, 8, 'Editar Licencia/Matrícula', 0, NULL, NULL),
(3680, 116, 8, 'Editar Habilidad', 0, NULL, NULL),
(3681, 89, 8, 'Estado / Provincia', 0, NULL, NULL),
(3682, 90, 8, 'Código Postal', 0, NULL, NULL),
(3683, 234, 8, 'Aprobar', 0, NULL, NULL),
(3684, 604, 8, 'Agendado', 0, NULL, NULL),
(3685, 91, 8, 'Nota', 0, NULL, NULL),
(3686, 201, 8, 'Archivos adjuntos', 0, NULL, NULL),
(3687, 155, 8, 'Descargar', 0, NULL, NULL),
(3688, 95, 8, 'Correo eléctronico', 0, NULL, NULL),
(3689, 310, 8, 'Realizado por', 0, NULL, NULL),
(3690, 235, 8, 'Rechazar', 0, NULL, NULL),
(3691, 632, 8, 'Rechazado', 0, NULL, NULL),
(3692, 348, 8, 'Ingresar', 0, NULL, NULL),
(3693, 312, 8, 'Ver', 0, NULL, NULL),
(3694, 274, 8, 'Mi Información', 0, NULL, NULL),
(3695, 119, 8, 'Rol de Usuario', 0, NULL, NULL),
(3696, 177, 8, 'Currículum', 0, NULL, NULL),
(3697, 184, 8, 'Archivo actual', 0, NULL, NULL),
(3698, 185, 8, 'Remplazar con', 0, NULL, NULL),
(3699, 311, 8, 'Añadir otro', 0, NULL, NULL),
(3700, 544, 8, 'Mes de comienzo', 0, NULL, NULL),
(3701, 633, 8, 'Cancelado', 0, NULL, NULL),
(3702, 549, 8, 'Agregar título de Licencia', 0, NULL, NULL),
(3703, 557, 8, 'Cargo', 0, NULL, NULL),
(3704, 226, 8, 'No coincide con ningún empleado', 0, NULL, NULL),
(3705, 319, 8, 'Autorizaciones', 0, NULL, NULL),
(3706, 316, 8, 'Agregar Autorizaciones', 0, NULL, NULL),
(3707, 318, 8, 'Autorizaciones del Empleado', 0, NULL, NULL),
(3708, 617, 8, 'Válido desde', 0, NULL, NULL),
(3709, 618, 8, 'Válido hasta', 0, NULL, NULL),
(3710, 227, 8, 'No coincide ningún empleado con el filtro seleccionado', 0, NULL, NULL),
(3711, 565, 8, 'Permisos y reportes de ausencias', 0, NULL, NULL),
(3712, 569, 8, 'Informe de mis licencias y permisos y los que ya se han utilizado', 0, NULL, NULL),
(3713, 583, 8, 'Empleados que coinciden', 0, NULL, NULL),
(3714, 566, 8, 'Generado por', 0, NULL, NULL),
(3715, 225, 8, 'Confirmar', 0, NULL, NULL),
(3716, 315, 8, 'Mis derechos', 0, NULL, NULL),
(3717, 260, 8, 'Administración de usuarios', 0, NULL, NULL),
(3718, 598, 8, 'Disponibilidad', 0, NULL, NULL),
(3719, 594, 8, 'Disponibilidad insuficiente', 0, NULL, NULL),
(3720, 8, 8, 'Configuración de Email', 0, NULL, NULL),
(3721, 26, 8, 'Suscripciones de Emails', 0, NULL, NULL),
(3722, 246, 8, 'Acerca de', 0, NULL, NULL),
(3723, 298, 8, 'Buscadores de Empleados', 0, NULL, NULL),
(3724, 295, 8, 'Mis Búsquedas', 0, NULL, NULL),
(3725, 643, 8, 'Actividades', 0, NULL, NULL),
(3726, 59, 8, 'Añadir Moneda', 0, NULL, NULL),
(3727, 647, 8, 'Añadir Usuario- Cliente', 0, NULL, NULL),
(3728, 30, 8, 'Añadir tipo de contrato ', 0, NULL, NULL),
(3729, 73, 8, 'Agregar Categoría de Trabajo', 0, NULL, NULL),
(3730, 1, 8, 'Añadir Título del Puesto', 0, NULL, NULL),
(3731, 6, 8, 'Agregar ubicación', 0, NULL, NULL),
(3732, 114, 8, 'Agregar membresía', 0, NULL, NULL),
(3733, 43, 8, 'Agregar Nacionalidad', 0, NULL, NULL),
(3734, 53, 8, 'Añadir escala salarial', 0, NULL, NULL),
(3735, 691, 8, 'Agregar proyecto', 0, NULL, NULL),
(3736, 658, 8, 'Agregar Actividad del Proyecto', 0, NULL, NULL),
(3737, 28, 8, 'Agregar suscriptor', 0, NULL, NULL),
(3738, 61, 8, 'Agregar usuario', 0, NULL, NULL),
(3739, 76, 8, 'Agregar turno de trabajo', 0, NULL, NULL),
(3740, 69, 8, 'Empleados asignados', 0, NULL, NULL),
(3741, 244, 8, 'Mejor', 0, NULL, NULL),
(3742, 380, 8, 'El orden de la columna no debe ser cambiado', 0, NULL, NULL),
(3743, 650, 8, 'Copia Actividad', 0, NULL, NULL),
(3744, 465, 8, 'Contraseña actual', 0, NULL, NULL),
(3745, 654, 8, 'Nombre del cliente', 0, NULL, NULL),
(3746, 80, 8, 'Formato de fecha', 0, NULL, NULL),
(3747, 384, 8, 'Cada archivo de importación debe estar configurado para 100 registros o menos', 0, NULL, NULL),
(3748, 54, 8, 'Editar divisas/monedas', 0, NULL, NULL),
(3749, 675, 8, 'Editar Cliente', 0, NULL, NULL),
(3750, 29, 8, 'Editar tipo de contrato', 0, NULL, NULL),
(3751, 74, 8, 'Editar Jerarquía de Trabajo', 0, NULL, NULL),
(3752, 2, 8, 'Editar Nombe del Puesto', 0, NULL, NULL),
(3753, 32, 8, 'Editar ubicación', 0, NULL, NULL),
(3754, 113, 8, 'Editar membresía', 0, NULL, NULL),
(3755, 41, 8, 'Editar Nacionalidad', 0, NULL, NULL),
(3756, 57, 8, 'Editar el Escala Salarial', 0, NULL, NULL),
(3757, 678, 8, 'Editar Proyecto', 0, NULL, NULL),
(3758, 655, 8, 'Editar Actividad del Proyecto', 0, NULL, NULL),
(3759, 25, 8, 'Editar suscriptor', 0, NULL, NULL),
(3760, 60, 8, 'Editar usuario', 0, NULL, NULL),
(3761, 62, 8, 'Editar turno de trabajo', 0, NULL, NULL),
(3762, 96, 8, 'Fax', 0, NULL, NULL),
(3763, 381, 8, 'Los nombres y apellidos son obligatorios', 0, NULL, NULL),
(3764, 66, 8, 'Horas por día', 0, NULL, NULL),
(3765, 31, 8, 'Descripción del puesto', 0, NULL, NULL),
(3766, 9, 8, 'Correo enviado como', 0, NULL, NULL),
(3767, 56, 8, 'Salario máximo', 0, NULL, NULL),
(3768, 55, 8, 'Salario Mínimo', 0, NULL, NULL),
(3769, 33, 8, 'Configuración del módulo', 0, NULL, NULL),
(3770, 747, 8, 'Nueva contraseña', 0, NULL, NULL),
(3771, 653, 8, 'No hay actividades seleccionadas', 0, NULL, NULL),
(3772, 652, 8, 'No hay actividades asignadas', 0, NULL, NULL),
(3773, 27, 8, 'Tipo de notificación', 0, NULL, NULL),
(3774, 5, 8, 'Número de empleados', 0, NULL, NULL),
(3775, 45, 8, 'Nombre de la Firma', 0, NULL, NULL),
(3776, 14, 8, 'Ruta a Sendmail', 0, NULL, NULL),
(3777, 88, 8, 'Teléfono', 0, NULL, NULL),
(3778, 657, 8, 'Proyecto', 0, NULL, NULL),
(3779, 656, 8, 'Administrador del proyecto', 0, NULL, NULL),
(3780, 676, 8, 'Administradores del proyecto', 0, NULL, NULL),
(3781, 46, 8, 'Número de registro / matrícula', 0, NULL, NULL),
(3782, 10, 8, 'Método de Envío', 0, NULL, NULL),
(3783, 63, 8, 'Nombre del turno', 0, NULL, NULL),
(3784, 19, 8, 'Contraseña SMTP', 0, NULL, NULL),
(3785, 16, 8, 'Puerto SMTP', 0, NULL, NULL),
(3786, 18, 8, 'Usuario SMTP', 0, NULL, NULL),
(3787, 245, 8, 'Muy fuerte', 0, NULL, NULL),
(3788, 24, 8, 'Suscriptores', 0, NULL, NULL),
(3789, 75, 8, 'Usuarios del Sistema', 0, NULL, NULL),
(3790, 47, 8, 'CUIT- Clave Única de Identificación Tributaria', 0, NULL, NULL),
(3791, 23, 8, 'dirección de correo electrónico de prueba', 0, NULL, NULL),
(3792, 52, 8, 'Esta unidad se añadió debajo', 0, NULL, NULL),
(3793, 20, 8, 'TLS', 0, NULL, NULL),
(3794, 49, 8, 'Identificación de la Unidad', 0, NULL, NULL),
(3795, 17, 8, 'Utilizar autenticación SMTP', 0, NULL, NULL),
(3796, 243, 8, 'Muy débil', 0, NULL, NULL),
(3797, 242, 8, 'Débil', 0, NULL, NULL),
(3798, 71, 8, 'debe ser superior al Salario Mínimo', 0, NULL, NULL),
(3799, 382, 8, 'Todos los campos de fecha deben ser en formato AAAA-MM-DD', 0, NULL, NULL),
(3800, 385, 8, 'Varios archivos de importación pueden ser requeridos', 0, NULL, NULL),
(3801, 50, 8, 'Estructura Organizacional', 0, NULL, NULL),
(3802, 276, 8, 'Pizarra de pendientes', 0, NULL, NULL),
(3803, 570, 8, 'Solicitar Licencia/ Permiso', 0, NULL, NULL),
(3804, 686, 8, 'Mi hoja de asistencia', 0, NULL, NULL),
(3805, 669, 8, 'Acciones realizadas en los reportes de asistencia', 0, NULL, NULL),
(3806, 662, 8, 'Añadir fila', 0, NULL, NULL),
(3807, 648, 8, 'Añadir Reportes de asistencia', 0, NULL, NULL),
(3808, 704, 8, 'Informe de asistencias totales', 0, NULL, NULL),
(3809, 672, 8, 'Definir período de reporte de asistencia', 0, NULL, NULL),
(3810, 690, 8, 'Editar Reportes de Asistencia para', 0, NULL, NULL),
(3811, 683, 8, 'Reporte del Empleado', 0, NULL, NULL),
(3812, 667, 8, 'Debe ser inferior a 24 y en HH: MM o formato decimal', 0, NULL, NULL),
(3813, 308, 8, 'Vie', 0, NULL, NULL),
(3814, 304, 8, 'Lun', 0, NULL, NULL),
(3815, 679, 8, 'Informe del proyecto', 0, NULL, NULL),
(3816, 309, 8, 'Sab', 0, NULL, NULL),
(3817, 649, 8, 'Seleccione un día para crear Reporte de Asistencia', 0, NULL, NULL),
(3818, 684, 8, 'Seleccione Empleado', 0, NULL, NULL),
(3819, 303, 8, 'Dom', 0, NULL, NULL),
(3820, 307, 8, 'Jue', 0, NULL, NULL),
(3821, 689, 8, 'Reporte  de asistencia de', 0, NULL, NULL),
(3822, 671, 8, 'Período de reporte de asistencia', 0, NULL, NULL),
(3823, 670, 8, 'Reportes pendientes de ejecutar', 0, NULL, NULL),
(3824, 305, 8, 'Mar', 0, NULL, NULL),
(3825, 306, 8, 'Mie', 0, NULL, NULL),
(3826, 666, 8, 'Seleccione un proyecto y una actividad', 0, NULL, NULL),
(3827, 660, 8, 'No se han encontrado reportes de asistencia', 0, NULL, NULL),
(3828, 694, 8, 'Reporte de asistencia Aprobado', 0, NULL, NULL),
(3829, 693, 8, 'Reporte de asistencia Rechazado', 0, NULL, NULL),
(3830, 668, 8, 'Elotal debe ser menor de 24 horas', 0, NULL, NULL),
(3831, 491, 8, 'Número de cuenta', 0, NULL, NULL),
(3832, 492, 8, 'Tipo de Cuenta', 0, NULL, NULL),
(3833, 513, 8, 'Activar Empleado', 0, NULL, NULL),
(3834, 378, 8, 'Agregar campos personalizables', 0, NULL, NULL),
(3835, 506, 8, 'Agregar carga familiar', 0, NULL, NULL),
(3836, 505, 8, 'Añadir datos de Inmigración', 0, NULL, NULL),
(3837, 450, 8, 'Agregar método de reporte de la organización', 0, NULL, NULL),
(3838, 461, 8, 'Añadir motivo de finalización de relación laboral', 0, NULL, NULL),
(3839, 501, 8, 'Agregar Experiencia Laboral', 0, NULL, NULL),
(3840, 399, 8, 'Cargas de familia asignados', 0, NULL, NULL),
(3841, 402, 8, 'Contactos de Emergencia asignados', 0, NULL, NULL),
(3842, 405, 8, 'Registro de Inmigración asignado', 0, NULL, NULL),
(3843, 415, 8, 'Membresías asignadas', 0, NULL, NULL),
(3844, 498, 8, 'Colaboradores asignados', 0, NULL, NULL),
(3845, 499, 8, 'Supervisores asignados', 0, NULL, NULL),
(3846, 475, 8, 'Por lo menos un número de teléfono es necesario', 0, NULL, NULL),
(3847, 469, 8, 'Hijo/a', 0, NULL, NULL),
(3848, 414, 8, 'Detalles del Contrato', 0, NULL, NULL),
(3849, 445, 8, 'Información Específica del País', 0, NULL, NULL),
(3850, 441, 8, 'Crear Usuarios y Contraseñas', 0, NULL, NULL),
(3851, 370, 8, 'Campo Personalizado', 0, NULL, NULL),
(3852, 406, 8, 'Documento', 0, NULL, NULL),
(3853, 526, 8, 'Menú Desplegable', 0, NULL, NULL),
(3854, 374, 8, 'Editar campo personalizado', 0, NULL, NULL),
(3855, 467, 8, 'Editar carga de familia', 0, NULL, NULL),
(3856, 474, 8, 'Editar Contacto de Emergencia', 0, NULL, NULL),
(3857, 449, 8, 'Editar método de reporte', 0, NULL, NULL),
(3858, 460, 8, 'Editar motivo del despido', 0, NULL, NULL),
(3859, 388, 8, 'Información del empleado', 0, NULL, NULL),
(3860, 377, 8, 'Ingrese las opciones permitidas separados por comas', 0, NULL, NULL),
(3861, 438, 8, 'Excepciones', 0, NULL, NULL),
(3862, 437, 8, 'Impuesto sobre la Renta Federal', 0, NULL, NULL),
(3863, 375, 8, 'Nombre de campo', 0, NULL, NULL),
(3864, 372, 8, 'Tipo de campo', 0, NULL, NULL),
(3865, 205, 8, 'La fecha ingresada debe ser anterior', 0, NULL, NULL),
(3866, 473, 8, 'Promedio', 0, NULL, NULL),
(3867, 471, 8, 'Institución', 0, NULL, NULL),
(3868, 472, 8, 'Título de Grado/ Posgrado', 0, NULL, NULL),
(3869, 428, 8, 'Servicio militar', 0, NULL, NULL),
(3870, 478, 8, 'Pasaporte', 0, NULL, NULL),
(3871, 339, 8, 'Datos Personales', 0, NULL, NULL),
(3872, 468, 8, 'Por favor, especifique', 0, NULL, NULL),
(3873, 344, 8, 'Reporta a', 0, NULL, NULL),
(3874, 371, 8, 'Pantalla', 0, NULL, NULL),
(3875, 376, 8, 'Seleccione Opciones', 0, NULL, NULL),
(3876, 443, 8, 'Mostrar los espacios rechazados', 0, NULL, NULL),
(3877, 444, 8, 'Mostrar apodo, fumador y Servicio Militar en los datos personales', 0, NULL, NULL),
(3878, 447, 8, 'Mostrar campo DNI en Datos de Detalles Personal', 0, NULL, NULL),
(3879, 446, 8, 'Mostrar en el campo de número de CUIL en Datos de Detalles Personal', 0, NULL, NULL),
(3880, 448, 8, 'Mostrar Excepciones Tributarias del país', 0, NULL, NULL),
(3881, 425, 8, 'DNI', 0, NULL, NULL),
(3882, 429, 8, 'Fumador', 0, NULL, NULL),
(3883, 424, 8, 'CUIL', 0, NULL, NULL),
(3884, 345, 8, 'Exenciones de impuestos', 0, NULL, NULL),
(3885, 508, 8, 'Terminar Relación Contractual', 0, NULL, NULL),
(3886, 525, 8, 'Texto o Número', 0, NULL, NULL),
(3887, 439, 8, 'Desempleado / Estado de desempleo', 0, NULL, NULL),
(3888, 479, 8, 'Visado', 0, NULL, NULL),
(3889, 440, 8, 'Estado laboral', 0, NULL, NULL),
(3890, 391, 8, 'Primer (& Middle) Nombre', 0, NULL, NULL),
(3891, 517, 8, 'Estado de elegibilidad', 0, NULL, NULL),
(3892, 518, 8, 'Fecha de revision de elegibilidad', 0, NULL, NULL),
(3893, 152, 8, 'Acciones', 0, NULL, NULL),
(3894, 576, 8, 'Asignar', 0, NULL, NULL),
(3895, 545, 8, 'Período de permiso actual', 0, NULL, NULL),
(3896, 712, 8, 'Duración (horas)', 0, NULL, NULL),
(3897, 546, 8, 'Año siguiente', 0, NULL, NULL),
(3898, 220, 8, 'Desde la fecha', 0, NULL, NULL),
(3899, 542, 8, 'Día completo', 0, NULL, NULL),
(3900, 630, 8, 'Medio Día', 0, NULL, NULL),
(3901, 593, 8, 'Disponibilidad actual', 0, NULL, NULL),
(3902, 567, 8, 'Tipo de Licencia/Permiso', 0, NULL, NULL),
(3903, 581, 8, 'Mi lista de Licencias', 0, NULL, NULL),
(3904, 571, 8, 'No hay tipos de permisos con disponibilidad', 0, NULL, NULL),
(3905, 631, 8, 'Día no laborable', 0, NULL, NULL);
INSERT INTO `ohrm_i18n_translate` (`id`, `lang_string_id`, `language_id`, `value`, `customized`, `version`, `modified_at`) VALUES
(3906, 620, 8, 'Número de días', 0, NULL, NULL),
(3907, 605, 8, 'Pendiente de aprobación', 0, NULL, NULL),
(3908, 538, 8, 'Periodicidad /frecuencia anual', 0, NULL, NULL),
(3909, 578, 8, 'Mostrar Permiso con estado', 0, NULL, NULL),
(3910, 603, 8, 'Tomado', 0, NULL, NULL),
(3911, 221, 8, 'Hasta (Fecha)', 0, NULL, NULL),
(3912, 628, 8, 'Error al guardar: No hay días laborables seleccionados', 0, NULL, NULL),
(3913, 627, 8, 'Error al enviar', 0, NULL, NULL),
(3914, 562, 8, 'Agregar tipo de permiso', 0, NULL, NULL),
(3915, 563, 8, 'Editar tipo de permiso', 0, NULL, NULL),
(3916, 582, 8, 'Actualizar autorizaciones', 0, NULL, NULL),
(3917, 556, 8, 'Editar autorización de Permiso', 0, NULL, NULL),
(3918, 584, 8, 'La autorización de permiso seleccionado se aplicará a los siguientes empleados.', 0, NULL, NULL),
(3919, 585, 8, 'Permisos antiguos', 0, NULL, NULL),
(3920, 586, 8, 'Nuevos Permisos', 0, NULL, NULL),
(3921, 558, 8, 'La cantidad utilizada excede a la cantidad de días disponibles', 0, NULL, NULL),
(3922, 599, 8, 'Detalles de disponibilidad de Permisos', 0, NULL, NULL),
(3923, 596, 8, 'Disponibilidad', 0, NULL, NULL),
(3924, 613, 8, 'La duración debe ser menor el largo de la jornada laboral diaria', 0, NULL, NULL),
(3925, 600, 8, 'A partir de la fecha', 0, NULL, NULL),
(3926, 560, 8, 'Mis licencias/ permisos', 0, NULL, NULL),
(3927, 609, 8, 'Comentarios de solicitud de permiso', 0, NULL, NULL),
(3928, 589, 8, 'Confirmar permisos asignados', 0, NULL, NULL),
(3929, 590, 8, 'El empleado no tiene disponibilidad suficiente del permiso para solicitar.', 0, NULL, NULL),
(3930, 591, 8, 'Presione OK para confirmar permiso asignado.', 0, NULL, NULL),
(3931, 616, 8, 'Especificar hora', 0, NULL, NULL),
(3932, 572, 8, 'Días Parciales', 0, NULL, NULL),
(3933, 574, 8, 'Fecha de Inicio', 0, NULL, NULL),
(3934, 575, 8, 'Fecha de finalización', 0, NULL, NULL),
(3935, 293, 8, 'Administrar Evaluaciones', 0, NULL, NULL),
(3936, 294, 8, 'Mis Evaluaciones', 0, NULL, NULL),
(3937, 296, 8, 'Revisar Lista', 0, NULL, NULL),
(3938, 138, 8, 'Fecha final debe ser posterior de la fecha de inicio', 0, NULL, NULL),
(3939, 607, 8, '¿Está seguro de continuar?', 0, NULL, NULL),
(3940, 706, 8, 'Marcar Entrada / Fichar', 0, NULL, NULL),
(3941, 710, 8, 'Comentario sobre el  Ingreso', 0, NULL, NULL),
(3942, 708, 8, 'Marcar Salida / Fichar', 0, NULL, NULL),
(3943, 711, 8, 'Comentario sobre el Egreso', 0, NULL, NULL),
(3944, 709, 8, 'Superposición de registros encontrados', 0, NULL, NULL),
(3945, 715, 8, 'Zona horaria', 0, NULL, NULL),
(3946, 717, 8, 'Entrada', 0, NULL, NULL),
(3947, 718, 8, 'Salida', 0, NULL, NULL),
(3948, 700, 8, 'Configuración de Asistencia', 0, NULL, NULL),
(3949, 701, 8, 'El empleado puede cambiar la hora cuando marca entrada/salida', 0, NULL, NULL),
(3950, 702, 8, 'El empleado puede editar / borrar los registros propios de asistencia', 0, NULL, NULL),
(3951, 703, 8, 'Supervisor puede añadir / editar / borrar los registros de asistencia de sus subordinados', 0, NULL, NULL),
(3952, 714, 8, 'Mis Registros de asistencia', 0, NULL, NULL),
(3953, 735, 8, 'Ingresar', 0, NULL, NULL),
(3954, 559, 8, 'Solicitud a permiso', 0, NULL, NULL),
(3955, 352, 8, 'Se ha eliminado correctamente', 0, NULL, NULL),
(3956, 696, 8, 'La hora de salida debe ser mayor que la hora de entrada', 0, NULL, NULL),
(3957, 756, 8, '¿Olvidó su contraseña', 0, NULL, NULL),
(3958, 736, 8, 'Nombre de usuario', 0, NULL, NULL),
(3959, 737, 8, 'Contraseña', 0, NULL, NULL),
(3960, 250, 8, 'No se encontraron registros', 0, NULL, NULL),
(3961, 698, 8, 'Reporte de asistencia enviado', 0, NULL, NULL),
(3962, 198, 8, 'Segundo Nombre', 0, NULL, NULL),
(3963, 197, 8, 'Nombre', 0, NULL, NULL),
(3964, 87, 445, 'Añadir', 0, NULL, NULL),
(3965, 208, 445, 'Agregar archivo adjunto', 0, NULL, NULL),
(3966, 180, 445, 'Agregar Empleado', 0, NULL, NULL),
(3967, 503, 445, 'Añadido por', 0, NULL, NULL),
(3968, 7, 445, 'Dirección', 0, NULL, NULL),
(3969, 129, 445, 'Administración', 0, NULL, NULL),
(3970, 530, 445, 'Grupo de Edad', 0, NULL, NULL),
(3971, 143, 445, 'Permite números y sólo + - / ()', 0, NULL, NULL),
(3972, 125, 445, 'Ya existe', 0, NULL, NULL),
(3973, 434, 445, 'Cantidad', 0, NULL, NULL),
(3974, 223, 445, 'Aplicar', 0, NULL, NULL),
(3975, 573, 445, 'Asignar Agregar', 0, NULL, NULL),
(3976, 489, 445, 'Asignación de componentes salariales', 0, NULL, NULL),
(3977, 140, 445, 'Adjunto Tamaño superado', 0, NULL, NULL),
(3978, 286, 445, 'Asistencia', 0, NULL, NULL),
(3979, 313, 445, 'Asistencia Resumen', 0, NULL, NULL),
(3980, 224, 445, 'Espalda', 0, NULL, NULL),
(3981, 92, 445, 'Cancelar', 0, NULL, NULL),
(3982, 291, 445, 'Los candidatos', 0, NULL, NULL),
(3983, 248, 445, 'Cambiar la contraseña', 0, NULL, NULL),
(3984, 186, 445, 'Comentario', 0, NULL, NULL),
(3985, 191, 445, 'Comentarios', 0, NULL, NULL),
(3986, 496, 445, 'Empresa', 0, NULL, NULL),
(3987, 484, 445, 'Competencia', 0, NULL, NULL),
(3988, 264, 445, 'Configuración', 0, NULL, NULL),
(3989, 317, 445, 'Configurar', 0, NULL, NULL),
(3990, 393, 445, 'Datos de contacto', 0, NULL, NULL),
(3991, 413, 445, 'Fecha de finalización del contrato', 0, NULL, NULL),
(3992, 412, 445, 'Fecha de inicio del contrato', 0, NULL, NULL),
(3993, 84, 445, 'País', 0, NULL, NULL),
(3994, 102, 445, 'Moneda', 0, NULL, NULL),
(3995, 168, 445, 'Los empleados actuales y anteriores', 0, NULL, NULL),
(3996, 170, 445, 'Sólo los empleados actuales', 0, NULL, NULL),
(3997, 367, 445, 'Campos personalizados', 0, NULL, NULL),
(3998, 287, 445, 'Clientes', 0, NULL, NULL),
(3999, 379, 445, 'Importación de datos', 0, NULL, NULL),
(4000, 210, 445, 'Fecha', 0, NULL, NULL),
(4001, 502, 445, 'Fecha Alta', 0, NULL, NULL),
(4002, 401, 445, 'Fecha de Nacimiento', 0, NULL, NULL),
(4003, 597, 445, 'Días', 0, NULL, NULL),
(4004, 330, 445, 'Eliminar actual', 0, NULL, NULL),
(4005, 341, 445, 'Dependientes', 0, NULL, NULL),
(4006, 101, 445, 'Descripción', 0, NULL, NULL),
(4007, 521, 445, 'Depósito Directo Número de Cuenta', 0, NULL, NULL),
(4008, 522, 445, 'Depósito Directo Tipo de Cuenta', 0, NULL, NULL),
(4009, 436, 445, 'Monto del Depósito Directo', 0, NULL, NULL),
(4010, 150, 445, 'Discapacitado', 0, NULL, NULL),
(4011, 455, 445, 'Mostrar los campos', 0, NULL, NULL),
(4012, 519, 445, 'Tipo de documento', 0, NULL, NULL),
(4013, 422, 445, 'Licencia de Conducir', 0, NULL, NULL),
(4014, 222, 445, 'Duración', 0, NULL, NULL),
(4015, 98, 445, 'Editar', 0, NULL, NULL),
(4016, 151, 445, 'Editar anexo', 0, NULL, NULL),
(4017, 477, 445, 'Edición de Inmigración', 0, NULL, NULL),
(4018, 488, 445, 'Editar componente de sueldos', 0, NULL, NULL),
(4019, 106, 445, 'Educación', 0, NULL, NULL),
(4020, 481, 445, 'Fecha de revisión Elegible', 0, NULL, NULL),
(4021, 480, 445, 'Estado de derecho', 0, NULL, NULL),
(4022, 340, 445, 'Contactos de Emergencia', 0, NULL, NULL),
(4023, 218, 445, 'Empleado', 0, NULL, NULL),
(4024, 515, 445, 'Nombre del Empleado', 0, NULL, NULL),
(4025, 163, 445, 'Identificación del empleado', 0, NULL, NULL),
(4026, 514, 445, 'Empleado Apellido', 0, NULL, NULL),
(4027, 269, 445, 'Lista de empleados', 0, NULL, NULL),
(4028, 516, 445, 'Nombre del Empleado Medio', 0, NULL, NULL),
(4029, 122, 445, 'Nombre del Empleado', 0, NULL, NULL),
(4030, 285, 445, 'Los registros de los empleados', 0, NULL, NULL),
(4031, 183, 445, 'Informes de los empleados', 0, NULL, NULL),
(4032, 282, 445, 'Los partes de horas de empleados', 0, NULL, NULL),
(4033, 142, 445, 'Estado de Empleo', 0, NULL, NULL),
(4034, 149, 445, 'Habilitado', 0, NULL, NULL),
(4035, 190, 445, 'Fecha de finalización', 0, NULL, NULL),
(4036, 148, 445, 'ESS', 0, NULL, NULL),
(4037, 347, 445, 'El formato previsto: admin@example.com', 0, NULL, NULL),
(4038, 172, 445, 'Fecha de Expiración', 0, NULL, NULL),
(4039, 482, 445, 'Fecha de caducidad debe ser posterior a la fecha de emisión', 0, NULL, NULL),
(4040, 176, 445, 'Femenino', 0, NULL, NULL),
(4041, 202, 445, 'Nombre de archivo', 0, NULL, NULL),
(4042, 523, 445, 'Nombre', 0, NULL, NULL),
(4043, 483, 445, 'Fluidez', 0, NULL, NULL),
(4044, 215, 445, 'Viernes', 0, NULL, NULL),
(4045, 123, 445, 'De', 0, NULL, NULL),
(4046, 427, 445, 'Género', 0, NULL, NULL),
(4047, 44, 445, 'Información General', 0, NULL, NULL),
(4048, 540, 445, 'Vacaciones', 0, NULL, NULL),
(4049, 403, 445, 'Teléfono de la casa', 0, NULL, NULL),
(4050, 164, 445, 'Identificación', 0, NULL, NULL),
(4051, 342, 445, 'Inmigración', 0, NULL, NULL),
(4052, 389, 445, 'Incluir', 0, NULL, NULL),
(4053, 207, 445, 'Incluir cabecera', 0, NULL, NULL),
(4054, 568, 445, 'Incluir a los empleados anteriores', 0, NULL, NULL),
(4055, 408, 445, 'Emitido por', 0, NULL, NULL),
(4056, 409, 445, 'Fecha de emisión', 0, NULL, NULL),
(4057, 258, 445, 'Trabajo', 0, NULL, NULL),
(4058, 72, 445, 'Categorías del Trabajo', 0, NULL, NULL),
(4059, 133, 445, 'Categoría de trabajo', 0, NULL, NULL),
(4060, 200, 445, 'Trabajo específico', 0, NULL, NULL),
(4061, 166, 445, 'Título del Trabajo', 0, NULL, NULL),
(4062, 3, 445, 'Profesiones', 0, NULL, NULL),
(4063, 173, 445, 'Fecha de Registro', 0, NULL, NULL),
(4064, 329, 445, 'Mantenga actual', 0, NULL, NULL),
(4065, 193, 445, 'Lengua', 0, NULL, NULL),
(4066, 110, 445, 'Idiomas', 0, NULL, NULL),
(4067, 165, 445, 'Apellido', 0, NULL, NULL),
(4068, 229, 445, 'Dejar', 0, NULL, NULL),
(4069, 621, 445, 'Deja Saldo (días)', 0, NULL, NULL),
(4070, 577, 445, 'Deja la lista de', 0, NULL, NULL),
(4071, 543, 445, 'Período de licencia', 0, NULL, NULL),
(4072, 564, 445, 'Deja los tipos de', 0, NULL, NULL),
(4073, 105, 445, 'Nivel', 0, NULL, NULL),
(4074, 497, 445, 'Licencia', 0, NULL, NULL),
(4075, 423, 445, 'Fecha de caducidad de licencia', 0, NULL, NULL),
(4076, 486, 445, 'Número de licencia', 0, NULL, NULL),
(4077, 485, 445, 'Tipo de licencia', 0, NULL, NULL),
(4078, 77, 445, 'Licencias', 0, NULL, NULL),
(4079, 78, 445, 'Localización', 0, NULL, NULL),
(4080, 174, 445, 'Ubicación', 0, NULL, NULL),
(4081, 4, 445, 'Ubicaciones', 0, NULL, NULL),
(4082, 249, 445, 'Cerrar sesión', 0, NULL, NULL),
(4083, 175, 445, 'Masculino', 0, NULL, NULL),
(4084, 426, 445, 'Estado civil', 0, NULL, NULL),
(4085, 416, 445, 'Afiliación', 0, NULL, NULL),
(4086, 115, 445, 'Membresías', 0, NULL, NULL),
(4087, 171, 445, 'Móvil', 0, NULL, NULL),
(4088, 266, 445, 'Módulos', 0, NULL, NULL),
(4089, 211, 445, 'Lunes', 0, NULL, NULL),
(4090, 314, 445, 'Mi licencia', 0, NULL, NULL),
(4091, 281, 445, 'Mis registros', 0, NULL, NULL),
(4092, 280, 445, 'Mis partes de horas', 0, NULL, NULL),
(4093, 82, 445, 'Nombre', 0, NULL, NULL),
(4094, 42, 445, 'Nacionalidades', 0, NULL, NULL),
(4095, 97, 445, 'Nacionalidad', 0, NULL, NULL),
(4096, 94, 445, 'No', 0, NULL, NULL),
(4097, 256, 445, 'Notas', 0, NULL, NULL),
(4098, 407, 445, 'Número', 0, NULL, NULL),
(4099, 681, 445, 'Sólo incluir partes de horas aprobadas', 0, NULL, NULL),
(4100, 442, 445, 'Campos opcionales', 0, NULL, NULL),
(4101, 262, 445, 'Organización', 0, NULL, NULL),
(4102, 470, 445, 'Otro', 0, NULL, NULL),
(4103, 321, 445, 'E-mail Otros', 0, NULL, NULL),
(4104, 421, 445, 'ID', 0, NULL, NULL),
(4105, 720, 445, 'Empleado Pasado', 0, NULL, NULL),
(4106, 169, 445, 'Los empleados anteriores sólo', 0, NULL, NULL),
(4107, 435, 445, 'Frecuencia de pago', 0, NULL, NULL),
(4108, 194, 445, 'El grado de pago', 0, NULL, NULL),
(4109, 58, 445, 'Pagar Grados', 0, NULL, NULL),
(4110, 275, 445, 'Rendimiento', 0, NULL, NULL),
(4111, 512, 445, 'Personal', 0, NULL, NULL),
(4112, 271, 445, 'PIM', 0, NULL, NULL),
(4113, 680, 445, 'Proyecto intervalo de fechas', 0, NULL, NULL),
(4114, 261, 445, 'Información del Proyecto', 0, NULL, NULL),
(4115, 289, 445, 'Informes de Proyectos', 0, NULL, NULL),
(4116, 288, 445, 'Proyectos', 0, NULL, NULL),
(4117, 284, 445, 'Punch In / Out', 0, NULL, NULL),
(4118, 272, 445, 'Reclutamiento', 0, NULL, NULL),
(4119, 400, 445, 'Relación', 0, NULL, NULL),
(4120, 331, 445, 'Reemplazará a la actual', 0, NULL, NULL),
(4121, 181, 445, 'Nombre del informe', 0, NULL, NULL),
(4122, 476, 445, 'Método de informes', 0, NULL, NULL),
(4123, 452, 445, 'Los métodos de notificación', 0, NULL, NULL),
(4124, 270, 445, 'Informes', 0, NULL, NULL),
(4125, 130, 445, 'Necesario', 0, NULL, NULL),
(4126, 85, 445, 'Reajustar', 0, NULL, NULL),
(4127, 493, 445, 'Número de ruta', 0, NULL, NULL),
(4128, 343, 445, 'Sueldo', 0, NULL, NULL),
(4129, 433, 445, 'Salario de componentes', 0, NULL, NULL),
(4130, 216, 445, 'Sábado', 0, NULL, NULL),
(4131, 131, 445, 'Ahorrar', 0, NULL, NULL),
(4132, 524, 445, 'Puntuación', 0, NULL, NULL),
(4133, 86, 445, 'Buscar', 0, NULL, NULL),
(4134, 156, 445, 'Seleccione Archivo', 0, NULL, NULL),
(4135, 454, 445, 'Criterios de selección', 0, NULL, NULL),
(4136, 529, 445, 'El servicio de las', 0, NULL, NULL),
(4137, 137, 445, 'Debe ser un número', 0, NULL, NULL),
(4138, 179, 445, 'En caso de ser un número positivo', 0, NULL, NULL),
(4139, 504, 445, 'En caso de estar dentro de mín / máx de los valores', 0, NULL, NULL),
(4140, 203, 445, 'Tamaño', 0, NULL, NULL),
(4141, 494, 445, 'Habilidad', 0, NULL, NULL),
(4142, 118, 445, 'Habilidades', 0, NULL, NULL),
(4143, 189, 445, 'Fecha de inicio', 0, NULL, NULL),
(4144, 144, 445, 'Fecha de inicio debe ser anterior a la fecha de finalización', 0, NULL, NULL),
(4145, 178, 445, 'Estado', 0, NULL, NULL),
(4146, 120, 445, 'Estado', 0, NULL, NULL),
(4147, 302, 445, 'Estructura', 0, NULL, NULL),
(4148, 167, 445, 'Unidad Sub', 0, NULL, NULL),
(4149, 528, 445, 'Los subordinados', 0, NULL, NULL),
(4150, 418, 445, 'Suscripción Cantidad', 0, NULL, NULL),
(4151, 419, 445, 'Suscripción Comenzar Fecha', 0, NULL, NULL),
(4152, 417, 445, 'Suscripción pagado por', 0, NULL, NULL),
(4153, 420, 445, 'Suscripción Fecha de Renovación', 0, NULL, NULL),
(4154, 255, 445, 'Guardado correctamente', 0, NULL, NULL),
(4155, 254, 445, 'Se ha actualizado correctamente', 0, NULL, NULL),
(4156, 217, 445, 'Domingo', 0, NULL, NULL),
(4157, 392, 445, 'Supervisor', 0, NULL, NULL),
(4158, 390, 445, 'Nombre de Supervisor', 0, NULL, NULL),
(4159, 527, 445, 'Los supervisores', 0, NULL, NULL),
(4160, 462, 445, 'Razones de terminación', 0, NULL, NULL),
(4161, 214, 445, 'Jueves', 0, NULL, NULL),
(4162, 273, 445, 'Tiempo', 0, NULL, NULL),
(4163, 283, 445, 'Los partes de horas', 0, NULL, NULL),
(4164, 124, 445, 'A', 0, NULL, NULL),
(4165, 195, 445, 'Hasta la fecha debe ser posterior a partir de la fecha', 0, NULL, NULL),
(4166, 212, 445, 'Martes', 0, NULL, NULL),
(4167, 154, 445, 'Tipo', 0, NULL, NULL),
(4168, 263, 445, 'Usuarios', 0, NULL, NULL),
(4169, 290, 445, 'Vacantes', 0, NULL, NULL),
(4170, 213, 445, 'Miércoles', 0, NULL, NULL),
(4171, 320, 445, 'Trabajo E-mail', 0, NULL, NULL),
(4172, 500, 445, 'Experiencia laboral', 0, NULL, NULL),
(4173, 65, 445, 'Los turnos de trabajo', 0, NULL, NULL),
(4174, 404, 445, 'Teléfono del trabajo', 0, NULL, NULL),
(4175, 547, 445, 'Semana laboral', 0, NULL, NULL),
(4176, 188, 445, 'Año', 0, NULL, NULL),
(4177, 495, 445, 'Años de experiencia', 0, NULL, NULL),
(4178, 93, 445, 'Sí', 0, NULL, NULL),
(4179, 241, 445, 'Las contraseñas no coinciden', 0, NULL, NULL),
(4180, 228, 445, 'Ok', 0, NULL, NULL),
(4181, 158, 445, 'Acepta hasta 1MB', 0, NULL, NULL),
(4182, 121, 445, 'Nombre de usuario', 0, NULL, NULL),
(4183, 238, 445, 'Contraseña', 0, NULL, NULL),
(4184, 159, 445, 'Subir', 0, NULL, NULL),
(4185, 353, 445, 'Total', 0, NULL, NULL),
(4186, 509, 445, 'Fecha de Terminación', 0, NULL, NULL),
(4187, 510, 445, 'Terminación de la Razón', 0, NULL, NULL),
(4188, 645, 445, 'Nombre de la actividad', 0, NULL, NULL),
(4189, 107, 445, 'Añadir Educación', 0, NULL, NULL),
(4190, 109, 445, 'Agregar idioma', 0, NULL, NULL),
(4191, 112, 445, 'Agregar licencia', 0, NULL, NULL),
(4192, 117, 445, 'Añadir Habilidad', 0, NULL, NULL),
(4193, 99, 445, 'Dirección 1', 0, NULL, NULL),
(4194, 100, 445, 'Dirección 2', 0, NULL, NULL),
(4195, 83, 445, 'Ciudad', 0, NULL, NULL),
(4196, 240, 445, 'Confirm Password', 0, NULL, NULL),
(4197, 644, 445, 'Copiar desde', 0, NULL, NULL),
(4198, 651, 445, 'Nombre del proyecto', 0, NULL, NULL),
(4199, 104, 445, 'Editar Educación', 0, NULL, NULL),
(4200, 108, 445, 'Editar Idioma', 0, NULL, NULL),
(4201, 111, 445, 'Editar Licencia', 0, NULL, NULL),
(4202, 116, 445, 'Editar Habilidad', 0, NULL, NULL),
(4203, 89, 445, 'Estado / Provincia', 0, NULL, NULL),
(4204, 90, 445, 'Zip / Código Postal', 0, NULL, NULL),
(4205, 234, 445, 'Aprobar', 0, NULL, NULL),
(4206, 604, 445, 'Programado', 0, NULL, NULL),
(4207, 91, 445, 'Nota', 0, NULL, NULL),
(4208, 201, 445, 'Archivos adjuntos', 0, NULL, NULL),
(4209, 155, 445, 'Descargar', 0, NULL, NULL),
(4210, 95, 445, 'E-mail', 0, NULL, NULL),
(4211, 310, 445, 'Interpretada por', 0, NULL, NULL),
(4212, 235, 445, 'Rechazar', 0, NULL, NULL),
(4213, 632, 445, 'Rechazado', 0, NULL, NULL),
(4214, 348, 445, 'Presentar', 0, NULL, NULL),
(4215, 312, 445, 'Ver', 0, NULL, NULL),
(4216, 177, 445, 'Calificaciones', 0, NULL, NULL),
(4217, 311, 445, 'Añadir otro', 0, NULL, NULL),
(4218, 225, 445, 'Confirmar', 0, NULL, NULL),
(4219, 643, 445, 'Actividades', 0, NULL, NULL),
(4220, 59, 445, 'Añadir divisas', 0, NULL, NULL),
(4221, 647, 445, 'Añadir al Cliente', 0, NULL, NULL),
(4222, 30, 445, 'Añade Estado de Empleo', 0, NULL, NULL),
(4223, 73, 445, 'Agregar Categoría de Trabajo', 0, NULL, NULL),
(4224, 1, 445, 'Añadir Título del Trabajo', 0, NULL, NULL),
(4225, 6, 445, 'Agregar ubicación', 0, NULL, NULL),
(4226, 114, 445, 'Añadir miembros', 0, NULL, NULL),
(4227, 43, 445, 'Añadir Nacionalidad', 0, NULL, NULL),
(4228, 53, 445, 'Añadir el grado de pago', 0, NULL, NULL),
(4229, 691, 445, 'Agregar proyecto', 0, NULL, NULL),
(4230, 658, 445, 'Añadir Actividad del Proyecto', 0, NULL, NULL),
(4231, 28, 445, 'Añadir suscriptor', 0, NULL, NULL),
(4232, 61, 445, 'Agregar usuario', 0, NULL, NULL),
(4233, 76, 445, 'Añadir turno de trabajo', 0, NULL, NULL),
(4234, 69, 445, 'Los empleados asignados', 0, NULL, NULL),
(4235, 244, 445, 'Mejor', 0, NULL, NULL),
(4236, 380, 445, 'Para la columna no debe ser cambiado', 0, NULL, NULL),
(4237, 650, 445, 'Copia Actividad', 0, NULL, NULL),
(4238, 465, 445, 'Contraseña actual', 0, NULL, NULL),
(4239, 654, 445, 'Nombre del cliente', 0, NULL, NULL),
(4240, 80, 445, 'Formato de fecha', 0, NULL, NULL),
(4241, 384, 445, 'Cada archivo de importación debe estar configurado para 100 registros o menos', 0, NULL, NULL),
(4242, 54, 445, 'Edición de divisas', 0, NULL, NULL),
(4243, 675, 445, 'Edición del Cliente', 0, NULL, NULL),
(4244, 29, 445, 'Editar Estado de Empleo', 0, NULL, NULL),
(4245, 74, 445, 'Editar Categoría de Trabajo', 0, NULL, NULL),
(4246, 2, 445, 'Editar Título del Trabajo', 0, NULL, NULL),
(4247, 32, 445, 'Editar ubicación', 0, NULL, NULL),
(4248, 113, 445, 'Editar miembros', 0, NULL, NULL),
(4249, 41, 445, 'Editar Nacionalidad', 0, NULL, NULL),
(4250, 57, 445, 'Editar el grado de pago', 0, NULL, NULL),
(4251, 678, 445, 'Editar Proyecto', 0, NULL, NULL),
(4252, 655, 445, 'Editar Actividad del Proyecto', 0, NULL, NULL),
(4253, 25, 445, 'Editar suscriptor', 0, NULL, NULL),
(4254, 60, 445, 'Editar usuario', 0, NULL, NULL),
(4255, 62, 445, 'Editar turno de trabajo', 0, NULL, NULL),
(4256, 96, 445, 'Envíe por fax', 0, NULL, NULL),
(4257, 381, 445, 'Nombre y Apellidos son obligatorios', 0, NULL, NULL),
(4258, 66, 445, 'Horas al día', 0, NULL, NULL),
(4259, 31, 445, 'Descripción del puesto', 0, NULL, NULL),
(4260, 9, 445, 'Correo enviado como', 0, NULL, NULL),
(4261, 56, 445, 'Salario máximo', 0, NULL, NULL),
(4262, 55, 445, 'Salario Mínimo', 0, NULL, NULL),
(4263, 33, 445, 'Módulo de Configuración', 0, NULL, NULL),
(4264, 747, 445, 'Nueva contraseña', 0, NULL, NULL),
(4265, 653, 445, 'No hay actividades seleccionadas', 0, NULL, NULL),
(4266, 652, 445, 'No hay actividades asignadas', 0, NULL, NULL),
(4267, 27, 445, 'Tipo de notificación', 0, NULL, NULL),
(4268, 5, 445, 'Número de empleados', 0, NULL, NULL),
(4269, 45, 445, 'Nombre de la Organización', 0, NULL, NULL),
(4270, 14, 445, 'Ruta a Sendmail', 0, NULL, NULL),
(4271, 88, 445, 'Teléfono', 0, NULL, NULL),
(4272, 657, 445, 'Proyecto', 0, NULL, NULL),
(4273, 656, 445, 'Proyecto de administración', 0, NULL, NULL),
(4274, 676, 445, 'Administradores del proyecto', 0, NULL, NULL),
(4275, 46, 445, 'Matrícula', 0, NULL, NULL),
(4276, 10, 445, 'Envío Método', 0, NULL, NULL),
(4277, 63, 445, 'Shift Nombre', 0, NULL, NULL),
(4278, 19, 445, 'Contraseña SMTP', 0, NULL, NULL),
(4279, 16, 445, 'Puerto SMTP', 0, NULL, NULL),
(4280, 18, 445, 'SMTP del usuario', 0, NULL, NULL),
(4281, 245, 445, 'Más fuerte', 0, NULL, NULL),
(4282, 24, 445, 'Suscriptores', 0, NULL, NULL),
(4283, 75, 445, 'Usuarios del Sistema', 0, NULL, NULL),
(4284, 47, 445, 'NIF', 0, NULL, NULL),
(4285, 23, 445, 'Prueba de dirección de correo electrónico', 0, NULL, NULL),
(4286, 52, 445, 'Esta unidad se añadió bajo', 0, NULL, NULL),
(4287, 20, 445, 'TLS', 0, NULL, NULL),
(4288, 49, 445, 'Unidad de identificación de', 0, NULL, NULL),
(4289, 17, 445, 'Utilizar autenticación SMTP', 0, NULL, NULL),
(4290, 243, 445, 'Muy débil', 0, NULL, NULL),
(4291, 242, 445, 'Débil', 0, NULL, NULL),
(4292, 71, 445, 'En caso de ser superior al Salario Mínimo', 0, NULL, NULL),
(4293, 382, 445, 'Todos los campos de fecha debe ser en formato AAAA-MM-DD', 0, NULL, NULL),
(4294, 385, 445, 'Varios archivos de importación puede ser necesario', 0, NULL, NULL),
(4295, 570, 445, 'Aplicar Agregar', 0, NULL, NULL),
(4296, 669, 445, 'Acciones realizadas en la parte de horas', 0, NULL, NULL),
(4297, 662, 445, 'Añadir fila', 0, NULL, NULL),
(4298, 648, 445, 'Añadir parte de horas', 0, NULL, NULL),
(4299, 704, 445, 'Informe resumido de asistencia total', 0, NULL, NULL),
(4300, 672, 445, 'Definir período del parte de horas', 0, NULL, NULL),
(4301, 690, 445, 'Editar parte de horas de', 0, NULL, NULL),
(4302, 683, 445, 'Informe del Empleado', 0, NULL, NULL),
(4303, 667, 445, 'En caso de ser inferior a 24 y en HH: MM o decimal', 0, NULL, NULL),
(4304, 308, 445, 'Vie', 0, NULL, NULL),
(4305, 304, 445, 'Lun', 0, NULL, NULL),
(4306, 679, 445, 'Informe del proyecto', 0, NULL, NULL),
(4307, 309, 445, 'Sab', 0, NULL, NULL),
(4308, 649, 445, 'Seleccione un día para crear partes de horas', 0, NULL, NULL),
(4309, 684, 445, 'Seleccione Empleado', 0, NULL, NULL),
(4310, 303, 445, 'Sol', 0, NULL, NULL),
(4311, 307, 445, 'Jue', 0, NULL, NULL),
(4312, 689, 445, 'Parte de horas de', 0, NULL, NULL),
(4313, 671, 445, 'Período de parte de horas', 0, NULL, NULL),
(4314, 670, 445, 'En espera de partes de horas de acción', 0, NULL, NULL),
(4315, 305, 445, 'Mar', 0, NULL, NULL),
(4316, 306, 445, 'Casarse', 0, NULL, NULL),
(4317, 666, 445, 'Seleccione un proyecto y una actividad', 0, NULL, NULL),
(4318, 660, 445, 'No se han encontrado partes de horas', 0, NULL, NULL),
(4319, 694, 445, 'Parte de horas Aprobado', 0, NULL, NULL),
(4320, 693, 445, 'Rechazado parte de horas', 0, NULL, NULL),
(4321, 668, 445, 'Total debe ser menos de 24 horas', 0, NULL, NULL),
(4322, 491, 445, 'Número de cuenta', 0, NULL, NULL),
(4323, 492, 445, 'Tipo de Cuenta', 0, NULL, NULL),
(4324, 378, 445, 'Agregar campos personalizados', 0, NULL, NULL),
(4325, 506, 445, 'Agregar dependiente', 0, NULL, NULL),
(4326, 505, 445, 'Añadir Inmigración', 0, NULL, NULL),
(4327, 450, 445, 'Agregar método de notificación', 0, NULL, NULL),
(4328, 461, 445, 'Añadir motivo de la terminación', 0, NULL, NULL),
(4329, 501, 445, 'Agregar Experiencia', 0, NULL, NULL),
(4330, 399, 445, 'Dependientes de Asignación', 0, NULL, NULL),
(4331, 402, 445, 'Asignación de Contactos de Emergencia', 0, NULL, NULL),
(4332, 415, 445, 'Participación en la Asignación de', 0, NULL, NULL),
(4333, 498, 445, 'Los subordinados de Asignación', 0, NULL, NULL),
(4334, 499, 445, 'Los supervisores asignados', 0, NULL, NULL),
(4335, 475, 445, 'Por lo menos un número de teléfono es necesario', 0, NULL, NULL),
(4336, 469, 445, 'Niño', 0, NULL, NULL),
(4337, 414, 445, 'Detalles del Contrato', 0, NULL, NULL),
(4338, 445, 445, 'Información Específica del País', 0, NULL, NULL),
(4339, 441, 445, 'Crear Datos de Acceso', 0, NULL, NULL),
(4340, 370, 445, 'Campo Personalizado', 0, NULL, NULL),
(4341, 406, 445, 'Documento', 0, NULL, NULL),
(4342, 526, 445, 'Desplegable', 0, NULL, NULL),
(4343, 374, 445, 'Editar campo personalizado', 0, NULL, NULL),
(4344, 467, 445, 'Editar dependiente', 0, NULL, NULL),
(4345, 474, 445, 'Editar Contacto de Emergencia', 0, NULL, NULL),
(4346, 449, 445, 'Editar método de notificación', 0, NULL, NULL),
(4347, 460, 445, 'Editar motivo de la terminación', 0, NULL, NULL),
(4348, 388, 445, 'Información del empleado', 0, NULL, NULL),
(4349, 377, 445, 'Entre las opciones permitidas separados por comas', 0, NULL, NULL),
(4350, 438, 445, 'Exenciones', 0, NULL, NULL),
(4351, 437, 445, 'Impuesto sobre la Renta Federal', 0, NULL, NULL),
(4352, 375, 445, 'Nombre del campo', 0, NULL, NULL),
(4353, 372, 445, 'Tipo de campo', 0, NULL, NULL),
(4354, 205, 445, 'Desde la fecha debe ser anterior a la fecha', 0, NULL, NULL),
(4355, 473, 445, 'GPA / Puntuación', 0, NULL, NULL),
(4356, 471, 445, 'Instituto', 0, NULL, NULL),
(4357, 472, 445, 'Mayor / Especialización', 0, NULL, NULL),
(4358, 428, 445, 'Servicio militar', 0, NULL, NULL),
(4359, 478, 445, 'Pasaporte', 0, NULL, NULL),
(4360, 339, 445, 'Datos Personales', 0, NULL, NULL),
(4361, 468, 445, 'Por favor especifique', 0, NULL, NULL),
(4362, 344, 445, 'Informe a', 0, NULL, NULL),
(4363, 371, 445, 'Pantalla', 0, NULL, NULL),
(4364, 376, 445, 'Seleccione Opciones', 0, NULL, NULL),
(4365, 443, 445, 'Mostrar Los campos ya no se utilizan', 0, NULL, NULL),
(4366, 444, 445, 'Mostrar nombre de Nick, fuma y el Servicio Militar en los datos personales', 0, NULL, NULL),
(4367, 447, 445, 'Mostrar campo de la RIS en Datos de Carácter Personal', 0, NULL, NULL),
(4368, 446, 445, 'Mostrar en el campo de número de Seguro Social Datos de Carácter Personal', 0, NULL, NULL),
(4369, 448, 445, 'Mostrar Tributario de EE.UU. Las exenciones del menú', 0, NULL, NULL),
(4370, 425, 445, 'SIN Número', 0, NULL, NULL),
(4371, 429, 445, 'Fumador', 0, NULL, NULL),
(4372, 424, 445, 'Número de Seguro Social', 0, NULL, NULL),
(4373, 345, 445, 'Las exenciones de impuestos', 0, NULL, NULL),
(4374, 525, 445, 'Texto o Número de', 0, NULL, NULL),
(4375, 439, 445, 'Desempleo del Estado de', 0, NULL, NULL),
(4376, 479, 445, 'Visado', 0, NULL, NULL),
(4377, 440, 445, 'El trabajo del Estado', 0, NULL, NULL),
(4378, 152, 445, 'Acciones', 0, NULL, NULL),
(4379, 576, 445, 'Asignar', 0, NULL, NULL),
(4380, 545, 445, 'Período de licencia actual', 0, NULL, NULL),
(4381, 712, 445, 'Duración (horas)', 0, NULL, NULL),
(4382, 546, 445, 'Año Después', 0, NULL, NULL),
(4383, 220, 445, 'Desde la fecha', 0, NULL, NULL),
(4384, 542, 445, 'Día completo', 0, NULL, NULL),
(4385, 630, 445, 'Medio Día', 0, NULL, NULL),
(4386, 593, 445, 'Deja Saldo', 0, NULL, NULL),
(4387, 567, 445, 'Deja Tipo', 0, NULL, NULL),
(4388, 581, 445, 'Mi lista de la licencia', 0, NULL, NULL),
(4389, 571, 445, 'No hay tipos de licencia con balance de licencia', 0, NULL, NULL),
(4390, 631, 445, 'Día no laborable', 0, NULL, NULL),
(4391, 620, 445, 'Número de días', 0, NULL, NULL),
(4392, 605, 445, 'Pendiente de aprobación', 0, NULL, NULL),
(4393, 538, 445, 'Periodicidad anual', 0, NULL, NULL),
(4394, 578, 445, 'Mostrar Agregar con estado', 0, NULL, NULL),
(4395, 603, 445, 'Tomado', 0, NULL, NULL),
(4396, 221, 445, 'Conocer', 0, NULL, NULL),
(4397, 628, 445, 'Error al enviar: No Días de trabajo seleccionado', 0, NULL, NULL),
(4398, 627, 445, 'Error al enviar', 0, NULL, NULL),
(4399, 562, 445, 'Añadir Deja Tipo', 0, NULL, NULL),
(4400, 563, 445, 'Editar Deja Tipo', 0, NULL, NULL),
(4401, 706, 445, 'Punch In', 0, NULL, NULL),
(4402, 710, 445, 'Punch In Nota', 0, NULL, NULL),
(4403, 708, 445, 'Punch Out', 0, NULL, NULL),
(4404, 711, 445, 'Punch Out Nota', 0, NULL, NULL),
(4405, 709, 445, 'La superposición de registros encontrados', 0, NULL, NULL),
(4406, 715, 445, 'Zona horaria', 0, NULL, NULL),
(4407, 717, 445, 'En', 0, NULL, NULL),
(4408, 718, 445, 'Fuera', 0, NULL, NULL),
(4409, 700, 445, 'La asistencia de configuración', 0, NULL, NULL),
(4410, 701, 445, 'Empleado puede cambiar la hora actual cuando la perforación de entrada / salida', 0, NULL, NULL),
(4411, 702, 445, 'Empleado puede editar / borrar los registros propios de asistencia', 0, NULL, NULL),
(4412, 703, 445, 'Supervisor puede añadir / editar / borrar los registros de asistencia de sus subordinados', 0, NULL, NULL),
(4413, 714, 445, 'Mis Registros de asistencia', 0, NULL, NULL),
(4414, 352, 445, 'Se ha eliminado correctamente', 0, NULL, NULL),
(4415, 696, 445, 'Perfore tiempo debe ser mayor de perforación en el tiempo', 0, NULL, NULL),
(4416, 736, 445, 'Nombre de usuario', 0, NULL, NULL),
(4417, 737, 445, 'Contraseña', 0, NULL, NULL),
(4418, 250, 445, 'No se encontraron registros', 0, NULL, NULL),
(4419, 698, 445, 'Parte de horas enviado', 0, NULL, NULL),
(4420, 198, 445, 'Segundo nombre', 0, NULL, NULL),
(4421, 197, 445, 'Nombre', 0, NULL, NULL),
(4422, 87, 5, 'Ajouter', 0, NULL, NULL),
(4423, 208, 5, 'Ajouter une pièce jointe', 0, NULL, NULL),
(4424, 180, 5, 'Ajouter un employé', 0, NULL, NULL),
(4425, 503, 5, 'Ajouté par', 0, NULL, NULL),
(4426, 7, 5, 'Adresse', 0, NULL, NULL),
(4427, 129, 5, 'Admin', 0, NULL, NULL),
(4428, 530, 5, 'Groupe d\'âge', 0, NULL, NULL),
(4429, 143, 5, 'Autorise uniquement les chiffres et + - / ()', 0, NULL, NULL),
(4430, 125, 5, 'Existe déjà', 0, NULL, NULL),
(4431, 434, 5, 'Montant', 0, NULL, NULL),
(4432, 223, 5, 'Faire une demande', 0, NULL, NULL),
(4433, 573, 5, 'Attribuer congés', 0, NULL, NULL),
(4434, 489, 5, 'Eléments de Salaire Attribués', 0, NULL, NULL),
(4435, 140, 5, 'Taille autorisée dépassée', 0, NULL, NULL),
(4436, 286, 5, 'Présence', 0, NULL, NULL),
(4437, 313, 5, 'Synthèse de présence', 0, NULL, NULL),
(4438, 224, 5, 'Retour', 0, NULL, NULL),
(4439, 92, 5, 'Annuler', 0, NULL, NULL),
(4440, 291, 5, 'Candidats', 0, NULL, NULL),
(4441, 248, 5, 'Changer de mot de passe', 0, NULL, NULL),
(4442, 186, 5, 'Commenter', 0, NULL, NULL),
(4443, 191, 5, 'Commentaires', 0, NULL, NULL),
(4444, 496, 5, 'Entreprise', 0, NULL, NULL),
(4445, 484, 5, 'Compétence', 0, NULL, NULL),
(4446, 264, 5, 'Configuration', 0, NULL, NULL),
(4447, 317, 5, 'Configurer', 0, NULL, NULL),
(4448, 393, 5, 'Coordonnées', 0, NULL, NULL),
(4449, 413, 5, 'Date de fin du contrat', 0, NULL, NULL),
(4450, 412, 5, 'Date de Début du Contrat', 0, NULL, NULL),
(4451, 84, 5, 'Pays', 0, NULL, NULL),
(4452, 102, 5, 'Devise', 0, NULL, NULL),
(4453, 168, 5, 'Salariés, anciens et actuels', 0, NULL, NULL),
(4454, 170, 5, 'Salariés actuels uniquement', 0, NULL, NULL),
(4455, 367, 5, 'Champs personnalisés', 0, NULL, NULL),
(4456, 287, 5, 'Clients', 0, NULL, NULL),
(4457, 379, 5, 'Importation de Données', 0, NULL, NULL),
(4458, 210, 5, 'Date', 0, NULL, NULL),
(4459, 502, 5, 'Date ajoutée', 0, NULL, NULL),
(4460, 401, 5, 'Date de naissance', 0, NULL, NULL),
(4461, 597, 5, 'Jours', 0, NULL, NULL),
(4462, 330, 5, 'Supprimer actuel', 0, NULL, NULL),
(4463, 341, 5, 'Personnes à charge', 0, NULL, NULL),
(4464, 101, 5, 'Description', 0, NULL, NULL),
(4465, 521, 5, 'Numéro de Compte pour Dépôt Direct', 0, NULL, NULL),
(4466, 522, 5, 'Type de Compte pour Dépôt Direct', 0, NULL, NULL),
(4467, 436, 5, 'Montant du Dépôt Direct', 0, NULL, NULL),
(4468, 150, 5, 'Inactif', 0, NULL, NULL),
(4469, 455, 5, 'Champs d\'Affichage', 0, NULL, NULL),
(4470, 519, 5, 'Type de documents', 0, NULL, NULL),
(4471, 422, 5, 'Numéro du permis de conduire', 0, NULL, NULL),
(4472, 222, 5, 'Durée', 0, NULL, NULL),
(4473, 98, 5, 'Modifier', 0, NULL, NULL),
(4474, 151, 5, 'Modifier Pièce Jointe', 0, NULL, NULL),
(4475, 477, 5, 'Modifier Immigration', 0, NULL, NULL),
(4476, 488, 5, 'Modifier Eléments de Salaire', 0, NULL, NULL),
(4477, 106, 5, 'Etudes', 0, NULL, NULL),
(4478, 481, 5, 'Date Éligible d\'Évaluation', 0, NULL, NULL),
(4479, 480, 5, 'Statut éligible', 0, NULL, NULL),
(4480, 340, 5, 'Contacter en cas d\'urgence', 0, NULL, NULL),
(4481, 218, 5, 'Employé', 0, NULL, NULL),
(4482, 515, 5, 'Prénom de l\'employé', 0, NULL, NULL),
(4483, 163, 5, 'Identifiant de l\'employé', 0, NULL, NULL),
(4484, 514, 5, 'Nom de famille de l\'employé', 0, NULL, NULL),
(4485, 269, 5, 'Liste des employés', 0, NULL, NULL),
(4486, 516, 5, 'Deuxième prénom de l\'employé', 0, NULL, NULL),
(4487, 122, 5, 'Nom de l\'employé', 0, NULL, NULL),
(4488, 285, 5, 'Dossiers de l\'employé', 0, NULL, NULL),
(4489, 183, 5, 'Rapports de l\'employé', 0, NULL, NULL),
(4490, 282, 5, 'Feuilles de Temps de l\'Employé', 0, NULL, NULL),
(4491, 142, 5, 'Statut Emploi', 0, NULL, NULL),
(4492, 149, 5, 'Actif', 0, NULL, NULL),
(4493, 190, 5, 'Date de fin', 0, NULL, NULL),
(4494, 148, 5, 'ESS', 0, NULL, NULL),
(4495, 347, 5, 'Format requis: admin@example.com', 0, NULL, NULL),
(4496, 172, 5, 'Date d\'expiration', 0, NULL, NULL),
(4497, 482, 5, 'La date d\'expiration devrait être ultérieure à la date de publication', 0, NULL, NULL),
(4498, 176, 5, 'Féminin', 0, NULL, NULL),
(4499, 202, 5, 'Nom du fichier', 0, NULL, NULL),
(4500, 523, 5, 'Prénom', 0, NULL, NULL),
(4501, 483, 5, 'Aisance', 0, NULL, NULL),
(4502, 215, 5, 'Vendredi', 0, NULL, NULL),
(4503, 123, 5, 'À partir de', 0, NULL, NULL),
(4504, 427, 5, 'Sexe', 0, NULL, NULL),
(4505, 44, 5, 'Informations générales', 0, NULL, NULL),
(4506, 540, 5, 'Jours fériés', 0, NULL, NULL),
(4507, 403, 5, 'Téléphone Domicile', 0, NULL, NULL),
(4508, 164, 5, 'Identifiant', 0, NULL, NULL),
(4509, 342, 5, 'Immigration', 0, NULL, NULL),
(4510, 389, 5, 'Inclure', 0, NULL, NULL),
(4511, 207, 5, 'Inclure en-tête', 0, NULL, NULL),
(4512, 568, 5, 'Inclure les anciens salariés', 0, NULL, NULL),
(4513, 408, 5, 'Publiée par', 0, NULL, NULL),
(4514, 409, 5, 'Date de publication', 0, NULL, NULL),
(4515, 258, 5, 'Emploi', 0, NULL, NULL),
(4516, 72, 5, 'Catégories d\'Emplois', 0, NULL, NULL),
(4517, 133, 5, 'Catégorie d\'Emploi', 0, NULL, NULL),
(4518, 200, 5, 'Description du poste', 0, NULL, NULL),
(4519, 166, 5, 'Titre du poste', 0, NULL, NULL),
(4520, 3, 5, 'Titres de postes', 0, NULL, NULL),
(4521, 173, 5, 'Date de Début d\'Activité', 0, NULL, NULL),
(4522, 329, 5, 'Conserver l\'actuel', 0, NULL, NULL),
(4523, 193, 5, 'Langue', 0, NULL, NULL),
(4524, 110, 5, 'Langues', 0, NULL, NULL),
(4525, 165, 5, 'Nom de famille', 0, NULL, NULL),
(4526, 229, 5, 'Congé', 0, NULL, NULL),
(4527, 621, 5, 'Solde des congés (Jours)', 0, NULL, NULL),
(4528, 577, 5, 'Liste des congés', 0, NULL, NULL),
(4529, 543, 5, 'Période de congé', 0, NULL, NULL),
(4530, 564, 5, 'Types de congés', 0, NULL, NULL),
(4531, 105, 5, 'Niveau', 0, NULL, NULL),
(4532, 497, 5, 'Permis', 0, NULL, NULL),
(4533, 423, 5, 'Date d\'expiration permis', 0, NULL, NULL),
(4534, 486, 5, 'Numéro de permis', 0, NULL, NULL),
(4535, 485, 5, 'Type de permis', 0, NULL, NULL),
(4536, 77, 5, 'Permis', 0, NULL, NULL),
(4537, 78, 5, 'Localisation', 0, NULL, NULL),
(4538, 174, 5, 'Filiale', 0, NULL, NULL),
(4539, 4, 5, 'Filiales', 0, NULL, NULL),
(4540, 249, 5, 'Déconnexion', 0, NULL, NULL),
(4541, 175, 5, 'Masculin', 0, NULL, NULL),
(4542, 426, 5, 'État civil', 0, NULL, NULL),
(4543, 416, 5, 'Adhésion', 0, NULL, NULL),
(4544, 115, 5, 'Adhésions', 0, NULL, NULL),
(4545, 171, 5, 'Portable', 0, NULL, NULL),
(4546, 266, 5, 'Modules', 0, NULL, NULL),
(4547, 211, 5, 'Lundi', 0, NULL, NULL),
(4548, 314, 5, 'Mes congés', 0, NULL, NULL),
(4549, 281, 5, 'Mes dossiers', 0, NULL, NULL),
(4550, 280, 5, 'Mes Feuilles de Temps', 0, NULL, NULL),
(4551, 82, 5, 'Nom', 0, NULL, NULL),
(4552, 42, 5, 'Nationalités', 0, NULL, NULL),
(4553, 97, 5, 'Nationalité', 0, NULL, NULL),
(4554, 94, 5, 'Non', 0, NULL, NULL),
(4555, 256, 5, 'Commentaires', 0, NULL, NULL),
(4556, 407, 5, 'Nombre', 0, NULL, NULL),
(4557, 681, 5, 'Inclure uniquement les feuilles de temps approuvées', 0, NULL, NULL),
(4558, 442, 5, 'Inclure uniquement les feuilles de temps approuvées', 0, NULL, NULL),
(4559, 262, 5, 'Organisation', 0, NULL, NULL),
(4560, 470, 5, 'Autre', 0, NULL, NULL),
(4561, 321, 5, 'Autre email', 0, NULL, NULL),
(4562, 421, 5, 'Autre Identifiant', 0, NULL, NULL),
(4563, 720, 5, 'Ancien salarié', 0, NULL, NULL),
(4564, 169, 5, 'Anciens salariés seulement', 0, NULL, NULL),
(4565, 435, 5, 'Fréquence de paie', 0, NULL, NULL),
(4566, 194, 5, 'Échelon de rémunération', 0, NULL, NULL),
(4567, 58, 5, 'Échelons de rémunération', 0, NULL, NULL),
(4568, 275, 5, 'Performance', 0, NULL, NULL),
(4569, 512, 5, 'Personnel', 0, NULL, NULL),
(4570, 271, 5, 'GIP', 0, NULL, NULL),
(4571, 680, 5, 'Durée du projet', 0, NULL, NULL),
(4572, 261, 5, 'Informations sur le projet', 0, NULL, NULL),
(4573, 289, 5, 'Rapports de projets', 0, NULL, NULL),
(4574, 288, 5, 'Projets', 0, NULL, NULL),
(4575, 284, 5, 'Pointage d\'Arrivée/de Départ', 0, NULL, NULL),
(4576, 272, 5, 'Recrutement', 0, NULL, NULL),
(4577, 400, 5, 'Relation', 0, NULL, NULL),
(4578, 331, 5, 'Remplacer actuel', 0, NULL, NULL),
(4579, 181, 5, 'Nom du rapport', 0, NULL, NULL),
(4580, 476, 5, 'Méthodologie de Reporting', 0, NULL, NULL),
(4581, 452, 5, 'Méthodologies de Reporting', 0, NULL, NULL),
(4582, 270, 5, 'Rapports', 0, NULL, NULL),
(4583, 130, 5, 'Requis', 0, NULL, NULL),
(4584, 85, 5, 'Réinitialiser', 0, NULL, NULL),
(4585, 493, 5, 'Numéro d\'acheminement', 0, NULL, NULL),
(4586, 343, 5, 'Salaire', 0, NULL, NULL),
(4587, 433, 5, 'Élément de Salaire', 0, NULL, NULL),
(4588, 216, 5, 'Samedi', 0, NULL, NULL),
(4589, 131, 5, 'Sauvegarder', 0, NULL, NULL),
(4590, 524, 5, 'Résultat', 0, NULL, NULL),
(4591, 86, 5, 'Rechercher', 0, NULL, NULL),
(4592, 156, 5, 'Sélectionner fichier', 0, NULL, NULL),
(4593, 454, 5, 'Critères de sélection', 0, NULL, NULL),
(4594, 529, 5, 'Période de service', 0, NULL, NULL),
(4595, 137, 5, 'Doit être un nombre', 0, NULL, NULL),
(4596, 179, 5, 'Doit être un nombre positif', 0, NULL, NULL),
(4597, 504, 5, 'Devrait être compris entre les valeurs Min/Max', 0, NULL, NULL),
(4598, 203, 5, 'Taille', 0, NULL, NULL),
(4599, 494, 5, 'Compétence', 0, NULL, NULL),
(4600, 118, 5, 'Compétences', 0, NULL, NULL),
(4601, 189, 5, 'Date de Début', 0, NULL, NULL),
(4602, 144, 5, 'La date de début devrait être antérieure à la date de fin', 0, NULL, NULL),
(4603, 178, 5, 'État', 0, NULL, NULL),
(4604, 120, 5, 'Statut', 0, NULL, NULL),
(4605, 302, 5, 'Structure', 0, NULL, NULL),
(4606, 167, 5, 'Sous unité', 0, NULL, NULL),
(4607, 528, 5, 'Subordonnés', 0, NULL, NULL),
(4608, 418, 5, 'Montant de l\'Abonnement', 0, NULL, NULL),
(4609, 419, 5, 'Date de Début de l\'Abonnement', 0, NULL, NULL),
(4610, 417, 5, 'Abonnement Payé Par', 0, NULL, NULL),
(4611, 420, 5, 'Date de Renouvellement de l\'Abonnement', 0, NULL, NULL),
(4612, 255, 5, 'Sauvegarde réussie', 0, NULL, NULL),
(4613, 254, 5, 'Mise à jour réussie', 0, NULL, NULL),
(4614, 217, 5, 'Dimanche', 0, NULL, NULL),
(4615, 392, 5, 'Responsable', 0, NULL, NULL),
(4616, 390, 5, 'Nom du Responsable', 0, NULL, NULL),
(4617, 527, 5, 'Responsables', 0, NULL, NULL),
(4618, 462, 5, 'Raisons pour Fin de Contrat', 0, NULL, NULL),
(4619, 214, 5, 'Jeudi', 0, NULL, NULL),
(4620, 273, 5, 'Temps', 0, NULL, NULL),
(4621, 283, 5, 'Feuille de temps', 0, NULL, NULL),
(4622, 124, 5, 'À', 0, NULL, NULL),
(4623, 195, 5, 'La date de fin devrait être postérieure à la date de début', 0, NULL, NULL),
(4624, 212, 5, 'Mardi', 0, NULL, NULL),
(4625, 154, 5, 'Type', 0, NULL, NULL),
(4626, 263, 5, 'Utilisateurs', 0, NULL, NULL),
(4627, 290, 5, 'Postes à pourvoir', 0, NULL, NULL),
(4628, 213, 5, 'Mercredi', 0, NULL, NULL),
(4629, 320, 5, 'Email professionnel', 0, NULL, NULL),
(4630, 500, 5, 'Expérience professionnelle', 0, NULL, NULL),
(4631, 65, 5, 'Équipes de Travail', 0, NULL, NULL),
(4632, 404, 5, 'Téléphone Professionnel', 0, NULL, NULL),
(4633, 547, 5, 'Semaine de Travail', 0, NULL, NULL),
(4634, 188, 5, 'An', 0, NULL, NULL),
(4635, 495, 5, 'Années d\'expérience', 0, NULL, NULL),
(4636, 93, 5, 'Oui', 0, NULL, NULL),
(4637, 241, 5, 'Les mots de passe ne correspondent pas', 0, NULL, NULL),
(4638, 228, 5, 'Ok', 0, NULL, NULL),
(4639, 158, 5, 'Accepte jusqu\'à 1 Mo', 0, NULL, NULL),
(4640, 121, 5, 'Nom d\'utilisateur', 0, NULL, NULL),
(4641, 238, 5, 'Mot de passe', 0, NULL, NULL),
(4642, 159, 5, 'Télécharger', 0, NULL, NULL),
(4643, 353, 5, 'Total', 0, NULL, NULL),
(4644, 509, 5, 'Date de Fin de Contrat', 0, NULL, NULL),
(4645, 510, 5, 'Raison pour Fin de Contrat', 0, NULL, NULL),
(4646, 645, 5, 'Nom de l\'activité', 0, NULL, NULL),
(4647, 107, 5, 'Ajouter diplôme', 0, NULL, NULL),
(4648, 109, 5, 'Ajouter une langue', 0, NULL, NULL),
(4649, 112, 5, 'Ajouter un permis', 0, NULL, NULL),
(4650, 117, 5, 'Ajouter compétences', 0, NULL, NULL),
(4651, 99, 5, 'Adresse (rue) 1', 0, NULL, NULL),
(4652, 100, 5, 'Adresse (rue) 2', 0, NULL, NULL),
(4653, 83, 5, 'Ville', 0, NULL, NULL),
(4654, 240, 5, 'Confirmer Mot de passe', 0, NULL, NULL),
(4655, 644, 5, 'Copier à partir de', 0, NULL, NULL),
(4656, 651, 5, 'Nom du projet', 0, NULL, NULL),
(4657, 104, 5, 'Modifier études', 0, NULL, NULL),
(4658, 108, 5, 'Modifier langue', 0, NULL, NULL),
(4659, 111, 5, 'Modifier permis', 0, NULL, NULL),
(4660, 116, 5, 'Modifier les compétences', 0, NULL, NULL),
(4661, 89, 5, 'État / Province', 0, NULL, NULL),
(4662, 90, 5, 'Code Postal', 0, NULL, NULL),
(4663, 234, 5, 'Approuver', 0, NULL, NULL),
(4664, 604, 5, 'Programmé', 0, NULL, NULL),
(4665, 91, 5, 'Commentaire', 0, NULL, NULL),
(4666, 201, 5, 'Pièces jointes', 0, NULL, NULL),
(4667, 155, 5, 'Télécharger', 0, NULL, NULL),
(4668, 95, 5, 'Email', 0, NULL, NULL),
(4669, 310, 5, 'Edité par', 0, NULL, NULL),
(4670, 235, 5, 'Rejeter', 0, NULL, NULL),
(4671, 632, 5, 'Rejeté', 0, NULL, NULL),
(4672, 348, 5, 'Soumettre', 0, NULL, NULL),
(4673, 312, 5, 'Voir', 0, NULL, NULL),
(4674, 274, 5, 'Mes Infos', 0, NULL, NULL),
(4675, 119, 5, 'Rôle de l\'utilisateur', 0, NULL, NULL),
(4676, 177, 5, 'Diplômes', 0, NULL, NULL),
(4677, 184, 5, 'Fichier actuel', 0, NULL, NULL),
(4678, 185, 5, 'Remplacer Par', 0, NULL, NULL),
(4679, 311, 5, 'Ajouter un autre', 0, NULL, NULL),
(4680, 544, 5, 'Mois de début', 0, NULL, NULL),
(4681, 633, 5, 'Annulé', 0, NULL, NULL),
(4682, 549, 5, 'Ajouter Autorisations de Congé', 0, NULL, NULL),
(4683, 557, 5, 'Autorisation', 0, NULL, NULL),
(4684, 226, 5, 'Ne correspond à aucun employé', 0, NULL, NULL),
(4685, 319, 5, 'Autorisations', 0, NULL, NULL),
(4686, 316, 5, 'Ajouter Autorisations', 0, NULL, NULL),
(4687, 318, 5, 'Autorisations Employé', 0, NULL, NULL),
(4688, 617, 5, 'Valable depuis', 0, NULL, NULL),
(4689, 618, 5, 'Valable jusqu\'à', 0, NULL, NULL),
(4690, 227, 5, 'Aucun employé ne correspond aux critères sélectionnés', 0, NULL, NULL),
(4691, 565, 5, 'Autorisations de Congé et Rapport d\'Utilisation', 0, NULL, NULL),
(4692, 569, 5, 'Mes Autorisations de Congé et Rapports d\'Utilisation', 0, NULL, NULL),
(4693, 583, 5, 'Employés correspondants', 0, NULL, NULL),
(4694, 566, 5, 'Générer pour', 0, NULL, NULL),
(4695, 225, 5, 'Confirmer', 0, NULL, NULL),
(4696, 315, 5, 'Mes Autorisations', 0, NULL, NULL),
(4697, 260, 5, 'Gestion des utilisateurs', 0, NULL, NULL),
(4698, 598, 5, 'Solde disponible', 0, NULL, NULL),
(4699, 594, 5, 'Solde insuffisant', 0, NULL, NULL),
(4700, 8, 5, 'Configuration email', 0, NULL, NULL),
(4701, 26, 5, 'Abonnements newsletter', 0, NULL, NULL),
(4702, 246, 5, 'À propose de', 0, NULL, NULL),
(4703, 298, 5, 'Gestionnaires d\'employés', 0, NULL, NULL),
(4704, 295, 5, 'Mes gestionnaires', 0, NULL, NULL),
(4705, 643, 5, 'Activités', 0, NULL, NULL),
(4706, 59, 5, 'Ajouter Devise', 0, NULL, NULL),
(4707, 647, 5, 'Ajouter un client', 0, NULL, NULL),
(4708, 30, 5, 'Ajouter un Statut Emploi', 0, NULL, NULL),
(4709, 73, 5, 'Ajouter Catégorie d\'Emploi', 0, NULL, NULL),
(4710, 1, 5, 'Ajouter un titre de poste', 0, NULL, NULL),
(4711, 6, 5, 'Ajouter Filiale', 0, NULL, NULL),
(4712, 114, 5, 'Ajouter une adhésion', 0, NULL, NULL),
(4713, 43, 5, 'Ajouter une nationalité', 0, NULL, NULL),
(4714, 53, 5, 'Ajouter un échelon salarial', 0, NULL, NULL),
(4715, 691, 5, 'Ajouter un projet', 0, NULL, NULL),
(4716, 658, 5, 'Ajouter une activité au projet', 0, NULL, NULL),
(4717, 28, 5, 'Ajouter un abonné', 0, NULL, NULL),
(4718, 61, 5, 'Ajouter un utilisateur', 0, NULL, NULL),
(4719, 76, 5, 'Ajouter Équipes de Travail', 0, NULL, NULL),
(4720, 69, 5, 'Employés assignés', 0, NULL, NULL),
(4721, 244, 5, 'Mieux', 0, NULL, NULL),
(4722, 380, 5, 'L\'ordre des colonnes ne doit pas être changé', 0, NULL, NULL),
(4723, 650, 5, 'Copier l\'activité', 0, NULL, NULL),
(4724, 465, 5, 'Mot de passe actuel', 0, NULL, NULL),
(4725, 654, 5, 'Nom du client', 0, NULL, NULL),
(4726, 80, 5, 'Format de la date', 0, NULL, NULL),
(4727, 384, 5, 'Chaque fichier importé devrait être configuré pour 100 dossiers ou moins', 0, NULL, NULL),
(4728, 54, 5, 'Modifier Devise', 0, NULL, NULL),
(4729, 675, 5, 'Modifier le client', 0, NULL, NULL),
(4730, 29, 5, 'Modifier le Statut Emploi', 0, NULL, NULL),
(4731, 74, 5, 'Modifier Catégorie d\'Emploi', 0, NULL, NULL),
(4732, 2, 5, 'Modifier le titre de poste', 0, NULL, NULL),
(4733, 32, 5, 'Modifier Filiale', 0, NULL, NULL),
(4734, 113, 5, 'Modifier l\'adhésion', 0, NULL, NULL),
(4735, 41, 5, 'Modifier la nationalité', 0, NULL, NULL),
(4736, 57, 5, 'Modifier le niveau de rémunération', 0, NULL, NULL),
(4737, 678, 5, 'Modifier le projet', 0, NULL, NULL),
(4738, 655, 5, 'Modifier l\'activité du projet', 0, NULL, NULL),
(4739, 25, 5, 'Modifier l\'abonné', 0, NULL, NULL),
(4740, 60, 5, 'Modifier l\'utilisateur', 0, NULL, NULL),
(4741, 62, 5, 'Modifier Équipes de Travail', 0, NULL, NULL),
(4742, 96, 5, 'Fax', 0, NULL, NULL),
(4743, 381, 5, 'Prénom et Nom obligatoires', 0, NULL, NULL),
(4744, 66, 5, 'Heures par jour', 0, NULL, NULL),
(4745, 31, 5, 'Description du poste', 0, NULL, NULL),
(4746, 9, 5, 'Messages envoyés comme', 0, NULL, NULL),
(4747, 56, 5, 'Salaire Maximum', 0, NULL, NULL),
(4748, 55, 5, 'Salaire Minimum', 0, NULL, NULL),
(4749, 33, 5, 'Configuration du module', 0, NULL, NULL),
(4750, 747, 5, 'Nouveau mot de passe', 0, NULL, NULL),
(4751, 653, 5, 'Aucune activité sélectionnée', 0, NULL, NULL),
(4752, 652, 5, 'Aucune activité attribuée', 0, NULL, NULL),
(4753, 27, 5, 'Type de Notification', 0, NULL, NULL),
(4754, 5, 5, 'Nombre de salariés', 0, NULL, NULL),
(4755, 45, 5, 'Nom de l\'organisme', 0, NULL, NULL),
(4756, 14, 5, 'Chemin de sendmail', 0, NULL, NULL),
(4757, 88, 5, 'Téléphone', 0, NULL, NULL),
(4758, 657, 5, 'Projet', 0, NULL, NULL),
(4759, 656, 5, 'Administrateur de projet', 0, NULL, NULL),
(4760, 676, 5, 'Administrateurs de projet', 0, NULL, NULL),
(4761, 46, 5, 'Numéro d\'enregistrement', 0, NULL, NULL),
(4762, 10, 5, 'Méthode d\'envoi', 0, NULL, NULL),
(4763, 63, 5, 'Nom de l\'Équipe', 0, NULL, NULL),
(4764, 19, 5, 'Mot de passe SMTP', 0, NULL, NULL),
(4765, 16, 5, 'Port SMTP', 0, NULL, NULL),
(4766, 18, 5, 'Utilisateur SMTP', 0, NULL, NULL),
(4767, 245, 5, 'Plus fort', 0, NULL, NULL),
(4768, 24, 5, 'Abonnés', 0, NULL, NULL),
(4769, 75, 5, 'Utilisateurs du système', 0, NULL, NULL),
(4770, 47, 5, 'Numéro d\'identification fiscale', 0, NULL, NULL),
(4771, 23, 5, 'Tester l\'adresse e-mail', 0, NULL, NULL),
(4772, 52, 5, 'Cette unité sera ajoutée sous', 0, NULL, NULL),
(4773, 20, 5, 'TLS', 0, NULL, NULL),
(4774, 49, 5, 'Identifiant Unité', 0, NULL, NULL),
(4775, 17, 5, 'Utiliser l\'authentification SMTP', 0, NULL, NULL),
(4776, 243, 5, 'Très faible', 0, NULL, NULL),
(4777, 242, 5, 'Faible', 0, NULL, NULL),
(4778, 71, 5, 'Devrait être plus élevé que le salaire minimum', 0, NULL, NULL),
(4779, 382, 5, 'Tous les champs de date doivent être au format AAAA-MM-JJ', 0, NULL, NULL),
(4780, 385, 5, 'Plusieurs fichiers d\'importation peuvent être nécessaires', 0, NULL, NULL),
(4781, 50, 5, 'Structure de l\'organisation', 0, NULL, NULL),
(4782, 276, 5, 'Tableau de bord', 0, NULL, NULL),
(4783, 570, 5, 'Appliquer congé', 0, NULL, NULL),
(4784, 686, 5, 'Ma feuille de temps', 0, NULL, NULL),
(4785, 669, 5, 'Actions effectuées sur Feuille de temps', 0, NULL, NULL),
(4786, 662, 5, 'Ajouter une ligne', 0, NULL, NULL),
(4787, 648, 5, 'Ajouter Feuille de temps', 0, NULL, NULL),
(4788, 704, 5, 'Rapport Synthétisé du Taux de Présence Global', 0, NULL, NULL),
(4789, 672, 5, 'Définir la période de la Feuille de temps', 0, NULL, NULL),
(4790, 690, 5, 'Modifier Feuille de temps pour', 0, NULL, NULL),
(4791, 683, 5, 'Rapport de l\'employé', 0, NULL, NULL),
(4792, 667, 5, 'Devrait être inférieur à 24 et en HH: MM ou au format décimal', 0, NULL, NULL),
(4793, 308, 5, 'Ven.', 0, NULL, NULL),
(4794, 304, 5, 'Lun.', 0, NULL, NULL),
(4795, 679, 5, 'Rapport sur le projet', 0, NULL, NULL),
(4796, 309, 5, 'Sam.', 0, NULL, NULL),
(4797, 649, 5, 'Sélectionnez un jour pour créer feuille de temps', 0, NULL, NULL),
(4798, 684, 5, 'Sélectionner employé', 0, NULL, NULL),
(4799, 303, 5, 'Dim.', 0, NULL, NULL),
(4800, 307, 5, 'Jeu.', 0, NULL, NULL),
(4801, 689, 5, 'Feuille de temps pour', 0, NULL, NULL),
(4802, 671, 5, 'Période de la Feuille de temps', 0, NULL, NULL),
(4803, 670, 5, 'Action en attente pour la feuille de temps', 0, NULL, NULL),
(4804, 305, 5, 'Mar.', 0, NULL, NULL),
(4805, 306, 5, 'Mer.', 0, NULL, NULL),
(4806, 666, 5, 'Sélectionnez un projet et une activité', 0, NULL, NULL),
(4807, 660, 5, 'Aucune feuille de temps trouvée', 0, NULL, NULL),
(4808, 694, 5, 'Feuille de temps approuvée', 0, NULL, NULL),
(4809, 693, 5, 'Feuille de temps rejetée', 0, NULL, NULL),
(4810, 668, 5, 'Le total devrait être inférieur à 24 Heures', 0, NULL, NULL),
(4811, 491, 5, 'Numéro de compte', 0, NULL, NULL),
(4812, 492, 5, 'Type de compte', 0, NULL, NULL),
(4813, 513, 5, 'Activer Contrat', 0, NULL, NULL),
(4814, 378, 5, 'Ajouter un champ personnalisé', 0, NULL, NULL),
(4815, 506, 5, 'Ajouter personne à charge', 0, NULL, NULL),
(4816, 505, 5, 'Ajouter informations immigration', 0, NULL, NULL),
(4817, 450, 5, 'Ajouter Méthodologie de Reporting', 0, NULL, NULL),
(4818, 461, 5, 'Ajouter Raison pour Fin de Contrat', 0, NULL, NULL),
(4819, 501, 5, 'Ajouter expérience professionnelle', 0, NULL, NULL),
(4820, 399, 5, 'Personnes à charge Attribuées', 0, NULL, NULL),
(4821, 402, 5, 'Personnes à contacter en cas d\'urgence enregistrées', 0, NULL, NULL),
(4822, 405, 5, 'Dossiers Immigration Associés', 0, NULL, NULL),
(4823, 415, 5, 'Adhésions enregistrées', 0, NULL, NULL),
(4824, 498, 5, 'Subordonnés assignés', 0, NULL, NULL),
(4825, 499, 5, 'Responsables Assignés', 0, NULL, NULL),
(4826, 475, 5, 'Au moins un numéro de téléphone est requis', 0, NULL, NULL),
(4827, 469, 5, 'Enfant', 0, NULL, NULL),
(4828, 414, 5, 'Détails du contrat', 0, NULL, NULL),
(4829, 445, 5, 'Informations spécifiques au pays', 0, NULL, NULL),
(4830, 441, 5, 'Créer détails de connexion', 0, NULL, NULL),
(4831, 370, 5, 'Nom du champ personnalisé', 0, NULL, NULL),
(4832, 406, 5, 'Document', 0, NULL, NULL),
(4833, 526, 5, 'Menu déroulant', 0, NULL, NULL),
(4834, 374, 5, 'Modifier Champ personnalisé', 0, NULL, NULL),
(4835, 467, 5, 'Modifier Personnes à charge', 0, NULL, NULL),
(4836, 474, 5, 'Modifier Personnes à contacter en cas d\'urgence', 0, NULL, NULL),
(4837, 449, 5, 'Modifier Méthodologie de Reporting', 0, NULL, NULL),
(4838, 460, 5, 'Modifier Raisons pour Fin de Contrat', 0, NULL, NULL),
(4839, 388, 5, 'Informations sur les employés', 0, NULL, NULL),
(4840, 377, 5, 'Entrez les options autorisées séparées par des virgules', 0, NULL, NULL),
(4841, 438, 5, 'Exemptions', 0, NULL, NULL),
(4842, 437, 5, 'Impôt sur le revenu', 0, NULL, NULL),
(4843, 375, 5, 'Nom du champ', 0, NULL, NULL),
(4844, 372, 5, 'Type de champ', 0, NULL, NULL),
(4845, 205, 5, 'La date de début devrait être antérieure à la date de fin', 0, NULL, NULL),
(4846, 473, 5, 'GPA/Résultat', 0, NULL, NULL),
(4847, 471, 5, 'Institut', 0, NULL, NULL),
(4848, 472, 5, 'Matière principale/Spécialisation', 0, NULL, NULL),
(4849, 428, 5, 'Service militaire', 0, NULL, NULL),
(4850, 478, 5, 'Passeport', 0, NULL, NULL);
INSERT INTO `ohrm_i18n_translate` (`id`, `lang_string_id`, `language_id`, `value`, `customized`, `version`, `modified_at`) VALUES
(4851, 339, 5, 'Informations personnelles', 0, NULL, NULL),
(4852, 468, 5, 'Veuillez spécifier', 0, NULL, NULL),
(4853, 344, 5, 'Reporter à', 0, NULL, NULL),
(4854, 371, 5, 'Écran', 0, NULL, NULL),
(4855, 376, 5, 'Sélectionnez Options', 0, NULL, NULL),
(4856, 443, 5, 'Afficher les champs obsolètes', 0, NULL, NULL),
(4857, 444, 5, 'Afficher Surnom, Fumeur et Service Militaire dans les Informations Personnelles', 0, NULL, NULL),
(4858, 447, 5, 'Afficher le champ NAS dans les informations personnelles', 0, NULL, NULL),
(4859, 446, 5, 'Afficher le champ SSN dans les informations personnelles', 0, NULL, NULL),
(4860, 448, 5, 'Afficher le menu Exonération d\'Impôts', 0, NULL, NULL),
(4861, 425, 5, 'Numéro NAS', 0, NULL, NULL),
(4862, 429, 5, 'Fumeur', 0, NULL, NULL),
(4863, 424, 5, 'Numéro SSN', 0, NULL, NULL),
(4864, 345, 5, 'Exonération d\'Impôts', 0, NULL, NULL),
(4865, 508, 5, 'Mettre Fin au Contrat', 0, NULL, NULL),
(4866, 525, 5, 'Texte ou Nombre', 0, NULL, NULL),
(4867, 439, 5, 'Sans Emploi', 0, NULL, NULL),
(4868, 479, 5, 'Visa', 0, NULL, NULL),
(4869, 440, 5, 'Employé', 0, NULL, NULL),
(4870, 391, 5, 'Prénoms', 0, NULL, NULL),
(4871, 517, 5, 'Statut d\'Éligibilité', 0, NULL, NULL),
(4872, 518, 5, 'Date d\'Évaluation d\'Éligibilité', 0, NULL, NULL),
(4873, 152, 5, 'Actions', 0, NULL, NULL),
(4874, 576, 5, 'Attribuer', 0, NULL, NULL),
(4875, 545, 5, 'Période de congés en cours', 0, NULL, NULL),
(4876, 712, 5, 'Durée (Heures)', 0, NULL, NULL),
(4877, 546, 5, 'Année suivante', 0, NULL, NULL),
(4878, 220, 5, 'Du', 0, NULL, NULL),
(4879, 542, 5, 'Journée complète', 0, NULL, NULL),
(4880, 630, 5, 'Demi-journée', 0, NULL, NULL),
(4881, 593, 5, 'Solde de congés', 0, NULL, NULL),
(4882, 567, 5, 'Type de congé', 0, NULL, NULL),
(4883, 581, 5, 'Liste de mes congés', 0, NULL, NULL),
(4884, 571, 5, 'Aucun Types de congé avec solde de congés', 0, NULL, NULL),
(4885, 631, 5, 'Jour de repos', 0, NULL, NULL),
(4886, 620, 5, 'Nombre de jours', 0, NULL, NULL),
(4887, 605, 5, 'Approbation en attente', 0, NULL, NULL),
(4888, 538, 5, 'Se répète annuellement', 0, NULL, NULL),
(4889, 578, 5, 'Afficher Congé et Statut', 0, NULL, NULL),
(4890, 603, 5, 'Pris', 0, NULL, NULL),
(4891, 221, 5, 'Date de fin', 0, NULL, NULL),
(4892, 628, 5, 'Impossible de Soumettre: Pas de Jours de Travail Sélectionnés', 0, NULL, NULL),
(4893, 627, 5, 'Echec de la soumission', 0, NULL, NULL),
(4894, 562, 5, 'Ajouter type de congé', 0, NULL, NULL),
(4895, 563, 5, 'Modifier type de congé', 0, NULL, NULL),
(4896, 582, 5, 'Mise à Jour d\'Autorisation en Cours', 0, NULL, NULL),
(4897, 556, 5, 'Modifier Autorisation de Congé', 0, NULL, NULL),
(4898, 584, 5, 'L\'autorisation de congé sélectionnée sera appliquée aux employés suivants.', 0, NULL, NULL),
(4899, 585, 5, 'Ancienne Autorisation', 0, NULL, NULL),
(4900, 586, 5, 'Nouvelle Autorisation', 0, NULL, NULL),
(4901, 558, 5, 'Le montant utilisé dépasse le montant actuel', 0, NULL, NULL),
(4902, 599, 5, 'Détails du solde des congés', 0, NULL, NULL),
(4903, 596, 5, 'Solde', 0, NULL, NULL),
(4904, 613, 5, 'La durée devrait être inférieure à la durée du temps de travail de l\'équipe', 0, NULL, NULL),
(4905, 600, 5, 'A compter du', 0, NULL, NULL),
(4906, 560, 5, 'Mes Autorisations de Congé', 0, NULL, NULL),
(4907, 609, 5, 'Commentaires', 0, NULL, NULL),
(4908, 589, 5, 'Confirmer Attribution de Congés', 0, NULL, NULL),
(4909, 590, 5, 'Le solde de congés de l\'employé n\'est pas suffisant pour couvrir la demande.', 0, NULL, NULL),
(4910, 591, 5, 'Cliquez sur OK pour confirmer l\'attribution de congés.', 0, NULL, NULL),
(4911, 616, 5, 'Spécifier Heure', 0, NULL, NULL),
(4912, 572, 5, 'Journées partielles', 0, NULL, NULL),
(4913, 574, 5, 'Jour de début', 0, NULL, NULL),
(4914, 575, 5, 'Jour de fin', 0, NULL, NULL),
(4915, 293, 5, 'Gérer les Évaluations', 0, NULL, NULL),
(4916, 294, 5, 'Mes Évaluations', 0, NULL, NULL),
(4917, 296, 5, 'Liste d\'Évaluations', 0, NULL, NULL),
(4918, 138, 5, 'La Date de fin devrait être ultérieure à la Date de début', 0, NULL, NULL),
(4919, 607, 5, 'Souhaitez-vous vraiment continuer?', 0, NULL, NULL),
(4920, 706, 5, 'Pointage d\'arrivée', 0, NULL, NULL),
(4921, 710, 5, 'Note au Pointage d\'arrivée', 0, NULL, NULL),
(4922, 708, 5, 'Pointer au départ', 0, NULL, NULL),
(4923, 711, 5, 'Note de départ', 0, NULL, NULL),
(4924, 709, 5, 'Trouvé Dossiers qui se Chevauchent', 0, NULL, NULL),
(4925, 715, 5, 'Fuseau horaire', 0, NULL, NULL),
(4926, 717, 5, 'Dans', 0, NULL, NULL),
(4927, 718, 5, 'Dehors', 0, NULL, NULL),
(4928, 700, 5, 'Configuration de présence', 0, NULL, NULL),
(4929, 701, 5, 'Le salarié peut changer l\'heure actuelle lors du pointage', 0, NULL, NULL),
(4930, 702, 5, 'L\'employé peut modifier/supprimer ses propres historiques de présence', 0, NULL, NULL),
(4931, 703, 5, 'Le responsable peut ajouter/modifier/supprimer les historiques de présence de ses subordonnés', 0, NULL, NULL),
(4932, 714, 5, 'Mes historiques de présence', 0, NULL, NULL),
(4933, 735, 5, 'Connexion', 0, NULL, NULL),
(4934, 239, 5, 'Pour un mot de passe le plus fiable possible, veuillez choisir une combinaison difficile à deviner, incluant des lettres en majuscule et en minuscule, des chiffres et des symboles', 0, NULL, NULL),
(4935, 559, 5, 'Autorisations de congés', 0, NULL, NULL),
(4936, 278, 5, 'Buzz', 0, NULL, NULL),
(4937, 160, 5, 'Réussite', 0, NULL, NULL),
(4938, 352, 5, 'Suppression réussie', 0, NULL, NULL),
(4939, 696, 5, 'L\'Heure du Pointage de Départ Devrait Être Supérieure à Celle du Pointage d\'Arrivée', 0, NULL, NULL),
(4940, 756, 5, 'Vous avez oublié votre mot de passe', 0, NULL, NULL),
(4941, 736, 5, 'Nom d\'utilisateur', 0, NULL, NULL),
(4942, 737, 5, 'Mot de passe', 0, NULL, NULL),
(4943, 250, 5, 'Aucun Résultat', 0, NULL, NULL),
(4944, 698, 5, 'Feuille de temps soumise', 0, NULL, NULL),
(4945, 198, 5, 'Deuxième prénom', 0, NULL, NULL),
(4946, 197, 5, 'Prénom', 0, NULL, NULL),
(4947, 87, 225, 'Ajouter', 0, NULL, NULL),
(4948, 208, 225, 'Ajouter une pièce jointe', 0, NULL, NULL),
(4949, 180, 225, 'Ajouter des employés', 0, NULL, NULL),
(4950, 503, 225, 'Ajouté par', 0, NULL, NULL),
(4951, 7, 225, 'Adresse', 0, NULL, NULL),
(4952, 129, 225, 'Admin', 0, NULL, NULL),
(4953, 530, 225, 'Tranche d\'âge', 0, NULL, NULL),
(4954, 143, 225, 'Autorise les chiffres et seulement + - / ()', 0, NULL, NULL),
(4955, 125, 225, 'Existe déjà', 0, NULL, NULL),
(4956, 434, 225, 'Montant', 0, NULL, NULL),
(4957, 223, 225, 'Appliquer', 0, NULL, NULL),
(4958, 573, 225, 'Attribuer congés', 0, NULL, NULL),
(4959, 489, 225, 'Composantes salariales attribuées', 0, NULL, NULL),
(4960, 140, 225, 'Taille pièces jointes dépassée', 0, NULL, NULL),
(4961, 286, 225, 'Présence', 0, NULL, NULL),
(4962, 313, 225, 'Résumé de présence', 0, NULL, NULL),
(4963, 224, 225, 'Retour', 0, NULL, NULL),
(4964, 92, 225, 'Annuler', 0, NULL, NULL),
(4965, 291, 225, 'Les candidats', 0, NULL, NULL),
(4966, 248, 225, 'Changer mot de passe', 0, NULL, NULL),
(4967, 186, 225, 'Commenter', 0, NULL, NULL),
(4968, 191, 225, 'Commentaires', 0, NULL, NULL),
(4969, 496, 225, 'Entreprise', 0, NULL, NULL),
(4970, 484, 225, 'Compétence', 0, NULL, NULL),
(4971, 264, 225, 'Configuration', 0, NULL, NULL),
(4972, 317, 225, 'Configurer', 0, NULL, NULL),
(4973, 393, 225, 'Coordonnées', 0, NULL, NULL),
(4974, 413, 225, 'Date de fin du contrat', 0, NULL, NULL),
(4975, 412, 225, 'Date de début du contrat', 0, NULL, NULL),
(4976, 84, 225, 'Pays', 0, NULL, NULL),
(4977, 102, 225, 'Monnaie', 0, NULL, NULL),
(4978, 168, 225, 'Salariés actuels et passés', 0, NULL, NULL),
(4979, 170, 225, 'Salariés actuels seulement', 0, NULL, NULL),
(4980, 367, 225, 'Les champs personnalisés', 0, NULL, NULL),
(4981, 287, 225, 'Clients', 0, NULL, NULL),
(4982, 379, 225, 'Importation de données', 0, NULL, NULL),
(4983, 210, 225, 'Date', 0, NULL, NULL),
(4984, 502, 225, 'Date d\'ajout', 0, NULL, NULL),
(4985, 401, 225, 'Date de naissance', 0, NULL, NULL),
(4986, 597, 225, 'Journées', 0, NULL, NULL),
(4987, 330, 225, 'Effacer actuel', 0, NULL, NULL),
(4988, 341, 225, 'Les personnes à charge', 0, NULL, NULL),
(4989, 101, 225, 'Description', 0, NULL, NULL),
(4990, 521, 225, 'Numéro de compte de dépôt direct', 0, NULL, NULL),
(4991, 522, 225, 'Type de compte de dépôt direct', 0, NULL, NULL),
(4992, 436, 225, 'Montant de dépôt direct', 0, NULL, NULL),
(4993, 150, 225, 'Handicapé', 0, NULL, NULL),
(4994, 455, 225, 'Afficher les champs', 0, NULL, NULL),
(4995, 519, 225, 'Type de documents', 0, NULL, NULL),
(4996, 422, 225, 'Numéro du permis de conduire', 0, NULL, NULL),
(4997, 222, 225, 'Durée', 0, NULL, NULL),
(4998, 98, 225, 'Éditer', 0, NULL, NULL),
(4999, 151, 225, 'Modifier la pièce jointe', 0, NULL, NULL),
(5000, 477, 225, 'Modifier l\'immigration', 0, NULL, NULL),
(5001, 488, 225, 'Modifier le composant Salaire', 0, NULL, NULL),
(5002, 106, 225, 'Formation', 0, NULL, NULL),
(5003, 481, 225, 'Date d\'admission révisable', 0, NULL, NULL),
(5004, 480, 225, 'Statut admissible', 0, NULL, NULL),
(5005, 340, 225, 'Contacts d\'urgence', 0, NULL, NULL),
(5006, 218, 225, 'Salarié', 0, NULL, NULL),
(5007, 515, 225, 'Prénom du salarié', 0, NULL, NULL),
(5008, 163, 225, 'Id du salarié', 0, NULL, NULL),
(5009, 514, 225, 'Nom de famille du salarié', 0, NULL, NULL),
(5010, 269, 225, 'Liste des salariés', 0, NULL, NULL),
(5011, 516, 225, 'Autre nom du salarié', 0, NULL, NULL),
(5012, 122, 225, 'Nom du salarié', 0, NULL, NULL),
(5013, 285, 225, 'Dossiers du salarié', 0, NULL, NULL),
(5014, 183, 225, 'Rapports du salarié', 0, NULL, NULL),
(5015, 282, 225, 'Emploi du temps du salarié', 0, NULL, NULL),
(5016, 142, 225, 'Situation d\'emploi', 0, NULL, NULL),
(5017, 149, 225, 'Activé', 0, NULL, NULL),
(5018, 190, 225, 'Date de fin', 0, NULL, NULL),
(5019, 148, 225, 'ESS', 0, NULL, NULL),
(5020, 347, 225, 'Format attendu: admin@example.com', 0, NULL, NULL),
(5021, 172, 225, 'Date d\'expiration', 0, NULL, NULL),
(5022, 482, 225, 'Date d\'expiration doit être postérieure à la date de délivrance', 0, NULL, NULL),
(5023, 176, 225, 'Féminin', 0, NULL, NULL),
(5024, 202, 225, 'Nom du fichier', 0, NULL, NULL),
(5025, 523, 225, 'Prénom', 0, NULL, NULL),
(5026, 483, 225, 'Aisance', 0, NULL, NULL),
(5027, 215, 225, 'Vendredi', 0, NULL, NULL),
(5028, 123, 225, 'À partir de', 0, NULL, NULL),
(5029, 427, 225, 'Sexe', 0, NULL, NULL),
(5030, 44, 225, 'Informations générales', 0, NULL, NULL),
(5031, 540, 225, 'Vacances', 0, NULL, NULL),
(5032, 403, 225, 'Téléphone domicile', 0, NULL, NULL),
(5033, 164, 225, 'Id', 0, NULL, NULL),
(5034, 832, 63, 'Добавяне на преглед', 0, NULL, NULL),
(5035, 931, 63, 'Април', 0, NULL, NULL),
(5036, 935, 63, 'Август', 0, NULL, NULL),
(5037, 767, 63, 'Текущ статус', 0, NULL, NULL),
(5038, 939, 63, 'Декември', 0, NULL, NULL),
(5039, 880, 63, 'Изтриване', 0, NULL, NULL),
(5040, 929, 63, 'Февруари', 0, NULL, NULL),
(5041, 958, 63, 'Пълно име', 0, NULL, NULL),
(5042, 928, 63, 'Януари', 0, NULL, NULL),
(5043, 934, 63, 'Юли', 0, NULL, NULL),
(5044, 933, 63, 'Юни', 0, NULL, NULL),
(5045, 930, 63, 'Март', 0, NULL, NULL),
(5046, 932, 63, 'Май', 0, NULL, NULL),
(5047, 938, 63, 'Ноември', 0, NULL, NULL),
(5048, 937, 63, 'Октомври', 0, NULL, NULL),
(5049, 936, 63, 'Септември', 0, NULL, NULL),
(5050, 963, 63, 'Невалиден', 0, NULL, NULL),
(5051, 951, 63, 'Приема. DOCX, DOC, ODT, PDF, RTF, TXT до 1MB', 0, NULL, NULL),
(5052, 773, 63, 'Ключови думи', 0, NULL, NULL),
(5053, 789, 63, 'Резюме', 0, NULL, NULL),
(5054, 901, 63, 'Max', 0, NULL, NULL),
(5055, 900, 63, 'Мин.', 0, NULL, NULL),
(5056, 954, 63, 'Активен', 0, NULL, NULL),
(5057, 790, 63, 'Добави кандидат', 0, NULL, NULL),
(5058, 778, 63, 'Заявление Иницииран', 0, NULL, NULL),
(5059, 777, 63, 'Кандидат', 0, NULL, NULL),
(5060, 772, 63, 'Името на Кандидата', 0, NULL, NULL),
(5061, 955, 63, 'Затворен', 0, NULL, NULL),
(5062, 774, 63, 'Дата на прилагане', 0, NULL, NULL),
(5063, 796, 63, 'Откажете Оферта', 0, NULL, NULL),
(5064, 797, 63, 'Наемане', 0, NULL, NULL),
(5065, 823, 63, 'Нает', 0, NULL, NULL),
(5066, 771, 63, 'Отдаване под наем мениджър', 0, NULL, NULL),
(5067, 782, 63, 'Интервю Неуспешно', 0, NULL, NULL),
(5068, 781, 63, 'Интервю Приет', 0, NULL, NULL),
(5069, 780, 63, 'Интервю Планирана', 0, NULL, NULL),
(5070, 764, 63, 'Интервю Заглавие', 0, NULL, NULL),
(5071, 783, 63, 'Работа предлагам', 0, NULL, NULL),
(5072, 799, 63, 'Свободните работни места', 0, NULL, NULL),
(5073, 785, 63, 'Наръчник', 0, NULL, NULL),
(5074, 794, 63, 'Неуспешно Марк Интервю', 0, NULL, NULL),
(5075, 795, 63, 'Марк Интервю Приет', 0, NULL, NULL),
(5076, 775, 63, 'Метод на приложение', 0, NULL, NULL),
(5077, 806, 63, 'Брой позиции', 0, NULL, NULL),
(5078, 784, 63, 'Оферта Отхвърлено', 0, NULL, NULL),
(5079, 786, 63, 'Online', 0, NULL, NULL),
(5080, 768, 63, 'Извършва действие', 0, NULL, NULL),
(5081, 769, 63, 'Извършва Дата', 0, NULL, NULL),
(5082, 807, 63, 'RSS Feed URL', 0, NULL, NULL),
(5083, 765, 63, 'График Интервю', 0, NULL, NULL),
(5084, 766, 63, 'Кратък списък', 0, NULL, NULL),
(5085, 779, 63, 'В списъка', 0, NULL, NULL),
(5086, 770, 63, 'Вакантно място', 0, NULL, NULL),
(5087, 805, 63, 'Vacancy Име', 0, NULL, NULL),
(5088, 762, 63, 'Преглед на История за действие', 0, NULL, NULL),
(5089, 808, 63, 'URL адрес на уеб страница', 0, NULL, NULL),
(5090, 826, 63, 'Заявката получена', 0, NULL, NULL),
(5091, 832, 89, 'Tilføj Anmeldelse', 0, NULL, NULL),
(5092, 931, 89, 'April', 0, NULL, NULL),
(5093, 935, 89, 'August', 0, NULL, NULL),
(5094, 767, 89, 'Aktuel status', 0, NULL, NULL),
(5095, 939, 89, 'December', 0, NULL, NULL),
(5096, 880, 89, 'Slet', 0, NULL, NULL),
(5097, 929, 89, 'Februar', 0, NULL, NULL),
(5098, 958, 89, 'Fulde navn', 0, NULL, NULL),
(5099, 928, 89, 'Januar', 0, NULL, NULL),
(5100, 934, 89, 'Juli', 0, NULL, NULL),
(5101, 933, 89, 'Juni', 0, NULL, NULL),
(5102, 930, 89, 'Marts', 0, NULL, NULL),
(5103, 932, 89, 'Maj', 0, NULL, NULL),
(5104, 938, 89, 'November', 0, NULL, NULL),
(5105, 937, 89, 'Oktober', 0, NULL, NULL),
(5106, 936, 89, 'September', 0, NULL, NULL),
(5107, 963, 89, 'Ugyldig', 0, NULL, NULL),
(5108, 951, 89, 'Accepterer. Docx,. Doc,. Odt,. Pdf,. Rtf,. Txt op til 1 MB', 0, NULL, NULL),
(5109, 773, 89, 'Nøgleord', 0, NULL, NULL),
(5110, 789, 89, 'Genoptag', 0, NULL, NULL),
(5111, 901, 89, 'Maksimum', 0, NULL, NULL),
(5112, 900, 89, 'Minimum', 0, NULL, NULL),
(5113, 954, 89, 'Aktiv', 0, NULL, NULL),
(5114, 790, 89, 'Tilføj kandidat', 0, NULL, NULL),
(5115, 778, 89, 'Ansøgning initieret', 0, NULL, NULL),
(5116, 777, 89, 'Kandidat', 0, NULL, NULL),
(5117, 772, 89, 'Kandidatens navn', 0, NULL, NULL),
(5118, 955, 89, 'Lukket', 0, NULL, NULL),
(5119, 774, 89, 'Dato for Anvendelse', 0, NULL, NULL),
(5120, 796, 89, 'Afvis tilbud', 0, NULL, NULL),
(5121, 797, 89, 'Leje', 0, NULL, NULL),
(5122, 823, 89, 'Ansat', 0, NULL, NULL),
(5123, 771, 89, 'Leje manager', 0, NULL, NULL),
(5124, 782, 89, 'Interview mislykkedes', 0, NULL, NULL),
(5125, 781, 89, 'Interview Bestået', 0, NULL, NULL),
(5126, 780, 89, 'Interview Planlagt', 0, NULL, NULL),
(5127, 764, 89, 'Interview titel', 0, NULL, NULL),
(5128, 783, 89, 'Job Tilbydes', 0, NULL, NULL),
(5129, 799, 89, 'Ledige stillinger', 0, NULL, NULL),
(5130, 785, 89, 'Manual', 0, NULL, NULL),
(5131, 794, 89, 'Mærk Interview ikke bestået', 0, NULL, NULL),
(5132, 795, 89, 'Mærk Interview Bestået', 0, NULL, NULL),
(5133, 775, 89, 'Anvendelsesmetode', 0, NULL, NULL),
(5134, 806, 89, 'Antallet af positioner', 0, NULL, NULL),
(5135, 784, 89, 'Tilbud afvist', 0, NULL, NULL),
(5136, 786, 89, 'Online', 0, NULL, NULL),
(5137, 768, 89, 'Udføres Action', 0, NULL, NULL),
(5138, 769, 89, 'Udføres Dato', 0, NULL, NULL),
(5139, 807, 89, 'RSS Feed URL', 0, NULL, NULL),
(5140, 765, 89, 'Planlæg Interview', 0, NULL, NULL),
(5141, 766, 89, 'Huskeliste', 0, NULL, NULL),
(5142, 779, 89, 'Nomineret', 0, NULL, NULL),
(5143, 770, 89, 'Stillingsopslag', 0, NULL, NULL),
(5144, 805, 89, 'Stillingsopslag Navn', 0, NULL, NULL),
(5145, 762, 89, 'Se Action Historie', 0, NULL, NULL),
(5146, 808, 89, 'Webside URL', 0, NULL, NULL),
(5147, 826, 89, 'Ansøgning modtaget', 0, NULL, NULL),
(5148, 832, 6, 'Bewertung hinzufügen', 0, NULL, NULL),
(5149, 931, 6, 'April', 0, NULL, NULL),
(5150, 935, 6, 'August', 0, NULL, NULL),
(5151, 767, 6, 'Aktueller Status', 0, NULL, NULL),
(5152, 939, 6, 'Dezember', 0, NULL, NULL),
(5153, 880, 6, 'Löschen', 0, NULL, NULL),
(5154, 929, 6, 'Februar', 0, NULL, NULL),
(5155, 958, 6, 'Vollständiger Name', 0, NULL, NULL),
(5156, 928, 6, 'Januar', 0, NULL, NULL),
(5157, 934, 6, 'Juli', 0, NULL, NULL),
(5158, 933, 6, 'Juni', 0, NULL, NULL),
(5159, 930, 6, 'März', 0, NULL, NULL),
(5160, 932, 6, 'Mai', 0, NULL, NULL),
(5161, 938, 6, 'November', 0, NULL, NULL),
(5162, 937, 6, 'Oktober', 0, NULL, NULL),
(5163, 936, 6, 'September', 0, NULL, NULL),
(5164, 963, 6, 'Ungültig', 0, NULL, NULL),
(5165, 951, 6, 'Es werden .docx, .doc, .odt, .pdf, .rtf und .txt bis zu 1MB akzeptiert', 0, NULL, NULL),
(5166, 773, 6, 'Schlüsselwörter', 0, NULL, NULL),
(5167, 789, 6, 'Wieder aufnehmen / Lebenslauf', 0, NULL, NULL),
(5168, 847, 6, 'Leistungsbeurteiler', 0, NULL, NULL),
(5169, 882, 6, 'Protokoll', 0, NULL, NULL),
(5170, 873, 6, 'Gutachter', 0, NULL, NULL),
(5171, 862, 6, 'hinzugefügt am', 0, NULL, NULL),
(5172, 861, 6, 'bearbeitet am', 0, NULL, NULL),
(5173, 846, 6, 'Mitarbeiter können nicht als ihre eigenen Gutachter zugewiesen werden', 0, NULL, NULL),
(5174, 843, 6, 'Beobachtungsname', 0, NULL, NULL),
(5175, 901, 6, 'Maximum', 0, NULL, NULL),
(5176, 900, 6, 'Minimum', 0, NULL, NULL),
(5177, 954, 6, 'Aktiv', 0, NULL, NULL),
(5178, 790, 6, 'Bewerber hinzufügen', 0, NULL, NULL),
(5179, 778, 6, 'Bewerbung gestartet', 0, NULL, NULL),
(5180, 777, 6, 'Bewerber', 0, NULL, NULL),
(5181, 772, 6, 'Bewerbername', 0, NULL, NULL),
(5182, 955, 6, 'Geschlossen', 0, NULL, NULL),
(5183, 774, 6, 'Bewerbungsdatum', 0, NULL, NULL),
(5184, 796, 6, 'Angebot ausgeschlagen', 0, NULL, NULL),
(5185, 797, 6, 'Anstellen', 0, NULL, NULL),
(5186, 823, 6, 'Angestellt', 0, NULL, NULL),
(5187, 771, 6, 'Personalmanager', 0, NULL, NULL),
(5188, 782, 6, 'Bewerbungsgespräch nicht bestanden', 0, NULL, NULL),
(5189, 781, 6, 'Bewerbungsgespräch bestanden', 0, NULL, NULL),
(5190, 780, 6, 'Bewerbungsgespräch geplant', 0, NULL, NULL),
(5191, 764, 6, 'Bewerbungsgesprächstitel', 0, NULL, NULL),
(5192, 783, 6, 'Job angeboten', 0, NULL, NULL),
(5193, 799, 6, 'Stellenangebot', 0, NULL, NULL),
(5194, 785, 6, 'Manuell', 0, NULL, NULL),
(5195, 794, 6, 'Das Bewerbungsgespräch als nicht bestanden markieren', 0, NULL, NULL),
(5196, 795, 6, 'Das Bewerbungsgespräch als bestanden markieren', 0, NULL, NULL),
(5197, 775, 6, 'Bewerbungsmethode', 0, NULL, NULL),
(5198, 806, 6, 'Anzahl der Stellen', 0, NULL, NULL),
(5199, 784, 6, 'Angebot ausgeschlagen', 0, NULL, NULL),
(5200, 786, 6, 'Online', 0, NULL, NULL),
(5201, 768, 6, 'Durchgeführte Aktion / Aktion wurde durchgeführt', 0, NULL, NULL),
(5202, 769, 6, 'Durchgeführtes Datum', 0, NULL, NULL),
(5203, 807, 6, 'RSS Feed URL', 0, NULL, NULL),
(5204, 765, 6, 'Interview planen', 0, NULL, NULL),
(5205, 766, 6, 'In die engere Wahl nehmen', 0, NULL, NULL),
(5206, 779, 6, 'Shortlist', 0, NULL, NULL),
(5207, 770, 6, 'Stellenangebot', 0, NULL, NULL),
(5208, 805, 6, 'Stellenname', 0, NULL, NULL),
(5209, 762, 6, 'Aktionsverlauf ansehen', 0, NULL, NULL),
(5210, 808, 6, 'Web Page URL', 0, NULL, NULL),
(5211, 826, 6, 'Bewerbung empfangen', 0, NULL, NULL),
(5212, 898, 6, 'Schlüsselleistungsindex', 0, NULL, NULL),
(5213, 835, 6, 'Fälligkeitsdatum', 0, NULL, NULL),
(5214, 865, 6, 'Evaluationszeitraum', 0, NULL, NULL),
(5215, 867, 6, 'Bewertungsstatus', 0, NULL, NULL),
(5216, 886, 6, 'Leistungsevaluation', 0, NULL, NULL),
(5217, 836, 6, 'Aktivieren', 0, NULL, NULL),
(5218, 868, 6, 'Evaluieren', 0, NULL, NULL),
(5219, 849, 6, 'Schlüsselleistungsindikator', 0, NULL, NULL),
(5220, 850, 6, 'Minimalwert', 0, NULL, NULL),
(5221, 851, 6, 'Maximalwert', 0, NULL, NULL),
(5222, 852, 6, 'Als Standard definieren', 0, NULL, NULL),
(5223, 888, 6, 'Bewertungs-Abgabedatum', 0, NULL, NULL),
(5224, 892, 6, 'Gesamtbewertung', 0, NULL, NULL),
(5225, 889, 6, 'Vollständig', 0, NULL, NULL),
(5226, 899, 6, 'Bewertung', 0, NULL, NULL),
(5227, 848, 6, 'Schlüsselleistungsindikatoren für die Jobbezeichnung', 0, NULL, NULL),
(5228, 855, 6, 'Minimalbewertung', 0, NULL, NULL),
(5229, 856, 6, 'Maximalbewertung', 0, NULL, NULL),
(5230, 857, 6, 'Standardskalierung einstellen', 0, NULL, NULL),
(5231, 875, 6, 'Inaktiv', 0, NULL, NULL),
(5232, 870, 6, 'Aktiviert', 0, NULL, NULL),
(5233, 841, 6, 'Ohne Schlüsselleistungsindizes kann keine Bewertung aktiviert werden', 0, NULL, NULL),
(5234, 840, 6, 'Es kann keine Bewertung für Mitarbeiter aktiviert werden, die keine Berufsbezeichnung und/oder Unterabteilung besitzen', 0, NULL, NULL),
(5235, 871, 6, 'In Bearbeitung', 0, NULL, NULL),
(5236, 872, 6, 'Abgeschlossen', 0, NULL, NULL),
(5237, 832, 4, 'Add Review', 0, NULL, NULL),
(5238, 931, 4, 'April', 0, NULL, NULL),
(5239, 935, 4, 'August', 0, NULL, NULL),
(5240, 767, 4, 'Current Status', 0, NULL, NULL),
(5241, 939, 4, 'December', 0, NULL, NULL),
(5242, 880, 4, 'Delete', 0, NULL, NULL),
(5243, 929, 4, 'February', 0, NULL, NULL),
(5244, 958, 4, 'Full Name', 0, NULL, NULL),
(5245, 928, 4, 'January', 0, NULL, NULL),
(5246, 934, 4, 'July', 0, NULL, NULL),
(5247, 933, 4, 'June', 0, NULL, NULL),
(5248, 930, 4, 'March', 0, NULL, NULL),
(5249, 932, 4, 'May', 0, NULL, NULL),
(5250, 938, 4, 'November', 0, NULL, NULL),
(5251, 937, 4, 'October', 0, NULL, NULL),
(5252, 936, 4, 'September', 0, NULL, NULL),
(5253, 963, 4, 'Invalid', 0, NULL, NULL),
(5254, 951, 4, 'Accepts .docx, .doc, .odt, .pdf, .rtf, .txt up to 1MB', 0, NULL, NULL),
(5255, 773, 4, 'Keywords', 0, NULL, NULL),
(5256, 789, 4, 'Resume', 0, NULL, NULL),
(5257, 847, 4, 'Performance Trackers', 0, NULL, NULL),
(5258, 845, 4, 'Add Performance Tracker', 0, NULL, NULL),
(5259, 882, 4, 'Log', 0, NULL, NULL),
(5260, 873, 4, 'Reviewer', 0, NULL, NULL),
(5261, 862, 4, 'Added Date', 0, NULL, NULL),
(5262, 861, 4, 'Modified Date', 0, NULL, NULL),
(5263, 846, 4, 'Employee cannot be assigned as his own reviewer', 0, NULL, NULL),
(5264, 863, 4, 'Tracker', 0, NULL, NULL),
(5265, 843, 4, 'Tracker Name', 0, NULL, NULL),
(5266, 901, 4, 'Max', 0, NULL, NULL),
(5267, 900, 4, 'Min', 0, NULL, NULL),
(5268, 954, 4, 'Active', 0, NULL, NULL),
(5269, 790, 4, 'Add Candidate', 0, NULL, NULL),
(5270, 778, 4, 'Application Initiated', 0, NULL, NULL),
(5271, 777, 4, 'Candidate', 0, NULL, NULL),
(5272, 772, 4, 'Candidate Name', 0, NULL, NULL),
(5273, 955, 4, 'Closed', 0, NULL, NULL),
(5274, 774, 4, 'Date of Application', 0, NULL, NULL),
(5275, 796, 4, 'Decline Offer', 0, NULL, NULL),
(5276, 797, 4, 'Hire', 0, NULL, NULL),
(5277, 823, 4, 'Hired', 0, NULL, NULL),
(5278, 771, 4, 'Hiring Manager', 0, NULL, NULL),
(5279, 782, 4, 'Interview Failed', 0, NULL, NULL),
(5280, 781, 4, 'Interview Passed', 0, NULL, NULL),
(5281, 780, 4, 'Interview Scheduled', 0, NULL, NULL),
(5282, 764, 4, 'Interview Title', 0, NULL, NULL),
(5283, 783, 4, 'Job Offered', 0, NULL, NULL),
(5284, 799, 4, 'Job Vacancy', 0, NULL, NULL),
(5285, 785, 4, 'Manual', 0, NULL, NULL),
(5286, 794, 4, 'Mark Interview Failed', 0, NULL, NULL),
(5287, 795, 4, 'Mark Interview Passed', 0, NULL, NULL),
(5288, 775, 4, 'Method of Application', 0, NULL, NULL),
(5289, 806, 4, 'Number of Positions', 0, NULL, NULL),
(5290, 784, 4, 'Offer Declined', 0, NULL, NULL),
(5291, 786, 4, 'Online', 0, NULL, NULL),
(5292, 768, 4, 'Performed Action', 0, NULL, NULL),
(5293, 769, 4, 'Performed Date', 0, NULL, NULL),
(5294, 807, 4, 'RSS Feed URL', 0, NULL, NULL),
(5295, 765, 4, 'Schedule Interview', 0, NULL, NULL),
(5296, 766, 4, 'Shortlist', 0, NULL, NULL),
(5297, 779, 4, 'Shortlisted', 0, NULL, NULL),
(5298, 770, 4, 'Vacancy', 0, NULL, NULL),
(5299, 805, 4, 'Vacancy Name', 0, NULL, NULL),
(5300, 762, 4, 'View Action History', 0, NULL, NULL),
(5301, 808, 4, 'Web Page URL', 0, NULL, NULL),
(5302, 826, 4, 'Application Received', 0, NULL, NULL),
(5303, 898, 4, 'KPI', 0, NULL, NULL),
(5304, 835, 4, 'Due Date', 0, NULL, NULL),
(5305, 865, 4, 'Review Period', 0, NULL, NULL),
(5306, 867, 4, 'Review Status', 0, NULL, NULL),
(5307, 886, 4, 'Performance Review', 0, NULL, NULL),
(5308, 836, 4, 'Activate', 0, NULL, NULL),
(5309, 868, 4, 'Evaluate', 0, NULL, NULL),
(5310, 849, 4, 'Key Performance Indicator', 0, NULL, NULL),
(5311, 850, 4, 'Min Rate', 0, NULL, NULL),
(5312, 851, 4, 'Max Rate', 0, NULL, NULL),
(5313, 852, 4, 'Is Default', 0, NULL, NULL),
(5314, 888, 4, 'Review Due Date', 0, NULL, NULL),
(5315, 892, 4, 'Final Rating', 0, NULL, NULL),
(5316, 889, 4, 'Complete', 0, NULL, NULL),
(5317, 899, 4, 'Rating', 0, NULL, NULL),
(5318, 848, 4, 'Key Performance Indicators for Job Title', 0, NULL, NULL),
(5319, 855, 4, 'Minimum Rating', 0, NULL, NULL),
(5320, 856, 4, 'Maximum Rating', 0, NULL, NULL),
(5321, 857, 4, 'Make Default Scale', 0, NULL, NULL),
(5322, 875, 4, 'Inactive', 0, NULL, NULL),
(5323, 870, 4, 'Activated', 0, NULL, NULL),
(5324, 841, 4, 'Cannot activate review without KPIs', 0, NULL, NULL),
(5325, 840, 4, 'Cannot activate review for employees who doesn\'t have Job Title and/or Sub-Division', 0, NULL, NULL),
(5326, 871, 4, 'In Progress', 0, NULL, NULL),
(5327, 872, 4, 'Completed', 0, NULL, NULL),
(5328, 831, 4, 'Supervisor Reviewer', 0, NULL, NULL),
(5329, 976, 4, 'Purge Candidate Records', 0, NULL, NULL),
(5330, 980, 4, 'Selected Candidates', 0, NULL, NULL),
(5331, 787, 4, 'Contact Number', 0, NULL, NULL),
(5332, 788, 4, 'Consent to keep data', 0, NULL, NULL),
(5333, 924, 4, 'Translate', 0, NULL, NULL),
(5334, 926, 4, 'Add Language Package', 0, NULL, NULL),
(5335, 925, 4, 'Users will require translate texts manually after creating the language package.', 0, NULL, NULL),
(5336, 923, 4, 'Export', 0, NULL, NULL),
(5337, 832, 7, 'Agregar Comentario', 0, NULL, NULL),
(5338, 931, 7, 'Abril', 0, NULL, NULL),
(5339, 935, 7, 'Agosto', 0, NULL, NULL),
(5340, 767, 7, 'Estado actual', 0, NULL, NULL),
(5341, 939, 7, 'Diciembre', 0, NULL, NULL),
(5342, 880, 7, 'Eliminar', 0, NULL, NULL),
(5343, 929, 7, 'Febrero', 0, NULL, NULL),
(5344, 958, 7, 'Nombre Completo', 0, NULL, NULL),
(5345, 928, 7, 'Enero', 0, NULL, NULL),
(5346, 934, 7, 'Julio', 0, NULL, NULL),
(5347, 933, 7, 'Junio', 0, NULL, NULL),
(5348, 930, 7, 'Marzo', 0, NULL, NULL),
(5349, 932, 7, 'Mayo', 0, NULL, NULL),
(5350, 938, 7, 'Noviembre', 0, NULL, NULL),
(5351, 937, 7, 'Octubre', 0, NULL, NULL),
(5352, 936, 7, 'Septiembre', 0, NULL, NULL),
(5353, 963, 7, 'Inválido', 0, NULL, NULL),
(5354, 951, 7, 'Acepta. Docx,. Doc,. Odt,. Pdf,. Rtf, txt. Hasta 1MB', 0, NULL, NULL),
(5355, 773, 7, 'Palabras clave', 0, NULL, NULL),
(5356, 789, 7, 'Currículum Vitae', 0, NULL, NULL),
(5357, 847, 7, 'Rastreadores de desempeño', 0, NULL, NULL),
(5358, 882, 7, 'Registro', 0, NULL, NULL),
(5359, 873, 7, 'Auditor / Revisor', 0, NULL, NULL),
(5360, 862, 7, 'Fecha Agregada', 0, NULL, NULL),
(5361, 861, 7, 'Fecha Modificada', 0, NULL, NULL),
(5362, 846, 7, 'El empleado no puede ser asignado como su propio evaluador', 0, NULL, NULL),
(5363, 843, 7, 'Nombre de Búsqueda', 0, NULL, NULL),
(5364, 901, 7, 'Máximo', 0, NULL, NULL),
(5365, 900, 7, 'Mínimo', 0, NULL, NULL),
(5366, 954, 7, 'Activo', 0, NULL, NULL),
(5367, 790, 7, 'Agregar candidato', 0, NULL, NULL),
(5368, 778, 7, 'Solicitud iniciada', 0, NULL, NULL),
(5369, 777, 7, 'Postulante', 0, NULL, NULL),
(5370, 772, 7, 'Nombre del postulante', 0, NULL, NULL),
(5371, 955, 7, 'Cerrado', 0, NULL, NULL),
(5372, 774, 7, 'Fecha de la solicitud', 0, NULL, NULL),
(5373, 796, 7, 'Rechazar Ofrecimiento', 0, NULL, NULL),
(5374, 797, 7, 'Contratar', 0, NULL, NULL),
(5375, 823, 7, 'Contratado', 0, NULL, NULL),
(5376, 771, 7, 'Gerente de contrataciones', 0, NULL, NULL),
(5377, 782, 7, 'Entrevista no aprobada', 0, NULL, NULL),
(5378, 781, 7, 'Entrevista Exitosa', 0, NULL, NULL),
(5379, 780, 7, 'Entrevista programada', 0, NULL, NULL),
(5380, 764, 7, 'Título de la Entrevista', 0, NULL, NULL),
(5381, 783, 7, 'Oferta de trabajo', 0, NULL, NULL),
(5382, 799, 7, 'Puesto vacante', 0, NULL, NULL),
(5383, 785, 7, 'Manual', 0, NULL, NULL),
(5384, 794, 7, 'Marcar entrevista como no aprobada', 0, NULL, NULL),
(5385, 795, 7, 'Marcar entrevista como exitosa', 0, NULL, NULL),
(5386, 775, 7, 'Método de recepción de la solicitud', 0, NULL, NULL),
(5387, 806, 7, 'Número de vacantes', 0, NULL, NULL),
(5388, 784, 7, 'Ofrecimiento Rechazado', 0, NULL, NULL),
(5389, 786, 7, 'En línea', 0, NULL, NULL),
(5390, 768, 7, 'Acción realizada', 0, NULL, NULL),
(5391, 769, 7, 'Fecha de realización de la acción', 0, NULL, NULL),
(5392, 807, 7, 'URL del feed RSS', 0, NULL, NULL),
(5393, 765, 7, 'Agendar Entrevista', 0, NULL, NULL),
(5394, 766, 7, 'Preselección', 0, NULL, NULL),
(5395, 779, 7, 'Preseleccionado', 0, NULL, NULL),
(5396, 770, 7, 'Vacante', 0, NULL, NULL),
(5397, 805, 7, 'Nombre de la vacante', 0, NULL, NULL),
(5398, 762, 7, 'Ver el historial de actividad', 0, NULL, NULL),
(5399, 808, 7, 'Dirección de la Página Web', 0, NULL, NULL),
(5400, 826, 7, 'Postulación recibida.', 0, NULL, NULL),
(5401, 898, 7, 'Competencia', 0, NULL, NULL),
(5402, 835, 7, 'Fecha de vencimiento', 0, NULL, NULL),
(5403, 865, 7, 'Período de revisión', 0, NULL, NULL),
(5404, 867, 7, 'Estatus de evaluación', 0, NULL, NULL),
(5405, 886, 7, 'Revisión de desempeño', 0, NULL, NULL),
(5406, 836, 7, 'Activar', 0, NULL, NULL),
(5407, 868, 7, 'Evaluar', 0, NULL, NULL),
(5408, 849, 7, 'Competencias de desempeño', 0, NULL, NULL),
(5409, 850, 7, 'Puntuación mínima', 0, NULL, NULL),
(5410, 851, 7, 'Puntuación máxima', 0, NULL, NULL),
(5411, 852, 7, 'Es por defecto', 0, NULL, NULL),
(5412, 888, 7, 'Fecha de entrega final de la evaluación', 0, NULL, NULL),
(5413, 892, 7, 'Calificación Final', 0, NULL, NULL),
(5414, 889, 7, 'Finalizado', 0, NULL, NULL),
(5415, 899, 7, 'Promedio', 0, NULL, NULL),
(5416, 848, 7, 'Competencias para el Puesto de Trabajo seleccionado', 0, NULL, NULL),
(5417, 855, 7, 'Promedio mínimo', 0, NULL, NULL),
(5418, 856, 7, 'Promedio máximo', 0, NULL, NULL),
(5419, 857, 7, 'Hacer una escala por defecto', 0, NULL, NULL),
(5420, 875, 7, 'Inactivo', 0, NULL, NULL),
(5421, 870, 7, 'Activo', 0, NULL, NULL),
(5422, 841, 7, 'No se puede activar la revisión sin competencias', 0, NULL, NULL),
(5423, 840, 7, 'No se puede activar la revisión a un empleado que no posea un título de trabajo y / o subdivisión', 0, NULL, NULL),
(5424, 871, 7, 'En Progreso', 0, NULL, NULL),
(5425, 872, 7, 'Completado', 0, NULL, NULL),
(5426, 832, 425, 'Agregar Comentario', 0, NULL, NULL),
(5427, 931, 425, 'Abril', 0, NULL, NULL),
(5428, 935, 425, 'Agosto', 0, NULL, NULL),
(5429, 767, 425, 'Estado actual', 0, NULL, NULL),
(5430, 939, 425, 'Diciembre', 0, NULL, NULL),
(5431, 880, 425, 'Borrar', 0, NULL, NULL),
(5432, 929, 425, 'Febrero', 0, NULL, NULL),
(5433, 958, 425, 'Nombre completo', 0, NULL, NULL),
(5434, 928, 425, 'Enero', 0, NULL, NULL),
(5435, 934, 425, 'Julio', 0, NULL, NULL),
(5436, 933, 425, 'Junio', 0, NULL, NULL),
(5437, 930, 425, 'Marzo', 0, NULL, NULL),
(5438, 932, 425, 'Mayo', 0, NULL, NULL),
(5439, 938, 425, 'De noviembre', 0, NULL, NULL),
(5440, 937, 425, 'Octubre', 0, NULL, NULL),
(5441, 936, 425, 'Septiembre', 0, NULL, NULL),
(5442, 963, 425, 'Inválido', 0, NULL, NULL),
(5443, 951, 425, 'Acepta. Docx,. Doc,. Odt,. Pdf,. Rtf, txt. Hasta 1MB', 0, NULL, NULL),
(5444, 773, 425, 'Palabras clave', 0, NULL, NULL),
(5445, 789, 425, 'Reanudar', 0, NULL, NULL),
(5446, 901, 425, 'Max', 0, NULL, NULL),
(5447, 900, 425, 'Min', 0, NULL, NULL),
(5448, 954, 425, 'Activo', 0, NULL, NULL),
(5449, 790, 425, 'Añadir candidato', 0, NULL, NULL),
(5450, 778, 425, 'Iniciada la aplicación', 0, NULL, NULL),
(5451, 777, 425, 'Candidato', 0, NULL, NULL),
(5452, 772, 425, 'Nombre del candidato', 0, NULL, NULL),
(5453, 955, 425, 'Cerrado', 0, NULL, NULL),
(5454, 774, 425, 'Fecha de la solicitud', 0, NULL, NULL),
(5455, 796, 425, 'Rechazar una oferta', 0, NULL, NULL),
(5456, 797, 425, 'Contratar', 0, NULL, NULL),
(5457, 823, 425, 'Contratado', 0, NULL, NULL),
(5458, 771, 425, 'La contratación de gerente', 0, NULL, NULL),
(5459, 782, 425, 'Entrevista Error', 0, NULL, NULL),
(5460, 781, 425, 'Entrevista Pasado', 0, NULL, NULL),
(5461, 780, 425, 'Entrevista programada', 0, NULL, NULL),
(5462, 764, 425, 'Entrevista Título', 0, NULL, NULL),
(5463, 783, 425, 'Oferta de Empleo', 0, NULL, NULL),
(5464, 799, 425, 'Puesto vacante', 0, NULL, NULL),
(5465, 785, 425, 'Manual', 0, NULL, NULL),
(5466, 794, 425, 'Entrevista Marcos Error', 0, NULL, NULL),
(5467, 795, 425, 'Entrevista Marcos Pasado', 0, NULL, NULL),
(5468, 775, 425, 'Método de aplicación', 0, NULL, NULL),
(5469, 806, 425, 'Número de posiciones', 0, NULL, NULL),
(5470, 784, 425, 'Oferta Rehusó', 0, NULL, NULL),
(5471, 786, 425, 'En línea', 0, NULL, NULL),
(5472, 768, 425, 'Acción realizada', 0, NULL, NULL),
(5473, 769, 425, 'Fecha de realización', 0, NULL, NULL),
(5474, 807, 425, 'URL del feed RSS', 0, NULL, NULL),
(5475, 765, 425, 'Programa de entrevistas', 0, NULL, NULL),
(5476, 766, 425, 'Lista', 0, NULL, NULL),
(5477, 779, 425, 'Finalista', 0, NULL, NULL),
(5478, 770, 425, 'Vacante', 0, NULL, NULL),
(5479, 805, 425, 'Vacante Nombre', 0, NULL, NULL),
(5480, 762, 425, 'Ver el historial de Acción', 0, NULL, NULL),
(5481, 808, 425, 'Dirección de la Página Web', 0, NULL, NULL),
(5482, 826, 425, 'Recepción de la solicitud', 0, NULL, NULL),
(5483, 832, 426, 'Agregar Comentario', 0, NULL, NULL),
(5484, 931, 426, 'Abril', 0, NULL, NULL),
(5485, 935, 426, 'Agosto', 0, NULL, NULL),
(5486, 767, 426, 'Estado actual', 0, NULL, NULL),
(5487, 939, 426, 'Diciembre', 0, NULL, NULL),
(5488, 880, 426, 'Borrar', 0, NULL, NULL),
(5489, 929, 426, 'Febrero', 0, NULL, NULL),
(5490, 958, 426, 'Nombre completo', 0, NULL, NULL),
(5491, 928, 426, 'Enero', 0, NULL, NULL),
(5492, 934, 426, 'Julio', 0, NULL, NULL),
(5493, 933, 426, 'Junio', 0, NULL, NULL),
(5494, 930, 426, 'Marzo', 0, NULL, NULL),
(5495, 932, 426, 'Mayo', 0, NULL, NULL),
(5496, 938, 426, 'De noviembre', 0, NULL, NULL),
(5497, 937, 426, 'Octubre', 0, NULL, NULL),
(5498, 936, 426, 'Septiembre', 0, NULL, NULL),
(5499, 963, 426, 'Inválido', 0, NULL, NULL),
(5500, 951, 426, 'Acepta. Docx,. Doc,. Odt,. Pdf,. Rtf, txt. Hasta 1MB', 0, NULL, NULL),
(5501, 773, 426, 'Palabras clave', 0, NULL, NULL),
(5502, 789, 426, 'Reanudar', 0, NULL, NULL),
(5503, 901, 426, 'Max', 0, NULL, NULL),
(5504, 900, 426, 'Min', 0, NULL, NULL),
(5505, 954, 426, 'Activo', 0, NULL, NULL),
(5506, 790, 426, 'Añadir candidato', 0, NULL, NULL),
(5507, 778, 426, 'Iniciada la aplicación', 0, NULL, NULL),
(5508, 777, 426, 'Candidato', 0, NULL, NULL),
(5509, 772, 426, 'Nombre del candidato', 0, NULL, NULL),
(5510, 955, 426, 'Cerrado', 0, NULL, NULL),
(5511, 774, 426, 'Fecha de la solicitud', 0, NULL, NULL),
(5512, 796, 426, 'Rechazar una oferta', 0, NULL, NULL),
(5513, 797, 426, 'Contratar', 0, NULL, NULL),
(5514, 823, 426, 'Contratado', 0, NULL, NULL),
(5515, 771, 426, 'Gerente de Contractacion', 0, NULL, NULL),
(5516, 782, 426, 'Error de Entrevista', 0, NULL, NULL),
(5517, 781, 426, 'Entrevista Pasada', 0, NULL, NULL),
(5518, 780, 426, 'Entrevista programada', 0, NULL, NULL),
(5519, 764, 426, 'Título de Entrevista', 0, NULL, NULL),
(5520, 783, 426, 'Oferta de Empleo', 0, NULL, NULL),
(5521, 799, 426, 'Puesto vacante', 0, NULL, NULL),
(5522, 785, 426, 'Manual', 0, NULL, NULL),
(5523, 794, 426, 'Entrevista Marcada Fallida', 0, NULL, NULL),
(5524, 795, 426, 'Entrevista Marcada Pasado', 0, NULL, NULL),
(5525, 775, 426, 'Método de aplicación', 0, NULL, NULL),
(5526, 806, 426, 'Número de posiciones', 0, NULL, NULL),
(5527, 784, 426, 'Oferta Declinada', 0, NULL, NULL),
(5528, 786, 426, 'En línea', 0, NULL, NULL),
(5529, 768, 426, 'Acción realizada', 0, NULL, NULL),
(5530, 769, 426, 'Fecha de realización', 0, NULL, NULL),
(5531, 807, 426, 'URL del feed RSS', 0, NULL, NULL),
(5532, 765, 426, 'Programar entrevista', 0, NULL, NULL),
(5533, 766, 426, 'Lisa de seleccionados', 0, NULL, NULL),
(5534, 779, 426, 'Seleccionado', 0, NULL, NULL),
(5535, 770, 426, 'Vacante', 0, NULL, NULL),
(5536, 805, 426, 'Nombre de Vacante', 0, NULL, NULL),
(5537, 762, 426, 'Ver el historial de Acción', 0, NULL, NULL),
(5538, 808, 426, 'Dirección de la Página Web', 0, NULL, NULL),
(5539, 826, 426, 'Recepción de la Applicacion', 0, NULL, NULL),
(5540, 832, 8, 'Agregar Comentario', 0, NULL, NULL),
(5541, 931, 8, 'Abril', 0, NULL, NULL),
(5542, 935, 8, 'Agosto', 0, NULL, NULL),
(5543, 767, 8, 'Estado actual', 0, NULL, NULL),
(5544, 939, 8, 'Diciembre', 0, NULL, NULL),
(5545, 880, 8, 'Eliminar', 0, NULL, NULL),
(5546, 929, 8, 'Febrero', 0, NULL, NULL),
(5547, 958, 8, 'Nombre Completo', 0, NULL, NULL),
(5548, 928, 8, 'Enero', 0, NULL, NULL),
(5549, 934, 8, 'Julio', 0, NULL, NULL),
(5550, 933, 8, 'Junio', 0, NULL, NULL),
(5551, 930, 8, 'Marzo', 0, NULL, NULL),
(5552, 932, 8, 'Mayo', 0, NULL, NULL),
(5553, 938, 8, 'Noviembre', 0, NULL, NULL),
(5554, 937, 8, 'Octubre', 0, NULL, NULL),
(5555, 936, 8, 'Septiembre', 0, NULL, NULL),
(5556, 963, 8, 'Inválido', 0, NULL, NULL),
(5557, 951, 8, 'Acepta. Docx,. Doc,. Odt,. Pdf,. Rtf, txt. Hasta 1MB', 0, NULL, NULL),
(5558, 773, 8, 'Palabras clave', 0, NULL, NULL),
(5559, 789, 8, 'Currículum Vitae', 0, NULL, NULL),
(5560, 882, 8, 'Registro', 0, NULL, NULL),
(5561, 873, 8, 'Auditor / Revisor', 0, NULL, NULL),
(5562, 862, 8, 'Fecha Agregada', 0, NULL, NULL),
(5563, 861, 8, 'Fecha Modificada', 0, NULL, NULL),
(5564, 846, 8, 'El empleado no puede ser asignado como su propio evaluador', 0, NULL, NULL),
(5565, 843, 8, 'Nombre de Búsqueda', 0, NULL, NULL),
(5566, 901, 8, 'Máximo', 0, NULL, NULL),
(5567, 900, 8, 'Mínimo', 0, NULL, NULL),
(5568, 954, 8, 'Activo', 0, NULL, NULL),
(5569, 790, 8, 'Agregar candidato', 0, NULL, NULL),
(5570, 778, 8, 'Solicitud iniciada', 0, NULL, NULL),
(5571, 777, 8, 'Postulante', 0, NULL, NULL),
(5572, 772, 8, 'Nombre del postulante', 0, NULL, NULL),
(5573, 955, 8, 'Cerrado', 0, NULL, NULL),
(5574, 774, 8, 'Fecha de la solicitud', 0, NULL, NULL),
(5575, 796, 8, 'Rechazar Ofrecimiento', 0, NULL, NULL),
(5576, 797, 8, 'Contratar', 0, NULL, NULL),
(5577, 823, 8, 'Contratado', 0, NULL, NULL),
(5578, 771, 8, 'Gerente de contrataciones', 0, NULL, NULL),
(5579, 782, 8, 'Entrevista no aprobada', 0, NULL, NULL),
(5580, 781, 8, 'Entrevista Exitosa', 0, NULL, NULL),
(5581, 780, 8, 'Entrevista programada', 0, NULL, NULL),
(5582, 764, 8, 'Título de la Entrevista', 0, NULL, NULL),
(5583, 783, 8, 'Oferta de trabajo', 0, NULL, NULL),
(5584, 799, 8, 'Puesto vacante', 0, NULL, NULL),
(5585, 785, 8, 'Manual', 0, NULL, NULL),
(5586, 794, 8, 'Marcar entrevista como no aprobada', 0, NULL, NULL),
(5587, 795, 8, 'Marcar entrevista como exitosa', 0, NULL, NULL),
(5588, 775, 8, 'Método de recepción de la solicitud', 0, NULL, NULL),
(5589, 806, 8, 'Número de vacantes', 0, NULL, NULL),
(5590, 784, 8, 'Ofrecimiento Rechazado', 0, NULL, NULL),
(5591, 786, 8, 'En línea', 0, NULL, NULL),
(5592, 768, 8, 'Acción realizada', 0, NULL, NULL),
(5593, 769, 8, 'Fecha de realización de la acción', 0, NULL, NULL),
(5594, 807, 8, 'URL del feed RSS', 0, NULL, NULL),
(5595, 765, 8, 'Agendar Entrevista', 0, NULL, NULL),
(5596, 766, 8, 'Preselección', 0, NULL, NULL),
(5597, 779, 8, 'Preseleccionado', 0, NULL, NULL),
(5598, 770, 8, 'Vacante', 0, NULL, NULL),
(5599, 805, 8, 'Nombre de la vacante', 0, NULL, NULL),
(5600, 762, 8, 'Ver el historial de actividad', 0, NULL, NULL),
(5601, 808, 8, 'Dirección de la Página Web', 0, NULL, NULL),
(5602, 826, 8, 'Postulación recibida.', 0, NULL, NULL),
(5603, 898, 8, 'Competencia', 0, NULL, NULL),
(5604, 835, 8, 'Fecha de vencimiento', 0, NULL, NULL),
(5605, 865, 8, 'Período de revisión', 0, NULL, NULL),
(5606, 867, 8, 'Estatus de evaluación', 0, NULL, NULL),
(5607, 886, 8, 'Revisión de desempeño', 0, NULL, NULL),
(5608, 836, 8, 'Activar', 0, NULL, NULL),
(5609, 868, 8, 'Evaluar', 0, NULL, NULL),
(5610, 849, 8, 'Competencias de desempeño', 0, NULL, NULL),
(5611, 850, 8, 'Puntuación mínima', 0, NULL, NULL),
(5612, 851, 8, 'Puntuación máxima', 0, NULL, NULL),
(5613, 852, 8, 'Es por defecto', 0, NULL, NULL),
(5614, 888, 8, 'Fecha de entrega final de la evaluación', 0, NULL, NULL),
(5615, 892, 8, 'Calificación Final', 0, NULL, NULL),
(5616, 889, 8, 'Finalizado', 0, NULL, NULL),
(5617, 899, 8, 'Promedio', 0, NULL, NULL),
(5618, 848, 8, 'Competencias para el Puesto de Trabajo seleccionado', 0, NULL, NULL),
(5619, 855, 8, 'Promedio mínimo', 0, NULL, NULL),
(5620, 856, 8, 'Promedio máximo', 0, NULL, NULL),
(5621, 857, 8, 'Hacer una escala por defecto', 0, NULL, NULL),
(5622, 875, 8, 'Inactivo', 0, NULL, NULL),
(5623, 870, 8, 'Activo', 0, NULL, NULL),
(5624, 841, 8, 'No se puede activar la revisión sin competencias', 0, NULL, NULL),
(5625, 840, 8, 'No se puede activar la revisión a un empleado que no posea un título de trabajo y / o subdivisión', 0, NULL, NULL),
(5626, 871, 8, 'En Progreso', 0, NULL, NULL),
(5627, 872, 8, 'Completado', 0, NULL, NULL),
(5628, 832, 445, 'Agregar Comentario', 0, NULL, NULL),
(5629, 931, 445, 'Abril', 0, NULL, NULL),
(5630, 935, 445, 'Agosto', 0, NULL, NULL),
(5631, 767, 445, 'Estado actual', 0, NULL, NULL),
(5632, 939, 445, 'Diciembre', 0, NULL, NULL),
(5633, 880, 445, 'Borrar', 0, NULL, NULL),
(5634, 929, 445, 'Febrero', 0, NULL, NULL),
(5635, 958, 445, 'Nombre completo', 0, NULL, NULL),
(5636, 928, 445, 'Enero', 0, NULL, NULL),
(5637, 934, 445, 'Julio', 0, NULL, NULL),
(5638, 933, 445, 'Junio', 0, NULL, NULL),
(5639, 930, 445, 'Marzo', 0, NULL, NULL),
(5640, 932, 445, 'Mayo', 0, NULL, NULL),
(5641, 938, 445, 'De noviembre', 0, NULL, NULL),
(5642, 937, 445, 'Octubre', 0, NULL, NULL),
(5643, 936, 445, 'Septiembre', 0, NULL, NULL),
(5644, 963, 445, 'Inválido', 0, NULL, NULL),
(5645, 951, 445, 'Acepta. Docx,. Doc,. Odt,. Pdf,. Rtf, txt. Hasta 1MB', 0, NULL, NULL),
(5646, 773, 445, 'Palabras clave', 0, NULL, NULL),
(5647, 789, 445, 'Reanudar', 0, NULL, NULL),
(5648, 901, 445, 'Max', 0, NULL, NULL),
(5649, 900, 445, 'Min', 0, NULL, NULL),
(5650, 954, 445, 'Activo', 0, NULL, NULL),
(5651, 790, 445, 'Añadir candidato', 0, NULL, NULL),
(5652, 778, 445, 'Iniciada la aplicación', 0, NULL, NULL),
(5653, 777, 445, 'Candidato', 0, NULL, NULL),
(5654, 772, 445, 'Nombre del candidato', 0, NULL, NULL),
(5655, 955, 445, 'Cerrado', 0, NULL, NULL),
(5656, 774, 445, 'Fecha de la solicitud', 0, NULL, NULL),
(5657, 796, 445, 'Rechazar una oferta', 0, NULL, NULL),
(5658, 797, 445, 'Contratar', 0, NULL, NULL),
(5659, 823, 445, 'Contratado', 0, NULL, NULL),
(5660, 771, 445, 'La contratación de gerente', 0, NULL, NULL),
(5661, 782, 445, 'Entrevista Error', 0, NULL, NULL),
(5662, 781, 445, 'Entrevista Pasado', 0, NULL, NULL),
(5663, 780, 445, 'Entrevista programada', 0, NULL, NULL),
(5664, 764, 445, 'Entrevista Título', 0, NULL, NULL),
(5665, 783, 445, 'Oferta de Empleo', 0, NULL, NULL),
(5666, 799, 445, 'Puesto vacante', 0, NULL, NULL),
(5667, 785, 445, 'Manual', 0, NULL, NULL),
(5668, 794, 445, 'Entrevista Marcos Error', 0, NULL, NULL),
(5669, 795, 445, 'Entrevista Marcos Pasado', 0, NULL, NULL),
(5670, 775, 445, 'Método de aplicación', 0, NULL, NULL),
(5671, 806, 445, 'Número de posiciones', 0, NULL, NULL),
(5672, 784, 445, 'Oferta Rehusó', 0, NULL, NULL),
(5673, 786, 445, 'En línea', 0, NULL, NULL),
(5674, 768, 445, 'Acción realizada', 0, NULL, NULL),
(5675, 769, 445, 'Fecha de realización', 0, NULL, NULL),
(5676, 807, 445, 'URL del feed RSS', 0, NULL, NULL),
(5677, 765, 445, 'Programa de entrevistas', 0, NULL, NULL),
(5678, 766, 445, 'Lista', 0, NULL, NULL),
(5679, 779, 445, 'Finalista', 0, NULL, NULL),
(5680, 770, 445, 'Vacante', 0, NULL, NULL),
(5681, 805, 445, 'Vacante Nombre', 0, NULL, NULL),
(5682, 762, 445, 'Ver el historial de Acción', 0, NULL, NULL),
(5683, 808, 445, 'Dirección de la Página Web', 0, NULL, NULL),
(5684, 826, 445, 'Recepción de la solicitud', 0, NULL, NULL),
(5685, 832, 5, 'Ajouter une Évaluation', 0, NULL, NULL),
(5686, 931, 5, 'Avril', 0, NULL, NULL),
(5687, 935, 5, 'Août', 0, NULL, NULL),
(5688, 767, 5, 'Statut actuel', 0, NULL, NULL),
(5689, 939, 5, 'Décembre', 0, NULL, NULL),
(5690, 880, 5, 'Supprimer', 0, NULL, NULL),
(5691, 929, 5, 'Février', 0, NULL, NULL),
(5692, 958, 5, 'Nom complet', 0, NULL, NULL),
(5693, 928, 5, 'Janvier', 0, NULL, NULL),
(5694, 934, 5, 'Juillet', 0, NULL, NULL),
(5695, 933, 5, 'Juin', 0, NULL, NULL),
(5696, 930, 5, 'Mars', 0, NULL, NULL),
(5697, 932, 5, 'Mai', 0, NULL, NULL),
(5698, 938, 5, 'Novembre', 0, NULL, NULL),
(5699, 937, 5, 'Octobre', 0, NULL, NULL),
(5700, 936, 5, 'Septembre', 0, NULL, NULL),
(5701, 963, 5, 'Non Valide', 0, NULL, NULL),
(5702, 951, 5, 'Accepte les extensions .docx, .doc, .odt, .pdf, .rtf, .txt jusqu\'à 1 Mo', 0, NULL, NULL),
(5703, 773, 5, 'Mots-clés', 0, NULL, NULL),
(5704, 789, 5, 'CV', 0, NULL, NULL),
(5705, 847, 5, 'Gestionnaires de Performance', 0, NULL, NULL),
(5706, 882, 5, 'Historique', 0, NULL, NULL),
(5707, 873, 5, 'Examinateur', 0, NULL, NULL),
(5708, 862, 5, 'Date ajoutée', 0, NULL, NULL),
(5709, 861, 5, 'Date modifiée', 0, NULL, NULL),
(5710, 846, 5, 'L\'employé ne peut être assigné comme son propre examinateur', 0, NULL, NULL),
(5711, 843, 5, 'Nom du gestionnaire', 0, NULL, NULL),
(5712, 901, 5, 'Max', 0, NULL, NULL),
(5713, 900, 5, 'Min', 0, NULL, NULL),
(5714, 954, 5, 'Actif', 0, NULL, NULL),
(5715, 790, 5, 'Ajouter candidat', 0, NULL, NULL),
(5716, 778, 5, 'Candidature démarrée', 0, NULL, NULL),
(5717, 777, 5, 'Candidat', 0, NULL, NULL),
(5718, 772, 5, 'Nom du candidat', 0, NULL, NULL),
(5719, 955, 5, 'Terminé', 0, NULL, NULL),
(5720, 774, 5, 'Date de la soumission', 0, NULL, NULL),
(5721, 796, 5, 'Décliner l\'offre', 0, NULL, NULL),
(5722, 797, 5, 'Embaucher', 0, NULL, NULL),
(5723, 823, 5, 'Embauché', 0, NULL, NULL),
(5724, 771, 5, 'Responsable du Recrutement', 0, NULL, NULL),
(5725, 782, 5, 'Entretien négatif', 0, NULL, NULL),
(5726, 781, 5, 'Entretien positif', 0, NULL, NULL),
(5727, 780, 5, 'Entretien programmé', 0, NULL, NULL),
(5728, 764, 5, 'Titre de l\'entretien', 0, NULL, NULL),
(5729, 783, 5, 'Poste proposé', 0, NULL, NULL),
(5730, 799, 5, 'Poste à pourvoir', 0, NULL, NULL),
(5731, 785, 5, 'Manuel', 0, NULL, NULL),
(5732, 794, 5, 'Marquer l\'entretien comme ayant échoué', 0, NULL, NULL),
(5733, 795, 5, 'Marquer l\'entretien comme réussi', 0, NULL, NULL),
(5734, 775, 5, 'Méthode de candidature', 0, NULL, NULL),
(5735, 806, 5, 'Nombre de Postes', 0, NULL, NULL),
(5736, 784, 5, 'Offre déclinée', 0, NULL, NULL),
(5737, 786, 5, 'En ligne', 0, NULL, NULL),
(5738, 768, 5, 'Action effectuée', 0, NULL, NULL),
(5739, 769, 5, 'Date de réalisation', 0, NULL, NULL),
(5740, 807, 5, 'URL du flux RSS', 0, NULL, NULL),
(5741, 765, 5, 'Programmer entretien', 0, NULL, NULL),
(5742, 766, 5, 'Pré-sélection', 0, NULL, NULL),
(5743, 779, 5, 'Pré-sélectionné', 0, NULL, NULL),
(5744, 770, 5, 'A pourvoir', 0, NULL, NULL),
(5745, 805, 5, 'Nom du poste à pourvoir', 0, NULL, NULL),
(5746, 762, 5, 'Afficher l\'historique d\'action', 0, NULL, NULL),
(5747, 808, 5, 'URL de la page Web', 0, NULL, NULL),
(5748, 826, 5, 'Candidature reçue', 0, NULL, NULL),
(5749, 898, 5, 'ICP', 0, NULL, NULL),
(5750, 835, 5, 'Date d\'Échéance', 0, NULL, NULL),
(5751, 865, 5, 'Période d\'Évaluation', 0, NULL, NULL),
(5752, 867, 5, 'Statut de l\'Évaluation', 0, NULL, NULL),
(5753, 886, 5, 'Évaluation de Performance', 0, NULL, NULL),
(5754, 836, 5, 'Activer', 0, NULL, NULL),
(5755, 868, 5, 'Evaluer', 0, NULL, NULL),
(5756, 849, 5, 'Indicateur Clé de Performance', 0, NULL, NULL),
(5757, 850, 5, 'Note Min', 0, NULL, NULL),
(5758, 851, 5, 'Note Max', 0, NULL, NULL),
(5759, 852, 5, 'Par défaut', 0, NULL, NULL),
(5760, 888, 5, 'Date d\'Échéance de l\'Évaluation', 0, NULL, NULL),
(5761, 892, 5, 'Note finale', 0, NULL, NULL),
(5762, 889, 5, 'Terminée', 0, NULL, NULL),
(5763, 899, 5, 'Note', 0, NULL, NULL),
(5764, 848, 5, 'Indicateurs Clés de performance pour le poste', 0, NULL, NULL),
(5765, 855, 5, 'Note minimum', 0, NULL, NULL),
(5766, 856, 5, 'Note maximale', 0, NULL, NULL),
(5767, 857, 5, 'Echelle par défault', 0, NULL, NULL),
(5768, 875, 5, 'Inactif', 0, NULL, NULL),
(5769, 870, 5, 'Activée', 0, NULL, NULL),
(5770, 841, 5, 'Impossible d\'activer l\'évaluation sans ICP', 0, NULL, NULL),
(5771, 840, 5, 'Impossible d\'activer l\'évaluation pour les employés dont le poste et/ou la division n\'a pas été renseigné', 0, NULL, NULL),
(5772, 871, 5, 'En Cours', 0, NULL, NULL),
(5773, 872, 5, 'Terminée', 0, NULL, NULL),
(5774, 832, 225, 'Ajouter un avis', 0, NULL, NULL),
(5775, 931, 225, 'Avril', 0, NULL, NULL),
(5776, 935, 225, 'Août', 0, NULL, NULL),
(5777, 767, 225, 'Statut actuel', 0, NULL, NULL),
(5778, 939, 225, 'Décembre', 0, NULL, NULL),
(5779, 880, 225, 'Effacer', 0, NULL, NULL),
(5780, 929, 225, 'Février', 0, NULL, NULL),
(5781, 958, 225, 'Nom complet', 0, NULL, NULL),
(5782, 928, 225, 'Janvier', 0, NULL, NULL),
(5783, 934, 225, 'Juillet', 0, NULL, NULL),
(5784, 933, 225, 'Juin', 0, NULL, NULL),
(5785, 930, 225, 'Mars', 0, NULL, NULL),
(5786, 932, 225, 'Mai', 0, NULL, NULL),
(5787, 211, 225, 'Lundi', 0, NULL, NULL),
(5788, 938, 225, 'Novembre', 0, NULL, NULL),
(5789, 937, 225, 'Octobre', 0, NULL, NULL),
(5790, 216, 225, 'Samedi', 0, NULL, NULL),
(5791, 936, 225, 'Septembre', 0, NULL, NULL),
(5792, 217, 225, 'Dimanche', 0, NULL, NULL),
(5793, 214, 225, 'Jeudi', 0, NULL, NULL),
(5794, 212, 225, 'Mardi', 0, NULL, NULL),
(5795, 213, 225, 'Mercredi', 0, NULL, NULL),
(5796, 963, 225, 'Invalide', 0, NULL, NULL),
(5797, 951, 225, 'Accepte. docx,. doc,. odt,. pdf,. rtf,. txt jusqu\'à 1 Mo', 0, NULL, NULL),
(5798, 773, 225, 'Mots-clés', 0, NULL, NULL),
(5799, 789, 225, 'Reprendre', 0, NULL, NULL),
(5800, 308, 225, 'Ven.', 0, NULL, NULL),
(5801, 304, 225, 'Lun.', 0, NULL, NULL),
(5802, 309, 225, 'Sam', 0, NULL, NULL),
(5803, 303, 225, 'Dim.', 0, NULL, NULL),
(5804, 307, 225, 'Jeu.', 0, NULL, NULL),
(5805, 305, 225, 'Mar.', 0, NULL, NULL),
(5806, 306, 225, 'Mer.', 0, NULL, NULL),
(5807, 901, 225, 'Max', 0, NULL, NULL),
(5808, 900, 225, 'Min', 0, NULL, NULL),
(5809, 954, 225, 'Actif', 0, NULL, NULL),
(5810, 790, 225, 'Ajouter candidat', 0, NULL, NULL),
(5811, 778, 225, 'Candidature soumise', 0, NULL, NULL),
(5812, 777, 225, 'Candidat', 0, NULL, NULL),
(5813, 772, 225, 'Nom du candidat', 0, NULL, NULL),
(5814, 955, 225, 'Fermé', 0, NULL, NULL),
(5815, 774, 225, 'Date de la demande', 0, NULL, NULL),
(5816, 796, 225, 'Décliner l\'offre', 0, NULL, NULL),
(5817, 797, 225, 'Embaucher', 0, NULL, NULL),
(5818, 823, 225, 'Embauché', 0, NULL, NULL),
(5819, 771, 225, 'Manager qui recrute', 0, NULL, NULL),
(5820, 782, 225, 'Entretien négatif', 0, NULL, NULL),
(5821, 781, 225, 'Entretien positif', 0, NULL, NULL),
(5822, 780, 225, 'Entretien prévu', 0, NULL, NULL),
(5823, 764, 225, 'Titre de l\'entretien', 0, NULL, NULL),
(5824, 783, 225, 'Poste proposé', 0, NULL, NULL),
(5825, 799, 225, 'Poste vacant', 0, NULL, NULL),
(5826, 785, 225, 'Manuel', 0, NULL, NULL),
(5827, 794, 225, 'Marquer entretien négatif', 0, NULL, NULL),
(5828, 795, 225, 'Marquer entretien positif', 0, NULL, NULL),
(5829, 775, 225, 'Méthode de candidature', 0, NULL, NULL),
(5830, 806, 225, 'Nombre de postes', 0, NULL, NULL),
(5831, 784, 225, 'Refus de l\'offre', 0, NULL, NULL),
(5832, 786, 225, 'En ligne', 0, NULL, NULL),
(5833, 768, 225, 'Action effectuée', 0, NULL, NULL),
(5834, 769, 225, 'Date de réalisation', 0, NULL, NULL),
(5835, 807, 225, 'URL de flux RSS', 0, NULL, NULL),
(5836, 765, 225, 'Entretien programmé', 0, NULL, NULL),
(5837, 766, 225, 'Shortlist', 0, NULL, NULL),
(5838, 779, 225, 'Mis dans la shortlist', 0, NULL, NULL),
(5839, 770, 225, 'Vacant', 0, NULL, NULL),
(5840, 805, 225, 'Nom du poste vacant', 0, NULL, NULL),
(5841, 762, 225, 'Afficher l\'historique d\'action', 0, NULL, NULL),
(5842, 808, 225, 'URL de la page Web', 0, NULL, NULL),
(5843, 826, 225, 'Candidature reçue', 0, NULL, NULL),
(5844, 832, 285, 'Tambahkan Tinjauan', 0, NULL, NULL),
(5845, 931, 285, 'April', 0, NULL, NULL);
INSERT INTO `ohrm_i18n_translate` (`id`, `lang_string_id`, `language_id`, `value`, `customized`, `version`, `modified_at`) VALUES
(5846, 935, 285, 'Agustus', 0, NULL, NULL),
(5847, 767, 285, 'Status Sekarang', 0, NULL, NULL),
(5848, 939, 285, 'Desember', 0, NULL, NULL),
(5849, 880, 285, 'Hapus', 0, NULL, NULL),
(5850, 929, 285, 'Februari', 0, NULL, NULL),
(5851, 215, 285, 'Jumat', 0, NULL, NULL),
(5852, 958, 285, 'Nama Lengkap', 0, NULL, NULL),
(5853, 928, 285, 'Januari', 0, NULL, NULL),
(5854, 934, 285, 'Juli', 0, NULL, NULL),
(5855, 933, 285, 'Juni', 0, NULL, NULL),
(5856, 930, 285, 'Maret', 0, NULL, NULL),
(5857, 932, 285, 'Mei', 0, NULL, NULL),
(5858, 211, 285, 'Senin', 0, NULL, NULL),
(5859, 938, 285, 'November', 0, NULL, NULL),
(5860, 937, 285, 'Oktober', 0, NULL, NULL),
(5861, 216, 285, 'Sabtu', 0, NULL, NULL),
(5862, 936, 285, 'September', 0, NULL, NULL),
(5863, 217, 285, 'Minggu', 0, NULL, NULL),
(5864, 214, 285, 'Kamis', 0, NULL, NULL),
(5865, 212, 285, 'Selasa', 0, NULL, NULL),
(5866, 213, 285, 'Rabu', 0, NULL, NULL),
(5867, 963, 285, 'Cacat', 0, NULL, NULL),
(5868, 951, 285, 'Menerima. docx,. doc,. odt,. pdf,. rtf, txt atas. Untuk 1MB', 0, NULL, NULL),
(5869, 773, 285, 'Kata kunci', 0, NULL, NULL),
(5870, 789, 285, 'Resume', 0, NULL, NULL),
(5871, 308, 285, 'Jumat', 0, NULL, NULL),
(5872, 304, 285, 'Senin', 0, NULL, NULL),
(5873, 309, 285, 'Sabtu', 0, NULL, NULL),
(5874, 303, 285, 'Minggu', 0, NULL, NULL),
(5875, 307, 285, 'Kamis', 0, NULL, NULL),
(5876, 305, 285, 'Selasa', 0, NULL, NULL),
(5877, 306, 285, 'Rabu', 0, NULL, NULL),
(5878, 901, 285, 'Max', 0, NULL, NULL),
(5879, 900, 285, 'Min', 0, NULL, NULL),
(5880, 954, 285, 'Aktif', 0, NULL, NULL),
(5881, 790, 285, 'Tambahkan Calon', 0, NULL, NULL),
(5882, 778, 285, 'Aplikasi Diprakarsai', 0, NULL, NULL),
(5883, 777, 285, 'Calon', 0, NULL, NULL),
(5884, 772, 285, 'Calon Nama', 0, NULL, NULL),
(5885, 955, 285, 'Tutup', 0, NULL, NULL),
(5886, 774, 285, 'Tanggal Aplikasi', 0, NULL, NULL),
(5887, 796, 285, 'Tolak Penawaran', 0, NULL, NULL),
(5888, 797, 285, 'Menyewa', 0, NULL, NULL),
(5889, 823, 285, 'Dipekerjakan', 0, NULL, NULL),
(5890, 771, 285, 'Mempekerjakan Manajer', 0, NULL, NULL),
(5891, 782, 285, 'Wawancara Gagal', 0, NULL, NULL),
(5892, 781, 285, 'Wawancara Lulus', 0, NULL, NULL),
(5893, 780, 285, 'Wawancara Terjadwal', 0, NULL, NULL),
(5894, 764, 285, 'Wawancara Judul', 0, NULL, NULL),
(5895, 783, 285, 'Job Ditawarkan', 0, NULL, NULL),
(5896, 799, 285, 'Lowongan Kerja', 0, NULL, NULL),
(5897, 785, 285, 'Pedoman', 0, NULL, NULL),
(5898, 794, 285, 'Wawancara Mark Gagal', 0, NULL, NULL),
(5899, 795, 285, 'Wawancara Mark Lulus', 0, NULL, NULL),
(5900, 775, 285, 'Metode Aplikasi', 0, NULL, NULL),
(5901, 806, 285, 'Jumlah Posisi', 0, NULL, NULL),
(5902, 784, 285, 'Penawaran Ditolak', 0, NULL, NULL),
(5903, 786, 285, 'Online', 0, NULL, NULL),
(5904, 768, 285, 'Dilakukan Aksi', 0, NULL, NULL),
(5905, 769, 285, 'Dilakukan Tanggal', 0, NULL, NULL),
(5906, 807, 285, 'RSS Feed URL', 0, NULL, NULL),
(5907, 765, 285, 'Jadwal Wawancara', 0, NULL, NULL),
(5908, 766, 285, 'Daftar singkat', 0, NULL, NULL),
(5909, 779, 285, 'Terpilih', 0, NULL, NULL),
(5910, 770, 285, 'Lowongan', 0, NULL, NULL),
(5911, 805, 285, 'Lowongan Nama', 0, NULL, NULL),
(5912, 762, 285, 'Lihat Riwayat Aksi', 0, NULL, NULL),
(5913, 808, 285, 'Web Page URL', 0, NULL, NULL),
(5914, 826, 285, 'Aplikasi Lamaran Diterima', 0, NULL, NULL),
(5915, 832, 291, 'レビューを追加', 0, NULL, NULL),
(5916, 931, 291, '4月', 0, NULL, NULL),
(5917, 935, 291, '8月', 0, NULL, NULL),
(5918, 767, 291, '現在の状態', 0, NULL, NULL),
(5919, 939, 291, '12月', 0, NULL, NULL),
(5920, 880, 291, '削除する', 0, NULL, NULL),
(5921, 929, 291, '2月', 0, NULL, NULL),
(5922, 215, 291, '金曜日', 0, NULL, NULL),
(5923, 958, 291, 'フルネーム', 0, NULL, NULL),
(5924, 928, 291, '1月', 0, NULL, NULL),
(5925, 934, 291, '7月', 0, NULL, NULL),
(5926, 933, 291, '6月', 0, NULL, NULL),
(5927, 930, 291, '3月', 0, NULL, NULL),
(5928, 932, 291, '5月', 0, NULL, NULL),
(5929, 211, 291, '月曜日', 0, NULL, NULL),
(5930, 938, 291, '11月', 0, NULL, NULL),
(5931, 937, 291, '10月', 0, NULL, NULL),
(5932, 216, 291, '土曜日', 0, NULL, NULL),
(5933, 936, 291, '9月', 0, NULL, NULL),
(5934, 217, 291, '日曜日', 0, NULL, NULL),
(5935, 214, 291, '木曜日', 0, NULL, NULL),
(5936, 212, 291, '火曜日', 0, NULL, NULL),
(5937, 213, 291, '水曜日', 0, NULL, NULL),
(5938, 963, 291, '無効', 0, NULL, NULL),
(5939, 951, 291, '受け入れます。DOCX、DOC、。ODT、PDFファイル、。rtfファイル、。txtの最大1MBまで', 0, NULL, NULL),
(5940, 773, 291, 'キーワード', 0, NULL, NULL),
(5941, 789, 291, '再開する', 0, NULL, NULL),
(5942, 308, 291, '金', 0, NULL, NULL),
(5943, 304, 291, 'モン', 0, NULL, NULL),
(5944, 309, 291, '土', 0, NULL, NULL),
(5945, 303, 291, '太陽', 0, NULL, NULL),
(5946, 307, 291, '木', 0, NULL, NULL),
(5947, 305, 291, '火曜', 0, NULL, NULL),
(5948, 306, 291, '結婚', 0, NULL, NULL),
(5949, 901, 291, 'マックス', 0, NULL, NULL),
(5950, 900, 291, 'ミン', 0, NULL, NULL),
(5951, 954, 291, 'アクティブ', 0, NULL, NULL),
(5952, 790, 291, '候補を追加します。', 0, NULL, NULL),
(5953, 778, 291, 'アプリケーション開始', 0, NULL, NULL),
(5954, 777, 291, '候補者', 0, NULL, NULL),
(5955, 772, 291, '候補者名', 0, NULL, NULL),
(5956, 955, 291, '閉じた', 0, NULL, NULL),
(5957, 774, 291, '出願日', 0, NULL, NULL),
(5958, 796, 291, '申し出を断る', 0, NULL, NULL),
(5959, 797, 291, '雇う', 0, NULL, NULL),
(5960, 823, 291, '雇われ', 0, NULL, NULL),
(5961, 771, 291, 'マネージャーを雇う', 0, NULL, NULL),
(5962, 782, 291, '面接に失敗しました', 0, NULL, NULL),
(5963, 781, 291, 'インタビューでは、渡された', 0, NULL, NULL),
(5964, 780, 291, 'インタビューのスケジュール', 0, NULL, NULL),
(5965, 764, 291, 'インタビューのタイトル', 0, NULL, NULL),
(5966, 783, 291, 'ジョブが提供され', 0, NULL, NULL),
(5967, 799, 291, '求人', 0, NULL, NULL),
(5968, 785, 291, 'マニュアル', 0, NULL, NULL),
(5969, 794, 291, 'マークのインタビューに失敗しました', 0, NULL, NULL),
(5970, 795, 291, 'マークのインタビューでは、渡された', 0, NULL, NULL),
(5971, 775, 291, '適用法', 0, NULL, NULL),
(5972, 806, 291, 'ポジション数', 0, NULL, NULL),
(5973, 784, 291, 'オファーは拒否', 0, NULL, NULL),
(5974, 786, 291, 'オンライン', 0, NULL, NULL),
(5975, 768, 291, '実行されるアクション', 0, NULL, NULL),
(5976, 769, 291, '実行日', 0, NULL, NULL),
(5977, 807, 291, 'RSSフィードのURL', 0, NULL, NULL),
(5978, 765, 291, 'インタビューのスケジュールを設定', 0, NULL, NULL),
(5979, 766, 291, '候補', 0, NULL, NULL),
(5980, 779, 291, '最終選考', 0, NULL, NULL),
(5981, 770, 291, '欠員', 0, NULL, NULL),
(5982, 805, 291, '空の名前', 0, NULL, NULL),
(5983, 762, 291, 'アクション履歴を表示', 0, NULL, NULL),
(5984, 808, 291, 'WebページのURL', 0, NULL, NULL),
(5985, 826, 291, 'アプリケーションは受け取った', 0, NULL, NULL),
(5986, 832, 3, 'Beoordeling toevoegen', 0, NULL, NULL),
(5987, 931, 3, 'april', 0, NULL, NULL),
(5988, 935, 3, 'augustus', 0, NULL, NULL),
(5989, 767, 3, 'Huidige status', 0, NULL, NULL),
(5990, 939, 3, 'december', 0, NULL, NULL),
(5991, 880, 3, 'Verwijderen', 0, NULL, NULL),
(5992, 929, 3, 'februari', 0, NULL, NULL),
(5993, 215, 3, 'vrijdag', 0, NULL, NULL),
(5994, 958, 3, 'Volledige naam', 0, NULL, NULL),
(5995, 928, 3, 'januari', 0, NULL, NULL),
(5996, 934, 3, 'juli', 0, NULL, NULL),
(5997, 933, 3, 'juni', 0, NULL, NULL),
(5998, 930, 3, 'maart', 0, NULL, NULL),
(5999, 932, 3, 'mei', 0, NULL, NULL),
(6000, 211, 3, 'maandag', 0, NULL, NULL),
(6001, 938, 3, 'november', 0, NULL, NULL),
(6002, 937, 3, 'oktober', 0, NULL, NULL),
(6003, 216, 3, 'zaterdag', 0, NULL, NULL),
(6004, 936, 3, 'september', 0, NULL, NULL),
(6005, 217, 3, 'zondag', 0, NULL, NULL),
(6006, 214, 3, 'donderdag', 0, NULL, NULL),
(6007, 212, 3, 'dinsdag', 0, NULL, NULL),
(6008, 213, 3, 'woensdag', 0, NULL, NULL),
(6009, 963, 3, 'Onjuist', 0, NULL, NULL),
(6010, 951, 3, 'Bestanden .docx, .doc, .odt, .pdf, .rtf, .txt tot 1MB worden geaccepteerd', 0, NULL, NULL),
(6011, 773, 3, 'Sleutelwoorden', 0, NULL, NULL),
(6012, 789, 3, 'CV', 0, NULL, NULL),
(6013, 882, 3, 'Log', 0, NULL, NULL),
(6014, 873, 3, 'Beoordelaar', 0, NULL, NULL),
(6015, 862, 3, 'Datum toegevoegd', 0, NULL, NULL),
(6016, 861, 3, 'Datum gemodificeerd', 0, NULL, NULL),
(6017, 846, 3, 'Werknemer kan niet toegevoegd worden als zijn eigen beoordelaar', 0, NULL, NULL),
(6018, 843, 3, 'Naam tracker', 0, NULL, NULL),
(6019, 308, 3, 'vrij', 0, NULL, NULL),
(6020, 304, 3, 'maan', 0, NULL, NULL),
(6021, 309, 3, 'zat', 0, NULL, NULL),
(6022, 303, 3, 'zon', 0, NULL, NULL),
(6023, 307, 3, 'don', 0, NULL, NULL),
(6024, 305, 3, 'din', 0, NULL, NULL),
(6025, 306, 3, 'woe', 0, NULL, NULL),
(6026, 901, 3, 'Max', 0, NULL, NULL),
(6027, 900, 3, 'Min', 0, NULL, NULL),
(6028, 954, 3, 'Actief', 0, NULL, NULL),
(6029, 790, 3, 'Kandidaat toevoegen', 0, NULL, NULL),
(6030, 778, 3, 'Applicatie geïnitieerd', 0, NULL, NULL),
(6031, 777, 3, 'Kandidaat', 0, NULL, NULL),
(6032, 772, 3, 'Naam kandidaat', 0, NULL, NULL),
(6033, 955, 3, 'Gesloten', 0, NULL, NULL),
(6034, 774, 3, 'Sollicitatiedatum', 0, NULL, NULL),
(6035, 796, 3, 'Aanbod afwijzen', 0, NULL, NULL),
(6036, 797, 3, 'Aannemen', 0, NULL, NULL),
(6037, 823, 3, 'Aangenomen', 0, NULL, NULL),
(6038, 771, 3, 'Personeelsmanager', 0, NULL, NULL),
(6039, 782, 3, 'Interview gefaald', 0, NULL, NULL),
(6040, 781, 3, 'Interview geslaagd', 0, NULL, NULL),
(6041, 780, 3, 'Interview gepland', 0, NULL, NULL),
(6042, 764, 3, 'Interview naam', 0, NULL, NULL),
(6043, 783, 3, 'Functie aangeboden', 0, NULL, NULL),
(6044, 799, 3, 'Vacature', 0, NULL, NULL),
(6045, 785, 3, 'Handmatig', 0, NULL, NULL),
(6046, 794, 3, 'Markeer Interview als gefaald', 0, NULL, NULL),
(6047, 795, 3, 'Markeer Interview als geslaagd', 0, NULL, NULL),
(6048, 775, 3, 'Wijze van solliciteren', 0, NULL, NULL),
(6049, 806, 3, 'Aantal functies', 0, NULL, NULL),
(6050, 784, 3, 'Aanbod afgewezen', 0, NULL, NULL),
(6051, 786, 3, 'Online', 0, NULL, NULL),
(6052, 768, 3, 'Uitgevoerde actie', 0, NULL, NULL),
(6053, 769, 3, 'Uitvoerdatum', 0, NULL, NULL),
(6054, 807, 3, 'RSS Feed URL', 0, NULL, NULL),
(6055, 765, 3, 'Interview plannen', 0, NULL, NULL),
(6056, 766, 3, 'Shortlist', 0, NULL, NULL),
(6057, 779, 3, 'Shortlisted', 0, NULL, NULL),
(6058, 770, 3, 'Vacature', 0, NULL, NULL),
(6059, 805, 3, 'Vacaturenaam', 0, NULL, NULL),
(6060, 762, 3, 'Toon actie geschiedenis', 0, NULL, NULL),
(6061, 808, 3, 'Web pagina URL', 0, NULL, NULL),
(6062, 826, 3, 'Sollicitatie ontvangen', 0, NULL, NULL),
(6063, 898, 3, 'KPI', 0, NULL, NULL),
(6064, 835, 3, 'Verval datum', 0, NULL, NULL),
(6065, 865, 3, 'Beoordelings periode', 0, NULL, NULL),
(6066, 867, 3, 'Status beoordeling', 0, NULL, NULL),
(6067, 886, 3, 'Beoordeling Overzicht', 0, NULL, NULL),
(6068, 836, 3, 'Activeren', 0, NULL, NULL),
(6069, 868, 3, 'Evalueren', 0, NULL, NULL),
(6070, 849, 3, 'Key Prestatie Indicator', 0, NULL, NULL),
(6071, 850, 3, 'Min Prijs', 0, NULL, NULL),
(6072, 851, 3, 'Max Prijs', 0, NULL, NULL),
(6073, 852, 3, 'Is Standaard', 0, NULL, NULL),
(6074, 888, 3, 'Vervaldatum Beoordeling', 0, NULL, NULL),
(6075, 892, 3, 'Eind beoordeling', 0, NULL, NULL),
(6076, 889, 3, 'Voltooid', 0, NULL, NULL),
(6077, 899, 3, 'Score', 0, NULL, NULL),
(6078, 848, 3, 'Key Prestatie Indicatoren voor Functienaam', 0, NULL, NULL),
(6079, 855, 3, 'Minimale rating', 0, NULL, NULL),
(6080, 856, 3, 'Maximum Score', 0, NULL, NULL),
(6081, 857, 3, 'Maak standaard Schaal', 0, NULL, NULL),
(6082, 875, 3, 'Inactief', 0, NULL, NULL),
(6083, 870, 3, 'Geactiveerd', 0, NULL, NULL),
(6084, 841, 3, 'Kan beoordeling niet activeren zonder KPIs', 0, NULL, NULL),
(6085, 840, 3, 'Kan geen beoordeling activeren voor werknemers die geen functietitel en/of onderafdeling hebben ', 0, NULL, NULL),
(6086, 871, 3, 'Wordt uitgevoerd', 0, NULL, NULL),
(6087, 872, 3, 'Voltooid', 0, NULL, NULL),
(6088, 832, 365, 'Madaallii Dabali', 0, NULL, NULL),
(6089, 931, 365, 'Eebila', 0, NULL, NULL),
(6090, 935, 365, 'Hagayya', 0, NULL, NULL),
(6091, 767, 365, 'Haala amma irra jiru', 0, NULL, NULL),
(6092, 939, 365, 'Mudde', 0, NULL, NULL),
(6093, 880, 365, 'Balleessi', 0, NULL, NULL),
(6094, 929, 365, 'Guraandhala', 0, NULL, NULL),
(6095, 215, 365, 'Jimaata', 0, NULL, NULL),
(6096, 958, 365, 'Maqaa Hanga Akaakayyuutti', 0, NULL, NULL),
(6097, 928, 365, 'Amajji', 0, NULL, NULL),
(6098, 934, 365, 'Adoolessa', 0, NULL, NULL),
(6099, 933, 365, 'Waxabajji', 0, NULL, NULL),
(6100, 930, 365, 'Bitootessa', 0, NULL, NULL),
(6101, 932, 365, 'Caamsaa', 0, NULL, NULL),
(6102, 211, 365, 'Wixata', 0, NULL, NULL),
(6103, 938, 365, 'Sadaasa', 0, NULL, NULL),
(6104, 937, 365, 'Onkoloolessa', 0, NULL, NULL),
(6105, 216, 365, 'Sanbata', 0, NULL, NULL),
(6106, 936, 365, 'Fulbaana', 0, NULL, NULL),
(6107, 217, 365, 'Dilbata', 0, NULL, NULL),
(6108, 214, 365, 'Kamisa', 0, NULL, NULL),
(6109, 212, 365, 'Kibxata', 0, NULL, NULL),
(6110, 213, 365, 'Roobii', 0, NULL, NULL),
(6111, 963, 365, 'Sirrii Miti', 0, NULL, NULL),
(6112, 951, 365, '.docx, .doc, .odt, .pdf, .rtf, .txt, fi hanga MB 1 tii fudhata', 0, NULL, NULL),
(6113, 773, 365, 'Jechabeekamtuu', 0, NULL, NULL),
(6114, 789, 365, 'Ragaa Barumsaa', 0, NULL, NULL),
(6115, 308, 365, 'Jim', 0, NULL, NULL),
(6116, 304, 365, 'Wix', 0, NULL, NULL),
(6117, 309, 365, 'San', 0, NULL, NULL),
(6118, 303, 365, 'Dil', 0, NULL, NULL),
(6119, 307, 365, 'Kam', 0, NULL, NULL),
(6120, 305, 365, 'Kib', 0, NULL, NULL),
(6121, 306, 365, 'Rob', 0, NULL, NULL),
(6122, 901, 365, 'Inni Guddaan', 0, NULL, NULL),
(6123, 900, 365, 'Inni Xiqqaan', 0, NULL, NULL),
(6124, 954, 365, 'Ka\'aa', 0, NULL, NULL),
(6125, 790, 365, 'Dorgomaa Dabali', 0, NULL, NULL),
(6126, 778, 365, 'Iyyatni Kan Onnatame', 0, NULL, NULL),
(6127, 777, 365, 'Dorgomaa', 0, NULL, NULL),
(6128, 772, 365, 'Maqaa Dorgomaa', 0, NULL, NULL),
(6129, 955, 365, 'Cufameera', 0, NULL, NULL),
(6130, 774, 365, 'Guyyaa Itti Iyyate', 0, NULL, NULL),
(6131, 796, 365, 'Affeerraa Dhiisi', 0, NULL, NULL),
(6132, 797, 365, 'Qaxari', 0, NULL, NULL),
(6133, 823, 365, 'Qaxarameere', 0, NULL, NULL),
(6134, 771, 365, 'Hogganaan Qaxaru', 0, NULL, NULL),
(6135, 782, 365, 'Gaaffiifi Deebii Kufe', 0, NULL, NULL),
(6136, 781, 365, 'Gaaffiifi Deebii Darbe', 0, NULL, NULL),
(6137, 780, 365, 'Gaaffiifi Deebiin Saganteeffameera', 0, NULL, NULL),
(6138, 764, 365, 'Mata-Duree Gaaffifi Deebii', 0, NULL, NULL),
(6139, 783, 365, 'Hojiif Affeerameera', 0, NULL, NULL),
(6140, 799, 365, 'Iddoo Hojii banaa', 0, NULL, NULL),
(6141, 785, 365, 'Maanuwaalii', 0, NULL, NULL),
(6142, 794, 365, 'Akka Gaaffifi Deebi Kufetti Mallattoo agarsiisi', 0, NULL, NULL),
(6143, 795, 365, 'Akka Gaaffifi Deebi Darbetti Mallattoo agarsiisi', 0, NULL, NULL),
(6144, 775, 365, 'Akkaata Iyyannoo', 0, NULL, NULL),
(6145, 806, 365, 'Baay\'ina Gita Hojii', 0, NULL, NULL),
(6146, 784, 365, 'Affeerraan Dhiifameera', 0, NULL, NULL),
(6147, 786, 365, 'Sarararra', 0, NULL, NULL),
(6148, 768, 365, 'Gocha Raawwatame', 0, NULL, NULL),
(6149, 769, 365, 'Guyyaa Raawwatame', 0, NULL, NULL),
(6150, 807, 365, 'URL Qabiyyee RSS', 0, NULL, NULL),
(6151, 765, 365, 'Gaaffiifi Deebii Saganteeffame', 0, NULL, NULL),
(6152, 766, 365, 'Calallii', 0, NULL, NULL),
(6153, 779, 365, 'Calalameera', 0, NULL, NULL),
(6154, 770, 365, 'Iddoo Hojii Banaa', 0, NULL, NULL),
(6155, 805, 365, 'Maqaa Iddoo Hojii Banaa', 0, NULL, NULL),
(6156, 762, 365, 'Ta\'iiwwan Seenaa Mul\'isi', 0, NULL, NULL),
(6157, 808, 365, 'URL Fuula Saphaphuu', 0, NULL, NULL),
(6158, 826, 365, 'Iyyatni Fudhatameera', 0, NULL, NULL),
(6159, 832, 473, 'เพิ่มบทวิจารณ์', 0, NULL, NULL),
(6160, 931, 473, 'เมษายน', 0, NULL, NULL),
(6161, 935, 473, 'สิงหาคม', 0, NULL, NULL),
(6162, 767, 473, 'สถานะปัจจุบัน', 0, NULL, NULL),
(6163, 939, 473, 'ธันวาคม', 0, NULL, NULL),
(6164, 880, 473, 'ลบ', 0, NULL, NULL),
(6165, 929, 473, 'กุมภาพันธ์', 0, NULL, NULL),
(6166, 215, 473, 'วันศุกร์', 0, NULL, NULL),
(6167, 958, 473, 'ชื่อเต็ม', 0, NULL, NULL),
(6168, 928, 473, 'มกราคม', 0, NULL, NULL),
(6169, 934, 473, 'กรกฎาคม', 0, NULL, NULL),
(6170, 933, 473, 'มิถุนายน', 0, NULL, NULL),
(6171, 930, 473, 'มีนาคม', 0, NULL, NULL),
(6172, 932, 473, 'พฤษภาคม', 0, NULL, NULL),
(6173, 211, 473, 'วันจันทร์', 0, NULL, NULL),
(6174, 938, 473, 'พฤศจิกายน', 0, NULL, NULL),
(6175, 937, 473, 'ตุลาคม', 0, NULL, NULL),
(6176, 216, 473, 'วันเสาร์', 0, NULL, NULL),
(6177, 936, 473, 'กันยายน', 0, NULL, NULL),
(6178, 217, 473, 'วันอาทิตย์', 0, NULL, NULL),
(6179, 214, 473, 'วันพฤหัสบดี', 0, NULL, NULL),
(6180, 212, 473, 'วันอังคาร', 0, NULL, NULL),
(6181, 213, 473, 'วันพุธ', 0, NULL, NULL),
(6182, 963, 473, 'ไม่ถูกต้อง', 0, NULL, NULL),
(6183, 951, 473, 'ยอมรับ. docx,. doc,. odt,. pdf,. rtf,. txt ถึง 1MB', 0, NULL, NULL),
(6184, 773, 473, 'คำหลัก', 0, NULL, NULL),
(6185, 789, 473, 'ดำเนินการต่อ', 0, NULL, NULL),
(6186, 308, 473, 'วันศุกร์', 0, NULL, NULL),
(6187, 304, 473, 'วันจันทร์', 0, NULL, NULL),
(6188, 309, 473, 'วันเสาร์', 0, NULL, NULL),
(6189, 303, 473, 'วันอาทิตย์', 0, NULL, NULL),
(6190, 307, 473, 'วันพฤหัสบดี', 0, NULL, NULL),
(6191, 305, 473, 'วันอังคาร', 0, NULL, NULL),
(6192, 306, 473, 'วันพุธ', 0, NULL, NULL),
(6193, 901, 473, 'สูงสุด', 0, NULL, NULL),
(6194, 900, 473, 'ต่ำสุด', 0, NULL, NULL),
(6195, 954, 473, 'ที่ใช้งานอยู่', 0, NULL, NULL),
(6196, 790, 473, 'เพิ่มผู้สมัคร', 0, NULL, NULL),
(6197, 778, 473, 'เริ่มต้นสมัครงาน', 0, NULL, NULL),
(6198, 777, 473, 'ผู้สมัคร', 0, NULL, NULL),
(6199, 772, 473, 'ชื่อผู้สมัคร', 0, NULL, NULL),
(6200, 955, 473, 'ปิด', 0, NULL, NULL),
(6201, 774, 473, 'วันที่สมัคร', 0, NULL, NULL),
(6202, 796, 473, 'ปฏิเสธข้อเสนอ', 0, NULL, NULL),
(6203, 797, 473, 'จ้าง', 0, NULL, NULL),
(6204, 823, 473, 'ได้รับการว่าจ้าง', 0, NULL, NULL),
(6205, 771, 473, 'ผู้จัดการสรรหาว่าจ้าง', 0, NULL, NULL),
(6206, 782, 473, 'การสัมภาษณ์ที่ล้มเหลว', 0, NULL, NULL),
(6207, 781, 473, 'การสัมภาษณ์ผ่าน', 0, NULL, NULL),
(6208, 780, 473, 'กำหนดตารางการสัมภาษณ์', 0, NULL, NULL),
(6209, 764, 473, 'หัวข้อการสัมภาษณ์', 0, NULL, NULL),
(6210, 783, 473, 'ตำแหน่งงานที่นำเสนอ', 0, NULL, NULL),
(6211, 799, 473, 'ตำแหน่งงานว่าง', 0, NULL, NULL),
(6212, 785, 473, 'คู่มือ', 0, NULL, NULL),
(6213, 794, 473, 'ทำเครื่องหมายว่าการสัมภาษณ์ล้มเหลว', 0, NULL, NULL),
(6214, 795, 473, 'ทำเครื่องหมายว่าการสัมภาษณ์ผ่าน', 0, NULL, NULL),
(6215, 775, 473, 'วิธีการใช้การสมัครงาน', 0, NULL, NULL),
(6216, 806, 473, 'จำนวนตำแหน่งงาน', 0, NULL, NULL),
(6217, 784, 473, 'การเสนอถูกปฏิเสธ', 0, NULL, NULL),
(6218, 786, 473, 'ออนไลน์', 0, NULL, NULL),
(6219, 768, 473, 'การดำเนินการที่ได้ทำไป', 0, NULL, NULL),
(6220, 769, 473, 'วันที่ดำเนินการ', 0, NULL, NULL),
(6221, 807, 473, 'URL ฟีด RSS', 0, NULL, NULL),
(6222, 765, 473, 'กำหนดการสอบสัมภาษณ์', 0, NULL, NULL),
(6223, 766, 473, 'Shortlist', 0, NULL, NULL),
(6224, 779, 473, 'สั้น ๆ', 0, NULL, NULL),
(6225, 770, 473, 'ตำแหน่งที่ว่าง', 0, NULL, NULL),
(6226, 805, 473, 'ชื่อตำแหน่งที่ว่าง', 0, NULL, NULL),
(6227, 762, 473, 'ดูการกระทำก่อนหน้านี้', 0, NULL, NULL),
(6228, 808, 473, 'URL หน้าเว็บ', 0, NULL, NULL),
(6229, 826, 473, 'ได้รับใบสมัครแล้ว', 0, NULL, NULL),
(6230, 832, 491, 'Viết nhận xét', 0, NULL, NULL),
(6231, 931, 491, 'Tháng Tư', 0, NULL, NULL),
(6232, 935, 491, 'Tháng tám', 0, NULL, NULL),
(6233, 767, 491, 'Trạng thái hiện hành', 0, NULL, NULL),
(6234, 939, 491, 'Tháng mười hai', 0, NULL, NULL),
(6235, 880, 491, 'Xóa', 0, NULL, NULL),
(6236, 929, 491, 'Tháng Hai', 0, NULL, NULL),
(6237, 215, 491, 'Thứ Sáu', 0, NULL, NULL),
(6238, 958, 491, 'Họ và tên', 0, NULL, NULL),
(6239, 928, 491, 'Tháng một', 0, NULL, NULL),
(6240, 934, 491, 'Tháng Bảy', 0, NULL, NULL),
(6241, 933, 491, 'Tháng Sáu', 0, NULL, NULL),
(6242, 930, 491, 'March', 0, NULL, NULL),
(6243, 932, 491, 'May', 0, NULL, NULL),
(6244, 211, 491, 'Thứ hai', 0, NULL, NULL),
(6245, 938, 491, 'Tháng mười một', 0, NULL, NULL),
(6246, 937, 491, 'Tháng Mười', 0, NULL, NULL),
(6247, 216, 491, 'Thứ bảy', 0, NULL, NULL),
(6248, 936, 491, 'Tháng Chín', 0, NULL, NULL),
(6249, 217, 491, 'Chủ Nhật', 0, NULL, NULL),
(6250, 214, 491, 'Thứ năm', 0, NULL, NULL),
(6251, 212, 491, 'Thứ ba', 0, NULL, NULL),
(6252, 213, 491, 'Thứ tư', 0, NULL, NULL),
(6253, 963, 491, 'Không hợp lệ', 0, NULL, NULL),
(6254, 951, 491, 'Chấp nhận. Docx, doc,. Odt, pdf, rtf, txt lên đến 1MB', 0, NULL, NULL),
(6255, 773, 491, 'Từ khóa', 0, NULL, NULL),
(6256, 789, 491, 'Tiếp tục', 0, NULL, NULL),
(6257, 308, 491, 'Thứ 6', 0, NULL, NULL),
(6258, 304, 491, 'Thứ 2', 0, NULL, NULL),
(6259, 309, 491, 'Thứ 7', 0, NULL, NULL),
(6260, 303, 491, 'CN', 0, NULL, NULL),
(6261, 307, 491, 'Thứ 5', 0, NULL, NULL),
(6262, 305, 491, 'Thứ 3', 0, NULL, NULL),
(6263, 306, 491, 'Thứ 4', 0, NULL, NULL),
(6264, 901, 491, 'Max', 0, NULL, NULL),
(6265, 900, 491, 'Min', 0, NULL, NULL),
(6266, 954, 491, 'Hoạt động', 0, NULL, NULL),
(6267, 790, 491, 'Thêm ứng cử viên', 0, NULL, NULL),
(6268, 778, 491, 'Ứng dụng khởi động', 0, NULL, NULL),
(6269, 777, 491, 'Ứng cử viên', 0, NULL, NULL),
(6270, 772, 491, 'Tên Ưng Viên', 0, NULL, NULL),
(6271, 955, 491, 'Đóng cửa', 0, NULL, NULL),
(6272, 774, 491, 'Ngày áp dụng', 0, NULL, NULL),
(6273, 796, 491, 'Từ chối Cung cấp', 0, NULL, NULL),
(6274, 797, 491, 'Thuê', 0, NULL, NULL),
(6275, 823, 491, 'Cho thuê', 0, NULL, NULL),
(6276, 771, 491, 'Thuê quản lý', 0, NULL, NULL),
(6277, 782, 491, 'Cuộc phỏng vấn không thành công', 0, NULL, NULL),
(6278, 781, 491, 'Phỏng vấn Passed', 0, NULL, NULL),
(6279, 780, 491, 'Phỏng vấn theo lịch trình', 0, NULL, NULL),
(6280, 764, 491, 'Phỏng vấn Tiêu đề', 0, NULL, NULL),
(6281, 783, 491, 'Công việc Cung cấp', 0, NULL, NULL),
(6282, 799, 491, 'Việc làm trống', 0, NULL, NULL),
(6283, 785, 491, 'Hướng dẫn sử dụng', 0, NULL, NULL),
(6284, 794, 491, 'Đánh dấu phỏng vấn không thành công', 0, NULL, NULL),
(6285, 795, 491, 'Đánh dấu phỏng vấn trôi qua', 0, NULL, NULL),
(6286, 775, 491, 'Phương pháp áp dụng', 0, NULL, NULL),
(6287, 806, 491, 'Số lượng Chứng khoán', 0, NULL, NULL),
(6288, 784, 491, 'Tên sản phẩm bị từ chối', 0, NULL, NULL),
(6289, 786, 491, 'Trực tuyến', 0, NULL, NULL),
(6290, 768, 491, 'Thực hiện hành động', 0, NULL, NULL),
(6291, 769, 491, 'Thực hiện ngày', 0, NULL, NULL),
(6292, 807, 491, 'RSS nguồn cấp dữ liệu URL', 0, NULL, NULL),
(6293, 765, 491, 'Lịch trình phỏng vấn', 0, NULL, NULL),
(6294, 766, 491, 'Yêu cầu thông tin', 0, NULL, NULL),
(6295, 779, 491, 'Lọt vào danh sách', 0, NULL, NULL),
(6296, 770, 491, 'Vị trí tuyển dụng', 0, NULL, NULL),
(6297, 805, 491, 'Vị trí tuyển dụng Tên', 0, NULL, NULL),
(6298, 762, 491, 'Lịch sử hành động', 0, NULL, NULL),
(6299, 808, 491, 'URL Trang Web', 0, NULL, NULL),
(6300, 826, 491, 'Nhận đơn', 0, NULL, NULL),
(6301, 832, 1, '添加评论', 0, NULL, NULL),
(6302, 931, 1, '四月', 0, NULL, NULL),
(6303, 935, 1, '八月', 0, NULL, NULL),
(6304, 767, 1, '现状', 0, NULL, NULL),
(6305, 939, 1, '十二月', 0, NULL, NULL),
(6306, 880, 1, '删除', 0, NULL, NULL),
(6307, 929, 1, '二月', 0, NULL, NULL),
(6308, 215, 1, '星期五', 0, NULL, NULL),
(6309, 958, 1, '全名', 0, NULL, NULL),
(6310, 928, 1, '一月', 0, NULL, NULL),
(6311, 934, 1, '七月', 0, NULL, NULL),
(6312, 933, 1, '六月', 0, NULL, NULL),
(6313, 930, 1, '三月', 0, NULL, NULL),
(6314, 932, 1, '五月', 0, NULL, NULL),
(6315, 211, 1, '星期一', 0, NULL, NULL),
(6316, 938, 1, '十一月', 0, NULL, NULL),
(6317, 937, 1, '十月', 0, NULL, NULL),
(6318, 216, 1, '星期六', 0, NULL, NULL),
(6319, 936, 1, '九月', 0, NULL, NULL),
(6320, 217, 1, '星期日', 0, NULL, NULL),
(6321, 214, 1, '星期四', 0, NULL, NULL),
(6322, 212, 1, '星期二', 0, NULL, NULL),
(6323, 213, 1, '星期三', 0, NULL, NULL),
(6324, 963, 1, '无效', 0, NULL, NULL),
(6325, 951, 1, '接受.docx，.doc，.odt，.pdf，.rtf，.txt, 最大1MB', 0, NULL, NULL),
(6326, 773, 1, '关键词', 0, NULL, NULL),
(6327, 789, 1, '恢复', 0, NULL, NULL),
(6328, 847, 1, '性能追踪器', 0, NULL, NULL),
(6329, 882, 1, '日志', 0, NULL, NULL),
(6330, 873, 1, '评估员', 0, NULL, NULL),
(6331, 862, 1, '已添加日期', 0, NULL, NULL),
(6332, 861, 1, '已修改日期', 0, NULL, NULL),
(6333, 846, 1, '员工不能被分配为自己的评审员', 0, NULL, NULL),
(6334, 843, 1, '跟踪器名称', 0, NULL, NULL),
(6335, 308, 1, '周五', 0, NULL, NULL),
(6336, 304, 1, '周一', 0, NULL, NULL),
(6337, 309, 1, '周六', 0, NULL, NULL),
(6338, 303, 1, '周日', 0, NULL, NULL),
(6339, 307, 1, '周四', 0, NULL, NULL),
(6340, 305, 1, '周二', 0, NULL, NULL),
(6341, 306, 1, '周三', 0, NULL, NULL),
(6342, 901, 1, '最大', 0, NULL, NULL),
(6343, 900, 1, '最小', 0, NULL, NULL),
(6344, 954, 1, '活跃', 0, NULL, NULL),
(6345, 790, 1, '添加候选人', 0, NULL, NULL),
(6346, 778, 1, '启动的申请', 0, NULL, NULL),
(6347, 777, 1, '候选人', 0, NULL, NULL),
(6348, 772, 1, '候选人姓名', 0, NULL, NULL),
(6349, 955, 1, '关闭', 0, NULL, NULL),
(6350, 774, 1, '申请日期', 0, NULL, NULL),
(6351, 796, 1, '拒绝工作邀请', 0, NULL, NULL),
(6352, 797, 1, '聘用', 0, NULL, NULL),
(6353, 823, 1, '已聘用', 0, NULL, NULL),
(6354, 771, 1, '招聘经理', 0, NULL, NULL),
(6355, 782, 1, '面试失败', 0, NULL, NULL),
(6356, 781, 1, '面试通过', 0, NULL, NULL),
(6357, 780, 1, '面试已安排', 0, NULL, NULL),
(6358, 764, 1, '面试题目', 0, NULL, NULL),
(6359, 783, 1, '发出了工作邀请', 0, NULL, NULL),
(6360, 799, 1, '职位空缺', 0, NULL, NULL),
(6361, 785, 1, '手册', 0, NULL, NULL),
(6362, 794, 1, '标记面试失败', 0, NULL, NULL),
(6363, 795, 1, '标记面试通过', 0, NULL, NULL),
(6364, 775, 1, '申请方法', 0, NULL, NULL),
(6365, 806, 1, '职位数', 0, NULL, NULL),
(6366, 784, 1, '工作邀请被拒', 0, NULL, NULL),
(6367, 786, 1, '在线', 0, NULL, NULL),
(6368, 768, 1, '执行了动作', 0, NULL, NULL),
(6369, 769, 1, '执行的日期', 0, NULL, NULL),
(6370, 807, 1, 'RSS订阅URL', 0, NULL, NULL),
(6371, 765, 1, '安排面试', 0, NULL, NULL),
(6372, 766, 1, '最后的候选人名单', 0, NULL, NULL),
(6373, 779, 1, '入围', 0, NULL, NULL),
(6374, 770, 1, '空缺职位', 0, NULL, NULL),
(6375, 805, 1, '空缺职位名称', 0, NULL, NULL),
(6376, 762, 1, '查看行动历史', 0, NULL, NULL),
(6377, 808, 1, '网页的网址', 0, NULL, NULL),
(6378, 826, 1, '已收到申请', 0, NULL, NULL),
(6379, 898, 1, '关键绩效指标(KPI)', 0, NULL, NULL),
(6380, 835, 1, '截止日期', 0, NULL, NULL),
(6381, 865, 1, '评估期间', 0, NULL, NULL),
(6382, 867, 1, '审评状态', 0, NULL, NULL),
(6383, 886, 1, '绩效评估', 0, NULL, NULL),
(6384, 836, 1, '激活', 0, NULL, NULL),
(6385, 868, 1, '评估', 0, NULL, NULL),
(6386, 849, 1, '关键绩效指标', 0, NULL, NULL),
(6387, 850, 1, '最小速率', 0, NULL, NULL),
(6388, 851, 1, '最大速率', 0, NULL, NULL),
(6389, 852, 1, '是默认', 0, NULL, NULL),
(6390, 888, 1, '审评到期日', 0, NULL, NULL),
(6391, 892, 1, '最终评分', 0, NULL, NULL),
(6392, 889, 1, '完成', 0, NULL, NULL),
(6393, 899, 1, '评级', 0, NULL, NULL),
(6394, 848, 1, '职称的关键绩效指标', 0, NULL, NULL),
(6395, 855, 1, '最低评级', 0, NULL, NULL),
(6396, 856, 1, '最高评级', 0, NULL, NULL),
(6397, 857, 1, '设为默认比例', 0, NULL, NULL),
(6398, 875, 1, '不活跃', 0, NULL, NULL),
(6399, 870, 1, '已激活', 0, NULL, NULL),
(6400, 841, 1, '没有关键绩效指标不能激活审评', 0, NULL, NULL),
(6401, 840, 1, '无法为没有职位和/或分部之员工激活审评', 0, NULL, NULL),
(6402, 871, 1, '进行中', 0, NULL, NULL),
(6403, 872, 1, '已经完成', 0, NULL, NULL),
(6404, 832, 2, '添加評論', 0, NULL, NULL),
(6405, 931, 2, '四月', 0, NULL, NULL),
(6406, 935, 2, '八月', 0, NULL, NULL),
(6407, 767, 2, '目前狀態', 0, NULL, NULL),
(6408, 939, 2, '十二月', 0, NULL, NULL),
(6409, 880, 2, '刪除', 0, NULL, NULL),
(6410, 929, 2, '二月', 0, NULL, NULL),
(6411, 215, 2, '星期五', 0, NULL, NULL),
(6412, 958, 2, '全名', 0, NULL, NULL),
(6413, 928, 2, '一月', 0, NULL, NULL),
(6414, 934, 2, '七月', 0, NULL, NULL),
(6415, 933, 2, '六月', 0, NULL, NULL),
(6416, 930, 2, '三月', 0, NULL, NULL),
(6417, 932, 2, '五月', 0, NULL, NULL),
(6418, 211, 2, '星期一', 0, NULL, NULL),
(6419, 938, 2, '十一月', 0, NULL, NULL),
(6420, 937, 2, '十月', 0, NULL, NULL),
(6421, 216, 2, '星期六', 0, NULL, NULL),
(6422, 936, 2, '九月', 0, NULL, NULL),
(6423, 217, 2, '星期天', 0, NULL, NULL),
(6424, 214, 2, '星期四', 0, NULL, NULL),
(6425, 212, 2, '星期二', 0, NULL, NULL),
(6426, 213, 2, '星期三', 0, NULL, NULL),
(6427, 963, 2, '無效', 0, NULL, NULL),
(6428, 951, 2, '允許DOCX，DOC，ODT，PDF，RTF，TXT格式，上限1MB', 0, NULL, NULL),
(6429, 773, 2, '關鍵字', 0, NULL, NULL),
(6430, 789, 2, '恢復', 0, NULL, NULL),
(6431, 847, 2, '性能追蹤器', 0, NULL, NULL),
(6432, 882, 2, '日誌', 0, NULL, NULL),
(6433, 873, 2, '評估員', 0, NULL, NULL),
(6434, 862, 2, '新增日期', 0, NULL, NULL),
(6435, 861, 2, '修改日期', 0, NULL, NULL),
(6436, 846, 2, '員工不能被指定為他自己的評審者', 0, NULL, NULL),
(6437, 843, 2, '跟踪器名稱', 0, NULL, NULL),
(6438, 308, 2, '週五', 0, NULL, NULL),
(6439, 304, 2, '週一', 0, NULL, NULL),
(6440, 309, 2, '星期六', 0, NULL, NULL),
(6441, 303, 2, '星期日', 0, NULL, NULL),
(6442, 307, 2, '星期四', 0, NULL, NULL),
(6443, 305, 2, '星期二', 0, NULL, NULL),
(6444, 306, 2, '星期三', 0, NULL, NULL),
(6445, 901, 2, '最大值', 0, NULL, NULL),
(6446, 900, 2, '最小值', 0, NULL, NULL),
(6447, 954, 2, '活躍', 0, NULL, NULL),
(6448, 790, 2, '添加候選人', 0, NULL, NULL),
(6449, 778, 2, '申請已啟動', 0, NULL, NULL),
(6450, 777, 2, '候選人', 0, NULL, NULL),
(6451, 772, 2, '候選人姓名', 0, NULL, NULL),
(6452, 955, 2, '關閉', 0, NULL, NULL),
(6453, 774, 2, '申請日期', 0, NULL, NULL),
(6454, 796, 2, '拒絕工作邀請', 0, NULL, NULL),
(6455, 797, 2, '聘請', 0, NULL, NULL),
(6456, 823, 2, '已僱用', 0, NULL, NULL),
(6457, 771, 2, '招聘經理', 0, NULL, NULL),
(6458, 782, 2, '面試失敗', 0, NULL, NULL),
(6459, 781, 2, '面試通過', 0, NULL, NULL),
(6460, 780, 2, '面試已安排', 0, NULL, NULL),
(6461, 764, 2, '面試題目', 0, NULL, NULL),
(6462, 783, 2, '工作邀請已發出', 0, NULL, NULL),
(6463, 799, 2, '職位空缺', 0, NULL, NULL),
(6464, 785, 2, '手冊', 0, NULL, NULL),
(6465, 794, 2, '標記面試失敗', 0, NULL, NULL),
(6466, 795, 2, '標記面試合格', 0, NULL, NULL),
(6467, 775, 2, '申請方法', 0, NULL, NULL),
(6468, 806, 2, '職位數', 0, NULL, NULL),
(6469, 784, 2, '工作邀請受拒', 0, NULL, NULL),
(6470, 786, 2, '在線', 0, NULL, NULL),
(6471, 768, 2, '已執行的操作', 0, NULL, NULL),
(6472, 769, 2, '執行日期', 0, NULL, NULL),
(6473, 807, 2, 'RSS訂閱網址', 0, NULL, NULL),
(6474, 765, 2, '安排面試', 0, NULL, NULL),
(6475, 766, 2, '入圍', 0, NULL, NULL),
(6476, 779, 2, '已入圍', 0, NULL, NULL),
(6477, 770, 2, '職位空缺', 0, NULL, NULL),
(6478, 805, 2, '職位空缺名稱', 0, NULL, NULL),
(6479, 762, 2, '查看操作歷史記錄', 0, NULL, NULL),
(6480, 808, 2, '網頁的網址', 0, NULL, NULL),
(6481, 826, 2, '已收到申請', 0, NULL, NULL),
(6482, 898, 2, '關鍵績效指標 (KPI)', 0, NULL, NULL),
(6483, 835, 2, '截止日期', 0, NULL, NULL),
(6484, 865, 2, '評估期', 0, NULL, NULL),
(6485, 867, 2, '評論狀態', 0, NULL, NULL),
(6486, 886, 2, '績效評估', 0, NULL, NULL),
(6487, 836, 2, '啟動', 0, NULL, NULL),
(6488, 868, 2, '評估', 0, NULL, NULL),
(6489, 849, 2, '關鍵績效指標', 0, NULL, NULL),
(6490, 850, 2, '最低速率', 0, NULL, NULL),
(6491, 851, 2, '最大速率', 0, NULL, NULL),
(6492, 852, 2, '是默認', 0, NULL, NULL),
(6493, 888, 2, '評論截止日期', 0, NULL, NULL),
(6494, 892, 2, '最終評級', 0, NULL, NULL),
(6495, 889, 2, '完成', 0, NULL, NULL),
(6496, 899, 2, '評級', 0, NULL, NULL),
(6497, 848, 2, '職稱的關鍵績效指標', 0, NULL, NULL),
(6498, 855, 2, '最低評級', 0, NULL, NULL),
(6499, 856, 2, '最大評級', 0, NULL, NULL),
(6500, 857, 2, '設置默認比例', 0, NULL, NULL),
(6501, 875, 2, '未啓用', 0, NULL, NULL),
(6502, 870, 2, '已啟用', 0, NULL, NULL),
(6503, 841, 2, '不能在無關鍵績效指標的情況下啓用審查', 0, NULL, NULL),
(6504, 840, 2, '無法對沒有職位和/或分部之員工啟用審評', 0, NULL, NULL),
(6505, 871, 2, '正在進行中', 0, NULL, NULL),
(6506, 872, 2, '已完成', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_candidate`
--

CREATE TABLE `ohrm_job_candidate` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact_number` varchar(30) DEFAULT NULL,
  `status` int(4) NOT NULL,
  `comment` text DEFAULT NULL,
  `mode_of_application` int(4) NOT NULL,
  `date_of_application` date NOT NULL,
  `cv_file_id` int(13) DEFAULT NULL,
  `cv_text_version` text DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `added_person` int(13) DEFAULT NULL,
  `consent_to_keep_data` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_candidate_attachment`
--

CREATE TABLE `ohrm_job_candidate_attachment` (
  `id` int(13) NOT NULL,
  `candidate_id` int(13) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `file_type` varchar(200) DEFAULT NULL,
  `file_size` int(11) NOT NULL,
  `file_content` mediumblob DEFAULT NULL,
  `attachment_type` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_candidate_history`
--

CREATE TABLE `ohrm_job_candidate_history` (
  `id` int(13) NOT NULL,
  `candidate_id` int(13) NOT NULL,
  `vacancy_id` int(13) DEFAULT NULL,
  `candidate_vacancy_name` varchar(255) DEFAULT NULL,
  `interview_id` int(13) DEFAULT NULL,
  `action` int(4) NOT NULL,
  `performed_by` int(13) DEFAULT NULL,
  `performed_date` datetime NOT NULL,
  `note` text DEFAULT NULL,
  `interviewers` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_candidate_vacancy`
--

CREATE TABLE `ohrm_job_candidate_vacancy` (
  `id` int(11) NOT NULL,
  `candidate_id` int(13) NOT NULL,
  `vacancy_id` int(13) NOT NULL,
  `status` varchar(100) NOT NULL,
  `applied_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_category`
--

CREATE TABLE `ohrm_job_category` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_job_category`
--

INSERT INTO `ohrm_job_category` (`id`, `name`) VALUES
(1, 'Officials and Managers'),
(2, 'Professionals'),
(3, 'Technicians'),
(4, 'Sales Workers'),
(5, 'Operatives'),
(6, 'Office and Clerical Workers'),
(7, 'Craft Workers'),
(8, 'Service Workers'),
(9, 'Laborers and Helpers');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_interview`
--

CREATE TABLE `ohrm_job_interview` (
  `id` int(13) NOT NULL,
  `candidate_vacancy_id` int(13) DEFAULT NULL,
  `candidate_id` int(13) DEFAULT NULL,
  `interview_name` varchar(100) NOT NULL,
  `interview_date` date DEFAULT NULL,
  `interview_time` time DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_interview_attachment`
--

CREATE TABLE `ohrm_job_interview_attachment` (
  `id` int(13) NOT NULL,
  `interview_id` int(13) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `file_type` varchar(200) DEFAULT NULL,
  `file_size` int(11) NOT NULL,
  `file_content` mediumblob DEFAULT NULL,
  `attachment_type` int(4) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_interview_interviewer`
--

CREATE TABLE `ohrm_job_interview_interviewer` (
  `interview_id` int(13) NOT NULL,
  `interviewer_id` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_specification_attachment`
--

CREATE TABLE `ohrm_job_specification_attachment` (
  `id` int(13) NOT NULL,
  `job_title_id` int(13) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `file_type` varchar(200) DEFAULT NULL,
  `file_size` int(11) NOT NULL,
  `file_content` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_title`
--

CREATE TABLE `ohrm_job_title` (
  `id` int(13) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `job_description` varchar(400) DEFAULT NULL,
  `note` varchar(400) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_job_title`
--

INSERT INTO `ohrm_job_title` (`id`, `job_title`, `job_description`, `note`, `is_deleted`) VALUES
(1, 'Administrator', 'Be an administrator', NULL, 0),
(2, 'manager', 'be a manager', NULL, 0),
(3, 'employee', 'be an employee', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_vacancy`
--

CREATE TABLE `ohrm_job_vacancy` (
  `id` int(11) NOT NULL,
  `job_title_code` int(4) NOT NULL,
  `hiring_manager_id` int(13) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `no_of_positions` int(13) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `published_in_feed` tinyint(1) NOT NULL DEFAULT 0,
  `defined_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_job_vacancy`
--

INSERT INTO `ohrm_job_vacancy` (`id`, `job_title_code`, `hiring_manager_id`, `name`, `description`, `no_of_positions`, `status`, `published_in_feed`, `defined_time`, `updated_time`) VALUES
(1, 1, 1, 'admin', 'be an admin', 1, 1, 1, '2023-08-18 13:01:41', '2023-08-18 13:01:56'),
(2, 3, 1, 'New August', 'Be able to type', 10, 1, 1, '2023-08-18 14:57:05', '2023-08-18 14:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_job_vacancy_attachment`
--

CREATE TABLE `ohrm_job_vacancy_attachment` (
  `id` int(13) NOT NULL,
  `vacancy_id` int(13) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `file_type` varchar(200) DEFAULT NULL,
  `file_size` int(11) NOT NULL,
  `file_content` mediumblob DEFAULT NULL,
  `attachment_type` int(4) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_kpi`
--

CREATE TABLE `ohrm_kpi` (
  `id` bigint(20) NOT NULL,
  `job_title_code` int(13) NOT NULL,
  `kpi_indicators` varchar(255) DEFAULT NULL,
  `min_rating` int(7) DEFAULT 0,
  `max_rating` int(7) DEFAULT 0,
  `default_kpi` smallint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_language`
--

CREATE TABLE `ohrm_language` (
  `id` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_ldap_sync_status`
--

CREATE TABLE `ohrm_ldap_sync_status` (
  `id` int(11) NOT NULL,
  `sync_started_at` datetime NOT NULL,
  `sync_finished_at` datetime DEFAULT NULL,
  `synced_by` int(11) DEFAULT NULL,
  `sync_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave`
--

CREATE TABLE `ohrm_leave` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `length_hours` decimal(6,2) UNSIGNED DEFAULT NULL,
  `length_days` decimal(6,4) UNSIGNED DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `leave_request_id` int(10) UNSIGNED NOT NULL,
  `leave_type_id` int(10) UNSIGNED NOT NULL,
  `emp_number` int(7) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `duration_type` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_adjustment`
--

CREATE TABLE `ohrm_leave_adjustment` (
  `id` int(10) UNSIGNED NOT NULL,
  `emp_number` int(7) NOT NULL,
  `no_of_days` decimal(19,15) NOT NULL,
  `leave_type_id` int(10) UNSIGNED NOT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `credited_date` datetime DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `adjustment_type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` int(10) DEFAULT NULL,
  `created_by_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_comment`
--

CREATE TABLE `ohrm_leave_comment` (
  `id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `created_by_id` int(10) DEFAULT NULL,
  `created_by_emp_number` int(7) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_entitlement`
--

CREATE TABLE `ohrm_leave_entitlement` (
  `id` int(10) UNSIGNED NOT NULL,
  `emp_number` int(7) NOT NULL,
  `no_of_days` decimal(19,15) NOT NULL,
  `days_used` decimal(8,4) NOT NULL DEFAULT 0.0000,
  `leave_type_id` int(10) UNSIGNED NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime DEFAULT NULL,
  `credited_date` datetime DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `entitlement_type` int(10) UNSIGNED NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_leave_entitlement`
--

INSERT INTO `ohrm_leave_entitlement` (`id`, `emp_number`, `no_of_days`, `days_used`, `leave_type_id`, `from_date`, `to_date`, `credited_date`, `note`, `entitlement_type`, `deleted`, `created_by_id`) VALUES
(1, 4, '2.000000000000000', '0.0000', 2, '2022-09-02 00:00:00', '2023-09-01 00:00:00', '2023-08-18 20:48:43', NULL, 1, 0, 1),
(2, 2, '1.000000000000000', '0.0000', 1, '2022-09-02 00:00:00', '2023-09-01 00:00:00', '2023-08-18 20:24:43', NULL, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_entitlement_adjustment`
--

CREATE TABLE `ohrm_leave_entitlement_adjustment` (
  `id` int(11) NOT NULL,
  `adjustment_id` int(10) UNSIGNED NOT NULL,
  `entitlement_id` int(10) UNSIGNED NOT NULL,
  `length_days` decimal(4,2) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_entitlement_type`
--

CREATE TABLE `ohrm_leave_entitlement_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `is_editable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_leave_entitlement_type`
--

INSERT INTO `ohrm_leave_entitlement_type` (`id`, `name`, `is_editable`) VALUES
(1, 'Added', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_leave_entitlement`
--

CREATE TABLE `ohrm_leave_leave_entitlement` (
  `id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `entitlement_id` int(10) UNSIGNED NOT NULL,
  `length_days` decimal(6,4) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_period_history`
--

CREATE TABLE `ohrm_leave_period_history` (
  `id` int(11) NOT NULL,
  `leave_period_start_month` int(11) NOT NULL,
  `leave_period_start_day` int(11) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_leave_period_history`
--

INSERT INTO `ohrm_leave_period_history` (`id`, `leave_period_start_month`, `leave_period_start_day`, `created_at`) VALUES
(1, 9, 2, '2023-08-18');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_request`
--

CREATE TABLE `ohrm_leave_request` (
  `id` int(10) UNSIGNED NOT NULL,
  `leave_type_id` int(10) UNSIGNED NOT NULL,
  `date_applied` date NOT NULL,
  `emp_number` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_request_comment`
--

CREATE TABLE `ohrm_leave_request_comment` (
  `id` int(11) NOT NULL,
  `leave_request_id` int(10) UNSIGNED NOT NULL,
  `created` datetime DEFAULT NULL,
  `created_by_id` int(10) DEFAULT NULL,
  `created_by_emp_number` int(7) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_status`
--

CREATE TABLE `ohrm_leave_status` (
  `id` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_leave_status`
--

INSERT INTO `ohrm_leave_status` (`id`, `status`, `name`) VALUES
(1, -1, 'REJECTED'),
(2, 0, 'CANCELLED'),
(3, 1, 'PENDING APPROVAL'),
(4, 2, 'SCHEDULED'),
(5, 3, 'TAKEN'),
(6, 4, 'WEEKEND'),
(7, 5, 'HOLIDAY');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_leave_type`
--

CREATE TABLE `ohrm_leave_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `exclude_in_reports_if_no_entitlement` tinyint(1) NOT NULL DEFAULT 0,
  `operational_country_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_leave_type`
--

INSERT INTO `ohrm_leave_type` (`id`, `name`, `deleted`, `exclude_in_reports_if_no_entitlement`, `operational_country_id`) VALUES
(1, 'Sisters wedding', 0, 0, NULL),
(2, 'Brothers Wedding', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_license`
--

CREATE TABLE `ohrm_license` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_location`
--

CREATE TABLE `ohrm_location` (
  `id` int(11) NOT NULL,
  `name` varchar(110) NOT NULL,
  `country_code` varchar(3) NOT NULL,
  `province` varchar(60) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip_code` varchar(35) DEFAULT NULL,
  `phone` varchar(35) DEFAULT NULL,
  `fax` varchar(35) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_location`
--

INSERT INTO `ohrm_location` (`id`, `name`, `country_code`, `province`, `city`, `address`, `zip_code`, `phone`, `fax`, `notes`) VALUES
(1, 'central', 'BD', 'Dhaka', 'Uttara', 'Sector 10', '1230', '01992938488', '123', ''),
(2, 'District 01', 'BD', 'Dhaka', 'Badda', '', '1224', '019283773819', '123', '');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_login`
--

CREATE TABLE `ohrm_login` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_role_name` text NOT NULL,
  `user_role_predefined` tinyint(1) NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_login`
--

INSERT INTO `ohrm_login` (`id`, `user_id`, `user_name`, `user_role_name`, `user_role_predefined`, `login_time`) VALUES
(1, 1, 'Admin', 'Admin', 1, '2023-08-17 16:42:47'),
(2, 1, 'Admin', 'Admin', 1, '2023-08-18 05:14:19'),
(3, 1, 'Admin', 'Admin', 1, '2023-08-18 05:31:15'),
(4, 1, 'Admin', 'Admin', 1, '2023-08-18 05:33:53'),
(5, 2, 'madaraX_Uchiha', 'ESS', 1, '2023-08-18 05:34:23'),
(6, 1, 'Admin', 'Admin', 1, '2023-08-18 05:36:08'),
(7, 2, 'madaraX_Uchiha', 'ESS', 1, '2023-08-18 05:42:02'),
(8, 1, 'Admin', 'Admin', 1, '2023-08-18 05:43:35'),
(9, 1, 'Admin', 'Admin', 1, '2023-08-18 06:33:50'),
(10, 1, 'Admin', 'Admin', 1, '2023-08-18 06:57:13'),
(11, 1, 'Admin', 'Admin', 1, '2023-08-18 08:09:06'),
(12, 1, 'Admin', 'Admin', 1, '2023-08-18 08:14:41'),
(13, 2, 'madaraX_Uchiha', 'ESS', 1, '2023-08-18 08:24:16'),
(14, 1, 'Admin', 'Admin', 1, '2023-08-18 08:25:40'),
(15, 1, 'Admin', 'Admin', 1, '2023-08-18 08:27:16'),
(16, 1, 'Admin', 'Admin', 1, '2023-08-18 08:28:46'),
(17, 1, 'Admin', 'Admin', 1, '2023-08-18 08:30:22'),
(18, 1, 'Admin', 'Admin', 1, '2023-08-18 08:44:59'),
(19, 1, 'Admin', 'Admin', 1, '2023-08-18 08:46:08'),
(20, 1, 'Admin', 'Admin', 1, '2023-08-18 08:47:30'),
(21, 1, 'Admin', 'Admin', 1, '2023-08-18 08:48:15'),
(22, 1, 'Admin', 'Admin', 1, '2023-08-18 08:49:27'),
(23, 1, 'Admin', 'Admin', 1, '2023-08-18 08:52:00'),
(24, 1, 'Admin', 'Admin', 1, '2023-08-18 08:54:36'),
(25, 1, 'Admin', 'Admin', 1, '2023-08-18 08:55:31'),
(26, 1, 'Admin', 'Admin', 1, '2023-08-18 08:56:33'),
(27, 1, 'Admin', 'Admin', 1, '2023-08-18 11:54:16'),
(28, 1, 'Admin', 'Admin', 1, '2023-08-18 12:02:27'),
(29, 1, 'Admin', 'Admin', 1, '2023-08-18 12:03:15'),
(30, 2, 'madaraX_Uchiha', 'ESS', 1, '2023-08-18 12:10:01'),
(31, 1, 'Admin', 'Admin', 1, '2023-08-18 14:11:42'),
(32, 2, 'madaraX_Uchiha', 'ESS', 1, '2023-08-18 14:25:34'),
(33, 1, 'Admin', 'Admin', 1, '2023-08-18 14:29:45'),
(34, 1, 'Admin', 'Admin', 1, '2023-08-18 14:37:45'),
(35, 1, 'Admin', 'Admin', 1, '2023-08-18 14:38:37'),
(36, 1, 'Admin', 'Admin', 1, '2023-08-18 14:40:44'),
(37, 1, 'Admin', 'Admin', 1, '2023-08-18 14:43:23'),
(38, 1, 'Admin', 'Admin', 1, '2023-08-18 14:46:11'),
(39, 1, 'Admin', 'Admin', 1, '2023-08-18 14:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_mail_queue`
--

CREATE TABLE `ohrm_mail_queue` (
  `id` int(11) NOT NULL,
  `to_list` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `cc_list` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:array)',
  `bcc_list` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:array)',
  `subject` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `sent_at` datetime DEFAULT NULL,
  `status` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_membership`
--

CREATE TABLE `ohrm_membership` (
  `id` int(6) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_menu_item`
--

CREATE TABLE `ohrm_menu_item` (
  `id` int(11) NOT NULL,
  `menu_title` varchar(255) NOT NULL,
  `screen_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` tinyint(4) NOT NULL,
  `order_hint` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `additional_params` longtext DEFAULT NULL COMMENT '(DC2Type:json)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_menu_item`
--

INSERT INTO `ohrm_menu_item` (`id`, `menu_title`, `screen_id`, `parent_id`, `level`, `order_hint`, `status`, `additional_params`) VALUES
(1, 'Admin', 74, NULL, 1, 100, 1, '{\"icon\":\"admin\"}'),
(2, 'User Management', NULL, 1, 2, 100, 1, NULL),
(3, 'Project Info', NULL, 52, 2, 400, 1, NULL),
(4, 'Customers', 36, 3, 3, 100, 1, NULL),
(5, 'Projects', 37, 3, 3, 200, 1, NULL),
(6, 'Job', NULL, 1, 2, 300, 1, NULL),
(7, 'Job Titles', 23, 6, 3, 100, 1, NULL),
(8, 'Pay Grades', 24, 6, 3, 200, 1, NULL),
(9, 'Employment Status', 25, 6, 3, 300, 1, NULL),
(10, 'Job Categories', 26, 6, 3, 400, 1, NULL),
(11, 'Work Shifts', 27, 6, 3, 500, 1, NULL),
(12, 'Organization', NULL, 1, 2, 400, 1, NULL),
(13, 'General Information', 20, 12, 3, 100, 1, NULL),
(14, 'Locations', 21, 12, 3, 200, 1, NULL),
(15, 'Structure', 22, 12, 3, 300, 1, NULL),
(16, 'Qualifications', NULL, 1, 2, 500, 1, NULL),
(17, 'Skills', 28, 16, 3, 100, 1, NULL),
(18, 'Education', 29, 16, 3, 200, 1, NULL),
(19, 'Licenses', 30, 16, 3, 300, 1, NULL),
(20, 'Languages', 31, 16, 3, 400, 1, NULL),
(21, 'Memberships', 32, 16, 3, 500, 1, NULL),
(22, 'Nationalities', 33, 1, 2, 700, 1, NULL),
(23, 'Configuration', NULL, 1, 2, 900, 1, NULL),
(24, 'Email Configuration', 34, 23, 3, 100, 1, NULL),
(25, 'Email Subscriptions', 35, 23, 3, 200, 1, NULL),
(27, 'Localization', 38, 23, 3, 300, 1, NULL),
(28, 'Modules', 39, 23, 3, 400, 1, NULL),
(30, 'PIM', 75, NULL, 1, 200, 1, '{\"icon\":\"pim\"}'),
(31, 'Configuration', NULL, 30, 2, 100, 1, NULL),
(32, 'Optional Fields', 40, 31, 3, 100, 1, NULL),
(33, 'Custom Fields', 41, 31, 3, 200, 1, NULL),
(34, 'Data Import', 42, 31, 3, 300, 1, NULL),
(35, 'Reporting Methods', 43, 31, 3, 400, 1, NULL),
(36, 'Termination Reasons', 44, 31, 3, 500, 1, NULL),
(37, 'Employee List', 5, 30, 2, 200, 1, NULL),
(38, 'Add Employee', 4, 30, 2, 300, 1, NULL),
(39, 'Reports', 45, 30, 2, 400, 1, NULL),
(40, 'My Info', 46, NULL, 1, 700, 1, '{\"icon\":\"myinfo\"}'),
(41, 'Leave', 68, NULL, 1, 300, 1, '{\"icon\":\"leave\"}'),
(42, 'Configure', NULL, 41, 2, 500, 1, NULL),
(43, 'Leave Period', 47, 42, 3, 100, 1, NULL),
(44, 'Leave Types', 7, 42, 3, 200, 1, NULL),
(45, 'Work Week', 14, 42, 3, 300, 1, NULL),
(46, 'Holidays', 11, 42, 3, 400, 1, NULL),
(48, 'Leave List', 16, 41, 2, 600, 1, NULL),
(49, 'Assign Leave', 17, 41, 2, 700, 1, NULL),
(50, 'My Leave', 48, 41, 2, 200, 1, NULL),
(51, 'Apply', 49, 41, 2, 100, 1, NULL),
(52, 'Time', 67, NULL, 1, 400, 1, '{\"icon\":\"time\"}'),
(53, 'Timesheets', NULL, 52, 2, 100, 1, NULL),
(54, 'My Timesheets', 51, 53, 3, 100, 1, NULL),
(55, 'Employee Timesheets', 52, 53, 3, 200, 1, NULL),
(56, 'Attendance', NULL, 52, 2, 200, 1, NULL),
(57, 'My Records', 53, 56, 3, 100, 1, NULL),
(58, 'Punch In/Out', 54, 56, 3, 200, 1, NULL),
(59, 'Employee Records', 55, 56, 3, 300, 1, NULL),
(60, 'Configuration', 56, 56, 3, 400, 1, NULL),
(61, 'Reports', NULL, 52, 2, 300, 1, NULL),
(62, 'Project Reports', 57, 61, 3, 100, 1, NULL),
(63, 'Employee Reports', 58, 61, 3, 200, 1, NULL),
(64, 'Attendance Summary', 59, 61, 3, 300, 1, NULL),
(65, 'Recruitment', 76, NULL, 1, 500, 1, '{\"icon\":\"recruitment\"}'),
(66, 'Candidates', 60, 65, 2, 100, 1, NULL),
(67, 'Vacancies', 61, 65, 2, 200, 1, NULL),
(74, 'Entitlements', NULL, 41, 2, 300, 1, NULL),
(75, 'Add Entitlements', 72, 74, 3, 100, 1, NULL),
(76, 'My Entitlements', 70, 74, 3, 300, 1, NULL),
(77, 'Employee Entitlements', 69, 74, 3, 200, 1, NULL),
(78, 'Reports', NULL, 41, 2, 400, 1, NULL),
(79, 'Leave Entitlements and Usage Report', 78, 78, 3, 100, 1, NULL),
(80, 'My Leave Entitlements and Usage Report', 79, 78, 3, 200, 1, NULL),
(81, 'Users', 1, 2, 3, 100, 1, NULL),
(82, 'Dashboard', 103, NULL, 1, 800, 1, '{\"icon\":\"dashboard\"}'),
(83, 'Performance', 130, NULL, 1, 700, 1, '{\"icon\":\"performance\"}'),
(84, 'Configure', NULL, 83, 2, 100, 1, NULL),
(85, 'Manage Reviews', NULL, 83, 2, 200, 1, NULL),
(86, 'KPIs', 105, 84, 3, 100, 1, NULL),
(87, 'Manage Reviews', 111, 85, 3, 100, 1, NULL),
(88, 'My Reviews', 106, 85, 3, 200, 1, NULL),
(89, 'Employee Reviews', 110, 85, 3, 300, 1, NULL),
(90, 'Trackers', 112, 84, 3, 200, 1, NULL),
(91, 'Employee Trackers', 113, 83, 2, 800, 1, NULL),
(92, 'My Trackers', 114, 83, 2, 700, 1, NULL),
(93, 'Directory', 116, NULL, 1, 1000, 1, '{\"icon\":\"directory\"}'),
(94, 'Social Media Authentication', 117, 23, 3, 500, 1, NULL),
(95, 'Register OAuth Client', 118, 23, 3, 600, 1, NULL),
(96, 'Maintenance', 153, NULL, 1, 1200, 1, '{\"icon\":\"maintenance\"}'),
(97, 'Purge Records', NULL, 96, 2, 100, 1, NULL),
(98, 'Access Records', 121, 96, 2, 200, 1, NULL),
(99, 'Employee Records', 119, 97, 3, 200, 1, NULL),
(100, 'Candidate Records', 120, 97, 3, 200, 1, NULL),
(101, 'Buzz', 123, NULL, 1, 1500, 1, '{\"icon\":\"buzz\"}'),
(102, 'Language Packages', 124, 23, 3, 350, 1, NULL),
(103, 'Corporate Branding', 128, 1, 2, 700, 1, NULL),
(104, 'LDAP Configuration', 169, 23, 3, 1000, 1, NULL),
(105, 'Claim', 170, NULL, 1, 1300, 1, '{\"icon\":\"claim\"}'),
(106, 'Configuration', NULL, 105, 2, 100, 1, NULL),
(107, 'Events', 171, 106, 3, 100, 1, NULL),
(108, 'Expense Types', 173, 106, 3, 200, 1, NULL),
(109, 'Submit Claim', 175, 105, 2, 100, 1, NULL),
(110, 'My Claims', 177, 105, 2, 100, 1, NULL),
(111, 'Employee Claims', 180, 105, 2, 100, 1, NULL),
(112, 'Assign Claim', 178, 105, 2, 100, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_migration_log`
--

CREATE TABLE `ohrm_migration_log` (
  `id` int(11) NOT NULL,
  `version` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `db_version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `php_version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `started_at` datetime NOT NULL,
  `finished_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ohrm_migration_log`
--

INSERT INTO `ohrm_migration_log` (`id`, `version`, `db_version`, `php_version`, `started_at`, `finished_at`) VALUES
(1, '3.3.3', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:43:32', '2023-08-17 19:52:58'),
(2, '4.0', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:52:59', '2023-08-17 19:53:00'),
(3, '4.1', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:53:00', '2023-08-17 19:53:03'),
(4, '4.1.1', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:53:03', '2023-08-17 19:53:07'),
(5, '4.1.2', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:53:08', '2023-08-17 19:53:08'),
(6, '4.1.2.1', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:53:08', '2023-08-17 19:53:09'),
(7, '4.2', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:53:09', '2023-08-17 19:53:12'),
(8, '4.2.0.1', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:53:12', '2023-08-17 19:53:12'),
(9, '4.3', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:53:13', '2023-08-17 19:53:16'),
(10, '4.3.1', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:53:16', '2023-08-17 19:53:16'),
(11, '4.3.2', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:53:17', '2023-08-17 19:53:17'),
(12, '4.3.3', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:53:18', '2023-08-17 19:53:30'),
(13, '4.3.4', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:53:30', '2023-08-17 19:53:31'),
(14, '4.3.5', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:53:31', '2023-08-17 19:53:32'),
(15, '4.4', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:53:32', '2023-08-17 19:54:15'),
(16, '4.5', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:54:16', '2023-08-17 19:54:19'),
(17, '4.6', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:54:19', '2023-08-17 19:55:16'),
(18, '4.6.0.1', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:55:16', '2023-08-17 19:55:16'),
(19, '4.7', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:55:17', '2023-08-17 19:55:17'),
(20, '4.8', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:55:18', '2023-08-17 19:55:18'),
(21, '4.9', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:55:19', '2023-08-17 19:55:22'),
(22, '4.10', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:55:23', '2023-08-17 19:55:23'),
(23, '4.10.1', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:55:23', '2023-08-17 19:55:24'),
(24, '5.0-beta', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:55:24', '2023-08-17 19:56:23'),
(25, '5.0', '10.4.24-MariaDB', '8.0.19', '2023-08-17 19:56:23', NULL),
(26, '5.1.0', '10.4.24-MariaDB', '8.0.19', '2023-08-17 20:05:24', '2023-08-17 20:08:05'),
(27, '5.2.0', '10.4.24-MariaDB', '8.0.19', '2023-08-17 20:08:05', '2023-08-17 20:09:19'),
(28, '5.3.0', '10.4.24-MariaDB', '8.0.19', '2023-08-17 20:09:19', '2023-08-17 20:09:45'),
(29, '5.4.0', '10.4.24-MariaDB', '8.0.19', '2023-08-17 20:09:46', '2023-08-17 20:10:05'),
(30, '5.5.0', '10.4.24-MariaDB', '8.0.19', '2023-08-17 20:10:06', '2023-08-17 20:10:43');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_module`
--

CREATE TABLE `ohrm_module` (
  `id` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `display_name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_module`
--

INSERT INTO `ohrm_module` (`id`, `name`, `status`, `display_name`) VALUES
(1, 'core', 1, 'Core'),
(2, 'admin', 1, 'Admin'),
(3, 'pim', 1, 'PIM'),
(4, 'leave', 1, 'Leave'),
(5, 'time', 1, 'Time'),
(6, 'attendance', 1, 'Attendance'),
(7, 'recruitment', 1, 'Recruitment'),
(8, 'recruitmentApply', 1, 'Recruitment Apply'),
(9, 'communication', 1, 'Communication'),
(10, 'dashboard', 1, 'Dashboard'),
(11, 'performance', 1, 'Performance'),
(12, 'directory', 1, 'Directory'),
(13, 'maintenance', 1, 'Maintenance'),
(14, 'marketPlace', 1, 'Market Place'),
(15, 'buzz', 1, 'Buzz'),
(16, 'auth', 1, 'Auth'),
(17, 'mobile', 1, 'Mobile'),
(18, 'claim', 1, 'Claim');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_module_default_page`
--

CREATE TABLE `ohrm_module_default_page` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `user_role_id` int(11) NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `enable_class` varchar(100) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT 0 COMMENT 'lowest priority 0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_module_default_page`
--

INSERT INTO `ohrm_module_default_page` (`id`, `module_id`, `user_role_id`, `action`, `enable_class`, `priority`) VALUES
(1, 2, 1, 'admin/viewSystemUsers', NULL, 20),
(2, 3, 1, 'pim/viewEmployeeList', NULL, 20),
(3, 3, 3, 'pim/viewEmployeeList', NULL, 10),
(4, 3, 2, 'pim/viewMyDetails', NULL, 0),
(5, 4, 1, 'leave/viewLeaveList', NULL, 20),
(6, 4, 3, 'leave/viewLeaveList', NULL, 10),
(7, 4, 2, 'leave/viewMyLeaveList', NULL, 0),
(8, 4, 1, 'leave/defineLeavePeriod', 'LeavePeriodDefinedHomePageEnabler', 100),
(9, 4, 2, 'leave/showLeavePeriodNotDefinedWarning', 'LeavePeriodDefinedHomePageEnabler', 90),
(10, 5, 1, 'time/viewEmployeeTimesheet', NULL, 20),
(11, 5, 2, 'time/viewMyTimesheet', NULL, 0),
(12, 5, 1, 'time/defineTimesheetPeriod', 'TimesheetPeriodDefinedHomePageEnabler', 200),
(13, 5, 2, 'time/timesheetPeriodNotDefined', 'TimesheetPeriodDefinedHomePageEnabler', 100),
(14, 7, 1, 'recruitment/viewCandidates', NULL, 20),
(15, 7, 5, 'recruitment/viewCandidates', NULL, 10),
(16, 7, 6, 'recruitment/viewCandidates', NULL, 5),
(17, 11, 1, 'performance/searchEvaluatePerformanceReview', NULL, 20),
(18, 11, 3, 'performance/searchEvaluatePerformanceReview', NULL, 10),
(19, 11, 2, 'performance/myPerformanceReview', NULL, 0),
(20, 18, 1, 'claim/viewAssignClaim', NULL, 20),
(21, 18, 3, 'claim/viewAssignClaim', NULL, 10),
(22, 18, 2, 'claim/viewClaim', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_nationality`
--

CREATE TABLE `ohrm_nationality` (
  `id` int(6) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_nationality`
--

INSERT INTO `ohrm_nationality` (`id`, `name`) VALUES
(1, 'Afghan'),
(2, 'Albanian'),
(3, 'Algerian'),
(4, 'American'),
(5, 'Andorran'),
(6, 'Angolan'),
(7, 'Antiguans'),
(8, 'Argentinean'),
(9, 'Armenian'),
(10, 'Australian'),
(11, 'Austrian'),
(12, 'Azerbaijani'),
(13, 'Bahamian'),
(14, 'Bahraini'),
(15, 'Bangladeshi'),
(16, 'Barbadian'),
(17, 'Barbudans'),
(18, 'Batswana'),
(19, 'Belarusian'),
(20, 'Belgian'),
(21, 'Belizean'),
(22, 'Beninese'),
(23, 'Bhutanese'),
(24, 'Bolivian'),
(25, 'Bosnian'),
(26, 'Brazilian'),
(27, 'British'),
(28, 'Bruneian'),
(29, 'Bulgarian'),
(30, 'Burkinabe'),
(31, 'Burmese'),
(32, 'Burundian'),
(33, 'Cambodian'),
(34, 'Cameroonian'),
(35, 'Canadian'),
(36, 'Cape Verdean'),
(37, 'Central African'),
(38, 'Chadian'),
(39, 'Chilean'),
(40, 'Chinese'),
(41, 'Colombian'),
(42, 'Comoran'),
(43, 'Congolese'),
(44, 'Costa Rican'),
(45, 'Croatian'),
(46, 'Cuban'),
(47, 'Cypriot'),
(48, 'Czech'),
(49, 'Danish'),
(50, 'Djibouti'),
(51, 'Dominican'),
(52, 'Dutch'),
(53, 'East Timorese'),
(54, 'Ecuadorean'),
(55, 'Egyptian'),
(56, 'Emirian'),
(57, 'Equatorial Guinean'),
(58, 'Eritrean'),
(59, 'Estonian'),
(60, 'Ethiopian'),
(61, 'Fijian'),
(62, 'Filipino'),
(63, 'Finnish'),
(64, 'French'),
(65, 'Gabonese'),
(66, 'Gambian'),
(67, 'Georgian'),
(68, 'German'),
(69, 'Ghanaian'),
(70, 'Greek'),
(71, 'Grenadian'),
(72, 'Guatemalan'),
(73, 'Guinea-Bissauan'),
(74, 'Guinean'),
(75, 'Guyanese'),
(76, 'Haitian'),
(77, 'Herzegovinian'),
(78, 'Honduran'),
(79, 'Hungarian'),
(80, 'I-Kiribati'),
(81, 'Icelander'),
(82, 'Indian'),
(83, 'Indonesian'),
(84, 'Iranian'),
(85, 'Iraqi'),
(86, 'Irish'),
(87, 'Israeli'),
(88, 'Italian'),
(89, 'Ivorian'),
(90, 'Jamaican'),
(91, 'Japanese'),
(92, 'Jordanian'),
(93, 'Kazakhstani'),
(94, 'Kenyan'),
(95, 'Kittian and Nevisian'),
(96, 'Kuwaiti'),
(97, 'Kyrgyz'),
(98, 'Laotian'),
(99, 'Latvian'),
(100, 'Lebanese'),
(101, 'Liberian'),
(102, 'Libyan'),
(103, 'Liechtensteiner'),
(104, 'Lithuanian'),
(105, 'Luxembourger'),
(106, 'Macedonian'),
(107, 'Malagasy'),
(108, 'Malawian'),
(109, 'Malaysian'),
(110, 'Maldivan'),
(111, 'Malian'),
(112, 'Maltese'),
(113, 'Marshallese'),
(114, 'Mauritanian'),
(115, 'Mauritian'),
(116, 'Mexican'),
(117, 'Micronesian'),
(118, 'Moldovan'),
(119, 'Monacan'),
(120, 'Mongolian'),
(121, 'Moroccan'),
(122, 'Mosotho'),
(123, 'Motswana'),
(124, 'Mozambican'),
(125, 'Namibian'),
(126, 'Nauruan'),
(127, 'Nepalese'),
(128, 'New Zealander'),
(129, 'Nicaraguan'),
(130, 'Nigerian'),
(131, 'Nigerien'),
(132, 'North Korean'),
(133, 'Northern Irish'),
(134, 'Norwegian'),
(135, 'Omani'),
(136, 'Pakistani'),
(137, 'Palauan'),
(138, 'Panamanian'),
(139, 'Papua New Guinean'),
(140, 'Paraguayan'),
(141, 'Peruvian'),
(142, 'Polish'),
(143, 'Portuguese'),
(144, 'Qatari'),
(145, 'Romanian'),
(146, 'Russian'),
(147, 'Rwandan'),
(148, 'Saint Lucian'),
(149, 'Salvadoran'),
(150, 'Samoan'),
(151, 'San Marinese'),
(152, 'Sao Tomean'),
(153, 'Saudi'),
(154, 'Scottish'),
(155, 'Senegalese'),
(156, 'Serbian'),
(157, 'Seychellois'),
(158, 'Sierra Leonean'),
(159, 'Singaporean'),
(160, 'Slovakian'),
(161, 'Slovenian'),
(162, 'Solomon Islander'),
(163, 'Somali'),
(164, 'South African'),
(165, 'South Korean'),
(166, 'Spanish'),
(167, 'Sri Lankan'),
(168, 'Sudanese'),
(169, 'Surinamer'),
(170, 'Swazi'),
(171, 'Swedish'),
(172, 'Swiss'),
(173, 'Syrian'),
(174, 'Taiwanese'),
(175, 'Tajik'),
(176, 'Tanzanian'),
(177, 'Thai'),
(178, 'Togolese'),
(179, 'Tongan'),
(180, 'Trinidadian or Tobagonian'),
(181, 'Tunisian'),
(182, 'Turkish'),
(183, 'Tuvaluan'),
(184, 'Ugandan'),
(185, 'Ukrainian'),
(186, 'Uruguayan'),
(187, 'Uzbekistani'),
(188, 'Venezuelan'),
(189, 'Vietnamese'),
(190, 'Welsh'),
(191, 'Yemenite'),
(192, 'Zambian'),
(193, 'Zimbabwean');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_oauth2_access_token`
--

CREATE TABLE `ohrm_oauth2_access_token` (
  `id` bigint(20) NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expiry_date_time_utc` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `revoked` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_oauth2_authorization_code`
--

CREATE TABLE `ohrm_oauth2_authorization_code` (
  `id` bigint(20) NOT NULL,
  `authorization_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `redirect_uri` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `expiry_date_time_utc` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `revoked` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_oauth2_client`
--

CREATE TABLE `ohrm_oauth2_client` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect_uri` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `is_confidential` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ohrm_oauth2_client`
--

INSERT INTO `ohrm_oauth2_client` (`id`, `name`, `client_id`, `client_secret`, `redirect_uri`, `is_confidential`, `enabled`) VALUES
(1, 'OrangeHRM Mobile App', 'orangehrm_mobile_app', NULL, 'com.orangehrm.opensource://oauthredirect', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_oauth2_refresh_token`
--

CREATE TABLE `ohrm_oauth2_refresh_token` (
  `id` bigint(20) NOT NULL,
  `refresh_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiry_date_time_utc` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `revoked` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_oauth_access_token`
--

CREATE TABLE `ohrm_oauth_access_token` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `scope` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_oauth_authorization_code`
--

CREATE TABLE `ohrm_oauth_authorization_code` (
  `authorization_code` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `redirect_uri` varchar(2000) NOT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `scope` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_oauth_client`
--

CREATE TABLE `ohrm_oauth_client` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) NOT NULL,
  `redirect_uri` varchar(2000) NOT NULL,
  `grant_types` varchar(80) DEFAULT NULL,
  `scope` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ohrm_oauth_client`
--

INSERT INTO `ohrm_oauth_client` (`client_id`, `client_secret`, `redirect_uri`, `grant_types`, `scope`) VALUES
('orangehrm_mobile_app', '', '', 'password refresh_token', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_oauth_refresh_token`
--

CREATE TABLE `ohrm_oauth_refresh_token` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `scope` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_oauth_scope`
--

CREATE TABLE `ohrm_oauth_scope` (
  `scope` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_oauth_user`
--

CREATE TABLE `ohrm_oauth_user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(2000) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_openid_provider`
--

CREATE TABLE `ohrm_openid_provider` (
  `id` int(10) NOT NULL,
  `provider_name` varchar(40) DEFAULT NULL,
  `provider_url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_openid_user_identity`
--

CREATE TABLE `ohrm_openid_user_identity` (
  `user_id` int(10) DEFAULT NULL,
  `provider_id` int(10) DEFAULT NULL,
  `user_identity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_operational_country`
--

CREATE TABLE `ohrm_operational_country` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_code` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_organization_gen_info`
--

CREATE TABLE `ohrm_organization_gen_info` (
  `id` int(4) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tax_id` varchar(30) DEFAULT NULL,
  `registration_number` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `province` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `zip_code` varchar(30) DEFAULT NULL,
  `street1` varchar(100) DEFAULT NULL,
  `street2` varchar(100) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_organization_gen_info`
--

INSERT INTO `ohrm_organization_gen_info` (`id`, `name`, `tax_id`, `registration_number`, `phone`, `fax`, `email`, `country`, `province`, `city`, `zip_code`, `street1`, `street2`, `note`) VALUES
(1, 'Test', NULL, NULL, NULL, NULL, NULL, 'BD', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_pay_grade`
--

CREATE TABLE `ohrm_pay_grade` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_pay_grade_currency`
--

CREATE TABLE `ohrm_pay_grade_currency` (
  `pay_grade_id` int(11) NOT NULL,
  `currency_id` varchar(6) NOT NULL DEFAULT '',
  `min_salary` double DEFAULT NULL,
  `max_salary` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_performance_review`
--

CREATE TABLE `ohrm_performance_review` (
  `id` int(7) NOT NULL,
  `status_id` int(7) DEFAULT NULL,
  `employee_number` int(7) DEFAULT NULL,
  `work_period_start` date DEFAULT NULL,
  `work_period_end` date DEFAULT NULL,
  `job_title_code` int(7) DEFAULT NULL,
  `department_id` int(7) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `completed_date` date DEFAULT NULL,
  `activated_date` datetime DEFAULT NULL,
  `final_comment` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `final_rate` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_performance_track`
--

CREATE TABLE `ohrm_performance_track` (
  `id` int(11) NOT NULL,
  `emp_number` int(7) NOT NULL,
  `tracker_name` varchar(200) NOT NULL,
  `added_date` timestamp NULL DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_performance_tracker_log`
--

CREATE TABLE `ohrm_performance_tracker_log` (
  `id` int(11) NOT NULL,
  `performance_track_id` int(11) DEFAULT NULL,
  `log` varchar(150) DEFAULT NULL,
  `comment` varchar(3000) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `added_date` timestamp NULL DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  `reviewer_id` int(7) DEFAULT NULL,
  `achievement` varchar(45) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_performance_tracker_reviewer`
--

CREATE TABLE `ohrm_performance_tracker_reviewer` (
  `id` int(11) NOT NULL,
  `performance_track_id` int(11) NOT NULL,
  `reviewer_id` int(7) NOT NULL,
  `added_date` timestamp NULL DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_plugin`
--

CREATE TABLE `ohrm_plugin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `version` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_project`
--

CREATE TABLE `ohrm_project` (
  `project_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_project_activity`
--

CREATE TABLE `ohrm_project_activity` (
  `activity_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(110) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_project_admin`
--

CREATE TABLE `ohrm_project_admin` (
  `project_id` int(11) NOT NULL,
  `emp_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_registration_event_queue`
--

CREATE TABLE `ohrm_registration_event_queue` (
  `id` int(11) NOT NULL,
  `event_type` int(11) NOT NULL,
  `published` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `event_time` datetime DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `data` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_report`
--

CREATE TABLE `ohrm_report` (
  `report_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `report_group_id` bigint(20) NOT NULL,
  `use_filter_field` tinyint(1) NOT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_report`
--

INSERT INTO `ohrm_report` (`report_id`, `name`, `report_group_id`, `use_filter_field`, `type`) VALUES
(1, 'Project Report', 1, 1, NULL),
(2, 'Employee Report', 1, 1, NULL),
(3, 'Project Activity Details', 1, 1, NULL),
(4, 'Attendance Total Summary Report', 2, 0, NULL),
(5, 'PIM Sample Report', 3, 1, 'PIM_DEFINED');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_report_group`
--

CREATE TABLE `ohrm_report_group` (
  `report_group_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `core_sql` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_report_group`
--

INSERT INTO `ohrm_report_group` (`report_group_id`, `name`, `core_sql`) VALUES
(1, 'timesheet', 'SELECT selectCondition FROM ohrm_project_activity LEFT JOIN (SELECT * FROM ohrm_timesheet_item WHERE whereCondition1) AS ohrm_timesheet_item  ON (ohrm_timesheet_item.activity_id = ohrm_project_activity.activity_id) LEFT JOIN ohrm_project ON (ohrm_project.project_id = ohrm_project_activity.project_id) LEFT JOIN hs_hr_employee ON (hs_hr_employee.emp_number = ohrm_timesheet_item.employee_id) LEFT JOIN ohrm_timesheet ON (ohrm_timesheet.timesheet_id = ohrm_timesheet_item.timesheet_id) LEFT JOIN ohrm_customer ON (ohrm_customer.customer_id = ohrm_project.customer_id) WHERE whereCondition2 groupByClause ORDER BY ohrm_customer.name, ohrm_project.name, ohrm_project_activity.name, hs_hr_employee.emp_lastname, hs_hr_employee.emp_firstname'),
(2, 'attendance', 'SELECT selectCondition FROM hs_hr_employee LEFT JOIN (SELECT * FROM ohrm_attendance_record WHERE ( ( ohrm_attendance_record.punch_in_user_time BETWEEN \"#@fromDate@,@1970-01-01@#\" AND #@\"toDate\"@,@CURDATE()@# ) AND ( ohrm_attendance_record.punch_out_user_time BETWEEN \"#@fromDate@,@1970-01-01@#\" AND #@\"toDate\"@,@CURDATE()@# ) ) ) AS ohrm_attendance_record ON (hs_hr_employee.emp_number = ohrm_attendance_record.employee_id) WHERE hs_hr_employee.emp_number = #@employeeId@,@hs_hr_employee.emp_number AND (hs_hr_employee.termination_id is null) @# AND (hs_hr_employee.job_title_code = #@\"jobTitle\")@,@hs_hr_employee.job_title_code OR hs_hr_employee.job_title_code is null)@# AND (hs_hr_employee.work_station IN (#@subUnit)@,@SELECT id FROM ohrm_subunit) OR hs_hr_employee.work_station is null@#) AND (hs_hr_employee.emp_status = #@\"employeeStatus\")@,@hs_hr_employee.emp_status OR hs_hr_employee.emp_status is null)@# groupByClause ORDER BY hs_hr_employee.emp_lastname, hs_hr_employee.emp_firstname'),
(3, 'pim', 'SELECT selectCondition FROM hs_hr_employee \n                    LEFT JOIN hs_hr_emp_emergency_contacts ON \n                        (hs_hr_employee.emp_number = hs_hr_emp_emergency_contacts.emp_number) \n                    LEFT JOIN ohrm_subunit ON \n                        (hs_hr_employee.work_station = ohrm_subunit.id) \n                    LEFT JOIN ohrm_employment_status ON \n                        (hs_hr_employee.emp_status = ohrm_employment_status.id) \n                    LEFT JOIN ohrm_job_title ON\n                        (hs_hr_employee.job_title_code = ohrm_job_title.id)\n                    LEFT JOIN ohrm_job_category ON \n                        (hs_hr_employee.eeo_cat_code = ohrm_job_category.id) \n                    LEFT JOIN ohrm_nationality ON\n                        (hs_hr_employee.nation_code = ohrm_nationality.id)\n                    LEFT JOIN hs_hr_emp_dependents ON \n                        (hs_hr_employee.emp_number = hs_hr_emp_dependents.emp_number)\n                    LEFT JOIN hs_hr_emp_locations AS emp_location ON\n                        (hs_hr_employee.emp_number = emp_location.emp_number)\n                    LEFT JOIN ohrm_location ON\n                        (emp_location.location_id = ohrm_location.id)\n                    LEFT JOIN hs_hr_emp_contract_extend ON \n                        (hs_hr_employee.emp_number = hs_hr_emp_contract_extend.emp_number) \n                    LEFT JOIN hs_hr_emp_basicsalary ON \n                        (hs_hr_employee.emp_number = hs_hr_emp_basicsalary.emp_number) \n                    LEFT JOIN ohrm_pay_grade ON \n                        (hs_hr_emp_basicsalary.sal_grd_code = ohrm_pay_grade.id) \n                    LEFT JOIN hs_hr_currency_type ON \n                        (hs_hr_emp_basicsalary.currency_id = hs_hr_currency_type.currency_id) \n                    LEFT JOIN hs_hr_payperiod ON \n                        (hs_hr_emp_basicsalary.payperiod_code = hs_hr_payperiod.payperiod_code) \n                    LEFT JOIN hs_hr_emp_passport ON \n                        (hs_hr_employee.emp_number = hs_hr_emp_passport.emp_number) \n                    LEFT JOIN hs_hr_emp_reportto AS subordinate_list ON \n                        (hs_hr_employee.emp_number = subordinate_list.erep_sup_emp_number) \n                    LEFT JOIN hs_hr_employee AS subordinate ON\n                        (subordinate.emp_number = subordinate_list.erep_sub_emp_number)\n                    LEFT JOIN ohrm_emp_reporting_method AS subordinate_reporting_method ON \n                        (subordinate_list.erep_reporting_mode = subordinate_reporting_method.reporting_method_id) \n                    LEFT JOIN hs_hr_emp_work_experience ON \n                        (hs_hr_employee.emp_number = hs_hr_emp_work_experience.emp_number) \n                    LEFT JOIN ohrm_emp_education ON \n                        (hs_hr_employee.emp_number = ohrm_emp_education.emp_number) \n                    LEFT JOIN ohrm_education ON \n                        (ohrm_emp_education.education_id = ohrm_education.id) \n                    LEFT JOIN hs_hr_emp_skill ON \n                        (hs_hr_employee.emp_number = hs_hr_emp_skill.emp_number) \n                    LEFT JOIN ohrm_skill ON \n                        (hs_hr_emp_skill.skill_id = ohrm_skill.id) \n                    LEFT JOIN hs_hr_emp_language ON \n                        (hs_hr_employee.emp_number = hs_hr_emp_language.emp_number) \n                    LEFT JOIN ohrm_language ON \n                        (hs_hr_emp_language.lang_id = ohrm_language.id) \n                    LEFT JOIN ohrm_emp_license ON \n                        (hs_hr_employee.emp_number = ohrm_emp_license.emp_number) \n                    LEFT JOIN ohrm_license ON \n                        (ohrm_emp_license.license_id = ohrm_license.id) \n                    LEFT JOIN hs_hr_emp_member_detail ON \n                        (hs_hr_employee.emp_number = hs_hr_emp_member_detail.emp_number) \n                    LEFT JOIN ohrm_membership ON\n                        (hs_hr_emp_member_detail.membship_code = ohrm_membership.id)\n                    LEFT JOIN hs_hr_country ON \n                        (hs_hr_employee.coun_code = hs_hr_country.cou_code) \n                    LEFT JOIN hs_hr_emp_directdebit ON \n                        (hs_hr_emp_basicsalary.id = hs_hr_emp_directdebit.salary_id) \n                    LEFT JOIN hs_hr_emp_reportto AS supervisor_list ON \n                        (hs_hr_employee.emp_number = supervisor_list.erep_sub_emp_number) \n                    LEFT JOIN hs_hr_employee AS supervisor ON\n                        (supervisor.emp_number = supervisor_list.erep_sup_emp_number)\n                    LEFT JOIN ohrm_emp_reporting_method AS supervisor_reporting_method ON \n                        (supervisor_list.erep_reporting_mode = supervisor_reporting_method.reporting_method_id) \n                    LEFT JOIN ohrm_emp_termination ON\n                        (hs_hr_employee.termination_id = ohrm_emp_termination.id)\n                    LEFT JOIN ohrm_emp_termination_reason ON\n                        (ohrm_emp_termination.reason_id = ohrm_emp_termination_reason.id)\n                WHERE hs_hr_employee.emp_number in (\n                    SELECT hs_hr_employee.emp_number FROM hs_hr_employee\n                        LEFT JOIN hs_hr_emp_basicsalary ON \n                            (hs_hr_employee.emp_number = hs_hr_emp_basicsalary.emp_number) \n                        LEFT JOIN ohrm_emp_education ON \n                            (hs_hr_employee.emp_number = ohrm_emp_education.emp_number) \n                        LEFT JOIN hs_hr_emp_skill ON \n                            (hs_hr_employee.emp_number = hs_hr_emp_skill.emp_number) \n                        LEFT JOIN hs_hr_emp_language ON \n                            (hs_hr_employee.emp_number = hs_hr_emp_language.emp_number) \n                    WHERE whereCondition1\n                )\n                GROUP BY \n                     hs_hr_employee.emp_number,\n                     hs_hr_employee.emp_lastname,\n                     hs_hr_employee.emp_firstname,\n                     hs_hr_employee.emp_middle_name,\n                     hs_hr_employee.emp_birthday,\n                     ohrm_nationality.name,\n                     hs_hr_employee.emp_gender,\n                     hs_hr_employee.emp_marital_status,\n                     hs_hr_employee.emp_dri_lice_num,\n                     hs_hr_employee.emp_dri_lice_exp_date,\n                     hs_hr_employee.emp_street1,\n                     hs_hr_employee.emp_street2,\n                     hs_hr_employee.city_code,\n                     hs_hr_employee.provin_code,\n                     hs_hr_employee.emp_zipcode,\n                     hs_hr_country.cou_code,\n                     hs_hr_employee.emp_hm_telephone,\n                     hs_hr_employee.emp_mobile,\n                     hs_hr_employee.emp_work_telephone,\n                     hs_hr_employee.emp_work_email,\n                     hs_hr_employee.emp_oth_email\n\nORDER BY hs_hr_employee.emp_lastname\n');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_reset_password`
--

CREATE TABLE `ohrm_reset_password` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reset_email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `reset_request_date` datetime NOT NULL,
  `reset_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `expired` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_rest_api_usage`
--

CREATE TABLE `ohrm_rest_api_usage` (
  `id` int(11) NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` smallint(6) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_reviewer`
--

CREATE TABLE `ohrm_reviewer` (
  `id` int(7) NOT NULL,
  `review_id` int(7) DEFAULT NULL,
  `employee_number` int(7) DEFAULT NULL,
  `status` int(7) DEFAULT NULL,
  `reviewer_group_id` int(7) DEFAULT NULL,
  `completed_date` datetime DEFAULT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_reviewer_group`
--

CREATE TABLE `ohrm_reviewer_group` (
  `id` int(7) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `piority` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_reviewer_group`
--

INSERT INTO `ohrm_reviewer_group` (`id`, `name`, `piority`) VALUES
(1, 'Supervisor', 1),
(2, 'Employee', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_reviewer_rating`
--

CREATE TABLE `ohrm_reviewer_rating` (
  `id` int(11) NOT NULL,
  `rating` decimal(18,2) DEFAULT NULL,
  `kpi_id` int(7) DEFAULT NULL,
  `review_id` int(7) DEFAULT NULL,
  `reviewer_id` int(7) NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_role_user_selection_rule`
--

CREATE TABLE `ohrm_role_user_selection_rule` (
  `user_role_id` int(10) NOT NULL,
  `selection_rule_id` int(10) NOT NULL,
  `configurable_params` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_screen`
--

CREATE TABLE `ohrm_screen` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `module_id` int(11) NOT NULL,
  `action_url` varchar(255) NOT NULL,
  `menu_configurator` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_screen`
--

INSERT INTO `ohrm_screen` (`id`, `name`, `module_id`, `action_url`, `menu_configurator`) VALUES
(1, 'User List', 2, 'viewSystemUsers', NULL),
(2, 'Add/Edit System User', 2, 'saveSystemUser', 'OrangeHRM\\Admin\\Menu\\UserMenuConfigurator'),
(3, 'Delete System Users', 2, 'deleteSystemUsers', NULL),
(4, 'Add Employee', 3, 'addEmployee', NULL),
(5, 'View Employee List', 3, 'viewEmployeeList', NULL),
(6, 'Delete Employees', 3, 'deleteEmployees', NULL),
(7, 'Leave Type List', 4, 'leaveTypeList', NULL),
(8, 'Define Leave Type', 4, 'defineLeaveType', 'OrangeHRM\\Leave\\Menu\\LeaveTypeMenuConfigurator'),
(9, 'Undelete Leave Type', 4, 'undeleteLeaveType', NULL),
(10, 'Delete Leave Type', 4, 'deleteLeaveType', NULL),
(11, 'View Holiday List', 4, 'viewHolidayList', NULL),
(12, 'Define Holiday', 4, 'defineHoliday', NULL),
(13, 'Delete Holiday', 4, 'deleteHoliday', NULL),
(14, 'Define WorkWeek', 4, 'defineWorkWeek', NULL),
(16, 'Leave List', 4, 'viewLeaveList', NULL),
(17, 'Assign Leave', 4, 'assignLeave', NULL),
(18, 'View Leave Summary', 4, 'viewLeaveSummary', NULL),
(19, 'Save Leave Entitlements', 4, 'saveLeaveEntitlements', NULL),
(20, 'General Information', 2, 'viewOrganizationGeneralInformation', NULL),
(21, 'Location List', 2, 'viewLocations', NULL),
(22, 'View Company Structure', 2, 'viewCompanyStructure', NULL),
(23, 'Job Title List', 2, 'viewJobTitleList', NULL),
(24, 'Pay Grade List', 2, 'viewPayGrades', NULL),
(25, 'Employment Status List', 2, 'employmentStatus', NULL),
(26, 'Job Category List', 2, 'jobCategory', NULL),
(27, 'Work Shift List', 2, 'workShift', NULL),
(28, 'Skill List', 2, 'viewSkills', NULL),
(29, 'Education List', 2, 'viewEducation', NULL),
(30, 'License List', 2, 'viewLicenses', NULL),
(31, 'Language List', 2, 'viewLanguages', NULL),
(32, 'Membership List', 2, 'membership', NULL),
(33, 'Nationality List', 2, 'nationality', NULL),
(34, 'Add/Edit Mail Configuration', 2, 'listMailConfiguration', NULL),
(35, 'Notification List', 2, 'viewEmailNotification', NULL),
(36, 'Customer List', 5, 'viewCustomers', NULL),
(37, 'Project List', 5, 'viewProjects', NULL),
(38, 'Localization', 2, 'localization', NULL),
(39, 'Module Configuration', 2, 'viewModules', NULL),
(40, 'Configure PIM', 3, 'configurePim', NULL),
(41, 'Custom Field List', 3, 'listCustomFields', NULL),
(42, 'Data Import', 3, 'pimCsvImport', NULL),
(43, 'Reporting Method List', 3, 'viewReportingMethods', NULL),
(44, 'Termination Reason List', 3, 'viewTerminationReasons', NULL),
(45, 'PIM Reports List', 3, 'viewDefinedPredefinedReports', NULL),
(46, 'View MyInfo', 3, 'viewMyDetails', 'OrangeHRM\\Pim\\Menu\\MyInfoMenuConfigurator'),
(47, 'Define Leave Period', 4, 'defineLeavePeriod', NULL),
(48, 'View My Leave List', 4, 'viewMyLeaveList', NULL),
(49, 'Apply Leave', 4, 'applyLeave', NULL),
(50, 'Define Timesheet Start Date', 5, 'defineTimesheetPeriod', NULL),
(51, 'View My Timesheet', 5, 'viewMyTimesheet', NULL),
(52, 'View Employee Timesheet', 5, 'viewEmployeeTimesheet', NULL),
(53, 'View My Attendance', 6, 'viewMyAttendanceRecord', 'OrangeHRM\\Attendance\\Menu\\AttendanceMenuConfigurator'),
(54, 'Punch In/Out', 6, 'punchIn', 'OrangeHRM\\Attendance\\Menu\\AttendanceMenuConfigurator'),
(55, 'View Employee Attendance', 6, 'viewAttendanceRecord', 'OrangeHRM\\Attendance\\Menu\\AttendanceMenuConfigurator'),
(56, 'Attendance Configuration', 6, 'configure', 'OrangeHRM\\Attendance\\Menu\\AttendanceMenuConfigurator'),
(57, 'View Project Report Criteria', 5, 'displayProjectReportCriteria', NULL),
(58, 'View Employee Report Criteria', 5, 'displayEmployeeReportCriteria', NULL),
(59, 'View Attendance Report Criteria', 5, 'displayAttendanceSummaryReportCriteria', NULL),
(60, 'Candidate List', 7, 'viewCandidates', NULL),
(61, 'Vacancy List', 7, 'viewJobVacancy', NULL),
(67, 'View Time Module', 5, 'viewTimeModule', NULL),
(68, 'View Leave Module', 4, 'viewLeaveModule', NULL),
(69, 'Leave Entitlements', 4, 'viewLeaveEntitlements', NULL),
(70, 'My Leave Entitlements', 4, 'viewMyLeaveEntitlements', NULL),
(71, 'Delete Leave Entitlements', 4, 'deleteLeaveEntitlements', NULL),
(72, 'Add Leave Entitlement', 4, 'addLeaveEntitlement', NULL),
(73, 'Edit Leave Entitlement', 4, 'editLeaveEntitlement', NULL),
(74, 'View Admin Module', 2, 'viewAdminModule', NULL),
(75, 'View PIM Module', 3, 'viewPimModule', NULL),
(76, 'View Recruitment Module', 7, 'viewRecruitmentModule', NULL),
(78, 'Leave Balance Report', 4, 'viewLeaveBalanceReport', NULL),
(79, 'My Leave Balance Report', 4, 'viewMyLeaveBalanceReport', NULL),
(80, 'Save Job Title', 2, 'saveJobTitle', 'OrangeHRM\\Admin\\Menu\\JobTitleMenuConfigurator'),
(81, 'Delete Job Title', 2, 'deleteJobTitle', NULL),
(82, 'Save Pay Grade', 2, 'payGrade', 'OrangeHRM\\Admin\\Menu\\PayGradeConfigurator'),
(83, 'Delete Pay Grade', 2, 'deletePayGrades', NULL),
(84, 'Save Pay Grade Currency', 2, 'savePayGradeCurrency', NULL),
(85, 'Delete Pay Grade Currency', 2, 'deletePayGradeCurrency', NULL),
(86, 'Add Customer', 5, 'addCustomer', 'OrangeHRM\\Time\\Menu\\CustomerMenuConfigurator'),
(87, 'Delete Customer', 2, 'deleteCustomer', NULL),
(88, 'Save Project', 5, 'saveProject', 'OrangeHRM\\Time\\Menu\\ProjectMenuConfigurator'),
(89, 'Delete Project', 2, 'deleteProject', NULL),
(90, 'Add Project Adtivity', 2, 'addProjectActivity', NULL),
(91, 'Delete Project Adtivity', 2, 'deleteProjectActivity', NULL),
(92, 'Define PIM reports', 3, 'definePredefinedReport', 'OrangeHRM\\Pim\\Menu\\PimReportMenuConfigurator'),
(93, 'Display PIM reports', 3, 'displayPredefinedReport', 'OrangeHRM\\Pim\\Menu\\PimReportMenuConfigurator'),
(94, 'Add Job Vacancy', 7, 'addJobVacancy', 'OrangeHRM\\Recruitment\\Menu\\VacancyMenuConfigurator'),
(95, 'Delete Job Vacancy', 7, 'deleteJobVacancy', NULL),
(96, 'Add Candidate', 7, 'addCandidate', 'OrangeHRM\\Recruitment\\Menu\\CandidateMenuConfigurator'),
(97, 'Delete Candidate', 7, 'deleteCandidateVacancies', NULL),
(98, 'View Leave Request', 4, 'viewLeaveRequest', 'OrangeHRM\\Leave\\Menu\\DetailedLeaveRequestMenuConfigurator'),
(99, 'Change Leave Status', 4, 'changeLeaveStatus', NULL),
(100, 'Terminate Employment', 3, 'terminateEmployement', NULL),
(101, 'View Attendance Summary Report', 5, 'displayAttendanceSummaryReport', NULL),
(102, 'View Project Activity Details Report', 5, 'displayProjectActivityDetailsReport', 'OrangeHRM\\Time\\Menu\\DetailedProjectActivityReportMenuConfigurator'),
(103, 'Dashboard', 10, 'index', NULL),
(104, 'Save KPI', 11, 'saveKpi', 'OrangeHRM\\Performance\\Menu\\KpiMenuConfigurator'),
(105, 'Saearch KPI', 11, 'searchKpi', NULL),
(106, 'My Reviews', 11, 'myPerformanceReview', NULL),
(107, 'Add Review', 11, 'saveReview', 'OrangeHRM\\Performance\\Menu\\ManageReviewMenuConfigurator'),
(108, 'Review Evaluate', 11, 'reviewEvaluate', 'OrangeHRM\\Performance\\Menu\\MyReviewMenuConfigurator'),
(109, 'Review Evaluate By Admin', 11, 'reviewEvaluateByAdmin', 'OrangeHRM\\Performance\\Menu\\AdminReviewMenuConfigurator'),
(110, 'Search Evaluate Performance', 11, 'searchEvaluatePerformanceReview', NULL),
(111, 'Search Performance Review', 11, 'searchPerformanceReview', NULL),
(112, 'Manage_Trackers', 11, 'viewPerformanceTracker', NULL),
(113, 'Employee_Trackers', 11, 'viewEmployeePerformanceTrackerList', NULL),
(114, 'My_Trackers', 11, 'viewMyPerformanceTrackerList', NULL),
(115, 'Employee_Tracker_Logs', 11, 'addPerformanceTrackerLog', 'OrangeHRM\\Performance\\Menu\\PerformanceTrackerLogMenuConfigurator'),
(116, 'Directory', 12, 'viewDirectory', NULL),
(117, 'Manage OpenId', 2, 'openIdProvider', NULL),
(118, 'Register OAuth Client', 2, 'registerOAuthClient', NULL),
(119, 'Purge Employee Records', 13, 'purgeEmployee', NULL),
(120, 'Purge Candidate Records', 13, 'purgeCandidateData', NULL),
(121, 'Access Employee Records', 13, 'accessEmployeeData', NULL),
(122, 'Marcket Place Home Page', 14, 'ohrmAddons', NULL),
(123, 'Buzz', 15, 'viewBuzz', NULL),
(124, 'Language Packages', 2, 'languagePackage', NULL),
(125, 'Language Customization', 2, 'languageCustomization', NULL),
(126, 'Save Language Customization', 2, 'saveLanguageCustomization', NULL),
(127, 'Export Language Package', 2, 'exportLanguagePackage', NULL),
(128, 'Add Theme', 2, 'addTheme', NULL),
(129, 'Save Location', 2, 'saveLocation', 'OrangeHRM\\Admin\\Menu\\LocationMenuConfigurator'),
(130, 'View Performance Module', 11, 'viewPerformanceModule', NULL),
(131, 'Save Employment Status', 2, 'saveEmploymentStatus', 'OrangeHRM\\Admin\\Menu\\EmploymentStatusMenuConfigurator'),
(132, 'Save Job Category', 2, 'saveJobCategory', 'OrangeHRM\\Admin\\Menu\\JobCategoryMenuConfigurator'),
(133, 'Save Work Shift', 2, 'saveWorkShifts', 'OrangeHRM\\Admin\\Menu\\WorkShiftMenuConfigurator'),
(134, 'Save Skills', 2, 'saveSkills', 'OrangeHRM\\Admin\\Menu\\QualificationsMenuConfigurator'),
(135, 'Save Education', 2, 'saveEducation', 'OrangeHRM\\Admin\\Menu\\QualificationsMenuConfigurator'),
(136, 'Save Licenses', 2, 'saveLicenses', 'OrangeHRM\\Admin\\Menu\\QualificationsMenuConfigurator'),
(137, 'Save Languages', 2, 'saveLanguages', 'OrangeHRM\\Admin\\Menu\\QualificationsMenuConfigurator'),
(138, 'Save Memberships', 2, 'saveMemberships', 'OrangeHRM\\Admin\\Menu\\MembershipMenuConfigurator'),
(139, 'Save Nationalities', 2, 'saveNationality', 'OrangeHRM\\Admin\\Menu\\NationalityMenuConfigurator'),
(140, 'Add/Edit Email Subscriptions', 2, 'saveSubscriber', 'OrangeHRM\\Admin\\Menu\\EmailSubscriptionMenuConfigurator'),
(141, 'Save Custom Field', 3, 'saveCustomFields', 'OrangeHRM\\Pim\\Menu\\CustomFieldMenuConfigurator'),
(142, 'Save Reporting Method', 3, 'saveReportingMethod', 'OrangeHRM\\Pim\\Menu\\ReportingMethodMenuConfigurator'),
(143, 'Save Termination Reason', 3, 'saveTerminationReasons', 'OrangeHRM\\Pim\\Menu\\TerminationReasonMenuConfigurator'),
(144, 'Save Holiday', 4, 'saveHolidays', 'OrangeHRM\\Leave\\Menu\\HolidayMenuConfigurator'),
(145, 'Edit Timesheet', 5, 'editTimesheet', 'OrangeHRM\\Time\\Menu\\TimesheetMenuConfigurator'),
(146, 'Employee Timesheet', 5, 'viewTimesheet', 'OrangeHRM\\Time\\Menu\\EmployeeTimesheetMenuConfigurator'),
(147, 'Punch Out', 6, 'punchOut', 'OrangeHRM\\Attendance\\Menu\\PunchOutMenuConfigurator'),
(148, 'Edit My Attendance Records', 6, 'editAttendanceRecord', 'OrangeHRM\\Attendance\\Menu\\EditMyAttendanceRecordMenuConfigurator'),
(149, 'Edit Employee Attendance Records', 6, 'editEmployeeAttendanceRecord', 'OrangeHRM\\Attendance\\Menu\\EditEmployeeAttendanceRecordMenuConfigurator'),
(150, 'Employee Punch In/Out', 6, 'proxyPunchInPunchOut', 'OrangeHRM\\Attendance\\Menu\\EmployeePunchInOutMenuConfigurator'),
(151, 'Performance Tracker Save', 11, 'addPerformanceTracker', 'OrangeHRM\\Performance\\Menu\\PerformanceTrackerMenuConfigurator'),
(152, 'Download Corporate Branding Images', 2, 'theme', NULL),
(153, 'View Maintenance Module', 13, 'viewMaintenanceModule', NULL),
(154, 'Change Candidate Vacancy Status', 7, 'changeCandidateVacancyStatus', 'OrangeHRM\\Recruitment\\Menu\\CandidateMenuConfigurator'),
(155, 'View Candidate History', 7, 'candidateHistory', 'OrangeHRM\\Recruitment\\Menu\\CandidateMenuConfigurator'),
(156, 'View Candidate Interview Attachments', 7, 'interviewAttachments', 'OrangeHRM\\Recruitment\\Menu\\CandidateMenuConfigurator'),
(157, 'PIM - Personal Details', 3, 'viewPersonalDetails', 'OrangeHRM\\Pim\\Menu\\PIMLeftMenuItemConfigurator'),
(158, 'PIM - Contact Details', 3, 'contactDetails', 'OrangeHRM\\Pim\\Menu\\PIMLeftMenuItemConfigurator'),
(159, 'PIM - Emergency Contacts', 3, 'viewEmergencyContacts', 'OrangeHRM\\Pim\\Menu\\PIMLeftMenuItemConfigurator'),
(160, 'PIM - Dependents', 3, 'viewDependents', 'OrangeHRM\\Pim\\Menu\\PIMLeftMenuItemConfigurator'),
(161, 'PIM - Immigration', 3, 'viewImmigration', 'OrangeHRM\\Pim\\Menu\\PIMLeftMenuItemConfigurator'),
(162, 'PIM - Job', 3, 'viewJobDetails', 'OrangeHRM\\Pim\\Menu\\PIMLeftMenuItemConfigurator'),
(163, 'PIM - Salary', 3, 'viewSalaryList', 'OrangeHRM\\Pim\\Menu\\PIMLeftMenuItemConfigurator'),
(164, 'PIM - Tax Exemptions', 3, 'viewUsTaxExemptions', 'OrangeHRM\\Pim\\Menu\\PIMLeftMenuItemConfigurator'),
(165, 'PIM - Report-to', 3, 'viewReportToDetails', 'OrangeHRM\\Pim\\Menu\\PIMLeftMenuItemConfigurator'),
(166, 'PIM - Qualifications', 3, 'viewQualifications', 'OrangeHRM\\Pim\\Menu\\PIMLeftMenuItemConfigurator'),
(167, 'PIM - Memberships', 3, 'viewMemberships', 'OrangeHRM\\Pim\\Menu\\PIMLeftMenuItemConfigurator'),
(168, 'PIM - Change Profile Picture', 3, 'viewPhotograph', 'OrangeHRM\\Pim\\Menu\\PIMLeftMenuItemConfigurator'),
(169, 'Admin - LDAP Configuration', 2, 'ldapConfiguration', NULL),
(170, 'View Claim Module', 18, 'viewClaimModule', NULL),
(171, 'Events', 18, 'viewEvents', NULL),
(172, 'Create Event', 18, 'saveEvents', NULL),
(173, 'Expense Types', 18, 'viewExpense', NULL),
(174, 'Create Expense', 18, 'saveExpense', NULL),
(175, 'Submit Claim', 18, 'submitClaim', NULL),
(176, 'Submit Claim Request', 18, 'submitClaim/id/{id}', NULL),
(177, 'My Claims', 18, 'viewClaim', NULL),
(178, 'Assign Claim', 18, 'assignClaim', NULL),
(179, 'Assign Claim Request', 18, 'assignClaim/id/{id}', NULL),
(180, 'Employee Claims', 18, 'viewAssignClaim', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_selected_composite_display_field`
--

CREATE TABLE `ohrm_selected_composite_display_field` (
  `id` bigint(20) NOT NULL,
  `composite_display_field_id` bigint(20) NOT NULL,
  `report_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_selected_composite_display_field`
--

INSERT INTO `ohrm_selected_composite_display_field` (`id`, `composite_display_field_id`, `report_id`) VALUES
(1, 1, 3),
(2, 1, 4),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_selected_display_field`
--

CREATE TABLE `ohrm_selected_display_field` (
  `id` bigint(20) NOT NULL,
  `display_field_id` bigint(20) NOT NULL,
  `report_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_selected_display_field`
--

INSERT INTO `ohrm_selected_display_field` (`id`, `display_field_id`, `report_id`) VALUES
(2, 2, 1),
(4, 8, 2),
(5, 9, 5),
(6, 10, 5),
(7, 11, 5),
(8, 12, 5),
(9, 13, 5),
(10, 14, 5),
(11, 15, 5),
(13, 17, 5),
(14, 18, 5),
(15, 19, 5),
(16, 20, 5),
(17, 21, 5),
(18, 22, 5),
(19, 23, 5),
(20, 24, 5),
(21, 25, 5),
(22, 26, 5),
(23, 27, 5),
(24, 28, 5),
(25, 29, 5),
(26, 30, 5),
(27, 31, 5),
(28, 32, 5),
(29, 33, 5),
(31, 35, 5),
(32, 36, 5),
(33, 37, 5),
(34, 38, 5),
(35, 39, 5),
(36, 40, 5),
(37, 41, 5),
(38, 42, 5),
(39, 43, 5),
(40, 44, 5),
(41, 45, 5),
(43, 47, 5),
(44, 48, 5),
(45, 49, 5),
(48, 52, 5),
(49, 53, 5),
(50, 54, 5),
(51, 55, 5),
(53, 57, 5),
(54, 58, 5),
(55, 59, 5),
(56, 60, 5),
(57, 61, 5),
(58, 62, 5),
(59, 63, 5),
(60, 64, 5),
(61, 65, 5),
(62, 66, 5),
(63, 67, 5),
(64, 68, 5),
(65, 69, 5),
(66, 70, 5),
(67, 71, 5),
(68, 72, 5),
(69, 73, 5),
(70, 74, 5),
(71, 75, 5),
(72, 76, 5),
(73, 77, 5),
(74, 78, 5),
(76, 80, 5),
(77, 81, 5),
(78, 82, 5),
(79, 83, 5),
(80, 84, 5),
(81, 85, 5),
(82, 86, 5),
(83, 87, 5),
(84, 88, 5),
(85, 89, 5),
(86, 90, 5),
(87, 91, 5),
(88, 92, 5),
(89, 93, 5),
(90, 94, 5),
(91, 95, 5),
(93, 97, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_selected_display_field_group`
--

CREATE TABLE `ohrm_selected_display_field_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `report_id` bigint(20) NOT NULL,
  `display_field_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_selected_display_field_group`
--

INSERT INTO `ohrm_selected_display_field_group` (`id`, `report_id`, `display_field_group_id`) VALUES
(1, 5, 1),
(2, 5, 2),
(3, 5, 3),
(4, 5, 4),
(5, 5, 5),
(6, 5, 6),
(7, 5, 7),
(8, 5, 8),
(9, 5, 9),
(10, 5, 10),
(11, 5, 11),
(12, 5, 12),
(13, 5, 13),
(14, 5, 14),
(15, 5, 15);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_selected_filter_field`
--

CREATE TABLE `ohrm_selected_filter_field` (
  `report_id` bigint(20) NOT NULL,
  `filter_field_id` bigint(20) NOT NULL,
  `filter_field_order` bigint(20) NOT NULL,
  `value1` varchar(255) DEFAULT NULL,
  `value2` varchar(255) DEFAULT NULL,
  `where_condition` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_selected_filter_field`
--

INSERT INTO `ohrm_selected_filter_field` (`report_id`, `filter_field_id`, `filter_field_order`, `value1`, `value2`, `where_condition`, `type`) VALUES
(1, 1, 1, NULL, NULL, NULL, 'Runtime'),
(1, 3, 2, NULL, NULL, NULL, 'Runtime'),
(1, 7, 3, NULL, NULL, NULL, 'Runtime'),
(1, 21, 4, '0', NULL, 'eq', 'Predefined'),
(2, 3, 4, NULL, NULL, NULL, 'Runtime'),
(2, 4, 1, NULL, NULL, NULL, 'Runtime'),
(2, 5, 3, NULL, NULL, NULL, 'Runtime'),
(2, 6, 2, NULL, NULL, NULL, 'Runtime'),
(2, 7, 5, NULL, NULL, NULL, 'Runtime'),
(3, 3, 2, NULL, NULL, NULL, 'Runtime'),
(3, 5, 1, NULL, NULL, NULL, 'Runtime'),
(3, 7, 3, NULL, NULL, NULL, 'Runtime'),
(5, 22, 1, NULL, NULL, 'isNull', 'Predefined');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_selected_group_field`
--

CREATE TABLE `ohrm_selected_group_field` (
  `group_field_id` bigint(20) NOT NULL,
  `summary_display_field_id` bigint(20) NOT NULL,
  `report_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_selected_group_field`
--

INSERT INTO `ohrm_selected_group_field` (`group_field_id`, `summary_display_field_id`, `report_id`) VALUES
(1, 1, 1),
(1, 1, 2),
(2, 1, 3),
(2, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_skill`
--

CREATE TABLE `ohrm_skill` (
  `id` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_skill`
--

INSERT INTO `ohrm_skill` (`id`, `name`, `description`) VALUES
(1, 'Problem solving', 'solve problems'),
(2, 'Front end', 'CSS, react front end\n'),
(3, 'Back End ', 'PHP, sql, laravel, mongoDB');

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_subunit`
--

CREATE TABLE `ohrm_subunit` (
  `id` int(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `unit_id` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `lft` smallint(6) UNSIGNED DEFAULT NULL,
  `rgt` smallint(6) UNSIGNED DEFAULT NULL,
  `level` smallint(6) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_subunit`
--

INSERT INTO `ohrm_subunit` (`id`, `name`, `unit_id`, `description`, `lft`, `rgt`, `level`) VALUES
(1, 'Test', '', '', 1, 10, 0),
(2, 'central', '123', NULL, 2, 5, 1),
(3, 'district 01', '234', NULL, 6, 9, 1),
(4, 'central sub', '124', NULL, 3, 4, 2),
(5, 'destrict 01 sub', '235', NULL, 7, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_summary_display_field`
--

CREATE TABLE `ohrm_summary_display_field` (
  `summary_display_field_id` bigint(20) NOT NULL,
  `function` varchar(1000) NOT NULL,
  `label` varchar(255) NOT NULL,
  `field_alias` varchar(255) DEFAULT NULL,
  `is_sortable` varchar(10) NOT NULL,
  `sort_order` varchar(255) DEFAULT NULL,
  `sort_field` varchar(255) DEFAULT NULL,
  `element_type` varchar(255) NOT NULL,
  `element_property` varchar(1000) NOT NULL,
  `width` varchar(255) NOT NULL,
  `is_exportable` varchar(10) DEFAULT NULL,
  `text_alignment_style` varchar(20) DEFAULT NULL,
  `is_value_list` tinyint(1) NOT NULL DEFAULT 0,
  `display_field_group_id` int(10) UNSIGNED DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_summary_display_field`
--

INSERT INTO `ohrm_summary_display_field` (`summary_display_field_id`, `function`, `label`, `field_alias`, `is_sortable`, `sort_order`, `sort_field`, `element_type`, `element_property`, `width`, `is_exportable`, `text_alignment_style`, `is_value_list`, `display_field_group_id`, `default_value`) VALUES
(1, 'ROUND(COALESCE(sum(duration)/3600, 0),2)', 'Time (Hours)', 'totalduration', 'false', NULL, NULL, 'label', '<xml><getter>totalduration</getter></xml>', '100', 'false', 'right', 0, NULL, NULL),
(2, 'ROUND(COALESCE(sum(TIMESTAMPDIFF(SECOND , ohrm_attendance_record.punch_in_utc_time , ohrm_attendance_record.punch_out_utc_time))/3600, 0),2)', 'Time (Hours)', 'totalduration', 'false', NULL, NULL, 'label', '<xml><getter>totalduration</getter></xml>', '100', 'false', 'right', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_task_scheduler_log`
--

CREATE TABLE `ohrm_task_scheduler_log` (
  `id` int(11) NOT NULL,
  `started_at` datetime NOT NULL,
  `finished_at` datetime DEFAULT NULL,
  `command` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `input` longtext COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json)',
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_theme`
--

CREATE TABLE `ohrm_theme` (
  `theme_id` int(11) NOT NULL,
  `theme_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_logo` longblob DEFAULT NULL,
  `variables` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_banner` longblob DEFAULT NULL,
  `show_social_media_icons` tinyint(1) NOT NULL DEFAULT 1,
  `client_banner` longblob DEFAULT NULL,
  `client_logo_filename` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_logo_file_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_logo_file_size` int(11) DEFAULT NULL,
  `client_banner_filename` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_banner_file_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_banner_file_size` int(11) DEFAULT NULL,
  `login_banner_filename` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_banner_file_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_banner_file_size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ohrm_theme`
--

INSERT INTO `ohrm_theme` (`theme_id`, `theme_name`, `client_logo`, `variables`, `login_banner`, `show_social_media_icons`, `client_banner`, `client_logo_filename`, `client_logo_file_type`, `client_logo_file_size`, `client_banner_filename`, `client_banner_file_type`, `client_banner_file_size`, `login_banner_filename`, `login_banner_file_type`, `login_banner_file_size`) VALUES
(1, 'default', NULL, '{\"primaryColor\":\"#FF7B1D\",\"primaryFontColor\":\"#FFFFFF\",\"secondaryColor\":\"#76BC21\",\"secondaryFontColor\":\"#FFFFFF\",\"primaryGradientStartColor\":\"#FF920B\",\"primaryGradientEndColor\":\"#F35C17\"}', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_timesheet`
--

CREATE TABLE `ohrm_timesheet` (
  `timesheet_id` bigint(20) NOT NULL,
  `state` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `employee_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_timesheet_action_log`
--

CREATE TABLE `ohrm_timesheet_action_log` (
  `timesheet_action_log_id` bigint(20) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `date_time` date NOT NULL,
  `performed_by` int(11) DEFAULT NULL,
  `timesheet_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_timesheet_item`
--

CREATE TABLE `ohrm_timesheet_item` (
  `timesheet_item_id` bigint(20) NOT NULL,
  `timesheet_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `project_id` bigint(20) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `activity_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_upgrade_history`
--

CREATE TABLE `ohrm_upgrade_history` (
  `id` int(10) NOT NULL,
  `start_version` varchar(30) DEFAULT NULL,
  `end_version` varchar(30) DEFAULT NULL,
  `start_increment` int(11) NOT NULL,
  `end_increment` int(11) NOT NULL,
  `upgraded_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_user`
--

CREATE TABLE `ohrm_user` (
  `id` int(10) NOT NULL,
  `user_role_id` int(10) NOT NULL,
  `emp_number` int(13) DEFAULT NULL,
  `user_name` varchar(40) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` int(10) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_user`
--

INSERT INTO `ohrm_user` (`id`, `user_role_id`, `emp_number`, `user_name`, `user_password`, `deleted`, `status`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`) VALUES
(1, 1, 1, 'Admin', '$2y$12$.ZyK.lnAOG/F2kd/PmFOkO4TraG0J5Wc7ZFaJTWJBmw3xJc3i0DsG', 0, 1, '2023-08-17 22:10:45', NULL, NULL, NULL),
(2, 2, 2, 'madaraX_Uchiha', '$2y$12$wN/Bv/8JoljaRBwFV0/0T.4a4QbC4WKyc11F4q3OyZzU9wJLDup..', 0, 1, '2023-08-18 11:34:10', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_user_auth_provider`
--

CREATE TABLE `ohrm_user_auth_provider` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_type` int(11) NOT NULL,
  `ldap_user_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ldap_user_dn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ldap_user_unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_user_role`
--

CREATE TABLE `ohrm_user_role` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `is_assignable` tinyint(1) DEFAULT 0,
  `is_predefined` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_user_role`
--

INSERT INTO `ohrm_user_role` (`id`, `name`, `display_name`, `is_assignable`, `is_predefined`) VALUES
(1, 'Admin', 'Admin', 1, 1),
(2, 'ESS', 'ESS', 1, 1),
(3, 'Supervisor', 'Supervisor', 0, 1),
(4, 'ProjectAdmin', 'ProjectAdmin', 0, 1),
(5, 'Interviewer', 'Interviewer', 0, 1),
(6, 'HiringManager', 'HiringManager', 0, 1),
(7, 'Reviewer', 'Reviewer', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_user_role_data_group`
--

CREATE TABLE `ohrm_user_role_data_group` (
  `id` int(11) NOT NULL,
  `user_role_id` int(11) DEFAULT NULL,
  `data_group_id` int(11) DEFAULT NULL,
  `can_read` tinyint(4) DEFAULT NULL,
  `can_create` tinyint(4) DEFAULT NULL,
  `can_update` tinyint(4) DEFAULT NULL,
  `can_delete` tinyint(4) DEFAULT NULL,
  `self` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_user_role_data_group`
--

INSERT INTO `ohrm_user_role_data_group` (`id`, `user_role_id`, `data_group_id`, `can_read`, `can_create`, `can_update`, `can_delete`, `self`) VALUES
(1, 1, 1, 1, NULL, 1, NULL, 0),
(2, 1, 2, 1, 1, 1, 1, 0),
(3, 1, 3, 1, NULL, 1, NULL, 0),
(4, 1, 4, 1, NULL, 1, NULL, 0),
(5, 1, 5, 1, 1, 1, 1, 0),
(6, 1, 6, 1, NULL, 1, NULL, 0),
(7, 1, 7, 1, 1, 1, 1, 0),
(8, 1, 8, 1, 1, 1, 1, 0),
(9, 1, 9, 1, NULL, 1, NULL, 0),
(10, 1, 10, 1, 1, 1, 1, 0),
(11, 1, 11, 1, 1, 1, 1, 0),
(12, 1, 12, 1, NULL, 1, NULL, 0),
(13, 1, 13, 1, 1, 1, 1, 0),
(14, 1, 14, 1, 1, 1, 1, 0),
(15, 1, 15, 1, NULL, 1, NULL, 0),
(16, 1, 16, 1, NULL, 1, NULL, 0),
(17, 1, 17, 1, 1, 1, 1, 0),
(18, 1, 18, 1, NULL, 1, NULL, 0),
(19, 1, 19, 1, 1, 1, 1, 0),
(20, 1, 20, 1, 1, 1, 1, 0),
(21, 1, 21, 1, NULL, 1, NULL, 0),
(22, 1, 22, 1, NULL, 1, NULL, 0),
(23, 1, 23, 1, 1, 1, 1, 0),
(24, 1, 24, 1, NULL, 1, NULL, 0),
(25, 1, 25, 1, 1, 1, 1, 0),
(26, 1, 26, 1, 1, 1, 1, 0),
(27, 1, 27, 1, 1, 1, 1, 0),
(28, 1, 28, 1, NULL, 1, NULL, 0),
(29, 1, 29, 1, 1, 1, 1, 0),
(30, 1, 30, 1, 1, 1, 1, 0),
(31, 1, 31, 1, 1, 1, 1, 0),
(32, 1, 32, 1, 1, 1, 1, 0),
(33, 1, 33, 1, 1, 1, 1, 0),
(34, 1, 34, 1, 1, 1, 1, 0),
(35, 1, 35, 1, NULL, 1, NULL, 0),
(36, 1, 36, 1, 1, 1, 1, 0),
(37, 1, 37, 1, 1, 1, 1, 0),
(38, 1, 38, 1, NULL, 1, NULL, 0),
(39, 1, 39, 1, NULL, 1, 1, 0),
(40, 1, 40, 1, 1, 1, 1, 0),
(41, 1, 41, 1, NULL, NULL, NULL, 0),
(42, 1, 40, 1, 1, 1, 1, 1),
(43, 2, 1, 1, NULL, 1, NULL, 1),
(44, 2, 2, 1, 1, 1, 1, 1),
(45, 2, 3, 1, NULL, 1, NULL, 1),
(46, 2, 4, 1, NULL, 1, NULL, 1),
(47, 2, 5, 1, 1, 1, 1, 1),
(48, 2, 6, 1, NULL, 1, NULL, 1),
(49, 2, 7, 1, 1, 1, 1, 1),
(50, 2, 8, 1, 1, 1, 1, 1),
(51, 2, 9, 1, NULL, 1, NULL, 1),
(52, 2, 10, 1, 1, 1, 1, 1),
(53, 2, 11, 1, 1, 1, 1, 1),
(54, 2, 12, 1, NULL, 1, NULL, 1),
(55, 2, 13, 1, 1, 1, 1, 1),
(56, 2, 14, 1, 1, 1, 1, 1),
(57, 2, 15, 1, NULL, 1, NULL, 1),
(58, 2, 16, 1, NULL, NULL, NULL, 1),
(59, 2, 17, 1, 0, 0, 0, 1),
(60, 2, 18, 1, 0, 0, 0, 1),
(61, 2, 19, 1, NULL, NULL, NULL, 1),
(62, 2, 20, 1, 0, 0, 0, 1),
(63, 2, 21, 1, 0, 0, 0, 1),
(64, 2, 22, 1, NULL, NULL, NULL, 1),
(65, 2, 23, 1, 0, 0, 0, 1),
(66, 2, 24, 1, 0, 0, 0, 1),
(67, 2, 25, 1, NULL, NULL, NULL, 1),
(68, 2, 26, 1, NULL, NULL, NULL, 1),
(69, 2, 27, 1, 0, 0, 0, 1),
(70, 2, 28, 1, 0, 0, 0, 1),
(71, 2, 29, 1, 1, 1, 1, 1),
(72, 2, 30, 1, 1, 1, 1, 1),
(73, 2, 31, 1, 1, 1, 1, 1),
(74, 2, 32, 1, 1, 1, 1, 1),
(75, 2, 33, 1, 1, 1, 1, 1),
(76, 2, 34, 1, 1, 1, 1, 1),
(77, 2, 35, 1, NULL, 1, NULL, 1),
(78, 2, 36, 1, 1, 1, 1, 1),
(79, 2, 37, 1, 1, 1, 1, 1),
(80, 2, 38, 1, NULL, 1, NULL, 1),
(81, 2, 39, 1, NULL, 1, 1, 1),
(82, 2, 40, 1, 0, 0, 0, 1),
(83, 2, 41, 1, NULL, NULL, NULL, 1),
(84, 3, 1, 1, NULL, 1, NULL, 0),
(85, 3, 2, 1, 1, 1, 1, 0),
(86, 3, 3, 1, NULL, 1, NULL, 0),
(87, 3, 4, 1, NULL, 1, NULL, 0),
(88, 3, 5, 1, 1, 1, 1, 0),
(89, 3, 6, 1, NULL, 1, NULL, 0),
(90, 3, 7, 1, 1, 1, 1, 0),
(91, 3, 8, 1, 1, 1, 1, 0),
(92, 3, 9, 1, NULL, 1, NULL, 0),
(93, 3, 10, 1, 1, 1, 1, 0),
(94, 3, 11, 1, 1, 1, 1, 0),
(95, 3, 12, 1, NULL, 1, NULL, 0),
(96, 3, 13, 1, 1, 1, 1, 0),
(97, 3, 14, 1, 1, 1, 1, 0),
(98, 3, 15, 1, NULL, 1, NULL, 0),
(99, 3, 16, 1, NULL, NULL, NULL, 0),
(100, 3, 17, 1, 0, 0, 0, 0),
(101, 3, 18, 1, 0, 0, 0, 0),
(102, 3, 19, 0, 0, 0, 0, 0),
(103, 3, 20, 0, 0, 0, 0, 0),
(104, 3, 21, 0, 0, 0, 0, 0),
(105, 3, 22, 1, NULL, NULL, NULL, 0),
(106, 3, 23, 1, 0, 0, 0, 0),
(107, 3, 24, 1, 0, 0, 0, 0),
(108, 3, 25, 1, NULL, NULL, NULL, 0),
(109, 3, 26, 1, NULL, NULL, NULL, 0),
(110, 3, 27, 1, 0, 0, 0, 0),
(111, 3, 28, 1, 0, 0, 0, 0),
(112, 3, 29, 1, 1, 1, 1, 0),
(113, 3, 30, 1, 1, 1, 1, 0),
(114, 3, 31, 1, 1, 1, 1, 0),
(115, 3, 32, 1, 1, 1, 1, 0),
(116, 3, 33, 1, 1, 1, 1, 0),
(117, 3, 34, 1, 1, 1, 1, 0),
(118, 3, 35, 1, NULL, 1, NULL, 0),
(119, 3, 36, 1, 1, 1, 1, 0),
(120, 3, 37, 1, 1, 1, 1, 0),
(121, 3, 38, 1, NULL, 1, NULL, 0),
(122, 3, 39, 1, NULL, 1, 1, 0),
(123, 3, 40, 1, 0, 0, 0, 0),
(124, 3, 41, 1, NULL, NULL, NULL, 0),
(125, 3, 1, 1, NULL, 1, NULL, 1),
(126, 3, 2, 1, 1, 1, 1, 1),
(127, 3, 3, 1, NULL, 1, NULL, 1),
(128, 3, 4, 1, NULL, 1, NULL, 1),
(129, 3, 5, 1, 1, 1, 1, 1),
(130, 3, 6, 1, NULL, 1, NULL, 1),
(131, 3, 7, 1, 1, 1, 1, 1),
(132, 3, 8, 1, 1, 1, 1, 1),
(133, 3, 9, 1, NULL, 1, NULL, 1),
(134, 3, 10, 1, 1, 1, 1, 1),
(135, 3, 11, 1, 1, 1, 1, 1),
(136, 3, 12, 1, NULL, 1, NULL, 1),
(137, 3, 13, 1, 1, 1, 1, 1),
(138, 3, 14, 1, 1, 1, 1, 1),
(139, 3, 15, 1, NULL, 1, NULL, 1),
(140, 3, 16, 1, NULL, NULL, NULL, 1),
(141, 3, 17, 1, 0, 0, 0, 1),
(142, 3, 18, 1, 0, 0, 0, 1),
(143, 3, 19, 1, 0, 0, 0, 1),
(144, 3, 20, 1, 0, 0, 0, 1),
(145, 3, 21, 1, 0, 0, 0, 1),
(146, 3, 22, 1, NULL, NULL, NULL, 1),
(147, 3, 23, 1, 0, 0, 0, 1),
(148, 3, 24, 1, 0, 0, 0, 1),
(149, 3, 25, 1, NULL, NULL, NULL, 1),
(150, 3, 26, 1, NULL, NULL, NULL, 1),
(151, 3, 27, 1, 0, 0, 0, 1),
(152, 3, 28, 1, 0, 0, 0, 1),
(153, 3, 29, 1, 1, 1, 1, 1),
(154, 3, 30, 1, 1, 1, 1, 1),
(155, 3, 31, 1, 1, 1, 1, 1),
(156, 3, 32, 1, 1, 1, 1, 1),
(157, 3, 33, 1, 1, 1, 1, 1),
(158, 3, 34, 1, 1, 1, 1, 1),
(159, 3, 35, 1, NULL, 1, NULL, 1),
(160, 3, 36, 1, 1, 1, 1, 1),
(161, 3, 37, 1, 1, 1, 1, 1),
(162, 3, 38, 1, NULL, 1, NULL, 1),
(163, 3, 39, 1, NULL, 1, 1, 1),
(164, 3, 40, 1, 0, 0, 0, 1),
(165, 3, 41, 1, NULL, NULL, NULL, 1),
(166, 1, 42, 1, 1, 1, 1, 0),
(167, 2, 42, 0, 0, 0, 0, 0),
(168, 3, 42, 0, 0, 0, 0, 0),
(169, 1, 43, 1, 1, 1, 1, 0),
(170, 2, 43, 0, 0, 0, 0, 0),
(171, 3, 43, 0, 0, 0, 0, 0),
(172, 1, 44, 1, 1, 1, 1, 0),
(173, 2, 44, 0, 0, 0, 0, 0),
(174, 3, 44, 0, 0, 0, 0, 0),
(175, 1, 45, 1, 1, 1, 1, 0),
(176, 2, 45, 0, 0, 0, 0, 0),
(177, 3, 45, 0, 0, 0, 0, 0),
(178, 4, 45, 1, 0, 0, 0, 0),
(179, 1, 46, 1, 1, 1, 1, 0),
(180, 2, 46, 0, 0, 0, 0, 0),
(181, 3, 46, 0, 0, 0, 0, 0),
(182, 1, 47, 1, NULL, 1, NULL, 0),
(183, 2, 47, 0, 0, 0, 0, 0),
(184, 3, 47, 0, 0, 0, 0, 0),
(185, 1, 48, 1, 0, 0, 0, 0),
(186, 2, 48, 0, 0, 0, 0, 0),
(187, 2, 48, 1, 0, 0, 0, 1),
(188, 3, 48, 1, 0, 0, 0, 0),
(189, 1, 49, 1, 0, 0, 0, 0),
(190, 2, 49, 0, 0, 0, 0, 0),
(191, 3, 49, 0, 0, 0, 0, 0),
(192, 4, 49, 1, 0, 0, 0, 0),
(193, 1, 50, 1, 0, 0, 0, 0),
(194, 2, 50, 0, 0, 0, 0, 0),
(195, 3, 50, 1, 0, 0, 0, 0),
(196, 1, 51, 1, 0, 0, 0, 0),
(197, 2, 51, 0, 0, 0, 0, 0),
(198, 3, 51, 1, 0, 0, 0, 0),
(199, 1, 52, 1, NULL, 1, NULL, 0),
(200, 2, 52, 0, 0, 0, 0, 0),
(201, 3, 52, 0, 0, 0, 0, 0),
(202, 1, 53, 1, 1, 1, 1, 0),
(203, 2, 53, 0, 0, 0, 0, 0),
(204, 3, 53, 0, 0, 0, 0, 0),
(205, 1, 54, 1, 0, 1, 0, 0),
(206, 2, 54, 0, 0, 0, 0, 0),
(207, 3, 54, 0, 0, 0, 0, 0),
(208, 1, 55, 1, 1, 1, 1, 0),
(209, 2, 55, 0, 0, 0, 0, 0),
(210, 3, 55, 0, 0, 0, 0, 0),
(211, 1, 56, 1, 1, 1, 1, 0),
(212, 2, 56, 0, 0, 0, 0, 0),
(213, 3, 56, 0, 0, 0, 0, 0),
(214, 1, 57, 1, 1, 1, 1, 0),
(215, 6, 57, 1, 1, 1, 1, 0),
(216, 5, 57, 1, 0, 1, 0, 0),
(217, 1, 58, 1, 0, 0, 0, 0),
(218, 2, 58, 0, 0, 0, 0, 0),
(219, 2, 58, 1, 0, 0, 0, 1),
(220, 3, 58, 1, 0, 0, 0, 0),
(221, 1, 59, 1, 0, 0, 0, 0),
(222, 2, 59, 1, 0, 0, 0, 1),
(223, 3, 59, 1, 0, 0, 0, 0),
(224, 1, 60, 0, 1, 0, 0, 0),
(225, 2, 60, 0, 1, 0, 0, 1),
(226, 3, 60, 0, 1, 0, 0, 0),
(227, 1, 61, 1, 1, 1, 1, 1),
(228, 1, 62, 1, 1, 0, 1, 0),
(229, 2, 62, 1, 0, 0, 0, 0),
(230, 3, 62, 1, 0, 0, 0, 0),
(231, 2, 63, 1, 1, 1, 0, 0),
(232, 3, 63, 1, 1, 1, 0, 0),
(233, 1, 64, 1, 1, 1, 0, 0),
(234, 1, 65, 1, 0, 0, 0, 0),
(235, 2, 65, 1, 0, 0, 0, 0),
(236, 1, 66, 1, 0, 0, 0, 0),
(237, 2, 66, 1, 0, 0, 0, 0),
(238, 1, 67, 1, 1, 1, 1, 0),
(239, 2, 67, 1, 0, 0, 0, 0),
(240, 1, 68, 1, 1, 1, 1, 0),
(241, 3, 68, 1, 0, 0, 0, 0),
(242, 1, 69, 1, 1, 1, 1, 0),
(243, 1, 70, 1, 0, 0, 0, 0),
(244, 2, 70, 1, 0, 0, 0, 0),
(245, 1, 71, 1, 1, 1, 1, 0),
(246, 3, 71, 1, 0, 0, 0, 0),
(247, 1, 72, 1, 1, 1, 1, 0),
(248, 1, 73, 1, 1, 1, 1, 0),
(249, 1, 74, 1, 1, 1, 1, 0),
(250, 1, 75, 1, 1, 1, 1, 0),
(251, 1, 76, 1, 0, 1, 0, 0),
(252, 1, 77, 1, 1, 1, 1, 0),
(253, 1, 78, 1, 0, 0, 0, 0),
(254, 1, 79, 1, 1, 1, 1, 0),
(255, 1, 80, 1, 1, 1, 1, 0),
(256, 3, 80, 1, 0, 0, 0, 0),
(257, 1, 81, 1, 1, 1, 1, 0),
(258, 1, 82, 1, 0, 1, 0, 0),
(259, 1, 83, 1, 1, 1, 1, 0),
(260, 1, 84, 1, 1, 1, 1, 0),
(261, 1, 85, 1, 1, 1, 1, 0),
(262, 1, 86, 1, 0, 1, 0, 0),
(263, 1, 87, 1, 1, 1, 1, 0),
(264, 1, 88, 1, 0, 0, 0, 0),
(265, 1, 89, 1, 0, 1, 0, 0),
(266, 1, 90, 1, 1, 1, 1, 0),
(267, 1, 91, 1, 0, 0, 0, 0),
(268, 1, 92, 1, 1, 1, 1, 0),
(269, 1, 93, 1, 1, 1, 1, 0),
(270, 1, 94, 1, 1, 1, 1, 0),
(271, 1, 95, 1, 1, 1, 1, 0),
(272, 1, 96, 1, 1, 0, 1, 0),
(273, 2, 96, 1, 0, 0, 0, 1),
(274, 3, 96, 1, 0, 0, 0, 0),
(275, 3, 96, 1, 0, 0, 0, 1),
(276, 1, 97, 1, 1, 1, 1, 0),
(277, 2, 97, 1, 1, 1, 1, 1),
(278, 3, 97, 1, 1, 1, 1, 0),
(279, 3, 97, 1, 1, 1, 1, 1),
(280, 1, 98, 1, 0, 1, 0, 0),
(281, 2, 98, 1, 0, 1, 0, 1),
(282, 3, 98, 1, 0, 1, 0, 0),
(283, 3, 98, 1, 0, 1, 0, 1),
(284, 1, 99, 1, 1, 1, 1, 0),
(285, 2, 99, 1, 1, 1, 1, 1),
(286, 3, 99, 1, 1, 1, 1, 0),
(287, 3, 99, 1, 1, 1, 1, 1),
(288, 1, 100, 1, 1, 1, 1, 0),
(289, 2, 100, 1, 1, 1, 1, 1),
(290, 3, 100, 1, 1, 1, 1, 0),
(291, 3, 100, 1, 1, 1, 1, 1),
(292, 1, 101, 1, 1, 1, 1, 0),
(293, 2, 101, 1, 1, 1, 1, 1),
(294, 3, 101, 1, 1, 1, 1, 0),
(295, 3, 101, 1, 1, 1, 1, 1),
(296, 1, 102, 1, 0, 1, 0, 0),
(297, 2, 102, 1, 0, 0, 0, 1),
(298, 3, 102, 1, 0, 0, 0, 0),
(299, 3, 102, 1, 0, 0, 0, 1),
(300, 1, 103, 1, 1, 1, 1, 0),
(301, 2, 103, 1, 1, 1, 1, 1),
(302, 3, 103, 1, 1, 1, 1, 0),
(303, 3, 103, 1, 1, 1, 1, 1),
(304, 1, 104, 1, 1, 1, 1, 0),
(305, 2, 104, 1, 1, 1, 1, 1),
(306, 3, 104, 1, 1, 1, 1, 0),
(307, 3, 104, 1, 1, 1, 1, 1),
(308, 1, 105, 1, 0, 1, 0, 0),
(309, 2, 105, 1, 0, 1, 0, 1),
(310, 3, 105, 1, 0, 1, 0, 0),
(311, 3, 105, 1, 0, 1, 0, 1),
(312, 1, 106, 1, 0, 1, 0, 0),
(313, 2, 106, 1, 0, 1, 0, 1),
(314, 3, 106, 1, 0, 1, 0, 0),
(315, 3, 106, 1, 0, 1, 0, 1),
(316, 1, 107, 1, 1, 1, 1, 0),
(317, 2, 107, 1, 0, 0, 0, 1),
(318, 3, 107, 1, 0, 0, 0, 1),
(319, 1, 108, 1, 1, 1, 1, 0),
(320, 2, 108, 1, 1, 1, 1, 1),
(321, 3, 108, 1, 1, 1, 1, 0),
(322, 3, 108, 1, 1, 1, 1, 1),
(323, 1, 109, 1, 1, 1, 1, 0),
(324, 2, 109, 1, 0, 0, 0, 1),
(325, 3, 109, 1, 0, 0, 0, 0),
(326, 3, 109, 1, 0, 0, 0, 1),
(327, 1, 110, 1, 1, 1, 1, 0),
(328, 2, 110, 1, 1, 1, 1, 1),
(329, 3, 110, 1, 1, 1, 1, 0),
(330, 3, 110, 1, 1, 1, 1, 1),
(331, 1, 111, 1, 0, 1, 0, 0),
(332, 2, 111, 1, 0, 0, 0, 1),
(333, 3, 111, 1, 0, 0, 0, 0),
(334, 3, 111, 1, 0, 0, 0, 1),
(335, 1, 112, 1, 1, 1, 1, 0),
(336, 2, 112, 1, 1, 1, 1, 1),
(337, 3, 112, 1, 1, 1, 1, 0),
(338, 3, 112, 1, 1, 1, 1, 1),
(339, 1, 113, 1, 0, 1, 0, 0),
(340, 2, 113, 1, 0, 1, 0, 1),
(341, 3, 113, 1, 0, 1, 0, 0),
(342, 3, 113, 1, 0, 1, 0, 1),
(343, 1, 114, 1, 0, 0, 0, 0),
(344, 2, 114, 1, 0, 0, 0, 1),
(345, 1, 115, 1, 0, 0, 0, 0),
(346, 2, 115, 1, 0, 0, 0, 1),
(347, 1, 116, 1, 0, 0, 0, 0),
(348, 2, 116, 1, 0, 0, 0, 1),
(349, 1, 117, 1, 1, 1, 1, 0),
(350, 2, 117, 1, 0, 0, 0, 1),
(351, 3, 117, 1, 0, 0, 0, 0),
(352, 3, 117, 1, 0, 0, 0, 1),
(353, 1, 118, 1, 1, 1, 1, 0),
(354, 2, 118, 1, 0, 0, 0, 1),
(355, 3, 118, 1, 0, 0, 0, 0),
(356, 3, 118, 1, 0, 0, 0, 1),
(357, 1, 119, 1, 0, 0, 0, 0),
(358, 2, 119, 1, 0, 0, 0, 1),
(359, 1, 120, 1, 1, 1, 1, 0),
(360, 2, 120, 1, 1, 1, 1, 1),
(361, 3, 120, 1, 1, 1, 1, 1),
(362, 3, 120, 1, 1, 1, 1, 0),
(363, 1, 121, 1, 0, 1, 0, 0),
(364, 1, 121, 1, 0, 0, 0, 1),
(365, 2, 121, 1, 0, 0, 0, 1),
(366, 2, 121, 1, 0, 0, 0, 0),
(367, 1, 122, 1, 0, 0, 0, 0),
(368, 3, 122, 1, 0, 0, 0, 0),
(369, 1, 123, 1, 0, 0, 0, 0),
(370, 1, 124, 1, 1, 0, 0, 0),
(371, 1, 125, 1, 1, 1, 1, 0),
(372, 1, 126, 1, 0, 0, 0, 0),
(373, 1, 127, 1, 0, 0, 0, 0),
(374, 1, 128, 0, 0, 1, 0, 1),
(375, 2, 128, 0, 0, 1, 0, 1),
(376, 1, 129, 1, 0, 0, 0, 1),
(377, 2, 129, 1, 0, 0, 0, 1),
(378, 1, 130, 1, 1, 1, 1, 0),
(379, 2, 130, 1, 0, 0, 0, 0),
(380, 1, 131, 1, 0, 1, 0, 0),
(381, 2, 131, 1, 0, 0, 0, 0),
(382, 1, 132, 1, 0, 0, 0, 1),
(383, 1, 132, 1, 0, 0, 0, 0),
(384, 2, 132, 1, 0, 0, 0, 1),
(385, 3, 132, 1, 0, 0, 0, 1),
(386, 3, 132, 1, 0, 0, 0, 0),
(387, 1, 133, 1, 1, 1, 1, 0),
(388, 3, 133, 1, 0, 0, 0, 0),
(389, 1, 134, 1, 0, 1, 0, 0),
(390, 2, 134, 1, 0, 0, 0, 0),
(391, 1, 135, 1, 1, 1, 0, 1),
(392, 2, 135, 1, 1, 1, 0, 1),
(393, 1, 136, 1, 1, 1, 0, 0),
(394, 2, 136, 0, 0, 1, 0, 0),
(395, 3, 136, 1, 1, 1, 0, 0),
(396, 1, 137, 0, 0, 1, 0, 0),
(397, 2, 137, 0, 0, 1, 0, 0),
(398, 1, 138, 1, 1, 1, 1, 1),
(399, 1, 138, 1, 1, 1, 1, 0),
(400, 2, 138, 1, 0, 0, 0, 1),
(401, 3, 138, 1, 0, 0, 0, 1),
(402, 3, 138, 1, 0, 0, 0, 0),
(403, 1, 139, 1, 0, 0, 0, 1),
(404, 1, 139, 1, 0, 0, 0, 0),
(405, 2, 139, 1, 0, 0, 0, 1),
(406, 3, 139, 1, 0, 0, 0, 1),
(407, 3, 139, 1, 0, 0, 0, 0),
(408, 1, 140, 1, 0, 0, 0, 0),
(409, 1, 141, 1, 0, 0, 0, 0),
(410, 1, 142, 1, 0, 0, 0, 1),
(411, 1, 142, 1, 0, 0, 0, 0),
(412, 2, 142, 1, 0, 0, 0, 1),
(413, 3, 142, 1, 0, 0, 0, 1),
(414, 3, 142, 1, 0, 0, 0, 0),
(415, 1, 143, 1, 1, 0, 0, 1),
(416, 1, 143, 1, 1, 0, 0, 0),
(417, 2, 143, 1, 1, 0, 0, 1),
(418, 3, 143, 1, 1, 0, 0, 1),
(419, 3, 143, 1, 1, 0, 0, 0),
(420, 1, 144, 1, 1, 0, 0, 0),
(421, 1, 144, 1, 1, 0, 0, 1),
(422, 2, 144, 1, 1, 0, 0, 1),
(423, 3, 144, 1, 1, 0, 0, 0),
(424, 3, 144, 1, 1, 0, 0, 1),
(425, 1, 145, 1, 0, 1, 0, 0),
(426, 1, 145, 1, 0, 1, 0, 1),
(427, 2, 145, 1, 0, 1, 0, 1),
(428, 3, 145, 1, 0, 1, 0, 0),
(429, 3, 145, 1, 0, 1, 0, 1),
(430, 1, 146, 0, 0, 1, 0, 0),
(431, 2, 146, 0, 0, 1, 0, 0),
(432, 1, 147, 1, 0, 0, 0, 0),
(433, 1, 147, 1, 0, 0, 0, 1),
(434, 2, 147, 1, 0, 0, 0, 1),
(435, 3, 147, 1, 0, 0, 0, 0),
(436, 3, 147, 1, 0, 0, 0, 1),
(437, 1, 148, 1, 0, 0, 0, 0),
(438, 2, 148, 1, 0, 0, 0, 1),
(439, 3, 148, 1, 0, 0, 0, 0),
(440, 1, 149, 1, 0, 1, 0, 0),
(441, 1, 149, 1, 0, 1, 0, 1),
(442, 2, 149, 1, 0, 0, 0, 1),
(443, 3, 149, 1, 0, 1, 0, 0),
(444, 3, 149, 1, 0, 0, 0, 1),
(445, 1, 150, 1, 0, 0, 0, 0),
(446, 3, 150, 1, 0, 0, 0, 0),
(447, 1, 151, 1, 0, 0, 0, 0),
(448, 3, 151, 1, 0, 0, 0, 0),
(449, 2, 152, 1, 0, 0, 0, 0),
(450, 1, 153, 1, 1, 1, 1, 0),
(451, 2, 153, 0, 0, 0, 0, 0),
(452, 3, 153, 0, 0, 0, 0, 0),
(453, 1, 154, 1, 0, 1, 0, 0),
(454, 1, 155, 1, 1, 1, 1, 0),
(455, 4, 155, 1, 0, 0, 0, 0),
(456, 1, 156, 1, 0, 0, 0, 0),
(457, 1, 157, 1, 1, 1, 1, 0),
(458, 2, 157, 1, 0, 0, 0, 0),
(459, 4, 157, 1, 1, 1, 1, 0),
(460, 1, 158, 1, 1, 1, 1, 0),
(461, 2, 158, 1, 0, 0, 0, 0),
(462, 4, 158, 1, 0, 0, 0, 0),
(463, 1, 159, 1, 0, 0, 0, 0),
(464, 1, 160, 1, 0, 1, 0, 1),
(465, 2, 160, 1, 0, 1, 0, 1),
(466, 1, 161, 1, 0, 1, 0, 1),
(467, 3, 161, 1, 0, 1, 0, 1),
(468, 1, 162, 1, 1, 1, 0, 0),
(469, 3, 162, 1, 1, 1, 0, 0),
(470, 2, 162, 1, 1, 1, 0, 0),
(471, 1, 163, 1, 0, 0, 0, 0),
(472, 2, 163, 1, 0, 0, 0, 0),
(473, 1, 164, 1, 1, 1, 0, 0),
(474, 2, 164, 1, 1, 1, 0, 0),
(475, 3, 164, 1, 1, 1, 0, 0),
(476, 1, 165, 1, 0, 0, 0, 0),
(477, 2, 165, 1, 0, 0, 0, 0),
(478, 1, 166, 1, 0, 0, 0, 0),
(479, 4, 166, 1, 0, 0, 0, 0),
(480, 1, 167, 1, 0, 0, 0, 0),
(481, 2, 167, 1, 0, 0, 0, 0),
(482, 1, 168, 1, 1, 0, 0, 0),
(483, 4, 168, 1, 1, 0, 0, 0),
(484, 1, 169, 1, 1, 1, 0, 0),
(485, 3, 169, 1, 1, 1, 0, 0),
(486, 1, 170, 1, 0, 0, 0, 0),
(487, 3, 170, 1, 0, 0, 0, 0),
(488, 1, 171, 1, 0, 0, 0, 0),
(489, 2, 171, 1, 0, 0, 0, 0),
(490, 1, 172, 1, 0, 0, 0, 0),
(491, 4, 172, 1, 0, 0, 0, 0),
(492, 3, 172, 1, 0, 0, 0, 0),
(493, 1, 173, 1, 0, 0, 0, 0),
(494, 4, 173, 1, 0, 0, 0, 0),
(495, 3, 173, 1, 0, 0, 0, 0),
(496, 1, 174, 1, 0, 0, 0, 0),
(497, 4, 174, 1, 0, 0, 0, 0),
(498, 1, 175, 1, 0, 1, 0, 0),
(499, 1, 176, 1, 0, 0, 0, 0),
(500, 2, 176, 1, 0, 0, 0, 0),
(501, 1, 177, 1, 0, 0, 0, 0),
(502, 2, 177, 1, 0, 0, 0, 0),
(503, 1, 178, 1, 0, 0, 0, 0),
(504, 2, 178, 1, 0, 0, 0, 0),
(505, 1, 179, 1, 1, 1, 1, 1),
(506, 2, 179, 1, 1, 1, 1, 1),
(507, 1, 180, 1, 1, 1, 1, 0),
(508, 1, 180, 1, 0, 0, 0, 1),
(509, 3, 180, 1, 1, 1, 1, 0),
(510, 3, 180, 0, 0, 0, 0, 1),
(511, 1, 181, 1, 0, 0, 0, 0),
(512, 2, 181, 1, 0, 0, 0, 0),
(513, 1, 182, 1, 0, 0, 0, 0),
(514, 2, 182, 1, 0, 0, 0, 0),
(515, 1, 183, 1, 0, 1, 0, 0),
(516, 2, 183, 1, 0, 1, 0, 0),
(517, 1, 184, 1, 0, 0, 0, 0),
(518, 2, 184, 1, 0, 0, 0, 0),
(519, 1, 185, 1, 0, 0, 0, 0),
(520, 2, 185, 1, 0, 0, 0, 0),
(521, 1, 186, 1, 0, 0, 0, 0),
(522, 1, 186, 1, 0, 0, 0, 1),
(523, 3, 186, 1, 0, 0, 0, 0),
(524, 3, 186, 0, 0, 0, 0, 1),
(525, 1, 187, 1, 0, 0, 1, 0),
(526, 1, 188, 1, 0, 1, 0, 0),
(527, 1, 189, 1, 0, 0, 0, 1),
(528, 2, 189, 1, 0, 0, 0, 1),
(529, 1, 190, 1, 1, 1, 1, 0),
(530, 4, 190, 1, 1, 1, 1, 0),
(531, 1, 191, 1, 0, 0, 0, 0),
(532, 1, 192, 1, 0, 0, 0, 0),
(533, 1, 51, 1, 0, 0, 0, 1),
(534, 1, 50, 1, 0, 0, 0, 1),
(535, 3, 50, 0, 0, 0, 0, 1),
(536, 1, 193, 1, 1, 1, 1, 0),
(537, 1, 194, 1, 0, 0, 0, 0),
(538, 1, 195, 1, 1, 1, 1, 0),
(539, 1, 196, 1, 0, 0, 0, 0),
(540, 2, 196, 1, 0, 0, 0, 0),
(541, 1, 197, 1, 0, 0, 0, 1),
(542, 2, 197, 1, 0, 0, 0, 1),
(543, 1, 198, 1, 0, 0, 0, 0),
(544, 2, 198, 1, 0, 0, 0, 0),
(545, 1, 199, 1, 0, 0, 0, 0),
(546, 2, 199, 1, 0, 0, 0, 0),
(547, 1, 200, 1, 0, 0, 0, 0),
(548, 3, 200, 1, 0, 0, 0, 0),
(549, 1, 201, 1, 1, 1, 1, 0),
(550, 1, 202, 1, 1, 1, 1, 0),
(551, 2, 202, 1, 1, 1, 1, 1),
(552, 1, 203, 1, 0, 0, 0, 0),
(553, 3, 203, 1, 0, 0, 0, 0),
(554, 2, 203, 1, 0, 0, 0, 0),
(555, 1, 204, 1, 0, 0, 0, 0),
(556, 3, 204, 1, 0, 0, 0, 0),
(557, 2, 204, 1, 0, 0, 0, 0),
(558, 1, 205, 1, 0, 1, 0, 0),
(559, 3, 205, 1, 0, 1, 0, 0),
(560, 2, 205, 1, 0, 0, 0, 0),
(561, 1, 206, 1, 0, 1, 0, 0),
(562, 3, 206, 1, 0, 1, 0, 0),
(563, 2, 206, 1, 0, 1, 0, 0),
(564, 1, 207, 1, 0, 1, 0, 0),
(565, 3, 207, 1, 0, 1, 0, 0),
(566, 2, 207, 1, 0, 0, 0, 0),
(567, 1, 208, 1, 1, 1, 1, 0),
(568, 6, 208, 1, 0, 0, 0, 0),
(569, 5, 208, 1, 0, 0, 0, 0),
(570, 1, 209, 1, 1, 1, 1, 0),
(571, 1, 210, 1, 1, 1, 1, 0),
(572, 6, 210, 1, 1, 1, 1, 0),
(573, 5, 210, 1, 0, 0, 0, 0),
(574, 1, 211, 1, 1, 1, 1, 0),
(575, 6, 211, 1, 1, 1, 1, 0),
(576, 5, 211, 1, 0, 0, 0, 0),
(577, 1, 212, 1, 0, 0, 0, 0),
(578, 6, 212, 1, 0, 0, 0, 0),
(579, 5, 212, 1, 0, 0, 0, 0),
(580, 1, 213, 1, 0, 0, 0, 0),
(581, 6, 213, 1, 0, 0, 0, 0),
(582, 5, 213, 1, 0, 0, 0, 0),
(583, 1, 214, 1, 0, 0, 0, 0),
(584, 6, 214, 1, 0, 0, 0, 0),
(585, 5, 214, 1, 0, 0, 0, 0),
(586, 1, 215, 0, 0, 1, 0, 0),
(587, 6, 215, 0, 0, 1, 0, 0),
(588, 1, 216, 0, 0, 1, 0, 0),
(589, 6, 216, 0, 0, 1, 0, 0),
(590, 1, 217, 1, 1, 1, 0, 0),
(591, 6, 217, 1, 1, 1, 0, 0),
(592, 5, 217, 1, 0, 1, 0, 0),
(593, 1, 218, 1, 1, 1, 1, 0),
(594, 6, 218, 1, 1, 1, 1, 0),
(595, 5, 218, 1, 1, 1, 1, 0),
(596, 1, 219, 0, 0, 1, 0, 0),
(597, 6, 219, 0, 0, 1, 0, 0),
(598, 5, 219, 1, 0, 1, 0, 0),
(599, 1, 220, 0, 0, 1, 0, 0),
(600, 6, 220, 0, 0, 1, 0, 0),
(601, 5, 220, 0, 0, 1, 0, 0),
(602, 1, 221, 0, 0, 1, 0, 0),
(603, 6, 221, 0, 0, 1, 0, 0),
(604, 1, 222, 0, 0, 1, 0, 0),
(605, 6, 222, 0, 0, 1, 0, 0),
(606, 1, 223, 0, 0, 1, 0, 0),
(607, 6, 223, 0, 0, 1, 0, 0),
(608, 1, 224, 1, 0, 1, 0, 0),
(609, 6, 224, 1, 0, 1, 0, 0),
(610, 5, 224, 1, 0, 1, 0, 0),
(611, 1, 225, 1, 0, 0, 0, 0),
(612, 2, 225, 1, 0, 0, 0, 0),
(613, 1, 226, 1, 0, 1, 0, 0),
(614, 1, 227, 1, 0, 1, 0, 0),
(615, 1, 228, 0, 0, 1, 0, 0),
(616, 1, 229, 1, 0, 0, 0, 0),
(617, 1, 230, 1, 0, 0, 0, 0),
(618, 2, 230, 1, 0, 0, 0, 0),
(619, 1, 231, 1, 0, 1, 1, 0),
(620, 1, 232, 0, 1, 0, 0, 0),
(621, 1, 233, 1, 0, 0, 1, 0),
(622, 1, 234, 1, 1, 1, 1, 0),
(623, 1, 234, 1, 1, 1, 1, 1),
(624, 2, 234, 1, 1, 1, 1, 1),
(625, 5, 71, 1, 0, 0, 0, 0),
(626, 6, 71, 1, 0, 0, 0, 0),
(627, 1, 235, 1, 0, 0, 0, 0),
(628, 2, 235, 1, 0, 0, 0, 1),
(629, 1, 236, 1, 0, 0, 0, 0),
(630, 1, 237, 1, 0, 0, 0, 0),
(631, 1, 238, 1, 0, 0, 0, 0),
(632, 2, 238, 1, 0, 0, 0, 0),
(633, 1, 239, 1, 0, 0, 0, 0),
(634, 2, 239, 1, 0, 0, 0, 0),
(635, 1, 240, 1, 0, 0, 0, 0),
(636, 2, 240, 1, 0, 0, 0, 0),
(637, 1, 241, 1, 0, 1, 0, 0),
(638, 1, 242, 1, 0, 1, 0, 0),
(639, 1, 243, 0, 1, 0, 0, 0),
(640, 1, 244, 1, 1, 0, 0, 0),
(641, 1, 245, 1, 0, 0, 0, 0),
(642, 1, 246, 1, 0, 0, 0, 0),
(643, 1, 247, 1, 0, 0, 0, 0),
(644, 2, 247, 1, 0, 0, 0, 0),
(645, 1, 248, 1, 0, 0, 0, 0),
(646, 2, 248, 1, 0, 0, 0, 0),
(647, 1, 249, 1, 0, 1, 0, 0),
(648, 1, 250, 1, 0, 0, 0, 0),
(649, 2, 250, 1, 0, 0, 0, 0),
(650, 1, 251, 1, 0, 0, 0, 0),
(651, 2, 251, 1, 0, 0, 0, 0),
(652, 1, 252, 1, 1, 1, 1, 0),
(653, 2, 252, 1, 1, 1, 1, 0),
(654, 1, 253, 1, 1, 1, 1, 0),
(655, 2, 253, 1, 1, 1, 1, 0),
(656, 1, 254, 1, 1, 1, 1, 0),
(657, 2, 254, 1, 1, 1, 1, 0),
(658, 1, 255, 1, 1, 0, 1, 0),
(659, 2, 255, 1, 1, 0, 1, 0),
(660, 1, 256, 1, 1, 0, 1, 0),
(661, 2, 256, 1, 1, 0, 1, 0),
(662, 1, 257, 1, 0, 0, 0, 0),
(663, 2, 257, 1, 0, 0, 0, 0),
(664, 1, 258, 1, 0, 0, 0, 0),
(665, 2, 258, 1, 0, 0, 0, 0),
(666, 1, 259, 0, 0, 0, 1, 0),
(667, 1, 259, 0, 0, 1, 1, 1),
(668, 2, 259, 0, 0, 0, 0, 0),
(669, 2, 259, 0, 0, 1, 1, 1),
(670, 1, 260, 0, 0, 0, 1, 0),
(671, 1, 260, 0, 0, 1, 1, 1),
(672, 2, 260, 0, 0, 0, 0, 0),
(673, 2, 260, 0, 0, 1, 1, 1),
(674, 1, 261, 1, 0, 0, 0, 0),
(675, 2, 261, 1, 0, 0, 0, 0),
(676, 1, 262, 1, 0, 0, 0, 0),
(677, 2, 262, 1, 0, 0, 0, 0),
(678, 1, 263, 1, 0, 0, 0, 0),
(679, 2, 263, 1, 0, 0, 0, 0),
(680, 1, 264, 1, 0, 0, 0, 0),
(681, 2, 264, 1, 0, 0, 0, 0),
(682, 2, 175, 1, 0, 0, 0, 0),
(683, 2, 154, 1, 0, 0, 0, 0),
(684, 2, 122, 1, 0, 0, 0, 0),
(685, 1, 265, 1, 1, 1, 1, 0),
(686, 2, 265, 1, 0, 0, 0, 0),
(687, 1, 266, 1, 1, 1, 1, 0),
(688, 2, 266, 1, 0, 0, 0, 0),
(689, 1, 267, 1, 1, 0, 0, 0),
(690, 2, 267, 1, 1, 0, 0, 0),
(691, 1, 268, 1, 1, 0, 0, 0),
(692, 2, 268, 0, 1, 0, 0, 0),
(693, 3, 268, 1, 1, 0, 0, 0),
(694, 1, 269, 1, 1, 1, 1, 0),
(695, 2, 269, 1, 1, 1, 1, 0),
(696, 1, 270, 1, 1, 1, 1, 0),
(697, 2, 270, 1, 1, 1, 1, 0),
(698, 1, 271, 0, 0, 1, 0, 0),
(699, 2, 271, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_user_role_screen`
--

CREATE TABLE `ohrm_user_role_screen` (
  `id` int(11) NOT NULL,
  `user_role_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `can_read` tinyint(1) NOT NULL DEFAULT 0,
  `can_create` tinyint(1) NOT NULL DEFAULT 0,
  `can_update` tinyint(1) NOT NULL DEFAULT 0,
  `can_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_user_role_screen`
--

INSERT INTO `ohrm_user_role_screen` (`id`, `user_role_id`, `screen_id`, `can_read`, `can_create`, `can_update`, `can_delete`) VALUES
(1, 1, 1, 1, 1, 1, 1),
(2, 1, 2, 1, 1, 1, 1),
(3, 2, 2, 0, 0, 0, 0),
(4, 3, 2, 0, 0, 0, 0),
(5, 1, 3, 1, 1, 1, 1),
(6, 2, 3, 0, 0, 0, 0),
(7, 3, 3, 0, 0, 0, 0),
(8, 1, 4, 1, 1, 1, 1),
(9, 1, 5, 1, 1, 1, 1),
(10, 3, 5, 1, 0, 0, 0),
(11, 1, 6, 1, 0, 0, 1),
(12, 1, 7, 1, 1, 1, 1),
(13, 1, 8, 1, 1, 1, 1),
(14, 1, 9, 1, 1, 1, 1),
(15, 1, 10, 1, 1, 1, 1),
(16, 1, 11, 1, 1, 1, 1),
(17, 1, 12, 1, 1, 1, 1),
(18, 1, 13, 1, 1, 1, 1),
(19, 1, 14, 1, 1, 1, 1),
(20, 1, 16, 1, 1, 1, 0),
(21, 3, 16, 1, 1, 1, 0),
(22, 1, 17, 1, 1, 1, 0),
(23, 3, 17, 1, 1, 1, 0),
(24, 1, 18, 1, 1, 1, 0),
(25, 2, 18, 1, 0, 0, 0),
(26, 3, 18, 1, 0, 0, 0),
(27, 1, 19, 1, 1, 1, 1),
(28, 1, 20, 1, 1, 1, 1),
(29, 1, 21, 1, 1, 1, 1),
(30, 1, 22, 1, 1, 1, 1),
(31, 1, 23, 1, 1, 1, 1),
(32, 1, 24, 1, 1, 1, 1),
(33, 1, 25, 1, 1, 1, 1),
(34, 1, 26, 1, 1, 1, 1),
(35, 1, 27, 1, 1, 1, 1),
(36, 1, 28, 1, 1, 1, 1),
(37, 1, 29, 1, 1, 1, 1),
(38, 1, 30, 1, 1, 1, 1),
(39, 1, 31, 1, 1, 1, 1),
(40, 1, 32, 1, 1, 1, 1),
(41, 1, 33, 1, 1, 1, 1),
(42, 1, 34, 1, 1, 1, 1),
(43, 1, 35, 1, 1, 1, 1),
(44, 1, 36, 1, 1, 1, 1),
(45, 1, 37, 1, 1, 1, 1),
(46, 4, 37, 1, 0, 0, 0),
(47, 1, 38, 1, 1, 1, 1),
(48, 1, 39, 1, 1, 1, 1),
(49, 1, 40, 1, 1, 1, 1),
(50, 1, 41, 1, 1, 1, 1),
(51, 1, 42, 1, 1, 1, 1),
(52, 1, 43, 1, 1, 1, 1),
(53, 1, 44, 1, 1, 1, 1),
(54, 1, 45, 1, 1, 1, 1),
(55, 2, 46, 1, 1, 1, 1),
(56, 1, 47, 1, 1, 1, 1),
(57, 2, 48, 1, 1, 1, 0),
(58, 2, 49, 1, 1, 1, 1),
(59, 1, 50, 1, 1, 1, 1),
(60, 2, 51, 1, 1, 1, 1),
(61, 1, 52, 1, 1, 1, 1),
(62, 3, 52, 1, 1, 1, 1),
(63, 2, 53, 1, 1, 0, 0),
(64, 2, 54, 1, 1, 1, 1),
(65, 1, 55, 1, 1, 0, 1),
(66, 3, 55, 1, 1, 0, 0),
(67, 1, 56, 1, 1, 1, 1),
(68, 1, 57, 1, 1, 1, 1),
(69, 4, 57, 1, 1, 1, 1),
(70, 1, 58, 1, 1, 1, 1),
(71, 3, 58, 1, 1, 1, 1),
(72, 1, 59, 1, 1, 1, 1),
(73, 3, 59, 1, 1, 1, 1),
(74, 1, 60, 1, 1, 1, 1),
(75, 6, 60, 1, 1, 1, 1),
(76, 5, 60, 1, 0, 1, 0),
(77, 1, 61, 1, 1, 1, 1),
(78, 1, 67, 1, 1, 1, 1),
(79, 2, 67, 1, 0, 1, 0),
(80, 3, 67, 1, 0, 1, 0),
(81, 1, 68, 1, 1, 1, 1),
(82, 2, 68, 1, 0, 1, 0),
(83, 3, 68, 1, 0, 1, 0),
(84, 1, 69, 1, 1, 1, 1),
(85, 3, 69, 1, 0, 0, 0),
(86, 2, 70, 1, 0, 0, 0),
(87, 1, 71, 1, 0, 0, 1),
(88, 1, 72, 1, 1, 1, 0),
(89, 1, 73, 1, 0, 1, 0),
(90, 1, 74, 1, 1, 1, 1),
(91, 1, 75, 1, 1, 1, 1),
(92, 3, 75, 1, 1, 1, 1),
(93, 1, 76, 1, 1, 1, 1),
(94, 5, 76, 1, 1, 1, 1),
(95, 6, 76, 1, 1, 1, 1),
(96, 1, 78, 1, 0, 0, 0),
(97, 3, 78, 1, 0, 0, 0),
(98, 2, 79, 1, 0, 0, 0),
(99, 1, 80, 1, 1, 1, 1),
(100, 1, 81, 1, 1, 1, 1),
(101, 1, 82, 1, 1, 1, 1),
(102, 1, 83, 1, 1, 1, 1),
(103, 1, 84, 1, 1, 1, 1),
(104, 1, 85, 1, 1, 1, 1),
(105, 1, 86, 1, 1, 1, 1),
(106, 1, 87, 1, 1, 1, 1),
(107, 1, 88, 1, 1, 1, 1),
(108, 4, 88, 1, 1, 1, 1),
(109, 1, 89, 1, 1, 1, 1),
(110, 1, 90, 1, 1, 1, 1),
(111, 4, 90, 1, 1, 1, 1),
(112, 1, 91, 1, 1, 1, 1),
(113, 4, 91, 1, 1, 1, 1),
(114, 1, 92, 1, 1, 1, 1),
(115, 1, 93, 1, 1, 1, 1),
(116, 1, 94, 1, 1, 1, 1),
(117, 1, 95, 1, 1, 1, 1),
(118, 1, 96, 1, 1, 1, 1),
(119, 5, 96, 1, 1, 1, 1),
(120, 6, 96, 1, 1, 1, 1),
(121, 1, 97, 1, 1, 1, 1),
(122, 6, 97, 1, 1, 1, 1),
(123, 1, 98, 1, 1, 1, 1),
(124, 2, 98, 1, 1, 1, 1),
(125, 3, 98, 1, 1, 1, 1),
(126, 1, 99, 1, 0, 1, 0),
(127, 2, 99, 1, 0, 1, 0),
(128, 3, 99, 1, 0, 1, 0),
(129, 1, 100, 1, 0, 0, 0),
(130, 1, 101, 1, 1, 1, 1),
(131, 3, 101, 1, 1, 1, 1),
(132, 1, 102, 1, 1, 1, 1),
(133, 4, 102, 1, 1, 1, 1),
(134, 1, 103, 1, 0, 0, 0),
(135, 2, 103, 1, 0, 0, 0),
(136, 1, 104, 1, 1, 1, 0),
(137, 1, 105, 1, 1, 1, 1),
(138, 1, 107, 1, 1, 1, 0),
(139, 1, 109, 1, 1, 1, 0),
(140, 1, 111, 1, 1, 1, 1),
(141, 3, 110, 1, 0, 1, 0),
(142, 2, 108, 1, 1, 1, 0),
(143, 2, 106, 1, 0, 1, 0),
(144, 3, 109, 1, 1, 1, 0),
(145, 2, 109, 1, 1, 1, 0),
(146, 1, 112, 1, 1, 1, 1),
(147, 2, 112, 0, 0, 0, 0),
(148, 1, 113, 1, 1, 1, 1),
(149, 7, 113, 1, 1, 1, 0),
(150, 1, 114, 0, 0, 0, 0),
(151, 2, 114, 1, 0, 1, 0),
(152, 1, 115, 1, 1, 1, 0),
(153, 2, 115, 1, 0, 0, 0),
(154, 1, 116, 1, 1, 1, 1),
(155, 2, 116, 1, 1, 1, 1),
(156, 1, 117, 1, 1, 1, 0),
(157, 1, 119, 1, 1, 1, 1),
(158, 1, 120, 1, 0, 0, 0),
(159, 1, 121, 1, 0, 0, 0),
(160, 1, 122, 1, 0, 0, 0),
(161, 2, 122, 1, 0, 0, 0),
(162, 3, 122, 1, 0, 0, 0),
(163, 1, 123, 1, 1, 1, 1),
(164, 2, 123, 1, 1, 1, 1),
(165, 3, 123, 1, 1, 1, 1),
(166, 1, 124, 1, 1, 1, 0),
(167, 1, 125, 1, 1, 1, 0),
(168, 1, 126, 1, 1, 1, 0),
(169, 1, 127, 1, 1, 1, 0),
(170, 1, 128, 1, 1, 1, 1),
(171, 1, 129, 1, 1, 1, 1),
(172, 1, 130, 1, 0, 0, 0),
(173, 2, 130, 1, 0, 0, 0),
(174, 1, 131, 1, 0, 0, 0),
(175, 1, 132, 1, 0, 0, 0),
(176, 1, 133, 1, 0, 0, 0),
(177, 1, 134, 1, 0, 0, 0),
(178, 1, 135, 1, 0, 0, 0),
(179, 1, 136, 1, 0, 0, 0),
(180, 1, 137, 1, 0, 0, 0),
(181, 1, 138, 1, 0, 0, 0),
(182, 1, 139, 1, 0, 0, 0),
(183, 1, 140, 1, 0, 0, 0),
(184, 1, 141, 1, 0, 0, 0),
(185, 1, 142, 1, 0, 0, 0),
(186, 1, 143, 1, 0, 0, 0),
(187, 1, 144, 1, 0, 0, 0),
(188, 2, 145, 1, 0, 0, 0),
(189, 2, 146, 1, 0, 0, 0),
(190, 2, 147, 1, 0, 0, 0),
(191, 2, 148, 1, 0, 0, 0),
(192, 1, 149, 1, 0, 0, 0),
(193, 3, 149, 1, 0, 0, 0),
(194, 1, 150, 1, 0, 0, 0),
(195, 3, 150, 1, 0, 0, 0),
(196, 1, 151, 1, 0, 0, 0),
(197, 1, 152, 1, 0, 0, 0),
(198, 1, 153, 1, 0, 0, 0),
(199, 1, 154, 1, 0, 0, 0),
(200, 6, 154, 1, 0, 0, 0),
(201, 5, 154, 1, 0, 0, 0),
(202, 1, 155, 1, 0, 0, 0),
(203, 6, 155, 1, 0, 0, 0),
(204, 5, 155, 1, 0, 0, 0),
(205, 1, 156, 1, 0, 0, 0),
(206, 6, 156, 1, 0, 0, 0),
(207, 5, 156, 1, 0, 0, 0),
(208, 1, 110, 1, 0, 1, 0),
(209, 1, 157, 1, 0, 0, 0),
(210, 2, 157, 1, 0, 0, 0),
(211, 1, 158, 1, 0, 0, 0),
(212, 2, 158, 1, 0, 0, 0),
(213, 1, 159, 1, 0, 0, 0),
(214, 2, 159, 1, 0, 0, 0),
(215, 1, 160, 1, 0, 0, 0),
(216, 2, 160, 1, 0, 0, 0),
(217, 1, 161, 1, 0, 0, 0),
(218, 2, 161, 1, 0, 0, 0),
(219, 1, 162, 1, 0, 0, 0),
(220, 2, 162, 1, 0, 0, 0),
(221, 1, 163, 1, 0, 0, 0),
(222, 2, 163, 1, 0, 0, 0),
(223, 1, 164, 1, 0, 0, 0),
(224, 2, 164, 1, 0, 0, 0),
(225, 1, 165, 1, 0, 0, 0),
(226, 2, 165, 1, 0, 0, 0),
(227, 1, 166, 1, 0, 0, 0),
(228, 2, 166, 1, 0, 0, 0),
(229, 1, 167, 1, 0, 0, 0),
(230, 2, 167, 1, 0, 0, 0),
(231, 1, 168, 1, 0, 0, 0),
(232, 2, 168, 1, 0, 0, 0),
(233, 1, 169, 1, 0, 0, 0),
(234, 1, 170, 1, 0, 0, 0),
(235, 2, 170, 1, 0, 0, 0),
(236, 1, 171, 1, 0, 0, 0),
(237, 2, 171, 0, 0, 0, 0),
(238, 1, 172, 1, 1, 1, 0),
(239, 2, 172, 0, 0, 0, 0),
(240, 1, 173, 1, 0, 0, 0),
(241, 2, 173, 0, 0, 0, 0),
(242, 1, 174, 1, 1, 1, 0),
(243, 2, 174, 0, 0, 0, 0),
(244, 1, 175, 1, 1, 0, 0),
(245, 2, 175, 1, 1, 0, 0),
(246, 1, 176, 1, 1, 1, 0),
(247, 2, 176, 1, 1, 1, 0),
(248, 1, 177, 1, 1, 1, 0),
(249, 2, 177, 1, 1, 1, 0),
(250, 1, 178, 1, 1, 0, 0),
(251, 3, 178, 1, 1, 0, 0),
(252, 2, 178, 0, 1, 0, 0),
(253, 1, 179, 1, 1, 0, 0),
(254, 3, 179, 1, 1, 0, 0),
(255, 2, 179, 0, 0, 0, 0),
(256, 1, 180, 1, 1, 1, 0),
(257, 3, 180, 1, 1, 1, 0),
(258, 2, 180, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_user_selection_rule`
--

CREATE TABLE `ohrm_user_selection_rule` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `implementation_class` varchar(255) NOT NULL,
  `rule_xml_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_workflow_state_machine`
--

CREATE TABLE `ohrm_workflow_state_machine` (
  `id` bigint(20) NOT NULL,
  `workflow` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `resulting_state` varchar(255) NOT NULL,
  `roles_to_notify` text DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT 0 COMMENT 'lowest priority 0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ohrm_workflow_state_machine`
--

INSERT INTO `ohrm_workflow_state_machine` (`id`, `workflow`, `state`, `role`, `action`, `resulting_state`, `roles_to_notify`, `priority`) VALUES
(1, '0', 'INITIAL', 'SYSTEM', '7', 'NOT SUBMITTED', '', 0),
(2, '0', 'SUBMITTED', 'ADMIN', '2', 'APPROVED', '', 0),
(3, '0', 'SUBMITTED', 'ADMIN', '3', 'REJECTED', '', 0),
(4, '0', 'SUBMITTED', 'ADMIN', '0', 'SUBMITTED', '', 0),
(5, '0', 'SUBMITTED', 'ADMIN', '5', 'SUBMITTED', '', 0),
(6, '0', 'SUBMITTED', 'SUPERVISOR', '2', 'APPROVED', '', 0),
(7, '0', 'SUBMITTED', 'SUPERVISOR', '3', 'REJECTED', '', 0),
(8, '0', 'SUBMITTED', 'SUPERVISOR', '5', 'SUBMITTED', '', 0),
(9, '0', 'SUBMITTED', 'SUPERVISOR', '0', 'SUBMITTED', '', 0),
(10, '0', 'SUBMITTED', 'ESS USER', '0', 'SUBMITTED', '', 0),
(11, '0', 'SUBMITTED', 'ESS USER', '5', 'SUBMITTED', '', 0),
(12, '0', 'NOT SUBMITTED', 'ESS USER', '1', 'SUBMITTED', '', 0),
(13, '0', 'NOT SUBMITTED', 'ESS USER', '5', 'NOT SUBMITTED', '', 0),
(15, '0', 'NOT SUBMITTED', 'ESS USER', '0', 'NOT SUBMITTED', '', 0),
(16, '0', 'NOT SUBMITTED', 'SUPERVISOR', '0', 'NOT SUBMITTED', '', 0),
(17, '0', 'NOT SUBMITTED', 'SUPERVISOR', '5', 'NOT SUBMITTED', '', 0),
(18, '0', 'NOT SUBMITTED', 'SUPERVISOR', '1', 'SUBMITTED', '', 0),
(19, '0', 'NOT SUBMITTED', 'ADMIN', '0', 'NOT SUBMITTED', '', 0),
(20, '0', 'NOT SUBMITTED', 'ADMIN', '5', 'NOT SUBMITTED', '', 0),
(21, '0', 'NOT SUBMITTED', 'ADMIN', '1', 'SUBMITTED', '', 0),
(22, '0', 'REJECTED', 'ESS USER', '1', 'SUBMITTED', '', 0),
(23, '0', 'REJECTED', 'ESS USER', '0', 'REJECTED', '', 0),
(24, '0', 'REJECTED', 'ESS USER', '5', 'REJECTED', '', 0),
(25, '0', 'REJECTED', 'SUPERVISOR', '1', 'SUBMITTED', '', 0),
(26, '0', 'REJECTED', 'SUPERVISOR', '0', 'REJECTED', '', 0),
(27, '0', 'REJECTED', 'SUPERVISOR', '5', 'REJECTED', '', 0),
(28, '0', 'REJECTED', 'ADMIN', '0', 'REJECTED', '', 0),
(29, '0', 'REJECTED', 'ADMIN', '5', 'SUBMITTED', '', 0),
(30, '0', 'REJECTED', 'ADMIN', '1', 'SUBMITTED', '', 0),
(31, '0', 'APPROVED', 'ESS USER', '0', 'APPROVED', '', 0),
(32, '0', 'APPROVED', 'SUPERVISOR', '0', 'APPROVED', '', 0),
(33, '0', 'APPROVED', 'ADMIN', '0', 'APPROVED', '', 0),
(34, '0', 'APPROVED', 'ADMIN', '4', 'SUBMITTED', '', 0),
(35, '1', 'PUNCHED IN', 'ESS USER', '1', 'PUNCHED OUT', '', 0),
(36, '1', 'INITIAL', 'ESS USER', '0', 'PUNCHED IN', '', 0),
(37, '2', 'INITIAL', 'ADMIN', '1', 'APPLICATION INITIATED', '', 0),
(38, '2', 'APPLICATION INITIATED', 'ADMIN', '2', 'SHORTLISTED', '', 0),
(39, '2', 'APPLICATION INITIATED', 'ADMIN', '3', 'REJECTED', '', 0),
(40, '2', 'SHORTLISTED', 'ADMIN', '4', 'INTERVIEW SCHEDULED', '', 0),
(41, '2', 'SHORTLISTED', 'ADMIN', '3', 'REJECTED', '', 0),
(42, '2', 'INTERVIEW SCHEDULED', 'ADMIN', '3', 'REJECTED', '', 0),
(43, '2', 'INTERVIEW SCHEDULED', 'ADMIN', '5', 'INTERVIEW PASSED', '', 0),
(44, '2', 'INTERVIEW SCHEDULED', 'ADMIN', '6', 'INTERVIEW FAILED', '', 0),
(45, '2', 'INTERVIEW PASSED', 'ADMIN', '4', 'INTERVIEW SCHEDULED', '', 0),
(46, '2', 'INTERVIEW PASSED', 'ADMIN', '7', 'JOB OFFERED', '', 0),
(47, '2', 'INTERVIEW PASSED', 'ADMIN', '3', 'REJECTED', '', 0),
(48, '2', 'INTERVIEW FAILED', 'ADMIN', '3', 'REJECTED', '', 0),
(49, '2', 'JOB OFFERED', 'ADMIN', '8', 'OFFER DECLINED', '', 0),
(50, '2', 'JOB OFFERED', 'ADMIN', '3', 'REJECTED', '', 0),
(51, '2', 'JOB OFFERED', 'ADMIN', '9', 'HIRED', '', 0),
(52, '2', 'OFFER DECLINED', 'ADMIN', '3', 'REJECTED', '', 0),
(53, '2', 'INITIAL', 'HIRING MANAGER', '1', 'APPLICATION INITIATED', '', 0),
(54, '2', 'APPLICATION INITIATED', 'HIRING MANAGER', '2', 'SHORTLISTED', '', 0),
(55, '2', 'APPLICATION INITIATED', 'HIRING MANAGER', '3', 'REJECTED', '', 0),
(56, '2', 'SHORTLISTED', 'HIRING MANAGER', '4', 'INTERVIEW SCHEDULED', '', 0),
(57, '2', 'SHORTLISTED', 'HIRING MANAGER', '3', 'REJECTED', '', 0),
(58, '2', 'INTERVIEW SCHEDULED', 'HIRING MANAGER', '3', 'REJECTED', '', 0),
(59, '2', 'INTERVIEW SCHEDULED', 'HIRING MANAGER', '5', 'INTERVIEW PASSED', '', 0),
(60, '2', 'INTERVIEW SCHEDULED', 'HIRING MANAGER', '6', 'INTERVIEW FAILED', '', 0),
(61, '2', 'INTERVIEW PASSED', 'HIRING MANAGER', '4', 'INTERVIEW SCHEDULED', '', 0),
(62, '2', 'INTERVIEW PASSED', 'HIRING MANAGER', '7', 'JOB OFFERED', '', 0),
(63, '2', 'INTERVIEW PASSED', 'HIRING MANAGER', '3', 'REJECTED', '', 0),
(64, '2', 'INTERVIEW FAILED', 'HIRING MANAGER', '3', 'REJECTED', '', 0),
(65, '2', 'JOB OFFERED', 'HIRING MANAGER', '8', 'OFFER DECLINED', '', 0),
(66, '2', 'JOB OFFERED', 'HIRING MANAGER', '3', 'REJECTED', '', 0),
(67, '2', 'JOB OFFERED', 'HIRING MANAGER', '9', 'HIRED', '', 0),
(68, '2', 'OFFER DECLINED', 'HIRING MANAGER', '3', 'REJECTED', '', 0),
(69, '2', 'INTERVIEW SCHEDULED', 'INTERVIEWER', '5', 'INTERVIEW PASSED', '', 0),
(70, '2', 'INTERVIEW SCHEDULED', 'INTERVIEWER', '6', 'INTERVIEW FAILED', '', 0),
(71, '1', 'INITIAL', 'ADMIN', '5', 'PUNCHED IN', '', 0),
(72, '1', 'PUNCHED IN', 'ADMIN', '6', 'PUNCHED OUT', '', 0),
(73, '1', 'PUNCHED IN', 'ADMIN', '2', 'PUNCHED IN', '', 0),
(74, '1', 'PUNCHED IN', 'ADMIN', '7', 'N/A', '', 0),
(75, '1', 'PUNCHED OUT', 'ADMIN', '2', 'PUNCHED OUT', '', 0),
(76, '1', 'PUNCHED OUT', 'ADMIN', '3', 'PUNCHED OUT', '', 0),
(77, '1', 'PUNCHED OUT', 'ADMIN', '7', 'N/A', '', 0),
(78, '0', 'INITIAL', 'ADMIN', '7', 'NOT SUBMITTED', '', 0),
(79, '0', 'INITIAL', 'ESS USER', '7', 'NOT SUBMITTED', '', 0),
(80, '0', 'INITIAL', 'SUPERVISOR', '7', 'NOT SUBMITTED', '', 0),
(81, '3', 'NOT_EXIST', 'ADMIN', '1', 'ACTIVE', '', 0),
(82, '3', 'ACTIVE', 'ADMIN', '2', 'NOT_EXIST', '', 0),
(83, '3', 'ACTIVE', 'ADMIN', '3', 'TERMINATED', '', 0),
(84, '3', 'TERMINATED', 'ADMIN', '4', 'ACTIVE', '', 0),
(85, '3', 'TERMINATED', 'ADMIN', '5', 'NOT_EXIST', '', 0),
(86, '4', 'INITIAL', 'ESS', 'APPLY', 'PENDING APPROVAL', 'supervisor,subscriber', 0),
(87, '4', 'INITIAL', 'ADMIN', 'ASSIGN', 'SCHEDULED', 'ess,supervisor,subscriber', 0),
(88, '4', 'INITIAL', 'SUPERVISOR', 'ASSIGN', 'SCHEDULED', 'ess,supervisor,subscriber', 0),
(89, '4', 'PENDING APPROVAL', 'ADMIN', 'APPROVE', 'SCHEDULED', 'ess,subscriber', 0),
(90, '4', 'PENDING APPROVAL', 'SUPERVISOR', 'APPROVE', 'SCHEDULED', 'ess,subscriber', 0),
(91, '4', 'PENDING APPROVAL', 'ESS', 'CANCEL', 'CANCELLED', 'supervisor,subscriber', 0),
(92, '4', 'PENDING APPROVAL', 'ADMIN', 'CANCEL', 'CANCELLED', 'ess,subscriber', 0),
(93, '4', 'PENDING APPROVAL', 'SUPERVISOR', 'CANCEL', 'CANCELLED', 'ess,subscriber', 0),
(94, '4', 'PENDING APPROVAL', 'ADMIN', 'REJECT', 'REJECTED', 'ess,subscriber', 0),
(95, '4', 'PENDING APPROVAL', 'SUPERVISOR', 'REJECT', 'REJECTED', 'ess,subscriber', 0),
(96, '4', 'SCHEDULED', 'ESS', 'CANCEL', 'CANCELLED', 'supervisor,subscriber', 0),
(97, '4', 'SCHEDULED', 'ADMIN', 'CANCEL', 'CANCELLED', 'ess,subscriber', 0),
(98, '4', 'SCHEDULED', 'SUPERVISOR', 'CANCEL', 'CANCELLED', 'ess,subscriber', 0),
(99, '4', 'TAKEN', 'ADMIN', 'CANCEL', 'CANCELLED', 'ess,subscriber', 0),
(100, '4', 'LEAVE TYPE DELETED PENDING APPROVAL', 'ESS', 'CANCEL', 'CANCELLED', 'supervisor,subscriber', 0),
(101, '4', 'LEAVE TYPE DELETED PENDING APPROVAL', 'ADMIN', 'CANCEL', 'CANCELLED', 'ess,subscriber', 0),
(102, '4', 'LEAVE TYPE DELETED PENDING APPROVAL', 'SUPERVISOR', 'CANCEL', 'CANCELLED', 'ess,subscriber', 0),
(103, '4', 'LEAVE TYPE DELETED SCHEDULED', 'ESS', 'CANCEL', 'CANCELLED', 'supervisor,subscriber', 0),
(104, '4', 'LEAVE TYPE DELETED SCHEDULED', 'ADMIN', 'CANCEL', 'CANCELLED', 'ess,subscriber', 0),
(105, '4', 'LEAVE TYPE DELETED SCHEDULED', 'SUPERVISOR', 'CANCEL', 'CANCELLED', 'ess,subscriber', 0),
(106, '4', 'LEAVE TYPE DELETED TAKEN', 'ADMIN', 'CANCEL', 'CANCELLED', 'ess,subscriber', 0),
(107, '5', 'INITIAL', 'ADMIN', '1', 'SAVED', NULL, 0),
(108, '5', 'INITIAL', 'ADMIN', '2', 'ACTIVATED', NULL, 0),
(109, '5', 'SAVED', 'ADMIN', '1', 'SAVED', NULL, 0),
(110, '5', 'SAVED', 'ADMIN', '2', 'ACTIVATED', NULL, 0),
(111, '5', 'ACTIVATED', 'ADMIN', '3', 'IN PROGRESS', NULL, 0),
(112, '5', 'ACTIVATED', 'ADMIN', '4', 'COMPLETED', NULL, 0),
(113, '5', 'IN PROGRESS', 'ADMIN', '3', 'IN PROGRESS', NULL, 0),
(114, '5', 'IN PROGRESS', 'ADMIN', '4', 'COMPLETED', NULL, 0),
(115, '5', 'ACTIVATED', 'SUPERVISOR', '3', 'IN PROGRESS', NULL, 0),
(116, '5', 'ACTIVATED', 'SUPERVISOR', '4', 'COMPLETED', NULL, 0),
(117, '5', 'IN PROGRESS', 'SUPERVISOR', '3', 'IN PROGRESS', NULL, 0),
(118, '5', 'IN PROGRESS', 'SUPERVISOR', '4', 'COMPLETED', NULL, 0),
(119, '6', 'SELF COMPLETED', 'ADMIN', '3', 'SUPERVISOR UPDATED', NULL, 0),
(120, '6', 'SUPERVISOR UPDATED', 'ADMIN', '3', 'SUPERVISOR UPDATED', NULL, 0),
(121, '6', 'SELF COMPLETED', 'SUPERVISOR', '3', 'SUPERVISOR UPDATED', NULL, 0),
(122, '6', 'SUPERVISOR UPDATED', 'SUPERVISOR', '3', 'SUPERVISOR UPDATED', NULL, 0),
(123, '6', 'INITIAL', 'ESS USER', '1', 'SELF IN PROGRESS', NULL, 0),
(124, '6', 'INITIAL', 'ESS USER', '2', 'SELF COMPLETED', NULL, 0),
(125, '6', 'SELF IN PROGRESS', 'ESS USER', '1', 'SELF IN PROGRESS', NULL, 0),
(126, '6', 'SELF IN PROGRESS', 'ESS USER', '2', 'SELF COMPLETED', NULL, 0),
(127, '7', 'INITIATED', 'ESS USER', '1', 'SUBMITTED', '', 10),
(128, '7', 'INITIATED', 'ESS USER', '4', 'CANCELLED', '', 10),
(129, '7', 'SUBMITTED', 'ESS USER', '4', 'CANCELLED', '', 10),
(130, '7', 'REJECTED', 'ESS USER', '1', 'SUBMITTED', '', 10),
(131, '7', 'INITIATED', 'ADMIN', '1', 'PAID', '', 0),
(132, '7', 'APPROVED', 'ADMIN', '5', 'REJECTED', '', 0),
(133, '7', 'SUBMITTED', 'ADMIN', '2', 'PAID', '', 10),
(134, '7', 'SUBMITTED', 'ADMIN', '5', 'REJECTED', '', 0),
(135, '7', 'APPROVED', 'ADMIN', '3', 'PAID', '', 0),
(136, '7', 'INITIATED', 'SUPERVISOR', '1', 'APPROVED', '', 0),
(137, '7', 'SUBMITTED', 'SUPERVISOR', '2', 'APPROVED', '', 0),
(138, '7', 'SUBMITTED', 'SUPERVISOR', '5', 'REJECTED', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_work_shift`
--

CREATE TABLE `ohrm_work_shift` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `hours_per_day` decimal(4,2) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_work_week`
--

CREATE TABLE `ohrm_work_week` (
  `id` int(10) UNSIGNED NOT NULL,
  `operational_country_id` int(10) UNSIGNED DEFAULT NULL,
  `mon` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `tue` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `wed` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `thu` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `fri` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sat` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sun` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ohrm_work_week`
--

INSERT INTO `ohrm_work_week` (`id`, `operational_country_id`, `mon`, `tue`, `wed`, `thu`, `fri`, `sat`, `sun`) VALUES
(1, NULL, 0, 0, 0, 0, 0, 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `ohrm_ws_consumer`
--

CREATE TABLE `ohrm_ws_consumer` (
  `app_id` int(10) UNSIGNED NOT NULL,
  `app_token` varchar(10) NOT NULL,
  `app_name` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abstract_display_field`
--
ALTER TABLE `abstract_display_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hs_hr_config`
--
ALTER TABLE `hs_hr_config`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `hs_hr_country`
--
ALTER TABLE `hs_hr_country`
  ADD PRIMARY KEY (`cou_code`);

--
-- Indexes for table `hs_hr_currency_type`
--
ALTER TABLE `hs_hr_currency_type`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `hs_hr_custom_export`
--
ALTER TABLE `hs_hr_custom_export`
  ADD PRIMARY KEY (`export_id`),
  ADD KEY `emp_number` (`export_id`);

--
-- Indexes for table `hs_hr_custom_fields`
--
ALTER TABLE `hs_hr_custom_fields`
  ADD PRIMARY KEY (`field_num`),
  ADD KEY `emp_number` (`field_num`),
  ADD KEY `screen` (`screen`);

--
-- Indexes for table `hs_hr_custom_import`
--
ALTER TABLE `hs_hr_custom_import`
  ADD PRIMARY KEY (`import_id`),
  ADD KEY `emp_number` (`import_id`);

--
-- Indexes for table `hs_hr_district`
--
ALTER TABLE `hs_hr_district`
  ADD PRIMARY KEY (`district_code`);

--
-- Indexes for table `hs_hr_employee`
--
ALTER TABLE `hs_hr_employee`
  ADD PRIMARY KEY (`emp_number`),
  ADD KEY `work_station` (`work_station`),
  ADD KEY `nation_code` (`nation_code`),
  ADD KEY `job_title_code` (`job_title_code`),
  ADD KEY `emp_status` (`emp_status`),
  ADD KEY `eeo_cat_code` (`eeo_cat_code`),
  ADD KEY `termination_id` (`termination_id`);

--
-- Indexes for table `hs_hr_emp_attachment`
--
ALTER TABLE `hs_hr_emp_attachment`
  ADD PRIMARY KEY (`emp_number`,`eattach_id`),
  ADD KEY `screen` (`screen`);

--
-- Indexes for table `hs_hr_emp_basicsalary`
--
ALTER TABLE `hs_hr_emp_basicsalary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sal_grd_code` (`sal_grd_code`),
  ADD KEY `currency_id` (`currency_id`),
  ADD KEY `emp_number` (`emp_number`),
  ADD KEY `payperiod_code` (`payperiod_code`);

--
-- Indexes for table `hs_hr_emp_children`
--
ALTER TABLE `hs_hr_emp_children`
  ADD PRIMARY KEY (`emp_number`,`ec_seqno`);

--
-- Indexes for table `hs_hr_emp_contract_extend`
--
ALTER TABLE `hs_hr_emp_contract_extend`
  ADD PRIMARY KEY (`emp_number`,`econ_extend_id`);

--
-- Indexes for table `hs_hr_emp_dependents`
--
ALTER TABLE `hs_hr_emp_dependents`
  ADD PRIMARY KEY (`emp_number`,`ed_seqno`);

--
-- Indexes for table `hs_hr_emp_directdebit`
--
ALTER TABLE `hs_hr_emp_directdebit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_id` (`salary_id`);

--
-- Indexes for table `hs_hr_emp_emergency_contacts`
--
ALTER TABLE `hs_hr_emp_emergency_contacts`
  ADD PRIMARY KEY (`emp_number`,`eec_seqno`);

--
-- Indexes for table `hs_hr_emp_history_of_ealier_pos`
--
ALTER TABLE `hs_hr_emp_history_of_ealier_pos`
  ADD PRIMARY KEY (`emp_number`,`emp_seqno`);

--
-- Indexes for table `hs_hr_emp_language`
--
ALTER TABLE `hs_hr_emp_language`
  ADD PRIMARY KEY (`emp_number`,`lang_id`,`fluency`),
  ADD KEY `lang_id` (`lang_id`);

--
-- Indexes for table `hs_hr_emp_locations`
--
ALTER TABLE `hs_hr_emp_locations`
  ADD PRIMARY KEY (`emp_number`,`location_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `hs_hr_emp_member_detail`
--
ALTER TABLE `hs_hr_emp_member_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membship_code` (`membship_code`);

--
-- Indexes for table `hs_hr_emp_passport`
--
ALTER TABLE `hs_hr_emp_passport`
  ADD PRIMARY KEY (`emp_number`,`ep_seqno`);

--
-- Indexes for table `hs_hr_emp_picture`
--
ALTER TABLE `hs_hr_emp_picture`
  ADD PRIMARY KEY (`emp_number`);

--
-- Indexes for table `hs_hr_emp_reportto`
--
ALTER TABLE `hs_hr_emp_reportto`
  ADD PRIMARY KEY (`erep_sup_emp_number`,`erep_sub_emp_number`,`erep_reporting_mode`),
  ADD KEY `erep_sub_emp_number` (`erep_sub_emp_number`),
  ADD KEY `erep_reporting_mode` (`erep_reporting_mode`);

--
-- Indexes for table `hs_hr_emp_skill`
--
ALTER TABLE `hs_hr_emp_skill`
  ADD KEY `emp_number` (`emp_number`),
  ADD KEY `skill_id` (`skill_id`);

--
-- Indexes for table `hs_hr_emp_us_tax`
--
ALTER TABLE `hs_hr_emp_us_tax`
  ADD PRIMARY KEY (`emp_number`);

--
-- Indexes for table `hs_hr_emp_work_experience`
--
ALTER TABLE `hs_hr_emp_work_experience`
  ADD PRIMARY KEY (`emp_number`,`eexp_seqno`);

--
-- Indexes for table `hs_hr_jobtit_empstat`
--
ALTER TABLE `hs_hr_jobtit_empstat`
  ADD PRIMARY KEY (`jobtit_code`,`estat_code`),
  ADD KEY `estat_code` (`estat_code`);

--
-- Indexes for table `hs_hr_mailnotifications`
--
ALTER TABLE `hs_hr_mailnotifications`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `notification_type_id` (`notification_type_id`);

--
-- Indexes for table `hs_hr_module`
--
ALTER TABLE `hs_hr_module`
  ADD PRIMARY KEY (`mod_id`);

--
-- Indexes for table `hs_hr_payperiod`
--
ALTER TABLE `hs_hr_payperiod`
  ADD PRIMARY KEY (`payperiod_code`);

--
-- Indexes for table `hs_hr_pay_period`
--
ALTER TABLE `hs_hr_pay_period`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hs_hr_province`
--
ALTER TABLE `hs_hr_province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hs_hr_unique_id`
--
ALTER TABLE `hs_hr_unique_id`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table_field` (`table_name`,`field_name`);

--
-- Indexes for table `ohrm_advanced_report`
--
ALTER TABLE `ohrm_advanced_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_api_permission`
--
ALTER TABLE `ohrm_api_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_name` (`api_name`),
  ADD KEY `IDX_AE4B8278AFC2B591` (`module_id`),
  ADD KEY `IDX_AE4B8278348A109B` (`data_group_id`);

--
-- Indexes for table `ohrm_attendance_record`
--
ALTER TABLE `ohrm_attendance_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id_state` (`employee_id`,`state`),
  ADD KEY `emp_id_time` (`employee_id`,`punch_in_utc_time`,`punch_out_utc_time`);

--
-- Indexes for table `ohrm_auth_provider_extra_details`
--
ALTER TABLE `ohrm_auth_provider_extra_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provider_id` (`provider_id`);

--
-- Indexes for table `ohrm_available_group_field`
--
ALTER TABLE `ohrm_available_group_field`
  ADD PRIMARY KEY (`report_group_id`,`group_field_id`),
  ADD KEY `report_group_id` (`report_group_id`),
  ADD KEY `group_field_id` (`group_field_id`);

--
-- Indexes for table `ohrm_beacon_notification`
--
ALTER TABLE `ohrm_beacon_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_buzz_comment`
--
ALTER TABLE `ohrm_buzz_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `share_id` (`share_id`),
  ADD KEY `employee_number` (`employee_number`);

--
-- Indexes for table `ohrm_buzz_like_on_comment`
--
ALTER TABLE `ohrm_buzz_like_on_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `employee_number` (`employee_number`);

--
-- Indexes for table `ohrm_buzz_like_on_share`
--
ALTER TABLE `ohrm_buzz_like_on_share`
  ADD PRIMARY KEY (`id`),
  ADD KEY `share_id` (`share_id`),
  ADD KEY `employee_number` (`employee_number`);

--
-- Indexes for table `ohrm_buzz_link`
--
ALTER TABLE `ohrm_buzz_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachment_id` (`post_id`),
  ADD KEY `photo_id` (`post_id`);

--
-- Indexes for table `ohrm_buzz_notification_metadata`
--
ALTER TABLE `ohrm_buzz_notification_metadata`
  ADD PRIMARY KEY (`emp_number`);

--
-- Indexes for table `ohrm_buzz_photo`
--
ALTER TABLE `ohrm_buzz_photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachment_id` (`post_id`);

--
-- Indexes for table `ohrm_buzz_post`
--
ALTER TABLE `ohrm_buzz_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buzzPostEmployee` (`employee_number`);

--
-- Indexes for table `ohrm_buzz_share`
--
ALTER TABLE `ohrm_buzz_share`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `employee_number` (`employee_number`);

--
-- Indexes for table `ohrm_claim_attachment`
--
ALTER TABLE `ohrm_claim_attachment`
  ADD PRIMARY KEY (`request_id`,`eattach_id`),
  ADD KEY `attachedById` (`attached_by`);

--
-- Indexes for table `ohrm_claim_event`
--
ALTER TABLE `ohrm_claim_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addedBy` (`added_by`);

--
-- Indexes for table `ohrm_claim_request`
--
ALTER TABLE `ohrm_claim_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requestByUser` (`added_by`),
  ADD KEY `claimEventId` (`event_type_id`),
  ADD KEY `claim_Request_Employee_Number` (`emp_number`),
  ADD KEY `fk_currency_id` (`currency_id`);

--
-- Indexes for table `ohrm_composite_display_field`
--
ALTER TABLE `ohrm_composite_display_field`
  ADD PRIMARY KEY (`composite_display_field_id`),
  ADD KEY `report_group_id` (`report_group_id`),
  ADD KEY `display_field_group_id` (`display_field_group_id`);

--
-- Indexes for table `ohrm_customer`
--
ALTER TABLE `ohrm_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `ohrm_datapoint`
--
ALTER TABLE `ohrm_datapoint`
  ADD PRIMARY KEY (`id`),
  ADD KEY `datapoint_type_id` (`datapoint_type_id`);

--
-- Indexes for table `ohrm_datapoint_type`
--
ALTER TABLE `ohrm_datapoint_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_data_group`
--
ALTER TABLE `ohrm_data_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `ohrm_display_field`
--
ALTER TABLE `ohrm_display_field`
  ADD PRIMARY KEY (`display_field_id`),
  ADD KEY `report_group_id` (`report_group_id`),
  ADD KEY `display_field_group_id` (`display_field_group_id`);

--
-- Indexes for table `ohrm_display_field_group`
--
ALTER TABLE `ohrm_display_field_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_group_id` (`report_group_id`);

--
-- Indexes for table `ohrm_education`
--
ALTER TABLE `ohrm_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_email`
--
ALTER TABLE `ohrm_email`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `ohrm_email_name` (`name`);

--
-- Indexes for table `ohrm_email_configuration`
--
ALTER TABLE `ohrm_email_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_email_notification`
--
ALTER TABLE `ohrm_email_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_email_processor`
--
ALTER TABLE `ohrm_email_processor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_id` (`email_id`);

--
-- Indexes for table `ohrm_email_subscriber`
--
ALTER TABLE `ohrm_email_subscriber`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_id` (`notification_id`);

--
-- Indexes for table `ohrm_email_template`
--
ALTER TABLE `ohrm_email_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_id` (`email_id`);

--
-- Indexes for table `ohrm_employee_event`
--
ALTER TABLE `ohrm_employee_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `ohrm_employee_subscription`
--
ALTER TABLE `ohrm_employee_subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_employee_work_shift`
--
ALTER TABLE `ohrm_employee_work_shift`
  ADD PRIMARY KEY (`work_shift_id`,`emp_number`),
  ADD KEY `emp_number` (`emp_number`);

--
-- Indexes for table `ohrm_employment_status`
--
ALTER TABLE `ohrm_employment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_emp_education`
--
ALTER TABLE `ohrm_emp_education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_number` (`emp_number`),
  ADD KEY `education_id` (`education_id`);

--
-- Indexes for table `ohrm_emp_license`
--
ALTER TABLE `ohrm_emp_license`
  ADD PRIMARY KEY (`emp_number`,`license_id`),
  ADD KEY `license_id` (`license_id`);

--
-- Indexes for table `ohrm_emp_reporting_method`
--
ALTER TABLE `ohrm_emp_reporting_method`
  ADD PRIMARY KEY (`reporting_method_id`);

--
-- Indexes for table `ohrm_emp_termination`
--
ALTER TABLE `ohrm_emp_termination`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reason_id` (`reason_id`),
  ADD KEY `emp_number` (`emp_number`);

--
-- Indexes for table `ohrm_emp_termination_reason`
--
ALTER TABLE `ohrm_emp_termination_reason`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_enforce_password`
--
ALTER TABLE `ohrm_enforce_password`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reset_code` (`reset_code`),
  ADD KEY `enforcePasswordUser` (`user_id`);

--
-- Indexes for table `ohrm_expense`
--
ALTER TABLE `ohrm_expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenseTypeId` (`expense_type_id`),
  ADD KEY `claimRequsetId` (`request_id`);

--
-- Indexes for table `ohrm_expense_type`
--
ALTER TABLE `ohrm_expense_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addedByUser` (`added_by`);

--
-- Indexes for table `ohrm_filter_field`
--
ALTER TABLE `ohrm_filter_field`
  ADD PRIMARY KEY (`filter_field_id`),
  ADD KEY `report_group_id` (`report_group_id`);

--
-- Indexes for table `ohrm_group_field`
--
ALTER TABLE `ohrm_group_field`
  ADD PRIMARY KEY (`group_field_id`);

--
-- Indexes for table `ohrm_holiday`
--
ALTER TABLE `ohrm_holiday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ohrm_holiday_ohrm_operational_country` (`operational_country_id`);

--
-- Indexes for table `ohrm_home_page`
--
ALTER TABLE `ohrm_home_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_role_id` (`user_role_id`);

--
-- Indexes for table `ohrm_i18n_group`
--
ALTER TABLE `ohrm_i18n_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_i18n_language`
--
ALTER TABLE `ohrm_i18n_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_334C712777153098` (`code`);

--
-- Indexes for table `ohrm_i18n_lang_string`
--
ALTER TABLE `ohrm_i18n_lang_string`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupId` (`group_id`);

--
-- Indexes for table `ohrm_i18n_translate`
--
ALTER TABLE `ohrm_i18n_translate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translateUniqueId` (`lang_string_id`,`language_id`),
  ADD KEY `languageId` (`language_id`);

--
-- Indexes for table `ohrm_job_candidate`
--
ALTER TABLE `ohrm_job_candidate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `added_person` (`added_person`);

--
-- Indexes for table `ohrm_job_candidate_attachment`
--
ALTER TABLE `ohrm_job_candidate_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidate_id` (`candidate_id`);

--
-- Indexes for table `ohrm_job_candidate_history`
--
ALTER TABLE `ohrm_job_candidate_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidate_id` (`candidate_id`),
  ADD KEY `vacancy_id` (`vacancy_id`),
  ADD KEY `interview_id` (`interview_id`),
  ADD KEY `performed_by` (`performed_by`);

--
-- Indexes for table `ohrm_job_candidate_vacancy`
--
ALTER TABLE `ohrm_job_candidate_vacancy`
  ADD PRIMARY KEY (`candidate_id`,`vacancy_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `vacancy_id` (`vacancy_id`);

--
-- Indexes for table `ohrm_job_category`
--
ALTER TABLE `ohrm_job_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_job_interview`
--
ALTER TABLE `ohrm_job_interview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidate_vacancy_id` (`candidate_vacancy_id`),
  ADD KEY `candidate_id` (`candidate_id`);

--
-- Indexes for table `ohrm_job_interview_attachment`
--
ALTER TABLE `ohrm_job_interview_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interview_id` (`interview_id`);

--
-- Indexes for table `ohrm_job_interview_interviewer`
--
ALTER TABLE `ohrm_job_interview_interviewer`
  ADD PRIMARY KEY (`interview_id`,`interviewer_id`),
  ADD KEY `interviewer_id` (`interviewer_id`);

--
-- Indexes for table `ohrm_job_specification_attachment`
--
ALTER TABLE `ohrm_job_specification_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_title_id` (`job_title_id`);

--
-- Indexes for table `ohrm_job_title`
--
ALTER TABLE `ohrm_job_title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_job_vacancy`
--
ALTER TABLE `ohrm_job_vacancy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_title_code` (`job_title_code`),
  ADD KEY `hiring_manager_id` (`hiring_manager_id`);

--
-- Indexes for table `ohrm_job_vacancy_attachment`
--
ALTER TABLE `ohrm_job_vacancy_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vacancy_id` (`vacancy_id`);

--
-- Indexes for table `ohrm_kpi`
--
ALTER TABLE `ohrm_kpi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ohrm_kpi_for_job_title_id` (`job_title_code`);

--
-- Indexes for table `ohrm_language`
--
ALTER TABLE `ohrm_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_ldap_sync_status`
--
ALTER TABLE `ohrm_ldap_sync_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ohrm_ldap_sync_status_synced_by` (`synced_by`);

--
-- Indexes for table `ohrm_leave`
--
ALTER TABLE `ohrm_leave`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_request_type_emp` (`leave_request_id`,`leave_type_id`,`emp_number`),
  ADD KEY `request_status` (`leave_request_id`,`status`),
  ADD KEY `leave_type_id` (`leave_type_id`);

--
-- Indexes for table `ohrm_leave_adjustment`
--
ALTER TABLE `ohrm_leave_adjustment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_type_id` (`leave_type_id`),
  ADD KEY `emp_number` (`emp_number`),
  ADD KEY `created_by_id` (`created_by_id`),
  ADD KEY `adjustment_type` (`adjustment_type`);

--
-- Indexes for table `ohrm_leave_comment`
--
ALTER TABLE `ohrm_leave_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_id` (`leave_id`),
  ADD KEY `created_by_id` (`created_by_id`),
  ADD KEY `created_by_emp_number` (`created_by_emp_number`);

--
-- Indexes for table `ohrm_leave_entitlement`
--
ALTER TABLE `ohrm_leave_entitlement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_type_id` (`leave_type_id`),
  ADD KEY `emp_number` (`emp_number`),
  ADD KEY `entitlement_type` (`entitlement_type`),
  ADD KEY `created_by_id` (`created_by_id`);

--
-- Indexes for table `ohrm_leave_entitlement_adjustment`
--
ALTER TABLE `ohrm_leave_entitlement_adjustment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entitlement_id` (`entitlement_id`),
  ADD KEY `adjustment_id` (`adjustment_id`);

--
-- Indexes for table `ohrm_leave_entitlement_type`
--
ALTER TABLE `ohrm_leave_entitlement_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_leave_leave_entitlement`
--
ALTER TABLE `ohrm_leave_leave_entitlement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entitlement_id` (`entitlement_id`),
  ADD KEY `leave_id` (`leave_id`);

--
-- Indexes for table `ohrm_leave_period_history`
--
ALTER TABLE `ohrm_leave_period_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_leave_request`
--
ALTER TABLE `ohrm_leave_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_number` (`emp_number`),
  ADD KEY `leave_type_id` (`leave_type_id`);

--
-- Indexes for table `ohrm_leave_request_comment`
--
ALTER TABLE `ohrm_leave_request_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_request_id` (`leave_request_id`),
  ADD KEY `created_by_id` (`created_by_id`),
  ADD KEY `created_by_emp_number` (`created_by_emp_number`);

--
-- Indexes for table `ohrm_leave_status`
--
ALTER TABLE `ohrm_leave_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_leave_type`
--
ALTER TABLE `ohrm_leave_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operational_country_id` (`operational_country_id`);

--
-- Indexes for table `ohrm_license`
--
ALTER TABLE `ohrm_license`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_location`
--
ALTER TABLE `ohrm_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_code` (`country_code`);

--
-- Indexes for table `ohrm_login`
--
ALTER TABLE `ohrm_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_mail_queue`
--
ALTER TABLE `ohrm_mail_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_membership`
--
ALTER TABLE `ohrm_membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_menu_item`
--
ALTER TABLE `ohrm_menu_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `screen_id` (`screen_id`);

--
-- Indexes for table `ohrm_migration_log`
--
ALTER TABLE `ohrm_migration_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_module`
--
ALTER TABLE `ohrm_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_module_default_page`
--
ALTER TABLE `ohrm_module_default_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_role_id` (`user_role_id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `ohrm_nationality`
--
ALTER TABLE `ohrm_nationality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_oauth2_access_token`
--
ALTER TABLE `ohrm_oauth2_access_token`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_access_token` (`access_token`),
  ADD KEY `access_token_client_id` (`client_id`);

--
-- Indexes for table `ohrm_oauth2_authorization_code`
--
ALTER TABLE `ohrm_oauth2_authorization_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_authorization_code` (`authorization_code`),
  ADD KEY `auth_code_client_id` (`client_id`);

--
-- Indexes for table `ohrm_oauth2_client`
--
ALTER TABLE `ohrm_oauth2_client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id` (`client_id`);

--
-- Indexes for table `ohrm_oauth2_refresh_token`
--
ALTER TABLE `ohrm_oauth2_refresh_token`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_refresh_token` (`refresh_token`),
  ADD KEY `oauth2_access_token` (`access_token`);

--
-- Indexes for table `ohrm_oauth_access_token`
--
ALTER TABLE `ohrm_oauth_access_token`
  ADD PRIMARY KEY (`access_token`);

--
-- Indexes for table `ohrm_oauth_authorization_code`
--
ALTER TABLE `ohrm_oauth_authorization_code`
  ADD PRIMARY KEY (`authorization_code`);

--
-- Indexes for table `ohrm_oauth_client`
--
ALTER TABLE `ohrm_oauth_client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `ohrm_oauth_refresh_token`
--
ALTER TABLE `ohrm_oauth_refresh_token`
  ADD PRIMARY KEY (`refresh_token`);

--
-- Indexes for table `ohrm_oauth_user`
--
ALTER TABLE `ohrm_oauth_user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `ohrm_openid_provider`
--
ALTER TABLE `ohrm_openid_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_openid_user_identity`
--
ALTER TABLE `ohrm_openid_user_identity`
  ADD KEY `ohrm_user_identity_ibfk_1` (`user_id`),
  ADD KEY `ohrm_user_identity_ibfk_2` (`provider_id`);

--
-- Indexes for table `ohrm_operational_country`
--
ALTER TABLE `ohrm_operational_country`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ohrm_operational_country_hs_hr_country` (`country_code`);

--
-- Indexes for table `ohrm_organization_gen_info`
--
ALTER TABLE `ohrm_organization_gen_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_pay_grade`
--
ALTER TABLE `ohrm_pay_grade`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `ohrm_pay_grade_currency`
--
ALTER TABLE `ohrm_pay_grade_currency`
  ADD PRIMARY KEY (`pay_grade_id`,`currency_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Indexes for table `ohrm_performance_review`
--
ALTER TABLE `ohrm_performance_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_number` (`employee_number`);

--
-- Indexes for table `ohrm_performance_track`
--
ALTER TABLE `ohrm_performance_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ohrm_performance_track_fk1_idx` (`emp_number`),
  ADD KEY `ohrm_performance_track_fk2_idx` (`added_by`);

--
-- Indexes for table `ohrm_performance_tracker_log`
--
ALTER TABLE `ohrm_performance_tracker_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ohrm_performance_tracker_log_fk1_idx` (`performance_track_id`),
  ADD KEY `ohrm_performance_tracker_log_fk2_idx` (`reviewer_id`),
  ADD KEY `fk_ohrm_performance_tracker_log_1` (`user_id`);

--
-- Indexes for table `ohrm_performance_tracker_reviewer`
--
ALTER TABLE `ohrm_performance_tracker_reviewer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ohrm_performance_tracker_reviewer_fk1_idx` (`performance_track_id`),
  ADD KEY `ohrm_performance_tracker_reviewer_fk2_idx` (`reviewer_id`);

--
-- Indexes for table `ohrm_plugin`
--
ALTER TABLE `ohrm_plugin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `ohrm_project`
--
ALTER TABLE `ohrm_project`
  ADD PRIMARY KEY (`project_id`,`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `ohrm_project_activity`
--
ALTER TABLE `ohrm_project_activity`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `ohrm_project_admin`
--
ALTER TABLE `ohrm_project_admin`
  ADD PRIMARY KEY (`project_id`,`emp_number`),
  ADD KEY `emp_number` (`emp_number`);

--
-- Indexes for table `ohrm_registration_event_queue`
--
ALTER TABLE `ohrm_registration_event_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_report`
--
ALTER TABLE `ohrm_report`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `report_group_id` (`report_group_id`);

--
-- Indexes for table `ohrm_report_group`
--
ALTER TABLE `ohrm_report_group`
  ADD PRIMARY KEY (`report_group_id`);

--
-- Indexes for table `ohrm_reset_password`
--
ALTER TABLE `ohrm_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_rest_api_usage`
--
ALTER TABLE `ohrm_rest_api_usage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_reviewer`
--
ALTER TABLE `ohrm_reviewer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_id` (`review_id`);

--
-- Indexes for table `ohrm_reviewer_group`
--
ALTER TABLE `ohrm_reviewer_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_reviewer_rating`
--
ALTER TABLE `ohrm_reviewer_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_id` (`review_id`),
  ADD KEY `reviewer_id` (`reviewer_id`);

--
-- Indexes for table `ohrm_role_user_selection_rule`
--
ALTER TABLE `ohrm_role_user_selection_rule`
  ADD PRIMARY KEY (`user_role_id`,`selection_rule_id`);

--
-- Indexes for table `ohrm_screen`
--
ALTER TABLE `ohrm_screen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `ohrm_selected_composite_display_field`
--
ALTER TABLE `ohrm_selected_composite_display_field`
  ADD PRIMARY KEY (`id`,`composite_display_field_id`,`report_id`),
  ADD KEY `composite_display_field_id` (`composite_display_field_id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `ohrm_selected_display_field`
--
ALTER TABLE `ohrm_selected_display_field`
  ADD PRIMARY KEY (`id`,`display_field_id`,`report_id`),
  ADD KEY `display_field_id` (`display_field_id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `ohrm_selected_display_field_group`
--
ALTER TABLE `ohrm_selected_display_field_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_id` (`report_id`),
  ADD KEY `display_field_group_id` (`display_field_group_id`);

--
-- Indexes for table `ohrm_selected_filter_field`
--
ALTER TABLE `ohrm_selected_filter_field`
  ADD PRIMARY KEY (`report_id`,`filter_field_id`),
  ADD KEY `report_id` (`report_id`),
  ADD KEY `filter_field_id` (`filter_field_id`);

--
-- Indexes for table `ohrm_selected_group_field`
--
ALTER TABLE `ohrm_selected_group_field`
  ADD PRIMARY KEY (`group_field_id`,`summary_display_field_id`,`report_id`),
  ADD KEY `group_field_id` (`group_field_id`),
  ADD KEY `summary_display_field_id` (`summary_display_field_id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `ohrm_skill`
--
ALTER TABLE `ohrm_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_subunit`
--
ALTER TABLE `ohrm_subunit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `ohrm_summary_display_field`
--
ALTER TABLE `ohrm_summary_display_field`
  ADD PRIMARY KEY (`summary_display_field_id`),
  ADD KEY `display_field_group_id` (`display_field_group_id`);

--
-- Indexes for table `ohrm_task_scheduler_log`
--
ALTER TABLE `ohrm_task_scheduler_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_theme`
--
ALTER TABLE `ohrm_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `ohrm_timesheet`
--
ALTER TABLE `ohrm_timesheet`
  ADD PRIMARY KEY (`timesheet_id`);

--
-- Indexes for table `ohrm_timesheet_action_log`
--
ALTER TABLE `ohrm_timesheet_action_log`
  ADD PRIMARY KEY (`timesheet_action_log_id`),
  ADD KEY `timesheet_id` (`timesheet_id`),
  ADD KEY `performed_by` (`performed_by`);

--
-- Indexes for table `ohrm_timesheet_item`
--
ALTER TABLE `ohrm_timesheet_item`
  ADD PRIMARY KEY (`timesheet_item_id`),
  ADD KEY `timesheet_id` (`timesheet_id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `ohrm_upgrade_history`
--
ALTER TABLE `ohrm_upgrade_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_user`
--
ALTER TABLE `ohrm_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_role_id` (`user_role_id`),
  ADD KEY `emp_number` (`emp_number`),
  ADD KEY `modified_user_id` (`modified_user_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `ohrm_user_auth_provider`
--
ALTER TABLE `ohrm_user_auth_provider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ohrm_user_id` (`user_id`);

--
-- Indexes for table `ohrm_user_role`
--
ALTER TABLE `ohrm_user_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_role_name` (`name`);

--
-- Indexes for table `ohrm_user_role_data_group`
--
ALTER TABLE `ohrm_user_role_data_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_role_id` (`user_role_id`),
  ADD KEY `data_group_id` (`data_group_id`);

--
-- Indexes for table `ohrm_user_role_screen`
--
ALTER TABLE `ohrm_user_role_screen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_role_id` (`user_role_id`),
  ADD KEY `screen_id` (`screen_id`);

--
-- Indexes for table `ohrm_user_selection_rule`
--
ALTER TABLE `ohrm_user_selection_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_workflow_state_machine`
--
ALTER TABLE `ohrm_workflow_state_machine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_work_shift`
--
ALTER TABLE `ohrm_work_shift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ohrm_work_week`
--
ALTER TABLE `ohrm_work_week`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ohrm_work_week_ohrm_operational_country` (`operational_country_id`);

--
-- Indexes for table `ohrm_ws_consumer`
--
ALTER TABLE `ohrm_ws_consumer`
  ADD PRIMARY KEY (`app_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abstract_display_field`
--
ALTER TABLE `abstract_display_field`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hs_hr_employee`
--
ALTER TABLE `hs_hr_employee`
  MODIFY `emp_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `hs_hr_emp_basicsalary`
--
ALTER TABLE `hs_hr_emp_basicsalary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hs_hr_emp_directdebit`
--
ALTER TABLE `hs_hr_emp_directdebit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hs_hr_emp_member_detail`
--
ALTER TABLE `hs_hr_emp_member_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hs_hr_province`
--
ALTER TABLE `hs_hr_province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `hs_hr_unique_id`
--
ALTER TABLE `hs_hr_unique_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `ohrm_api_permission`
--
ALTER TABLE `ohrm_api_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `ohrm_attendance_record`
--
ALTER TABLE `ohrm_attendance_record`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_auth_provider_extra_details`
--
ALTER TABLE `ohrm_auth_provider_extra_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_beacon_notification`
--
ALTER TABLE `ohrm_beacon_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_buzz_comment`
--
ALTER TABLE `ohrm_buzz_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_buzz_like_on_comment`
--
ALTER TABLE `ohrm_buzz_like_on_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_buzz_like_on_share`
--
ALTER TABLE `ohrm_buzz_like_on_share`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_buzz_link`
--
ALTER TABLE `ohrm_buzz_link`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_buzz_photo`
--
ALTER TABLE `ohrm_buzz_photo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_buzz_post`
--
ALTER TABLE `ohrm_buzz_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_buzz_share`
--
ALTER TABLE `ohrm_buzz_share`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_claim_event`
--
ALTER TABLE `ohrm_claim_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_claim_request`
--
ALTER TABLE `ohrm_claim_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_composite_display_field`
--
ALTER TABLE `ohrm_composite_display_field`
  MODIFY `composite_display_field_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ohrm_customer`
--
ALTER TABLE `ohrm_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_datapoint`
--
ALTER TABLE `ohrm_datapoint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_datapoint_type`
--
ALTER TABLE `ohrm_datapoint_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ohrm_data_group`
--
ALTER TABLE `ohrm_data_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `ohrm_display_field`
--
ALTER TABLE `ohrm_display_field`
  MODIFY `display_field_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `ohrm_display_field_group`
--
ALTER TABLE `ohrm_display_field_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ohrm_education`
--
ALTER TABLE `ohrm_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_email`
--
ALTER TABLE `ohrm_email`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ohrm_email_configuration`
--
ALTER TABLE `ohrm_email_configuration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_email_notification`
--
ALTER TABLE `ohrm_email_notification`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ohrm_email_processor`
--
ALTER TABLE `ohrm_email_processor`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ohrm_email_subscriber`
--
ALTER TABLE `ohrm_email_subscriber`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_email_template`
--
ALTER TABLE `ohrm_email_template`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ohrm_employee_event`
--
ALTER TABLE `ohrm_employee_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ohrm_employee_subscription`
--
ALTER TABLE `ohrm_employee_subscription`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_employee_work_shift`
--
ALTER TABLE `ohrm_employee_work_shift`
  MODIFY `work_shift_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_employment_status`
--
ALTER TABLE `ohrm_employment_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_emp_education`
--
ALTER TABLE `ohrm_emp_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_emp_reporting_method`
--
ALTER TABLE `ohrm_emp_reporting_method`
  MODIFY `reporting_method_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ohrm_emp_termination`
--
ALTER TABLE `ohrm_emp_termination`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_emp_termination_reason`
--
ALTER TABLE `ohrm_emp_termination_reason`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ohrm_enforce_password`
--
ALTER TABLE `ohrm_enforce_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_expense`
--
ALTER TABLE `ohrm_expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_expense_type`
--
ALTER TABLE `ohrm_expense_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_holiday`
--
ALTER TABLE `ohrm_holiday`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_home_page`
--
ALTER TABLE `ohrm_home_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ohrm_i18n_group`
--
ALTER TABLE `ohrm_i18n_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ohrm_i18n_language`
--
ALTER TABLE `ohrm_i18n_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT for table `ohrm_i18n_lang_string`
--
ALTER TABLE `ohrm_i18n_lang_string`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1209;

--
-- AUTO_INCREMENT for table `ohrm_i18n_translate`
--
ALTER TABLE `ohrm_i18n_translate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6507;

--
-- AUTO_INCREMENT for table `ohrm_job_candidate`
--
ALTER TABLE `ohrm_job_candidate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_job_candidate_attachment`
--
ALTER TABLE `ohrm_job_candidate_attachment`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_job_candidate_history`
--
ALTER TABLE `ohrm_job_candidate_history`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_job_candidate_vacancy`
--
ALTER TABLE `ohrm_job_candidate_vacancy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_job_category`
--
ALTER TABLE `ohrm_job_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ohrm_job_interview`
--
ALTER TABLE `ohrm_job_interview`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_job_interview_attachment`
--
ALTER TABLE `ohrm_job_interview_attachment`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_job_specification_attachment`
--
ALTER TABLE `ohrm_job_specification_attachment`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_job_title`
--
ALTER TABLE `ohrm_job_title`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ohrm_job_vacancy`
--
ALTER TABLE `ohrm_job_vacancy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ohrm_job_vacancy_attachment`
--
ALTER TABLE `ohrm_job_vacancy_attachment`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_kpi`
--
ALTER TABLE `ohrm_kpi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_language`
--
ALTER TABLE `ohrm_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_ldap_sync_status`
--
ALTER TABLE `ohrm_ldap_sync_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_leave`
--
ALTER TABLE `ohrm_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_leave_adjustment`
--
ALTER TABLE `ohrm_leave_adjustment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_leave_comment`
--
ALTER TABLE `ohrm_leave_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_leave_entitlement`
--
ALTER TABLE `ohrm_leave_entitlement`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ohrm_leave_entitlement_adjustment`
--
ALTER TABLE `ohrm_leave_entitlement_adjustment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_leave_entitlement_type`
--
ALTER TABLE `ohrm_leave_entitlement_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ohrm_leave_leave_entitlement`
--
ALTER TABLE `ohrm_leave_leave_entitlement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_leave_period_history`
--
ALTER TABLE `ohrm_leave_period_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ohrm_leave_request`
--
ALTER TABLE `ohrm_leave_request`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_leave_request_comment`
--
ALTER TABLE `ohrm_leave_request_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_leave_status`
--
ALTER TABLE `ohrm_leave_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ohrm_leave_type`
--
ALTER TABLE `ohrm_leave_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ohrm_license`
--
ALTER TABLE `ohrm_license`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_location`
--
ALTER TABLE `ohrm_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ohrm_login`
--
ALTER TABLE `ohrm_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `ohrm_mail_queue`
--
ALTER TABLE `ohrm_mail_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_membership`
--
ALTER TABLE `ohrm_membership`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_menu_item`
--
ALTER TABLE `ohrm_menu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `ohrm_migration_log`
--
ALTER TABLE `ohrm_migration_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `ohrm_module`
--
ALTER TABLE `ohrm_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ohrm_module_default_page`
--
ALTER TABLE `ohrm_module_default_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ohrm_nationality`
--
ALTER TABLE `ohrm_nationality`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `ohrm_oauth2_access_token`
--
ALTER TABLE `ohrm_oauth2_access_token`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_oauth2_authorization_code`
--
ALTER TABLE `ohrm_oauth2_authorization_code`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_oauth2_client`
--
ALTER TABLE `ohrm_oauth2_client`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ohrm_oauth2_refresh_token`
--
ALTER TABLE `ohrm_oauth2_refresh_token`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_openid_provider`
--
ALTER TABLE `ohrm_openid_provider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_operational_country`
--
ALTER TABLE `ohrm_operational_country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_organization_gen_info`
--
ALTER TABLE `ohrm_organization_gen_info`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ohrm_pay_grade`
--
ALTER TABLE `ohrm_pay_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_performance_review`
--
ALTER TABLE `ohrm_performance_review`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_performance_track`
--
ALTER TABLE `ohrm_performance_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_performance_tracker_log`
--
ALTER TABLE `ohrm_performance_tracker_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_performance_tracker_reviewer`
--
ALTER TABLE `ohrm_performance_tracker_reviewer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_plugin`
--
ALTER TABLE `ohrm_plugin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_project`
--
ALTER TABLE `ohrm_project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_project_activity`
--
ALTER TABLE `ohrm_project_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_registration_event_queue`
--
ALTER TABLE `ohrm_registration_event_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_report`
--
ALTER TABLE `ohrm_report`
  MODIFY `report_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ohrm_reset_password`
--
ALTER TABLE `ohrm_reset_password`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_rest_api_usage`
--
ALTER TABLE `ohrm_rest_api_usage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_reviewer`
--
ALTER TABLE `ohrm_reviewer`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_reviewer_group`
--
ALTER TABLE `ohrm_reviewer_group`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ohrm_reviewer_rating`
--
ALTER TABLE `ohrm_reviewer_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_screen`
--
ALTER TABLE `ohrm_screen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `ohrm_selected_display_field`
--
ALTER TABLE `ohrm_selected_display_field`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `ohrm_selected_display_field_group`
--
ALTER TABLE `ohrm_selected_display_field_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ohrm_skill`
--
ALTER TABLE `ohrm_skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ohrm_subunit`
--
ALTER TABLE `ohrm_subunit`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ohrm_task_scheduler_log`
--
ALTER TABLE `ohrm_task_scheduler_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_theme`
--
ALTER TABLE `ohrm_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ohrm_timesheet`
--
ALTER TABLE `ohrm_timesheet`
  MODIFY `timesheet_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_timesheet_action_log`
--
ALTER TABLE `ohrm_timesheet_action_log`
  MODIFY `timesheet_action_log_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_timesheet_item`
--
ALTER TABLE `ohrm_timesheet_item`
  MODIFY `timesheet_item_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_upgrade_history`
--
ALTER TABLE `ohrm_upgrade_history`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_user`
--
ALTER TABLE `ohrm_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ohrm_user_auth_provider`
--
ALTER TABLE `ohrm_user_auth_provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_user_role`
--
ALTER TABLE `ohrm_user_role`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ohrm_user_role_data_group`
--
ALTER TABLE `ohrm_user_role_data_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700;

--
-- AUTO_INCREMENT for table `ohrm_user_role_screen`
--
ALTER TABLE `ohrm_user_role_screen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `ohrm_user_selection_rule`
--
ALTER TABLE `ohrm_user_selection_rule`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_workflow_state_machine`
--
ALTER TABLE `ohrm_workflow_state_machine`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `ohrm_work_shift`
--
ALTER TABLE `ohrm_work_shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ohrm_work_week`
--
ALTER TABLE `ohrm_work_week`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ohrm_ws_consumer`
--
ALTER TABLE `ohrm_ws_consumer`
  MODIFY `app_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hs_hr_employee`
--
ALTER TABLE `hs_hr_employee`
  ADD CONSTRAINT `hs_hr_employee_ibfk_1` FOREIGN KEY (`work_station`) REFERENCES `ohrm_subunit` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `hs_hr_employee_ibfk_2` FOREIGN KEY (`nation_code`) REFERENCES `ohrm_nationality` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `hs_hr_employee_ibfk_3` FOREIGN KEY (`job_title_code`) REFERENCES `ohrm_job_title` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `hs_hr_employee_ibfk_4` FOREIGN KEY (`emp_status`) REFERENCES `ohrm_employment_status` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `hs_hr_employee_ibfk_5` FOREIGN KEY (`eeo_cat_code`) REFERENCES `ohrm_job_category` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `hs_hr_employee_ibfk_6` FOREIGN KEY (`termination_id`) REFERENCES `ohrm_emp_termination` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `hs_hr_emp_attachment`
--
ALTER TABLE `hs_hr_emp_attachment`
  ADD CONSTRAINT `hs_hr_emp_attachment_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_basicsalary`
--
ALTER TABLE `hs_hr_emp_basicsalary`
  ADD CONSTRAINT `hs_hr_emp_basicsalary_ibfk_1` FOREIGN KEY (`sal_grd_code`) REFERENCES `ohrm_pay_grade` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hs_hr_emp_basicsalary_ibfk_2` FOREIGN KEY (`currency_id`) REFERENCES `hs_hr_currency_type` (`currency_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hs_hr_emp_basicsalary_ibfk_3` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `hs_hr_emp_basicsalary_ibfk_4` FOREIGN KEY (`payperiod_code`) REFERENCES `hs_hr_payperiod` (`payperiod_code`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_children`
--
ALTER TABLE `hs_hr_emp_children`
  ADD CONSTRAINT `hs_hr_emp_children_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_contract_extend`
--
ALTER TABLE `hs_hr_emp_contract_extend`
  ADD CONSTRAINT `hs_hr_emp_contract_extend_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_dependents`
--
ALTER TABLE `hs_hr_emp_dependents`
  ADD CONSTRAINT `hs_hr_emp_dependents_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_directdebit`
--
ALTER TABLE `hs_hr_emp_directdebit`
  ADD CONSTRAINT `hs_hr_emp_directdebit_ibfk_1` FOREIGN KEY (`salary_id`) REFERENCES `hs_hr_emp_basicsalary` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_emergency_contacts`
--
ALTER TABLE `hs_hr_emp_emergency_contacts`
  ADD CONSTRAINT `hs_hr_emp_emergency_contacts_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_history_of_ealier_pos`
--
ALTER TABLE `hs_hr_emp_history_of_ealier_pos`
  ADD CONSTRAINT `hs_hr_emp_history_of_ealier_pos_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_language`
--
ALTER TABLE `hs_hr_emp_language`
  ADD CONSTRAINT `hs_hr_emp_language_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `hs_hr_emp_language_ibfk_2` FOREIGN KEY (`lang_id`) REFERENCES `ohrm_language` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_locations`
--
ALTER TABLE `hs_hr_emp_locations`
  ADD CONSTRAINT `hs_hr_emp_locations_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `ohrm_location` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hs_hr_emp_locations_ibfk_2` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_passport`
--
ALTER TABLE `hs_hr_emp_passport`
  ADD CONSTRAINT `hs_hr_emp_passport_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_picture`
--
ALTER TABLE `hs_hr_emp_picture`
  ADD CONSTRAINT `hs_hr_emp_picture_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_reportto`
--
ALTER TABLE `hs_hr_emp_reportto`
  ADD CONSTRAINT `hs_hr_emp_reportto_ibfk_1` FOREIGN KEY (`erep_sup_emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `hs_hr_emp_reportto_ibfk_2` FOREIGN KEY (`erep_sub_emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `hs_hr_emp_reportto_ibfk_3` FOREIGN KEY (`erep_reporting_mode`) REFERENCES `ohrm_emp_reporting_method` (`reporting_method_id`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_skill`
--
ALTER TABLE `hs_hr_emp_skill`
  ADD CONSTRAINT `hs_hr_emp_skill_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `hs_hr_emp_skill_ibfk_2` FOREIGN KEY (`skill_id`) REFERENCES `ohrm_skill` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_us_tax`
--
ALTER TABLE `hs_hr_emp_us_tax`
  ADD CONSTRAINT `hs_hr_emp_us_tax_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_emp_work_experience`
--
ALTER TABLE `hs_hr_emp_work_experience`
  ADD CONSTRAINT `hs_hr_emp_work_experience_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_jobtit_empstat`
--
ALTER TABLE `hs_hr_jobtit_empstat`
  ADD CONSTRAINT `hs_hr_jobtit_empstat_ibfk_1` FOREIGN KEY (`jobtit_code`) REFERENCES `ohrm_job_title` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hs_hr_jobtit_empstat_ibfk_2` FOREIGN KEY (`estat_code`) REFERENCES `ohrm_employment_status` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hs_hr_mailnotifications`
--
ALTER TABLE `hs_hr_mailnotifications`
  ADD CONSTRAINT `hs_hr_mailnotifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `ohrm_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_api_permission`
--
ALTER TABLE `ohrm_api_permission`
  ADD CONSTRAINT `fk_ohrm_data_group_data_group_id` FOREIGN KEY (`data_group_id`) REFERENCES `ohrm_data_group` (`id`),
  ADD CONSTRAINT `fk_ohrm_module_module_id` FOREIGN KEY (`module_id`) REFERENCES `ohrm_module` (`id`);

--
-- Constraints for table `ohrm_auth_provider_extra_details`
--
ALTER TABLE `ohrm_auth_provider_extra_details`
  ADD CONSTRAINT `ohrm_auth_provider_extra_details_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `ohrm_openid_provider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ohrm_available_group_field`
--
ALTER TABLE `ohrm_available_group_field`
  ADD CONSTRAINT `ohrm_available_group_field_ibfk_1` FOREIGN KEY (`group_field_id`) REFERENCES `ohrm_group_field` (`group_field_id`);

--
-- Constraints for table `ohrm_buzz_comment`
--
ALTER TABLE `ohrm_buzz_comment`
  ADD CONSTRAINT `buzzComentOnShare` FOREIGN KEY (`share_id`) REFERENCES `ohrm_buzz_share` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `buzzComentedEmployee` FOREIGN KEY (`employee_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `ohrm_buzz_like_on_comment`
--
ALTER TABLE `ohrm_buzz_like_on_comment`
  ADD CONSTRAINT `buzzCommentLikeEmployee` FOREIGN KEY (`employee_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `buzzLikeOnComment` FOREIGN KEY (`comment_id`) REFERENCES `ohrm_buzz_comment` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `ohrm_buzz_like_on_share`
--
ALTER TABLE `ohrm_buzz_like_on_share`
  ADD CONSTRAINT `buzzLikeOnshare` FOREIGN KEY (`share_id`) REFERENCES `ohrm_buzz_share` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `buzzShareLikeEmployee` FOREIGN KEY (`employee_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `ohrm_buzz_link`
--
ALTER TABLE `ohrm_buzz_link`
  ADD CONSTRAINT `linkAttached` FOREIGN KEY (`post_id`) REFERENCES `ohrm_buzz_post` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_buzz_notification_metadata`
--
ALTER TABLE `ohrm_buzz_notification_metadata`
  ADD CONSTRAINT `notificationMetadata` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `ohrm_buzz_photo`
--
ALTER TABLE `ohrm_buzz_photo`
  ADD CONSTRAINT `photoAttached` FOREIGN KEY (`post_id`) REFERENCES `ohrm_buzz_post` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_buzz_post`
--
ALTER TABLE `ohrm_buzz_post`
  ADD CONSTRAINT `buzzPostEmployee` FOREIGN KEY (`employee_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `ohrm_buzz_share`
--
ALTER TABLE `ohrm_buzz_share`
  ADD CONSTRAINT `buzzShareEmployee` FOREIGN KEY (`employee_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `buzzSharePost` FOREIGN KEY (`post_id`) REFERENCES `ohrm_buzz_post` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `ohrm_claim_attachment`
--
ALTER TABLE `ohrm_claim_attachment`
  ADD CONSTRAINT `attachedById` FOREIGN KEY (`attached_by`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `claimRequestId` FOREIGN KEY (`request_id`) REFERENCES `ohrm_claim_request` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_claim_event`
--
ALTER TABLE `ohrm_claim_event`
  ADD CONSTRAINT `addedBy` FOREIGN KEY (`added_by`) REFERENCES `ohrm_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_claim_request`
--
ALTER TABLE `ohrm_claim_request`
  ADD CONSTRAINT `claimEventId` FOREIGN KEY (`event_type_id`) REFERENCES `ohrm_claim_event` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `claim_Request_Employee_Number` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_currency_id` FOREIGN KEY (`currency_id`) REFERENCES `hs_hr_currency_type` (`currency_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `requestByUser` FOREIGN KEY (`added_by`) REFERENCES `ohrm_user` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_composite_display_field`
--
ALTER TABLE `ohrm_composite_display_field`
  ADD CONSTRAINT `ohrm_composite_display_field_ibfk_1` FOREIGN KEY (`report_group_id`) REFERENCES `ohrm_report_group` (`report_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_composite_display_field_ibfk_2` FOREIGN KEY (`display_field_group_id`) REFERENCES `ohrm_display_field_group` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_datapoint`
--
ALTER TABLE `ohrm_datapoint`
  ADD CONSTRAINT `ohrm_datapoint_ibfk_1` FOREIGN KEY (`datapoint_type_id`) REFERENCES `ohrm_datapoint_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_display_field`
--
ALTER TABLE `ohrm_display_field`
  ADD CONSTRAINT `ohrm_display_field_ibfk_1` FOREIGN KEY (`report_group_id`) REFERENCES `ohrm_report_group` (`report_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_display_field_ibfk_2` FOREIGN KEY (`display_field_group_id`) REFERENCES `ohrm_display_field_group` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_display_field_group`
--
ALTER TABLE `ohrm_display_field_group`
  ADD CONSTRAINT `ohrm_display_field_group_ibfk_1` FOREIGN KEY (`report_group_id`) REFERENCES `ohrm_report_group` (`report_group_id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_email_processor`
--
ALTER TABLE `ohrm_email_processor`
  ADD CONSTRAINT `ohrm_email_processor_ibfk_1` FOREIGN KEY (`email_id`) REFERENCES `ohrm_email` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_email_subscriber`
--
ALTER TABLE `ohrm_email_subscriber`
  ADD CONSTRAINT `ohrm_email_subscriber_ibfk_1` FOREIGN KEY (`notification_id`) REFERENCES `ohrm_email_notification` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_email_template`
--
ALTER TABLE `ohrm_email_template`
  ADD CONSTRAINT `ohrm_email_template_ibfk_1` FOREIGN KEY (`email_id`) REFERENCES `ohrm_email` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_employee_work_shift`
--
ALTER TABLE `ohrm_employee_work_shift`
  ADD CONSTRAINT `ohrm_employee_work_shift_ibfk_1` FOREIGN KEY (`work_shift_id`) REFERENCES `ohrm_work_shift` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_employee_work_shift_ibfk_2` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_emp_education`
--
ALTER TABLE `ohrm_emp_education`
  ADD CONSTRAINT `ohrm_emp_education_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_emp_education_ibfk_2` FOREIGN KEY (`education_id`) REFERENCES `ohrm_education` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_emp_license`
--
ALTER TABLE `ohrm_emp_license`
  ADD CONSTRAINT `ohrm_emp_license_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_emp_license_ibfk_2` FOREIGN KEY (`license_id`) REFERENCES `ohrm_license` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_emp_termination`
--
ALTER TABLE `ohrm_emp_termination`
  ADD CONSTRAINT `ohrm_emp_termination_ibfk_1` FOREIGN KEY (`reason_id`) REFERENCES `ohrm_emp_termination_reason` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ohrm_emp_termination_ibfk_2` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_enforce_password`
--
ALTER TABLE `ohrm_enforce_password`
  ADD CONSTRAINT `enforcePasswordUser` FOREIGN KEY (`user_id`) REFERENCES `ohrm_user` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `ohrm_expense`
--
ALTER TABLE `ohrm_expense`
  ADD CONSTRAINT `claimRequsetId` FOREIGN KEY (`request_id`) REFERENCES `ohrm_claim_request` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenseTypeId` FOREIGN KEY (`expense_type_id`) REFERENCES `ohrm_expense_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_expense_type`
--
ALTER TABLE `ohrm_expense_type`
  ADD CONSTRAINT `addedByUser` FOREIGN KEY (`added_by`) REFERENCES `ohrm_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_filter_field`
--
ALTER TABLE `ohrm_filter_field`
  ADD CONSTRAINT `ohrm_filter_field_ibfk_1` FOREIGN KEY (`report_group_id`) REFERENCES `ohrm_report_group` (`report_group_id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_holiday`
--
ALTER TABLE `ohrm_holiday`
  ADD CONSTRAINT `fk_ohrm_holiday_ohrm_operational_country` FOREIGN KEY (`operational_country_id`) REFERENCES `ohrm_operational_country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ohrm_home_page`
--
ALTER TABLE `ohrm_home_page`
  ADD CONSTRAINT `ohrm_home_page_ibfk_1` FOREIGN KEY (`user_role_id`) REFERENCES `ohrm_user_role` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_i18n_lang_string`
--
ALTER TABLE `ohrm_i18n_lang_string`
  ADD CONSTRAINT `groupId` FOREIGN KEY (`group_id`) REFERENCES `ohrm_i18n_group` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_i18n_translate`
--
ALTER TABLE `ohrm_i18n_translate`
  ADD CONSTRAINT `langStringId` FOREIGN KEY (`lang_string_id`) REFERENCES `ohrm_i18n_lang_string` (`id`),
  ADD CONSTRAINT `languageId` FOREIGN KEY (`language_id`) REFERENCES `ohrm_i18n_language` (`id`);

--
-- Constraints for table `ohrm_job_candidate`
--
ALTER TABLE `ohrm_job_candidate`
  ADD CONSTRAINT `ohrm_job_candidate_ibfk_1` FOREIGN KEY (`added_person`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_job_candidate_attachment`
--
ALTER TABLE `ohrm_job_candidate_attachment`
  ADD CONSTRAINT `ohrm_job_candidate_attachment_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `ohrm_job_candidate` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_job_candidate_history`
--
ALTER TABLE `ohrm_job_candidate_history`
  ADD CONSTRAINT `ohrm_job_candidate_history_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `ohrm_job_candidate` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_job_candidate_history_ibfk_2` FOREIGN KEY (`vacancy_id`) REFERENCES `ohrm_job_vacancy` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ohrm_job_candidate_history_ibfk_3` FOREIGN KEY (`interview_id`) REFERENCES `ohrm_job_interview` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ohrm_job_candidate_history_ibfk_4` FOREIGN KEY (`performed_by`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_job_candidate_vacancy`
--
ALTER TABLE `ohrm_job_candidate_vacancy`
  ADD CONSTRAINT `ohrm_job_candidate_vacancy_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `ohrm_job_candidate` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_job_candidate_vacancy_ibfk_2` FOREIGN KEY (`vacancy_id`) REFERENCES `ohrm_job_vacancy` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_job_interview`
--
ALTER TABLE `ohrm_job_interview`
  ADD CONSTRAINT `ohrm_job_interview_ibfk_1` FOREIGN KEY (`candidate_vacancy_id`) REFERENCES `ohrm_job_candidate_vacancy` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ohrm_job_interview_ibfk_2` FOREIGN KEY (`candidate_id`) REFERENCES `ohrm_job_candidate` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_job_interview_attachment`
--
ALTER TABLE `ohrm_job_interview_attachment`
  ADD CONSTRAINT `ohrm_job_interview_attachment_ibfk_1` FOREIGN KEY (`interview_id`) REFERENCES `ohrm_job_interview` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_job_interview_interviewer`
--
ALTER TABLE `ohrm_job_interview_interviewer`
  ADD CONSTRAINT `ohrm_job_interview_interviewer_ibfk_1` FOREIGN KEY (`interview_id`) REFERENCES `ohrm_job_interview` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_job_interview_interviewer_ibfk_2` FOREIGN KEY (`interviewer_id`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_job_specification_attachment`
--
ALTER TABLE `ohrm_job_specification_attachment`
  ADD CONSTRAINT `ohrm_job_specification_attachment_ibfk_1` FOREIGN KEY (`job_title_id`) REFERENCES `ohrm_job_title` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_job_vacancy`
--
ALTER TABLE `ohrm_job_vacancy`
  ADD CONSTRAINT `ohrm_job_vacancy_ibfk_1` FOREIGN KEY (`job_title_code`) REFERENCES `ohrm_job_title` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_job_vacancy_ibfk_2` FOREIGN KEY (`hiring_manager_id`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_job_vacancy_attachment`
--
ALTER TABLE `ohrm_job_vacancy_attachment`
  ADD CONSTRAINT `ohrm_job_vacancy_attachment_ibfk_1` FOREIGN KEY (`vacancy_id`) REFERENCES `ohrm_job_vacancy` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_kpi`
--
ALTER TABLE `ohrm_kpi`
  ADD CONSTRAINT `ohrm_kpi_for_job_title_id` FOREIGN KEY (`job_title_code`) REFERENCES `ohrm_job_title` (`id`);

--
-- Constraints for table `ohrm_ldap_sync_status`
--
ALTER TABLE `ohrm_ldap_sync_status`
  ADD CONSTRAINT `ohrm_ldap_sync_status_synced_by` FOREIGN KEY (`synced_by`) REFERENCES `ohrm_user` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_leave`
--
ALTER TABLE `ohrm_leave`
  ADD CONSTRAINT `ohrm_leave_ibfk_1` FOREIGN KEY (`leave_request_id`) REFERENCES `ohrm_leave_request` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_ibfk_2` FOREIGN KEY (`leave_type_id`) REFERENCES `ohrm_leave_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_leave_adjustment`
--
ALTER TABLE `ohrm_leave_adjustment`
  ADD CONSTRAINT `ohrm_leave_adjustment_ibfk_1` FOREIGN KEY (`leave_type_id`) REFERENCES `ohrm_leave_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_adjustment_ibfk_2` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_adjustment_ibfk_3` FOREIGN KEY (`created_by_id`) REFERENCES `ohrm_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ohrm_leave_adjustment_ibfk_4` FOREIGN KEY (`adjustment_type`) REFERENCES `ohrm_leave_entitlement_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_leave_comment`
--
ALTER TABLE `ohrm_leave_comment`
  ADD CONSTRAINT `ohrm_leave_comment_ibfk_1` FOREIGN KEY (`leave_id`) REFERENCES `ohrm_leave` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_comment_ibfk_2` FOREIGN KEY (`created_by_id`) REFERENCES `ohrm_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ohrm_leave_comment_ibfk_3` FOREIGN KEY (`created_by_emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_leave_entitlement`
--
ALTER TABLE `ohrm_leave_entitlement`
  ADD CONSTRAINT `ohrm_leave_entitlement_ibfk_1` FOREIGN KEY (`leave_type_id`) REFERENCES `ohrm_leave_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_entitlement_ibfk_2` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_entitlement_ibfk_3` FOREIGN KEY (`entitlement_type`) REFERENCES `ohrm_leave_entitlement_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_entitlement_ibfk_4` FOREIGN KEY (`created_by_id`) REFERENCES `ohrm_user` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_leave_entitlement_adjustment`
--
ALTER TABLE `ohrm_leave_entitlement_adjustment`
  ADD CONSTRAINT `ohrm_leave_entitlement_adjustment_ibfk_1` FOREIGN KEY (`entitlement_id`) REFERENCES `ohrm_leave_entitlement` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_entitlement_adjustment_ibfk_2` FOREIGN KEY (`adjustment_id`) REFERENCES `ohrm_leave_adjustment` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_leave_leave_entitlement`
--
ALTER TABLE `ohrm_leave_leave_entitlement`
  ADD CONSTRAINT `ohrm_leave_leave_entitlement_ibfk_1` FOREIGN KEY (`entitlement_id`) REFERENCES `ohrm_leave_entitlement` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_leave_entitlement_ibfk_2` FOREIGN KEY (`leave_id`) REFERENCES `ohrm_leave` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_leave_request`
--
ALTER TABLE `ohrm_leave_request`
  ADD CONSTRAINT `ohrm_leave_request_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_request_ibfk_2` FOREIGN KEY (`leave_type_id`) REFERENCES `ohrm_leave_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_leave_request_comment`
--
ALTER TABLE `ohrm_leave_request_comment`
  ADD CONSTRAINT `ohrm_leave_request_comment_ibfk_1` FOREIGN KEY (`leave_request_id`) REFERENCES `ohrm_leave_request` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_leave_request_comment_ibfk_2` FOREIGN KEY (`created_by_id`) REFERENCES `ohrm_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ohrm_leave_request_comment_ibfk_3` FOREIGN KEY (`created_by_emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_leave_type`
--
ALTER TABLE `ohrm_leave_type`
  ADD CONSTRAINT `ohrm_leave_type_ibfk_1` FOREIGN KEY (`operational_country_id`) REFERENCES `ohrm_operational_country` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_location`
--
ALTER TABLE `ohrm_location`
  ADD CONSTRAINT `ohrm_location_ibfk_1` FOREIGN KEY (`country_code`) REFERENCES `hs_hr_country` (`cou_code`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_menu_item`
--
ALTER TABLE `ohrm_menu_item`
  ADD CONSTRAINT `ohrm_menu_item_ibfk_1` FOREIGN KEY (`screen_id`) REFERENCES `ohrm_screen` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_module_default_page`
--
ALTER TABLE `ohrm_module_default_page`
  ADD CONSTRAINT `ohrm_module_default_page_ibfk_1` FOREIGN KEY (`user_role_id`) REFERENCES `ohrm_user_role` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_module_default_page_ibfk_2` FOREIGN KEY (`module_id`) REFERENCES `ohrm_module` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_oauth2_access_token`
--
ALTER TABLE `ohrm_oauth2_access_token`
  ADD CONSTRAINT `access_token_client_id` FOREIGN KEY (`client_id`) REFERENCES `ohrm_oauth2_client` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_oauth2_authorization_code`
--
ALTER TABLE `ohrm_oauth2_authorization_code`
  ADD CONSTRAINT `auth_code_client_id` FOREIGN KEY (`client_id`) REFERENCES `ohrm_oauth2_client` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_oauth2_refresh_token`
--
ALTER TABLE `ohrm_oauth2_refresh_token`
  ADD CONSTRAINT `oauth2_access_token` FOREIGN KEY (`access_token`) REFERENCES `ohrm_oauth2_access_token` (`access_token`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_openid_user_identity`
--
ALTER TABLE `ohrm_openid_user_identity`
  ADD CONSTRAINT `ohrm_user_identity_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `ohrm_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ohrm_user_identity_ibfk_2` FOREIGN KEY (`provider_id`) REFERENCES `ohrm_openid_provider` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_operational_country`
--
ALTER TABLE `ohrm_operational_country`
  ADD CONSTRAINT `fk_ohrm_operational_country_hs_hr_country` FOREIGN KEY (`country_code`) REFERENCES `hs_hr_country` (`cou_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ohrm_pay_grade_currency`
--
ALTER TABLE `ohrm_pay_grade_currency`
  ADD CONSTRAINT `ohrm_pay_grade_currency_ibfk_1` FOREIGN KEY (`currency_id`) REFERENCES `hs_hr_currency_type` (`currency_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_pay_grade_currency_ibfk_2` FOREIGN KEY (`pay_grade_id`) REFERENCES `ohrm_pay_grade` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_performance_review`
--
ALTER TABLE `ohrm_performance_review`
  ADD CONSTRAINT `ohrm_performance_review_ibfk_1` FOREIGN KEY (`employee_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_performance_track`
--
ALTER TABLE `ohrm_performance_track`
  ADD CONSTRAINT `ohrm_performance_track_fk1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ohrm_performance_track_fk2` FOREIGN KEY (`added_by`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ohrm_performance_tracker_log`
--
ALTER TABLE `ohrm_performance_tracker_log`
  ADD CONSTRAINT `ohrm_performance_tracker_log_fk1` FOREIGN KEY (`performance_track_id`) REFERENCES `ohrm_performance_track` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ohrm_performance_tracker_log_fk2` FOREIGN KEY (`reviewer_id`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ohrm_performance_tracker_log_modified_by_id` FOREIGN KEY (`user_id`) REFERENCES `ohrm_user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `ohrm_performance_tracker_reviewer`
--
ALTER TABLE `ohrm_performance_tracker_reviewer`
  ADD CONSTRAINT `ohrm_performance_tracker_reviewer_fk1` FOREIGN KEY (`performance_track_id`) REFERENCES `ohrm_performance_track` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ohrm_performance_tracker_reviewer_fk2` FOREIGN KEY (`reviewer_id`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ohrm_project_activity`
--
ALTER TABLE `ohrm_project_activity`
  ADD CONSTRAINT `ohrm_project_activity_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `ohrm_project` (`project_id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_project_admin`
--
ALTER TABLE `ohrm_project_admin`
  ADD CONSTRAINT `ohrm_project_admin_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `ohrm_project` (`project_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_project_admin_ibfk_2` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_report`
--
ALTER TABLE `ohrm_report`
  ADD CONSTRAINT `ohrm_report_ibfk_1` FOREIGN KEY (`report_group_id`) REFERENCES `ohrm_report_group` (`report_group_id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_reviewer`
--
ALTER TABLE `ohrm_reviewer`
  ADD CONSTRAINT `ohrm_reviewer_ibfk_1` FOREIGN KEY (`review_id`) REFERENCES `ohrm_performance_review` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_reviewer_rating`
--
ALTER TABLE `ohrm_reviewer_rating`
  ADD CONSTRAINT `ohrm_reviewer_rating_ibfk_1` FOREIGN KEY (`reviewer_id`) REFERENCES `ohrm_reviewer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_reviewer_rating_ibfk_2` FOREIGN KEY (`review_id`) REFERENCES `ohrm_performance_review` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_screen`
--
ALTER TABLE `ohrm_screen`
  ADD CONSTRAINT `ohrm_screen_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `ohrm_module` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_selected_composite_display_field`
--
ALTER TABLE `ohrm_selected_composite_display_field`
  ADD CONSTRAINT `ohrm_selected_composite_display_field_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `ohrm_report` (`report_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_selected_composite_display_field_ibfk_2` FOREIGN KEY (`composite_display_field_id`) REFERENCES `ohrm_composite_display_field` (`composite_display_field_id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_selected_display_field`
--
ALTER TABLE `ohrm_selected_display_field`
  ADD CONSTRAINT `ohrm_selected_display_field_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `ohrm_report` (`report_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_selected_display_field_ibfk_2` FOREIGN KEY (`display_field_id`) REFERENCES `ohrm_display_field` (`display_field_id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_selected_display_field_group`
--
ALTER TABLE `ohrm_selected_display_field_group`
  ADD CONSTRAINT `ohrm_selected_display_field_group_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `ohrm_report` (`report_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_selected_display_field_group_ibfk_2` FOREIGN KEY (`display_field_group_id`) REFERENCES `ohrm_display_field_group` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_selected_filter_field`
--
ALTER TABLE `ohrm_selected_filter_field`
  ADD CONSTRAINT `ohrm_selected_filter_field_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `ohrm_report` (`report_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_selected_filter_field_ibfk_2` FOREIGN KEY (`filter_field_id`) REFERENCES `ohrm_filter_field` (`filter_field_id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_selected_group_field`
--
ALTER TABLE `ohrm_selected_group_field`
  ADD CONSTRAINT `ohrm_selected_group_field_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `ohrm_report` (`report_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_selected_group_field_ibfk_2` FOREIGN KEY (`group_field_id`) REFERENCES `ohrm_group_field` (`group_field_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_selected_group_field_ibfk_3` FOREIGN KEY (`summary_display_field_id`) REFERENCES `ohrm_summary_display_field` (`summary_display_field_id`);

--
-- Constraints for table `ohrm_summary_display_field`
--
ALTER TABLE `ohrm_summary_display_field`
  ADD CONSTRAINT `ohrm_summary_display_field_ibfk_1` FOREIGN KEY (`display_field_group_id`) REFERENCES `ohrm_display_field_group` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_timesheet_action_log`
--
ALTER TABLE `ohrm_timesheet_action_log`
  ADD CONSTRAINT `ohrm_timesheet_action_log_performed_by_id` FOREIGN KEY (`performed_by`) REFERENCES `ohrm_user` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ohrm_user`
--
ALTER TABLE `ohrm_user`
  ADD CONSTRAINT `ohrm_user_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_user_ibfk_2` FOREIGN KEY (`user_role_id`) REFERENCES `ohrm_user_role` (`id`);

--
-- Constraints for table `ohrm_user_auth_provider`
--
ALTER TABLE `ohrm_user_auth_provider`
  ADD CONSTRAINT `ohrm_user_id` FOREIGN KEY (`user_id`) REFERENCES `ohrm_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_user_role_data_group`
--
ALTER TABLE `ohrm_user_role_data_group`
  ADD CONSTRAINT `ohrm_user_role_data_group_ibfk_1` FOREIGN KEY (`user_role_id`) REFERENCES `ohrm_user_role` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_user_role_data_group_ibfk_2` FOREIGN KEY (`data_group_id`) REFERENCES `ohrm_data_group` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_user_role_screen`
--
ALTER TABLE `ohrm_user_role_screen`
  ADD CONSTRAINT `ohrm_user_role_screen_ibfk_1` FOREIGN KEY (`user_role_id`) REFERENCES `ohrm_user_role` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ohrm_user_role_screen_ibfk_2` FOREIGN KEY (`screen_id`) REFERENCES `ohrm_screen` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ohrm_work_week`
--
ALTER TABLE `ohrm_work_week`
  ADD CONSTRAINT `fk_ohrm_work_week_ohrm_operational_country` FOREIGN KEY (`operational_country_id`) REFERENCES `ohrm_operational_country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
