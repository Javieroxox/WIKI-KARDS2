<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\{Schema,DB};
use DateTime,DateInterval;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // Borrar tablas
        $tablas = ['cartas']; 
        Schema::disableForeignKeyConstraints();
        foreach($tablas as $tabla){
            DB::table($tabla)->truncate();
        }
        Schema::enableForeignKeyConstraints();

        //Cartas
        $cartas = [
            ['nombre'=>'Diablos rojos','costo_invocacion'=>'1','costo_accion'=>'1','efectos'=>'Blitz, Le cuesta mas al enemigo +1 kreditos selecionar como objetibo o atacar a esta unidad','borrado'=>'N'],
            ['nombre'=>'463° Batallon','costo_invocacion'=>'1','costo_accion'=>'1','efectos'=>'Cuando ataca inflinge 1 de daño a un enemigo al azar del mismo frente','borrado'=>'N'],
            ['nombre'=>'506° Aerotrasportada','costo_invocacion'=>'1','costo_accion'=>'1','efectos'=>'No tiene','borrado'=>'N'],
        ];

        foreach($cartas as $carta){
            DB::table('cartas')->insert([
                'nombre' => $carta['nombre'],
                'costo_invocacion' => $carta['costo_invocacion'],
                'costo_accion' => $carta['costo_accion'],
                'efectos' => $carta['efectos'],
                'borrado' => $carta['borrado']
            ]);
        }
    }
}
