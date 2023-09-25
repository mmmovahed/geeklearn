/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["../../components/panel/**/*.js", "../../panel/**/*.html"],
  theme: {
    extend: {
      transitionProperty: {
        "display": "display",
      },
      transitionTimingFunction: {
        "in-expo": "cubic-bezier(0.95, 0.05, 0.795, 0.035)",
        "out-expo": "cubic-bezier(0.19, 1, 0.22, 1)",
      },
    },
  },
  plugins: [],
};
