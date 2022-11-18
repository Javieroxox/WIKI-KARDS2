<?php

namespace App\Http\Controllers;

use App\Models\Carta;
use Illuminate\Http\Request;
use App\Http\Requests\CartaRequest;

class CartasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Carta::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CartaRequest $request)
    {
        $carta = new Carta();
        $carta->nombre = $request->nombre;
        $carta->costo_invocacion = $request->costo_invocacion;
        $carta->costo_accion = $request->costo_accion;
        $carta->efectos = $request->efectos;
        $carta->borrado = 'N';
        $carta->save();
        return $carta;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Carta  $carta
     * @return \Illuminate\Http\Response
     */
    public function show(Carta $carta)
    {
        return $carta;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Carta  $carta
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Carta $carta)
    {
        $carta->nombre = $request->nombre;
        $carta->costo_invocacion = $request->costo_invocacion;
        $carta->costo_accion = $request->costo_accion;
        $carta->efectos = $request->efectos;
        $carta->save();
        return $carta;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Carta  $carta
     * @return \Illuminate\Http\Response
     */
    public function destroy(Carta $carta)
    {
        $carta->delete();
    }

    public function destroylogic(Carta $carta)
    {
        $carta->borrado = 'S';
        $carta->save();
    }
}
