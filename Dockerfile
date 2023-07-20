FROM drill-train
WORKDIR /app
ADD . ./
CMD ./module

# Add ENEXA utils.
COPY --from=enexa-utils:1 / /.
