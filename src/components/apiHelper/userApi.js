// eslint-disable-next-line camelcase
import jwt_decode from 'jwt-decode';
import { $host, $authHost } from './http';

export const registration = async (email, password, name, surname, phone) => {
  const { data } = await $host.post('api/user/registration', {
    email,
    role: 'ADMIN',
    password,
    phone,
    name,
    surname
  });
  localStorage.setItem('token', data.token);
  return jwt_decode(data.token);
};

export const login = async (email, password, name, surname, phone, role) => {
  const { data } = await $host.post('api/user/login', {
    email,
    role,
    password,
    phone,
    name,
    surname
  });
  localStorage.setItem('token', data.token);
  return jwt_decode(data.token);
};
export const checkLogin = async () => {
  const { data } = await $authHost.get('api/user/auth');
  return jwt_decode(data.token);
};
