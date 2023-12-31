import React, { useEffect, useState } from 'react';
import { Button, Card, Container, Image } from 'react-bootstrap';
import { Grid, Typography } from '@mui/material';
import { useParams } from 'react-router-dom';
import { useSnackbar } from 'notistack';
import Star from '../../img/Star1.png';
import ApiService from '../../components/apiHelper/apiDevice';
import { DEVICE_ROUTE } from '../../utils/consts';

function DevicePage() {
  const { enqueueSnackbar } = useSnackbar();
  const apiDevice = new ApiService(DEVICE_ROUTE);
  const { id } = useParams();
  const [device, setDevice] = useState({ info: [] });
  useEffect(() => {
    apiDevice
      .getItemById(id)
      .then((response) => {
        const fileData = JSON.parse(response.img);
        setDevice({ ...response, fileData });
      })
      .catch((error) => enqueueSnackbar(error.response.data.message, { variant: 'error' }));
  }, [id]);
  return (
    device?.fileData && (
      <Container style={{ maxWidth: '90%' }}>
        <Grid container>
          <Grid
            item
            md={4}
            sx={{
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'center',
              flexDirection: 'column'
            }}
          >
            <Image
              width={400}
              height={400}
              src={`data:${device?.fileData?.type};base64,${device?.fileData?.base64String}`}
            />
          </Grid>
          <Grid
            item
            md={4}
            sx={{
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'center',
              flexDirection: 'column'
            }}
          >
            <Typography variant="h3">{device.name}</Typography>
            <div
              style={{
                display: 'flex',
                alignItems: 'center',
                justifyContent: 'center',
                flexDirection: 'column',
                background: `url(${Star}) no-repeat center center`,
                width: 340,
                height: 340,
                backgroundSize: 'cover'
              }}
            >
              <Typography fontSize={64}>{device.rating}</Typography>
            </div>
          </Grid>
          <Grid
            item
            md={4}
            sx={{
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'center',
              flexDirection: 'column'
            }}
          >
            <Card
              className="d-flex flex-column align-items-center justify-content-around"
              style={{
                width: 400,
                height: 400,
                fontSize: 32,
                border: '5px solid lightgray'
              }}
            >
              <h3>{device.price} грн.</h3>
              <Button variant="outline-dark">Додати в кошик</Button>
            </Card>
          </Grid>
          <Grid item md={12}>
            <h1>Характеристики</h1>
            {device.info.map((desc, index) => (
              <Grid
                item
                key={desc.id}
                style={{
                  background: index % 2 ? 'lightgray' : 'transperent',
                  padding: 10
                }}
              >
                {desc.title}:{desc.description}
              </Grid>
            ))}
          </Grid>
        </Grid>
      </Container>
    )
  );
}

export default DevicePage;
