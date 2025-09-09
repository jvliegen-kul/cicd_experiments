FROM ghdl/ghdl:6.0.0-dev-gcc-ubuntu-24.04

COPY src /DISCH_exercise/
COPY tests /DISCH_exercise/
COPY sim.sh /DISCH_exercise/

WORKDIR /DISCH_exercise

RUN chmod +x sim.sh
CMD ["./sim.sh"]