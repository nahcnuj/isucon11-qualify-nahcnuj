CREATE INDEX `character` ON isu (`character`);
CREATE INDEX `id__jia_user_id` ON isu (`id`,`jia_user_id`);
CREATE INDEX `jia_isu_uuid__id` ON isu (`jia_isu_uuid`,`id` DESC);
CREATE INDEX `jia_user_id__jia_isu_uuid` ON (`jia_user_id`, `jia_isu_uuid`);

CREATE INDEX `jia_isu_uuid__timestamp` ON isu_condition (`jia_isu_uuid`, `timestamp` ASC);
CREATE INDEX `jia_isu_uuid__id` ON isu_condition (`jia_isu_uuid`,`id` DESC);
