export default {
  transform: {
    "^.+\\.[tj]sx?$": "babel-jest", // Transform TypeScript/JSX files
  },
  moduleFileExtensions: ["js", "jsx", "ts", "tsx"],
  testEnvironment: "node",
};
