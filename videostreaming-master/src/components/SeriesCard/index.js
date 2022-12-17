<<<<<<< HEAD
import React, { useState, useEffect } from 'react';
import PropTypes from 'prop-types';
import Box from '@mui/material/Box';
import Card from '@mui/material/Card';
import CardMedia from '@mui/material/CardMedia';
import CardContent from '@mui/material/CardContent';
import Typography from '@mui/material/Typography';
import { styled } from '@mui/material/styles';
import {BsChevronCompactLeft, BsChevronCompactRight} from 'react-icons/bs';
import {RxDotFilled} from 'react-icons/rx';
import ReactStars from 'react-rating-stars-component';
import { DisabledByDefault } from '@mui/icons-material';
import { red } from '@mui/material/colors';




const CardInfo = styled(CardContent)(({theme}) => ({
    '&:last-child': {
        paddingBottom: theme.spacing(2),
      }
      
  }));

const SeriesCard = ({ series }) => {

    return (
        <Card sx={{ maxWidth: 250,  position: "relative" }}>
            <Box sx={{ position: 'relative'}}>
=======
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

const SeriesCard = ({ series }) => {
    return (
        <Card sx={{ maxWidth: 250, position: 'relative' }}>
            <Box sx={{ position: 'relative' }}>
>>>>>>> a3404dbeb5c7fce76b6efb56c1261ad21dc749c7
                <CardMedia
                    component="img"
                    height="350"
                    image={series.image}
<<<<<<< HEAD
                    alt={series.name}/>
            </Box>



=======
                    alt={series.name}
                />
            </Box>

>>>>>>> a3404dbeb5c7fce76b6efb56c1261ad21dc749c7
            <CardInfo>
                <Typography variant="h6" gutterBottom component="div">
                    {series.name}
                </Typography>

<<<<<<< HEAD
                <Typography mb={0} variant="subtitle1" gutterBottom component="div">
=======
                <Typography
                    mb={0}
                    variant="subtitle1"
                    gutterBottom
                    component="div"
                >
>>>>>>> a3404dbeb5c7fce76b6efb56c1261ad21dc749c7
                    {series.release_date}
                </Typography>

                <Typography mb={0}>
<<<<<<< HEAD
                    <ReactStars size={25} count={10} isHalf={true} Rating rate={series.rating} 
                                value={series.rating} edit={0} activeColor={'#ffd700'}/>
=======
                    <ReactStars
                        size={25}
                        count={10}
                        isHalf={true}
                        Rating
                        rate={series.rating}
                        value={series.rating}
                        edit={0}
                        activeColor={'#ffd700'}
                    />
>>>>>>> a3404dbeb5c7fce76b6efb56c1261ad21dc749c7
                </Typography>
            </CardInfo>
        </Card>
    )
}

SeriesCard.propTypes = {
    series: PropTypes.shape({
        image: PropTypes.string.isRequired,
        title: PropTypes.string.isRequired,
<<<<<<< HEAD
        releaseDate: PropTypes.string
    }).isRequired,
}

export default SeriesCard;
=======
        releaseDate: PropTypes.string,
    }).isRequired,
}

export default SeriesCard
>>>>>>> a3404dbeb5c7fce76b6efb56c1261ad21dc749c7
