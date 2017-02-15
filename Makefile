.PHONY: clean All

All:
	@echo "----------Building project:[ diplay3 - Debug ]----------"
	@cd "diplay3" && "$(MAKE)" -f  "diplay3.mk" && "$(MAKE)" -f  "diplay3.mk" PostBuild
clean:
	@echo "----------Cleaning project:[ diplay3 - Debug ]----------"
	@cd "diplay3" && "$(MAKE)" -f  "diplay3.mk" clean
