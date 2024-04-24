import { Route, Routes } from 'react-router-dom'
import { Toaster } from 'react-hot-toast'

import './App.css'
import NavBar from './components/NavBar.jsx'
import Register from './components/Register.jsx'
import Landing from './components/Landing.jsx'
import Winner from './components/Winner.jsx'
import Export from './components/Export.jsx'

function App() {
	return (
		<div className="w-full h-screen">
			<NavBar />
			<div className="mx-auto">
				<Toaster />
			</div>
			<Routes>
				<Route path="/" element={<Landing />}></Route>
				<Route path="/register" element={<Register />}></Route>
				<Route path="/winners" element={<Winner />}></Route>
				<Route path="/exports" element={<Export />}></Route>
			</Routes>
		</div>
	)
}

export default App
