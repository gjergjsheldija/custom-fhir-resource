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

# Running Synthea and Flexporter

To generate synthetic FHIR patient data and custom research resources, follow these steps:

## 1. Generate Synthetic Patients with Synthea

From the synthea directory, run:

```sh
./run_synthea -p 1 --exporter.fhir.export=true
```
- This generates 1 synthetic patient and exports FHIR files to `synthea/output/fhir/`.
- You can adjust `-p` for more patients.

## 2. Run Flexporter to Create Custom Resources

After generating FHIR files, run Flexporter to create ResearchStudy and ResearchSubject resources:

```sh
./run_flexporter -fm ../config/flexporter_custom_resources.yaml -s output/fhir/ -ig ../fsh-generated/resources
```
- Replace `<your_patient_file>.json` with the actual filename from `synthea/output/fhir/`.
- The mapping file (`flexporter_custom_resources.yaml`) defines which custom resources to generate.

## Output
- Flexporter will write results to `synthea/output/flex/` or the configured output directory.
- Check this folder for your custom resource files.

## Troubleshooting
- Ensure all paths are correct relative to the `synthea` directory.
- If you encounter errors, verify the mapping file format and the existence of the source FHIR file.
