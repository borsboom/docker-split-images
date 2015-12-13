FROM haskell:7.10.2
# [insert additional build and runtime requirements here]
RUN mkdir /artifacts
COPY src /src/
RUN ghc -o /artifacts/hello /src/Main.hs
CMD /artifacts/hello
