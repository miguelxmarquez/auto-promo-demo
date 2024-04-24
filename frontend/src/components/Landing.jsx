import React, { useState, useEffect } from 'react'
import { Link } from 'react-router-dom'
import axios from '../api/axios'

const Landing = () => {
	// VARIABLES AND ACTIONS
	const [winner, setWinner] = useState('Sin Ganador Aún')

	useEffect(() => {
		axios.post('/api/winners').then((res) => {
			console.log(res)
			setWinner(res.data.client.first_name + ' ' + res.data.client.last_name)
		})
	}, [])

	return (
		<div>
			<h1 className="mb-4 text-4xl font-extrabold leading-none tracking-tight text-gray-900 md:text-5xl lg:text-6xl dark:text-white">
				Bienvenid@s
			</h1>
			<p className="mb-6 text-lg font-normal text-gray-500 lg:text-xl sm:px-16 xl:px-48 dark:text-gray-400">
				Estás a un paso de ganar el concurso
			</p>
			<Link
				to="/register"
				className="inline-flex items-center justify-center px-5 py-3 text-base font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 dark:focus:ring-blue-900"
			>
				Siguiente
				<svg
					className="w-3.5 h-3.5 ms-2 rtl:rotate-180"
					aria-hidden="true"
					xmlns="http://www.w3.org/2000/svg"
					fill="none"
					viewBox="0 0 14 10"
				>
					<path
						stroke="currentColor"
						strokeLinecap="round"
						strokeLinejoin="round"
						strokeWidth="2"
						d="M1 5h12m0 0L9 1m4 4L9 9"
					/>
				</svg>
			</Link>
			<div className="p-10 items-center text-center">
				<h1 className="text-2xl">Ganador del Concurso</h1>
				<div className="bg-green-200 rounded-xl w-[400px] text-center mx-auto m-4 p-10">
					<p className="text-3xl font-bold">{winner}</p>
				</div>
			</div>
		</div>
	)
}

export default Landing
