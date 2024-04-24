import { Link } from 'react-router-dom'
import axios from '../api/axios'
import { baseURL } from '../api/api'

export default function Export() {
	// VARIABLES AND ACTIONS
	return (
		<div className="flex flex-col">
			<h1 className="text-3xl">Exports</h1>
			<ul className="gap-4 m-4 p-4 items-center">
				<a href={`${baseURL}api/clients`} target="_blank" className="bg-blue-200 p-2 m-2 hover:bg-blue-400 rounded-xl">
					Clientes
				</a>
				<a href={`${baseURL}api/cities`} target="_blank" className="bg-blue-200 p-2 m-2 hover:bg-blue-400 rounded-xl">
					Ciudades
				</a>
				<a
					href={`${baseURL}api/departments`}
					target="_blank"
					className="bg-blue-200 p-2 m-2 hover:bg-blue-400 rounded-xl"
				>
					Departamentos
				</a>
			</ul>
		</div>
	)
}
