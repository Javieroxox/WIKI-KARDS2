<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CartaRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            /* 'id' => [Rule::unique('cartas')->ignore($this->producto->id,'id'),], */
            'nombre' => 'required|max:60',
            'costo_invocacion' => 'required|numeric|gte:0',
            'costo_accion' => 'required|numeric|gte:0',
            'efectos' => 'required|max:100',
        ];
    }

    public function messages(){
        return [
            /* 'id.required' => 'Indique código de la Carta', */
            'nombre.required' => 'Indique nombre de la carta',
            'nombre.max' => 'no debe superar los 60 caracteres',
            'costo_invocacion.required' => 'Indique valor de la carta',
            'costo_invocacion.numeric' => 'Valor debe ser número',
            'costo_invocacion.gte' => 'El mínimo de valor es cero',
            'costo_accion.required' => 'Indique costo de la carta',
            'costo_accion.numeric' => 'Costo debe ser número',
            'costo_accion.gte' => 'El mínimo costo es cero',
            'efectos.required' => 'Indique nombre de los efectos',
            'efectos.max' => 'no debe superar los 60 caracteres'
        ];
    }
}
