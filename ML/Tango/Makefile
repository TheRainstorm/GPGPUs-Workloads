SUBDIRS := AlexNet  CifarNet  GRU  LSTM  ResNet  SqueezeNet
export BIN ?= $(shell pwd)/bin/

subdirs: $(SUBDIRS)

$(SUBDIRS):
	mkdir -p $(BIN)
	$(MAKE) -C $@

.PHONY: subdirs $(SUBDIRS)

clean:
	@for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir clean; \
	done