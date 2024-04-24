<?php

use Illuminate\Database\Seeder;

class DepartmentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (1, 'Amazonas');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (2, 'Antioquia');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (3, 'Arauca');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (4, 'Atlántico');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (5, 'Bogotá');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (6, 'Bolívar');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (7, 'Boyacá');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (8, 'Caldas');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (9, 'Caquetá');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (10, 'Casanare');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (11, 'Cauca');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (12, 'Cesar');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (13, 'Chocó');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (14, 'Córdoba');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (15, 'Cundinamarca');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (16, 'Guainía');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (17, 'Guaviare');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (18, 'Huila');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (19, 'La Guajira');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (20, 'Magdalena');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (21, 'Meta');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (22, 'Nariño');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (23, 'Norte de Santander');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (24, 'Putumayo');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (25, 'Quindío');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (26, 'Risaralda');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (27, 'San Andrés y Providencia');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (28, 'Santander');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (29, 'Sucre');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (30, 'Tolima');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (31, 'Valle del Cauca');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (32, 'Vaupés');");
        DB::insert("INSERT INTO `inxaitcorp.game`.`departments` (`id`, `name`) VALUES (33, 'Vichada');");
    }
}
