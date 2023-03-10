import React, { useState, useEffect } from 'react'
import PropTypes from 'prop-types'
import Box from '@mui/material/Box'
import Card from '@mui/material/Card'
import CardMedia from '@mui/material/CardMedia'
import CardContent from '@mui/material/CardContent'
import Typography from '@mui/material/Typography'
import { styled } from '@mui/material/styles'
import { BsChevronCompactLeft, BsChevronCompactRight } from 'react-icons/bs'
import { RxDotFilled } from 'react-icons/rx'
import ReactStars from 'react-rating-stars-component'
import { DisabledByDefault } from '@mui/icons-material'
import { red } from '@mui/material/colors'

const CardInfo = styled(CardContent)(({ theme }) => ({
    '&:last-child': {
        paddingBottom: theme.spacing(2),
    },
}))

const MovieCard = ({ movie }) => {
    return (
        <Card sx={{ maxWidth: 250, position: 'relative' }}>
            <Box sx={{ position: 'relative' }}>
                <CardMedia
                    component="img"
                    height="350"
                    image={movie.image}
                    alt={movie.title}
                />
            </Box>

            <CardInfo>
                <Typography variant="h6" gutterBottom component="div">
                    {movie.title}
                </Typography>

                <Typography
                    mb={0}
                    variant="subtitle1"
                    gutterBottom
                    component="div"
                >
                    {movie.release_date}
                </Typography>

                <Typography mb={0}>
                    <ReactStars
                        size={25}
                        count={10}
                        isHalf={true}
                        Rating
                        rate={movie.rating}
                        value={movie.rating}
                        edit={0}
                        activeColor={'#ffd700'}
                    />
                </Typography>
            </CardInfo>
        </Card>
    )
}

MovieCard.propTypes = {
    movie: PropTypes.shape({
        image: PropTypes.string.isRequired,
        title: PropTypes.string.isRequired,
        releaseDate: PropTypes.string,
    }).isRequired,
}

export default MovieCard
