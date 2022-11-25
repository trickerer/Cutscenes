-- Cutscenes Base SQLs
SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for cutscene_template
-- ----------------------------
CREATE TABLE `cutscene_template` (
  `entry` int(11) unsigned NOT NULL,
  `mapid` int(11) unsigned NOT NULL DEFAULT '0',
  `duration` int(11) unsigned NOT NULL DEFAULT '5000',
  `flags` int(11) unsigned NOT NULL DEFAULT '0',
  `comment` text COMMENT 'Comment',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Table structure for cutscene_template_action
-- ----------------------------
CREATE TABLE `cutscene_template_action` (
  `cutsceneid` int(11) unsigned NOT NULL,
  `actorid` int(11) unsigned NOT NULL,
  `timeoffset` int(11) unsigned NOT NULL DEFAULT '0',
  `type` int(11) unsigned NOT NULL DEFAULT '1',
  `intparam1` int(11) NOT NULL DEFAULT '0',
  `intparam2` int(11) NOT NULL DEFAULT '0',
  `intparam3` int(11) NOT NULL DEFAULT '0',
  `intparam4` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0',
  `comment` text COMMENT 'Comment',
  PRIMARY KEY (`cutsceneid`,`actorid`,`timeoffset`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Table structure for cutscene_template_actor
-- ----------------------------
CREATE TABLE `cutscene_template_actor` (
  `cutsceneid` int(11) unsigned NOT NULL,
  `actorid` int(11) unsigned NOT NULL,
  `actortype` int(11) unsigned NOT NULL DEFAULT '1',
  `entryorguid` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0',
  `flags` int(11) unsigned NOT NULL DEFAULT '0',
  `comment` text COMMENT 'Comment',
  PRIMARY KEY (`cutsceneid`,`actorid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
