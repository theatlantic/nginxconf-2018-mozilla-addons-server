CREATE TABLE `addons_features` (
    `id` int(11) unsigned AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `created` datetime NOT NULL,
    `modified` datetime NOT NULL,
    `version_id` int(11) unsigned NOT NULL UNIQUE,
    `has_apps` bool NOT NULL,
    `has_packaged_apps` bool NOT NULL,
    `has_pay` bool NOT NULL,
    `has_activity` bool NOT NULL,
    `has_light_events` bool NOT NULL,
    `has_archive` bool NOT NULL,
    `has_battery` bool NOT NULL,
    `has_bluetooth` bool NOT NULL,
    `has_contacts` bool NOT NULL,
    `has_device_storage` bool NOT NULL,
    `has_indexeddb` bool NOT NULL,
    `has_geolocation` bool NOT NULL,
    `has_idle` bool NOT NULL,
    `has_network_info` bool NOT NULL,
    `has_network_stats` bool NOT NULL,
    `has_proximity` bool NOT NULL,
    `has_push` bool NOT NULL,
    `has_orientation` bool NOT NULL,
    `has_time_clock` bool NOT NULL,
    `has_vibrate` bool NOT NULL,
    `has_fm` bool NOT NULL,
    `has_sms` bool NOT NULL,
    `has_touch` bool NOT NULL,
    `has_qhd` bool NOT NULL,
    `has_mp3` bool NOT NULL,
    `has_audio` bool NOT NULL,
    `has_webaudio` bool NOT NULL,
    `has_video_h264` bool NOT NULL,
    `has_video_webm` bool NOT NULL,
    `has_fullscreen` bool NOT NULL,
    `has_gamepad` bool NOT NULL,
    `has_quota` bool NOT NULL
) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci;

ALTER TABLE `addons_features` ADD CONSTRAINT `app_features_version_id_key`
FOREIGN KEY (`version_id`) REFERENCES `versions` (`id`) ON DELETE CASCADE;
