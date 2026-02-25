# Custom Resource Project

This project defines a custom FHIR resource using FSH (FHIR Shorthand).

## Project Structure
- `input/fsh/resources/`: Contains FSH files defining custom resources.
- `output/`: Generated artifacts (HTML, JSON, XML, etc.) from FSH definitions.
- `fsh-generated/`: Intermediate files generated during the build process.
- `template/`, `temp/`: Supporting files and temporary data.

## Build & Generation
- Use `_build.sh` or `_build.bat` to build the project and generate FHIR artifacts.
- Use `_genonce.sh` or `_gencontinuous.sh` for one-time or continuous generation.

## Requirements
- Sushi (FSH to FHIR converter)
- Node.js (for Sushi)

## Usage
1. Place your FSH files in `input/fsh/resources/`.
2. Run `_build.sh` to generate FHIR artifacts in the `output/` folder.

## License
See LICENSE for details.

## References
- [FHIR Shorthand (FSH)](https://fshschool.org/)
- [Sushi Documentation](https://fshschool.org/docs/sushi/)
