const convertDate = (date) => {
  const day = new Date(date).getDate() < 10 ? `0${new Date(date).getDate()}` : new Date(date).getDate();
  const month = new Date(date).getMonth() + 1 < 10
    ? `0${new Date(date).getMonth() + 1}`
    : new Date(date).getMonth() + 1;
  const year = new Date(date).getFullYear();
  return `${day}.${month}.${year}`;
};
export default convertDate;
