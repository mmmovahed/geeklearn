const apitest = () => {
  let datas = {
    "title":"test",
    "description":"description",
    "thumbnail":"thumbnail",
    "teacher_id":5,
    "advantages":"advantages",
    "category_id":8,
    "cost":"cost",
    "in_advance":"in_advance",
    "level":"level",
    "labels":{"d":3,"d":4,"d":5}

  };
  fetch("http://geeklearn.ir/panel/api/add_course.php", {
    method: "POST",
    body: JSON.stringify(datas),
    headers: {
      "Content-type": "application/json",
    },
  })
    .then((respons) => respons.json())
    .then((result) => console.log(result))

    .catch((err) => console.log(err));
};

apitest();
