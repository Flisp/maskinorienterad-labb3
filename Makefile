.PHONY: clean All

All:
	@echo "----------Building project:[ display2 - Debug ]----------"
	@cd "display2" && "$(MAKE)" -f  "display2.mk" && "$(MAKE)" -f  "display2.mk" PostBuild
clean:
	@echo "----------Cleaning project:[ display2 - Debug ]----------"
	@cd "display2" && "$(MAKE)" -f  "display2.mk" clean
