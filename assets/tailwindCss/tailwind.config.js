/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["../../components/panel/**/*.js", "../../panel/**/*.html"],
  theme: {
    extend: {
      transitionProperty: {
        display: "display",
      },
    },
  },
  plugins: [],
};
