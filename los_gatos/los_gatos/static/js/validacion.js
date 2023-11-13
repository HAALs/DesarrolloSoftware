$.validator.setDefaults({
  submitHandler: function () {
    alert("Tus datos han sido enviados exitosamente!");
    onclick = location.href = "index.html";
  },
});

$(document).ready(function () {
  $("#signupForm").validate({
    errorClass: "has-error",
    validClass: "has-success",
    rules: {
      fullname: {
        required: true,
        minlength: 2,
      },

      lastname: {
        required: true,
        minlength: 2,
      },
      password: {
        required: true,
        minlength: 5,
      },
      confirm_password: {
        required: true,
        equalTo: password,
      },
      comments: {
        required: true,
      },

      lname: {
        required: true,
        minlength: 5,
      },
      email: {
        required: true,
        email: true,
      },
      agree: "required", //terminos y condiciones
    },
    messages: {
      //mensajes de error, envio sin datos
      fullname: {
        required: "Por favor, ingresa tu nombre de pila completo",
        minlength: "Debes ingresar al menos 2 caracteres",
      },

      lastname: {
        required: "Por favor, ingresa tu apellido completo",
        minlength: "Debes ingresar al menos 2 caracteres",
      },

      comments: {
        required: "Por favor, ingresa un comentario",
      },

      password: {
        required: "Por favor, ingresa una contraseña",
        minlength:
          "Tu contraseña debe ser de al menos 5 caracteres de longitud",
      },

      confirm_password: {
        required: "Por favor, ingresa una contraseña",
        equalTo: "Por favor, ingresa la misma contraseña de arriba",
      },

      email: "Por favor, ingresa un correo válido",
      agree: "Por favor, acepta nuestra política",
      luckynumber: {
        required: "Por favor",
      },
    },

    highlight: function (element, errorClass, validClass) {
      $(element)
        .parents(".col-sm-10")
        .addClass("has-error")
        .removeClass("has-success");
    },
    unhighlight: function (element, errorClass, validClass) {
      $(element)
        .parents(".col-sm-10")
        .addClass("has-success")
        .removeClass("has-error");
    },
  });
});
