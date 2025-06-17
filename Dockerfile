FROM ruby:3.2.0-slim-bullseye AS base

WORKDIR /app

ENV RAILS_ENV="production" \
    BUNDLE_DEPLOYMENT="1" \
    BUNDLE_PATH="/usr/local/bundle" \
    BUNDLE_WITHOUT="development:test"

FROM base AS build

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl \
    build-essential \
    dos2unix \
    && curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs=$(nproc) && \
    { [ -d /usr/local/bundle/cache ] && rm -rf /usr/local/bundle/cache/*.gem || true; } && \
    { [ -d /usr/local/bundle/gems ] && find /usr/local/bundle/gems -name "*.c" -delete || true; } && \
    { [ -d /usr/local/bundle/gems ] && find /usr/local/bundle/gems -name "*.o" -delete || true; }

COPY . .

RUN find /app/bin -type f -exec dos2unix {} \; && \
    chmod +x /app/bin/*

RUN SECRET_KEY_BASE_DUMMY=1 ./bin/rails assets:precompile

FROM base

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

COPY --from=build /usr/local/bundle /usr/local/bundle
COPY --from=build /app /app

ENV PATH="/app/bin:${PATH}"

RUN useradd -m appuser && \
    chown -R appuser /app

USER appuser

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]