import React, { useState, useEffect } from 'react'
import Axios from 'axios'
import './App.css'
import {
    Button,
} from '@mui/material'
import Slider from 'react-slick';
import 'slick-carousel/slick/slick.css';
import 'slick-carousel/slick/slick-theme.css';

import MovieCard from './components/MovieCard';
import SeriesCard from './components/SeriesCard';


function App() {


    const settings = {
        dots: true,
        infinite: true,
        speed: 100,
        slidesToShow: 5,
        slidesToScroll: 4,
        initialSlide: 0,
        responsive: [
          {
            breakpoint: 1024,
            settings: {
              slidesToShow: 3,
              slidesToScroll: 3,
              infinite: true,
              dots: true
            }
          },
          {
            breakpoint: 600,
            settings: {
              slidesToShow: 2,
              slidesToScroll: 2,
              initialSlide: 2
            }
          },
          {
            breakpoint: 480,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1
            }
          }
        ]
      };

    const [country, setCountry] = useState('')
    const [MovieList, setMovieList] = useState([])
    const [SeriesList, setSeriesList] = useState([])

    const handleCountryClick = (country) => {
        setCountry(country)

        setMovieList([])
        Axios.get('http://localhost:3001/api/get/' + country + '/movies').then(
            (response) => {
                setMovieList(response)
            }
        )
        console.log(MovieList)

        setSeriesList([])
        Axios.get('http://localhost:3001/api/get/' + country + '/series').then(
            (response) => {
                setSeriesList(response)
            }
        )
        console.log(SeriesList)

    }

    const [visible, setVisible] = React.useState(false);

    const handleBackClick = () => {
        setCountry('')
    }


    return (
        <div className="App">
            <div class="top-bar">
                {country !== '' && (
                    <Button
                        class="back-button"
                        onClick={() => {
                            handleBackClick() || setVisible(false)
                        }}
                    >
                        Back
                    </Button>
                )}
                <h1 class="top-bar-title">RedBox</h1>
            </div>

            <section  class="wrapper">
                {visible && <div class="top">Movies</div>}
                {visible && <div class="bottom" aria-hidden="true">Movies</div>}
            </section>
            
            {country === '' && (
                <div className="buttons">
                    <Button
                        className="finland-button"
                        onClick={() => setVisible(true) || handleCountryClick('finland')}  
                    ></Button>
                    <Button
                        className="spain-button"
                        onClick={() => setVisible(true) || handleCountryClick('spain')}
                    ></Button>
                    <Button
                        className="usa-button"
                        onClick={() => setVisible(true) || handleCountryClick('usa')}
                    ></Button>

                </div>
            )}

            {country !== '' && (
                <Slider {...settings}>
                    {MovieList.data?.length > 0 &&
                        MovieList.data.map((val) => {
                            return (
                                <MovieCard movie={val}/>
                            )
                        })}
                </Slider>
            )}

            <section  class="wrapper">
                {visible && <div class="top">Series</div>}
                {visible && <div class="bottom" aria-hidden="true">Series</div>}
            </section>

            {country !== '' && (
                <Slider {...settings}>
                    {SeriesList.data?.length > 0 &&
                        SeriesList.data.map((val) => {
                            return (
                                <SeriesCard series={val}/>
                            )
                        })}
                </Slider>
            )}

        </div>
    )
}

export default App
