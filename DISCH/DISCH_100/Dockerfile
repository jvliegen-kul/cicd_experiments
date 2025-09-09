FROM ghdl/ghdl:bullseye-mcode

COPY DISCH/DISCH_100/src /DISCH_exercise/
COPY DISCH/DISCH_100/tests /DISCH_exercise/
COPY DISCH/DISCH_100/sim.sh /DISCH_exercise/

WORKDIR /DISCH_exercise

RUN chmod +x sim.sh
CMD ["./sim.sh"]