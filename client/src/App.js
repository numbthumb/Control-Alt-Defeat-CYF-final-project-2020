import React, { useState, useEffect } from "react";
import { BrowserRouter as Router, Switch, Route, Link } from "react-router-dom";
import Container from "react-bootstrap/Container";
import Header from "./Header/Header.js";
import Footer from "./Footer/Footer.js";
import "./App.scss";
import Carousel from "./Carousel/LanguageCarousel";
import SearchBar from "./SEARCHBAR/SearchBar.js";
// import { getMessage } from "./service";
// import logo from "./logo.svg";
// import SidebarNav from "./TermPage/SidebarNav/SidebarNav.js";
import AddTermUserBtn from "./TermPage/AddTermUserBtn.js";
import { getMessage } from "./service";
import Resources from "./components/Resources";
import SidebarNav from "./components/SidebarNav";
import Body from "./components/Body.js";
import { getLanguage } from "./service";

export function App() {
	const [language, setLanguage] = useState([]);
	const [term, setTerm] = useState({});

	useEffect(() => {
		async function getLang() {
			const data = await getLanguage();
			console.log(data);
			setLanguage(data);
			setTerm(data[0]);
		}
		getLang();
	}, []);

	return (
		<Router>
			<Header />
			<Container>
				<Switch>
					<Route exact path="/">
						<Link to="/TermPage">
							<SearchBar />
							<Carousel />
						</Link>
					</Route>
					<Route exact path="/TermPage">
						<AddTermUserBtn />
						<div className="definition-container">
							<SidebarNav language={language} setTerm={setTerm} />
							<Body language={term} />
						</div>
					</Route>
					<Route>
						{/* <Link to="/LoginPage">
              <BackToHome />
              <LoginForm />
            </Link> */}
					</Route>
				</Switch>
			</Container>
			<Footer />
		</Router>
	);
}
export default App;
