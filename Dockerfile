FROM drill-train
ADD . ./
CMD ./module
# Add ENEXA utils.
COPY --from=hub.cs.upb.de/enexa/images/enexa-utils:1 / /.
