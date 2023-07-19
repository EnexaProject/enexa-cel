FROM cel
COPY --from=enexa-utils:1 / /.
ADD ./module .
CMD ./module
