import * as Yup from 'yup';
import { useContext } from 'react';
import { DEVICE_ROUTE } from '../../../../utils/consts';
import { Context } from '../../../..';

const Schema = (typeForm) => {
  const { device } = useContext(Context);
  const schema = Yup.object()
    .shape({
      name: Yup.string()
        .min(2, `Мінімальна довжина ${2} символи`)
        .max(255, `Максимальна довжина ${255} символів`)
        .required("Це поле обов'язкове")
        .nullable()
    })
    .when((_values, schema) => {
      if (typeForm === DEVICE_ROUTE) {
        return schema.shape({
          typeId: Yup.number()
            .required('Поле обов`язкове')
            .oneOf(device._types.concat([null])),
          brandId: Yup.number()
            .nullable()
            .required('Поле обов`язкове')
            .oneOf(device._brands.concat([null])),
          price: Yup.number().nullable()
        });
      }
      return schema.shape({});
    });
  return schema;
};

export default Schema;
