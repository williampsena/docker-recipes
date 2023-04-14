FROM ubuntu:22.10 as base

CMD echo first_stage

FROM base as final

CMD echo last_stage