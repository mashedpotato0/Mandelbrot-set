# Mandelbrot Set Generator

This Processing sketch generates a visualization of the Mandelbrot set. The Mandelbrot set is a set of complex numbers that remains bounded under repeated iteration, forming a visually striking fractal shape.

## Features

- Generates the Mandelbrot set based on the specified parameters.
- Allows zooming into different regions of the set interactively.

## Setup

1. **Requirements**: Ensure you have Processing installed on your machine. You can download it from [Processing.org](https://processing.org/download/).

2. **Installation**:
   - Clone or download the repository to your local machine.
   - Open the `Mandelbrot.pde` file in Processing.

3. **Run**:
   - Click the "Run" button in the Processing IDE to execute the sketch.
   - The Mandelbrot set will be displayed in the Processing window.

## Usage

- **Navigation**:
  - Click anywhere on the Mandelbrot set to zoom into that region.
  - Use the mouse to explore different parts of the set.

- **Parameters**:
  - `minVal`, `maxVal`, `minImag`, `maxImag`: Define the initial boundaries of the Mandelbrot set.
  - `maxIterations`: Number of iterations used to determine if a point belongs to the Mandelbrot set.
  - `zoomFactor`: Adjusts the zoom level when clicking to zoom into the set.
