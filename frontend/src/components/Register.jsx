import React, { useEffect, useState } from 'react'
import toast from 'react-hot-toast'
import axios from '../api/axios'
import { useForm } from 'react-hook-form'
import { zodResolver } from '@hookform/resolvers/zod'
import { z } from 'zod'
const string_validation = 'Solo los caracteres alfabéticos son permitidos'

const schema = z.object({
	email: z.string().email({ message: 'Email inválido' }),
	first_name: z
		.string()
		.min(3, { message: 'Mínimo 3 caracteres' })
		.regex(/[\p{Letter}\p{Mark}]+/gu, string_validation),
	last_name: z
		.string()
		.min(3, { message: 'Mínimo 3 caracteres' })
		.regex(/[\p{Letter}\p{Mark}]+/gu, string_validation),
	ci: z
		.number({ message: 'Solo números permitidos' })
		.int({ message: 'Solo números enteros ' })
		.positive({ message: 'Sin caracteres especiales' }),
	phone: z
		.number({ message: 'Solo números permitidos' })
		.int({ message: 'Solo números enteros ' })
		.positive({ message: 'Sin caracteres especiales' }),
	habeas: z.boolean({ message: 'Debe aceptar los términos y condiciones' }),
	department_id: z.number({ message: 'Debe seleccionar una opción válida' }),
	city_id: z.number({ message: 'Debe seleccionar una opción válida' }),
})

export default function Register() {
	// VARIABLES AND ACTIONS
	const {
		register,
		handleSubmit,
		reset,
		formState: { errors },
	} = useForm({
		resolver: zodResolver(schema),
	})

	const [departments, setDepartments] = useState([])
	const [cities, setCities] = useState([])
	const [responseError, setResponseError] = useState('')

	console.log(errors)

	useEffect(() => {
		axios.post('api/departments').then((res) => {
			setDepartments(res.data)
		})
	}, [])

	function handleCities(e) {
		console.log(e.target.value)
		console.log('Getting cities')
		axios.post('api/cities', { id: e.target.value }).then((res) => {
			setCities(res.data)
		})
	}

	return (
		<div>
			<form
				onSubmit={handleSubmit(async (data) => {
					console.log(data)
					await axios
						.post('/api/register', data)
						.then((response) => {
							console.log(response)
							if (response.data.client) {
								toast.success(
									'Felicitaciones, el concurso ha finalizado. El ganador ha sido ' +
										response.data.client.first_name +
										' ' +
										response.data.client.last_name,
								)
							}
							setResponseError('')
							reset()
						})
						.catch((error) => {
							console.log(error.response.data)
							if (error.response.data.exception == 'Illuminate\\Database\\UniqueConstraintViolationException') {
								setResponseError(
									'El email ó la cédula ya han sido registradas en el concurso, puede visualizar los resutados de los ganadores',
								)
							} else {
								setResponseError(error.response.data.message)
							}
						})
				})}
			>
				<div className="flex flex-col bg-blue-100 rounded-xl p-10 mt-10 gap-4">
					<h2 className="font-semibold text-2xl">Registro del Concurso</h2>
					<p>
						El siguiente formulario se utilizará para la recolección de datos de los clientes de la marca en la ciudad
						de Bogotá.
					</p>
					<div className="text-left">
						<label htmlFor="first_name">Nombre</label>
						<input
							{...register('first_name', { required: true })}
							type="text"
							id="first_name"
							className="bg-gray-50 border border-blue-300 text-gray-800 text-sm rounded-lg block w-full p-2.5 "
							placeholder="Nombre"
							required
						/>
						{errors.first_name?.message ? (
							<p className="text-red-600 text-sm font-semibold text-left">{errors.first_name.message}</p>
						) : null}
					</div>
					<div className="text-left">
						<label htmlFor="last_name">Apellido</label>
						<input
							{...register('last_name', { required: true })}
							type="text"
							id="last_name"
							className="bg-gray-50 border border-blue-300 text-gray-800 text-sm rounded-lg block w-full p-2.5 "
							placeholder="Apellido"
							required
						/>
						{errors.last_name?.message ? (
							<p className="text-red-600 text-sm font-semibold text-left">{errors.last_name.message}</p>
						) : null}
					</div>
					<div className="text-left">
						<label htmlFor="ci">Cédula de Indentidad</label>
						<input
							{...register('ci', { required: true, valueAsNumber: true })}
							type="number"
							id="ci"
							className="bg-gray-50 border border-blue-300 text-gray-800 text-sm rounded-lg block w-full p-2.5 "
							placeholder="12345678"
							required
						/>
						{errors.ci?.message ? (
							<p className="text-red-600 text-sm font-semibold text-left">{errors.ci.message}</p>
						) : null}
					</div>
					<div className="text-left">
						<label htmlFor="department_id">Departamento</label>
						<select
							{...register('department_id', { required: true, valueAsNumber: true })}
							required
							onChange={handleCities}
							id="department_id"
							name="department_id"
							className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
						>
							<option value="">Seleccionar</option>
							{departments.map((option) => (
								<option value={option.id} key={option.id}>
									{option.name}
								</option>
							))}
						</select>
						{errors.department_id?.message ? (
							<p className="text-red-600 text-sm font-semibold text-left">{errors.department_id.message}</p>
						) : null}
					</div>
					<div className="text-left">
						<label htmlFor="city_id">Ciudad</label>
						<select
							{...register('city_id', { required: true, valueAsNumber: true })}
							required
							id="city_id"
							className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
						>
							<option value="">Seleccionar</option>
							{cities.map((option) => (
								<option value={option.id} key={option.id}>
									{option.name}
								</option>
							))}
						</select>
						{errors.city_id?.message ? (
							<p className="text-red-600 text-sm font-semibold text-left">{errors.city_id.message}</p>
						) : null}
					</div>
					<div className="text-left">
						<label htmlFor="phone">Celular</label>
						<input
							{...register('phone', { required: true, valueAsNumber: true })}
							type="number"
							id="phone"
							className="bg-gray-50 border border-blue-300 text-gray-800 text-sm rounded-lg block w-full p-2.5 "
							placeholder="32112345678"
							required
						/>
						{errors.phone?.message ? (
							<p className="text-red-600 text-sm font-semibold text-left">{errors.phone.message}</p>
						) : null}
					</div>

					<div className="text-left">
						<label htmlFor="email">Correo Electrónco</label>

						<input
							{...register('email', { required: true })}
							type="text"
							id="email"
							className="bg-gray-50 border border-blue-300 text-gray-800 text-sm rounded-lg block w-full p-2.5 "
							placeholder="Correro Electrónico"
							required
						/>
						{errors.email?.message ? (
							<p className="text-red-600 text-sm font-semibold text-left">{errors.email.message}</p>
						) : null}
					</div>
					<div className="flex items-center mb-4">
						<input
							{...register('habeas', { required: true })}
							id="habeas"
							type="checkbox"
							className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"
							required
						/>
						<label htmlFor="habeas" className="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300 text-left">
							“Autorizo el tratamiento de mis datos de acuerdo con la finalidad establecida en la política de protección
							de datos personales”. Haga clic aquí
						</label>
					</div>
					<button
						type="submit"
						className="text-white bg-blue-600 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800"
					>
						Ganar Premio
					</button>
					<p className="text-red-500 font-semibold">{responseError}</p>
					<p>El concurso empieza luego de tener los primeros 5 registros, luego se publicará un ganador</p>
				</div>
			</form>
		</div>
	)
}
