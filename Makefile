BREW := /usr/local/bin/brew

all: bootstrap

## bootstrap: Bootstrap project dependencies for development
bootstrap: homebrew
	mint bootstrap

## deps: Bootstrap swift dependencies
deps:
	mint run carthage/carthage carthage bootstrap --cache-builds --platform ios --no-use-binaries


## homebrew: Bootstrap Homebrew dependencies
homebrew: $(BREW)
	brew bundle check || brew bundle

## lint: Launch swift files linter check
lint:
	mint run swiftlint

## clean: Clean all git ignored files
clean:
	git clean -Xfd

## help: Prints help message
help:
	@echo "Usage: \n"
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

$(BREW):
	curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install | ruby
