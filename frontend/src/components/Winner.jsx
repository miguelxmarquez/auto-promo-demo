import React from 'react'
import axios from '../api/axios'
import { useEffect, useState } from 'react'

const Winner = () => {
	// VARIABLES AND ACTIONS
	const [winners, setWinners] = useState([])

	useEffect(() => {
		axios.get('/api/winners').then((res) => {
			console.log(res)
			setWinners(res.data)
		})
	}, [])

	return (
		<div className="mx-auto">
			<h1 className="text-4xl">Ganadores</h1>
			<div className="bg-blue-100 rounded-xl w-full m-10 items-center mx-auto ">
				<ul className="p-4">
					{winners.map((option) => (
						<li value={option.id} key={option.id} className="p-2 bg-green-300 rounded-xl m-2">
							{option.client.first_name} {option.client.last_name} - Fecha del Sorteo ({option.created_at})
						</li>
					))}
				</ul>
			</div>
		</div>
	)
}

export default Winner
