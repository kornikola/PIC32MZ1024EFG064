#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-kornikola.mk)" "nbproject/Makefile-local-kornikola.mk"
include nbproject/Makefile-local-kornikola.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=kornikola
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/WaterLeakSensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/WaterLeakSensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/kornikola/framework/driver/adc/src/drv_adc_static.c ../src/system_config/kornikola/framework/system/devcon/src/sys_devcon.c ../src/system_config/kornikola/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/kornikola/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/kornikola/framework/system/ports/src/sys_ports_static.c ../src/system_config/kornikola/system_init.c ../src/system_config/kornikola/system_interrupt.c ../src/system_config/kornikola/system_exceptions.c ../src/system_config/kornikola/system_tasks.c ../src/app.c ../src/main.c ../src/http_print.c ../src/custom_http_app.c ../src/mpfs_img2.c ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8041.c ../../../../framework/driver/miim/src/dynamic/drv_miim.c ../../../../framework/driver/nvm/src/dynamic/drv_nvm.c ../../../../framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../framework/system/clk/src/sys_clk.c ../../../../framework/system/clk/src/sys_clk_pic32mz.c ../../../../framework/system/fs/src/dynamic/sys_fs.c ../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c ../../../../framework/system/fs/mpfs/src/mpfs.c ../../../../framework/system/int/src/sys_int_pic32.c ../../../../framework/system/random/src/sys_random.c ../../../../framework/system/tmr/src/sys_tmr.c ../../../../framework/tcpip/src/common/sys_fs_wrapper.c ../../../../framework/tcpip/src/common/helpers.c ../../../../framework/tcpip/src/ipv4.c ../../../../framework/tcpip/src/tcp.c ../../../../framework/tcpip/src/udp.c ../../../../framework/tcpip/src/tcpip_heap_alloc.c ../../../../framework/tcpip/src/tcpip_heap_internal.c ../../../../framework/tcpip/src/arp.c ../../../../framework/tcpip/src/dhcp.c ../../../../framework/tcpip/src/dns.c ../../../../framework/tcpip/src/http.c ../../../../framework/tcpip/src/icmp.c ../../../../framework/tcpip/src/nbns.c ../../../../framework/tcpip/src/sntp.c ../../../../framework/tcpip/src/tcpip_announce.c ../../../../framework/tcpip/src/hash_fnv.c ../../../../framework/tcpip/src/oahash.c ../../../../framework/tcpip/src/tcpip_helpers.c ../../../../framework/tcpip/src/tcpip_helper_c32.S ../../../../framework/tcpip/src/tcpip_manager.c ../../../../framework/tcpip/src/tcpip_notify.c ../../../../framework/tcpip/src/tcpip_packet.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/974317859/drv_adc_static.o ${OBJECTDIR}/_ext/2054243789/sys_devcon.o ${OBJECTDIR}/_ext/2054243789/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/1887603036/sys_ports_static.o ${OBJECTDIR}/_ext/2018613845/system_init.o ${OBJECTDIR}/_ext/2018613845/system_interrupt.o ${OBJECTDIR}/_ext/2018613845/system_exceptions.o ${OBJECTDIR}/_ext/2018613845/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/http_print.o ${OBJECTDIR}/_ext/1360937237/custom_http_app.o ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o ${OBJECTDIR}/_ext/732687875/drv_ethphy.o ${OBJECTDIR}/_ext/732687875/drv_extphy_ksz8041.o ${OBJECTDIR}/_ext/487513595/drv_miim.o ${OBJECTDIR}/_ext/571308596/drv_nvm.o ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o ${OBJECTDIR}/_ext/185269848/drv_tmr.o ${OBJECTDIR}/_ext/972827896/sys_clk.o ${OBJECTDIR}/_ext/972827896/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/2104899551/sys_fs.o ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o ${OBJECTDIR}/_ext/850537704/mpfs.o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ${OBJECTDIR}/_ext/1283840359/sys_random.o ${OBJECTDIR}/_ext/1264926591/sys_tmr.o ${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o ${OBJECTDIR}/_ext/1136935090/helpers.o ${OBJECTDIR}/_ext/1408260596/ipv4.o ${OBJECTDIR}/_ext/1408260596/tcp.o ${OBJECTDIR}/_ext/1408260596/udp.o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o ${OBJECTDIR}/_ext/1408260596/arp.o ${OBJECTDIR}/_ext/1408260596/dhcp.o ${OBJECTDIR}/_ext/1408260596/dns.o ${OBJECTDIR}/_ext/1408260596/http.o ${OBJECTDIR}/_ext/1408260596/icmp.o ${OBJECTDIR}/_ext/1408260596/nbns.o ${OBJECTDIR}/_ext/1408260596/sntp.o ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o ${OBJECTDIR}/_ext/1408260596/hash_fnv.o ${OBJECTDIR}/_ext/1408260596/oahash.o ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/974317859/drv_adc_static.o.d ${OBJECTDIR}/_ext/2054243789/sys_devcon.o.d ${OBJECTDIR}/_ext/2054243789/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/1887603036/sys_ports_static.o.d ${OBJECTDIR}/_ext/2018613845/system_init.o.d ${OBJECTDIR}/_ext/2018613845/system_interrupt.o.d ${OBJECTDIR}/_ext/2018613845/system_exceptions.o.d ${OBJECTDIR}/_ext/2018613845/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/http_print.o.d ${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d ${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d ${OBJECTDIR}/_ext/732687875/drv_extphy_ksz8041.o.d ${OBJECTDIR}/_ext/487513595/drv_miim.o.d ${OBJECTDIR}/_ext/571308596/drv_nvm.o.d ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o.d ${OBJECTDIR}/_ext/185269848/drv_tmr.o.d ${OBJECTDIR}/_ext/972827896/sys_clk.o.d ${OBJECTDIR}/_ext/972827896/sys_clk_pic32mz.o.d ${OBJECTDIR}/_ext/2104899551/sys_fs.o.d ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o.d ${OBJECTDIR}/_ext/850537704/mpfs.o.d ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d ${OBJECTDIR}/_ext/1283840359/sys_random.o.d ${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d ${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o.d ${OBJECTDIR}/_ext/1136935090/helpers.o.d ${OBJECTDIR}/_ext/1408260596/ipv4.o.d ${OBJECTDIR}/_ext/1408260596/tcp.o.d ${OBJECTDIR}/_ext/1408260596/udp.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o.d ${OBJECTDIR}/_ext/1408260596/arp.o.d ${OBJECTDIR}/_ext/1408260596/dhcp.o.d ${OBJECTDIR}/_ext/1408260596/dns.o.d ${OBJECTDIR}/_ext/1408260596/http.o.d ${OBJECTDIR}/_ext/1408260596/icmp.o.d ${OBJECTDIR}/_ext/1408260596/nbns.o.d ${OBJECTDIR}/_ext/1408260596/sntp.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d ${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d ${OBJECTDIR}/_ext/1408260596/oahash.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/974317859/drv_adc_static.o ${OBJECTDIR}/_ext/2054243789/sys_devcon.o ${OBJECTDIR}/_ext/2054243789/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/1887603036/sys_ports_static.o ${OBJECTDIR}/_ext/2018613845/system_init.o ${OBJECTDIR}/_ext/2018613845/system_interrupt.o ${OBJECTDIR}/_ext/2018613845/system_exceptions.o ${OBJECTDIR}/_ext/2018613845/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/http_print.o ${OBJECTDIR}/_ext/1360937237/custom_http_app.o ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o ${OBJECTDIR}/_ext/732687875/drv_ethphy.o ${OBJECTDIR}/_ext/732687875/drv_extphy_ksz8041.o ${OBJECTDIR}/_ext/487513595/drv_miim.o ${OBJECTDIR}/_ext/571308596/drv_nvm.o ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o ${OBJECTDIR}/_ext/185269848/drv_tmr.o ${OBJECTDIR}/_ext/972827896/sys_clk.o ${OBJECTDIR}/_ext/972827896/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/2104899551/sys_fs.o ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o ${OBJECTDIR}/_ext/850537704/mpfs.o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ${OBJECTDIR}/_ext/1283840359/sys_random.o ${OBJECTDIR}/_ext/1264926591/sys_tmr.o ${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o ${OBJECTDIR}/_ext/1136935090/helpers.o ${OBJECTDIR}/_ext/1408260596/ipv4.o ${OBJECTDIR}/_ext/1408260596/tcp.o ${OBJECTDIR}/_ext/1408260596/udp.o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o ${OBJECTDIR}/_ext/1408260596/arp.o ${OBJECTDIR}/_ext/1408260596/dhcp.o ${OBJECTDIR}/_ext/1408260596/dns.o ${OBJECTDIR}/_ext/1408260596/http.o ${OBJECTDIR}/_ext/1408260596/icmp.o ${OBJECTDIR}/_ext/1408260596/nbns.o ${OBJECTDIR}/_ext/1408260596/sntp.o ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o ${OBJECTDIR}/_ext/1408260596/hash_fnv.o ${OBJECTDIR}/_ext/1408260596/oahash.o ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o

# Source Files
SOURCEFILES=../src/system_config/kornikola/framework/driver/adc/src/drv_adc_static.c ../src/system_config/kornikola/framework/system/devcon/src/sys_devcon.c ../src/system_config/kornikola/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/kornikola/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/kornikola/framework/system/ports/src/sys_ports_static.c ../src/system_config/kornikola/system_init.c ../src/system_config/kornikola/system_interrupt.c ../src/system_config/kornikola/system_exceptions.c ../src/system_config/kornikola/system_tasks.c ../src/app.c ../src/main.c ../src/http_print.c ../src/custom_http_app.c ../src/mpfs_img2.c ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8041.c ../../../../framework/driver/miim/src/dynamic/drv_miim.c ../../../../framework/driver/nvm/src/dynamic/drv_nvm.c ../../../../framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../framework/system/clk/src/sys_clk.c ../../../../framework/system/clk/src/sys_clk_pic32mz.c ../../../../framework/system/fs/src/dynamic/sys_fs.c ../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c ../../../../framework/system/fs/mpfs/src/mpfs.c ../../../../framework/system/int/src/sys_int_pic32.c ../../../../framework/system/random/src/sys_random.c ../../../../framework/system/tmr/src/sys_tmr.c ../../../../framework/tcpip/src/common/sys_fs_wrapper.c ../../../../framework/tcpip/src/common/helpers.c ../../../../framework/tcpip/src/ipv4.c ../../../../framework/tcpip/src/tcp.c ../../../../framework/tcpip/src/udp.c ../../../../framework/tcpip/src/tcpip_heap_alloc.c ../../../../framework/tcpip/src/tcpip_heap_internal.c ../../../../framework/tcpip/src/arp.c ../../../../framework/tcpip/src/dhcp.c ../../../../framework/tcpip/src/dns.c ../../../../framework/tcpip/src/http.c ../../../../framework/tcpip/src/icmp.c ../../../../framework/tcpip/src/nbns.c ../../../../framework/tcpip/src/sntp.c ../../../../framework/tcpip/src/tcpip_announce.c ../../../../framework/tcpip/src/hash_fnv.c ../../../../framework/tcpip/src/oahash.c ../../../../framework/tcpip/src/tcpip_helpers.c ../../../../framework/tcpip/src/tcpip_helper_c32.S ../../../../framework/tcpip/src/tcpip_manager.c ../../../../framework/tcpip/src/tcpip_notify.c ../../../../framework/tcpip/src/tcpip_packet.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-kornikola.mk ${DISTDIR}/WaterLeakSensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ1024EFG064
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o: ../src/system_config/kornikola/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/kornikola/93d73e127b54df1787f5be31fa395f8bfe4b2d32 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2054243789" 
	@${RM} ${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o ../src/system_config/kornikola/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o: ../../../../framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/kornikola/c57581291bced508fae1dc49a2738de9eebefef .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o ../../../../framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o: ../src/system_config/kornikola/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/kornikola/86a860393c261e4f83ee46fbb7ae1b35200b0ad9 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2054243789" 
	@${RM} ${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o ../src/system_config/kornikola/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/2054243789/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o: ../../../../framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/kornikola/80ea3cb4dd433a1909a6cdf913d156e75589abbf .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o ../../../../framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/974317859/drv_adc_static.o: ../src/system_config/kornikola/framework/driver/adc/src/drv_adc_static.c  .generated_files/flags/kornikola/289169a17527bc84791a85f8ced64ddad5d8fd2b .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/974317859" 
	@${RM} ${OBJECTDIR}/_ext/974317859/drv_adc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/974317859/drv_adc_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/974317859/drv_adc_static.o.d" -o ${OBJECTDIR}/_ext/974317859/drv_adc_static.o ../src/system_config/kornikola/framework/driver/adc/src/drv_adc_static.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2054243789/sys_devcon.o: ../src/system_config/kornikola/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/kornikola/8880639c2d1d2de09e93f531be6c278f1ac9ba43 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2054243789" 
	@${RM} ${OBJECTDIR}/_ext/2054243789/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/2054243789/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/2054243789/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/2054243789/sys_devcon.o ../src/system_config/kornikola/framework/system/devcon/src/sys_devcon.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2054243789/sys_devcon_pic32mz.o: ../src/system_config/kornikola/framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/kornikola/d295d2fdb46ccce2b527143fda4ce3fa7da3e68f .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2054243789" 
	@${RM} ${OBJECTDIR}/_ext/2054243789/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/2054243789/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/2054243789/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/2054243789/sys_devcon_pic32mz.o ../src/system_config/kornikola/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1887603036/sys_ports_static.o: ../src/system_config/kornikola/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/kornikola/a58a3dca82aaa0bcb51886189c6b598d2490f420 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1887603036" 
	@${RM} ${OBJECTDIR}/_ext/1887603036/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1887603036/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1887603036/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1887603036/sys_ports_static.o ../src/system_config/kornikola/framework/system/ports/src/sys_ports_static.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2018613845/system_init.o: ../src/system_config/kornikola/system_init.c  .generated_files/flags/kornikola/32ae901ac028b350631631f9b3802c6fcc466097 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2018613845" 
	@${RM} ${OBJECTDIR}/_ext/2018613845/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/2018613845/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/2018613845/system_init.o.d" -o ${OBJECTDIR}/_ext/2018613845/system_init.o ../src/system_config/kornikola/system_init.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2018613845/system_interrupt.o: ../src/system_config/kornikola/system_interrupt.c  .generated_files/flags/kornikola/386d7359d2ae1f40780fe1006d65251831fa1351 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2018613845" 
	@${RM} ${OBJECTDIR}/_ext/2018613845/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2018613845/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/2018613845/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/2018613845/system_interrupt.o ../src/system_config/kornikola/system_interrupt.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2018613845/system_exceptions.o: ../src/system_config/kornikola/system_exceptions.c  .generated_files/flags/kornikola/b2f803e5a8d44c837b4e1e95919f8fc37e04867d .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2018613845" 
	@${RM} ${OBJECTDIR}/_ext/2018613845/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2018613845/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/2018613845/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/2018613845/system_exceptions.o ../src/system_config/kornikola/system_exceptions.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2018613845/system_tasks.o: ../src/system_config/kornikola/system_tasks.c  .generated_files/flags/kornikola/6f914b6e9062e5fe48324d9addbea8fec048e02 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2018613845" 
	@${RM} ${OBJECTDIR}/_ext/2018613845/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2018613845/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/2018613845/system_tasks.o.d" -o ${OBJECTDIR}/_ext/2018613845/system_tasks.o ../src/system_config/kornikola/system_tasks.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/kornikola/6b57e74d24e14ebb911dcab34886b32da145e007 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/kornikola/ad5b85737bde431dc76e9b5ecb28539a3dbc1551 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/http_print.o: ../src/http_print.c  .generated_files/flags/kornikola/c1999ab4718788f7e0f6c81692b5f5a0dffb5f90 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/http_print.o.d" -o ${OBJECTDIR}/_ext/1360937237/http_print.o ../src/http_print.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/custom_http_app.o: ../src/custom_http_app.c  .generated_files/flags/kornikola/e3496ea79a43262b2dc3529c154537648ad4ad91 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d" -o ${OBJECTDIR}/_ext/1360937237/custom_http_app.o ../src/custom_http_app.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mpfs_img2.o: ../src/mpfs_img2.c  .generated_files/flags/kornikola/967f08314b7fdebcd11391696d22ef9b720abe34 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d" -o ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o ../src/mpfs_img2.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1908841681/drv_ethmac.o: ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/kornikola/29e64d7c415151464cef2d398c239a1e0f3e4c6a .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1908841681" 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o: ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/kornikola/95eb9eb1b8167c7e920731ba158d2cb3c57c0fd3 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1908841681" 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732687875/drv_ethphy.o: ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/kornikola/36d11041b643b25aa3c2b33cd304ca6f5aa72c38 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/732687875" 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/732687875/drv_ethphy.o ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732687875/drv_extphy_ksz8041.o: ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8041.c  .generated_files/flags/kornikola/b47c9b7605ce22be6b90b246986aed36fece4723 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/732687875" 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_extphy_ksz8041.o.d 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_extphy_ksz8041.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/732687875/drv_extphy_ksz8041.o.d" -o ${OBJECTDIR}/_ext/732687875/drv_extphy_ksz8041.o ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8041.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/487513595/drv_miim.o: ../../../../framework/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/kornikola/fc119803f5a72d1ef6478ff1619ef359c5af6e99 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/487513595" 
	@${RM} ${OBJECTDIR}/_ext/487513595/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/487513595/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/487513595/drv_miim.o.d" -o ${OBJECTDIR}/_ext/487513595/drv_miim.o ../../../../framework/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/571308596/drv_nvm.o: ../../../../framework/driver/nvm/src/dynamic/drv_nvm.c  .generated_files/flags/kornikola/4d6be0154525ee47a2b2c8b6db558d7d84d02fb6 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/571308596" 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/571308596/drv_nvm.o.d" -o ${OBJECTDIR}/_ext/571308596/drv_nvm.o ../../../../framework/driver/nvm/src/dynamic/drv_nvm.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o: ../../../../framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c  .generated_files/flags/kornikola/10ba2bc53caaf19bffc74995227da33aa7ae007f .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/571308596" 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o.d" -o ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o ../../../../framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/185269848/drv_tmr.o: ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/kornikola/8f25508d3c1afb358ef34a0e18940d8e1d66e2f6 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/185269848" 
	@${RM} ${OBJECTDIR}/_ext/185269848/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/185269848/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/185269848/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/185269848/drv_tmr.o ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/972827896/sys_clk.o: ../../../../framework/system/clk/src/sys_clk.c  .generated_files/flags/kornikola/cbf829edf9d9a307b6c272d1a97404722fff1b1a .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/972827896" 
	@${RM} ${OBJECTDIR}/_ext/972827896/sys_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/972827896/sys_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/972827896/sys_clk.o.d" -o ${OBJECTDIR}/_ext/972827896/sys_clk.o ../../../../framework/system/clk/src/sys_clk.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/972827896/sys_clk_pic32mz.o: ../../../../framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/kornikola/1e9b33d4e180f907500680de77f26cd2a8880ac8 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/972827896" 
	@${RM} ${OBJECTDIR}/_ext/972827896/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/972827896/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/972827896/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/972827896/sys_clk_pic32mz.o ../../../../framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2104899551/sys_fs.o: ../../../../framework/system/fs/src/dynamic/sys_fs.c  .generated_files/flags/kornikola/aeba37c5a2a60f7d193088b95547f6d5d65b3dce .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2104899551" 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/2104899551/sys_fs.o.d" -o ${OBJECTDIR}/_ext/2104899551/sys_fs.o ../../../../framework/system/fs/src/dynamic/sys_fs.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o: ../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c  .generated_files/flags/kornikola/16326733d4c48fb272c0a57394244b96baed9e5 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2104899551" 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o ../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/850537704/mpfs.o: ../../../../framework/system/fs/mpfs/src/mpfs.c  .generated_files/flags/kornikola/d27157cfdbdcc938b583d9b2070ad6b341b67c14 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/850537704" 
	@${RM} ${OBJECTDIR}/_ext/850537704/mpfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/850537704/mpfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/850537704/mpfs.o.d" -o ${OBJECTDIR}/_ext/850537704/mpfs.o ../../../../framework/system/fs/mpfs/src/mpfs.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/122796885/sys_int_pic32.o: ../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/kornikola/f02bdee40f8607ad28694551222f712ef96f49fb .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/122796885" 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283840359/sys_random.o: ../../../../framework/system/random/src/sys_random.c  .generated_files/flags/kornikola/84c9442297d49aeec871a5c0070d267bc9efe804 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1283840359" 
	@${RM} ${OBJECTDIR}/_ext/1283840359/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283840359/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1283840359/sys_random.o.d" -o ${OBJECTDIR}/_ext/1283840359/sys_random.o ../../../../framework/system/random/src/sys_random.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1264926591/sys_tmr.o: ../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/kornikola/ea20a923b6adef1713e5b6e8e712c7092a5e1ecc .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1264926591" 
	@${RM} ${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1264926591/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1264926591/sys_tmr.o ../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o: ../../../../framework/tcpip/src/common/sys_fs_wrapper.c  .generated_files/flags/kornikola/6ae49921bca34926a572d4ca5968994fffc6560 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o.d" -o ${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o ../../../../framework/tcpip/src/common/sys_fs_wrapper.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1136935090/helpers.o: ../../../../framework/tcpip/src/common/helpers.c  .generated_files/flags/kornikola/b417cd8e267ece7d5f96e62a8ab5f44ef3ee4e5d .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1136935090/helpers.o.d" -o ${OBJECTDIR}/_ext/1136935090/helpers.o ../../../../framework/tcpip/src/common/helpers.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/ipv4.o: ../../../../framework/tcpip/src/ipv4.c  .generated_files/flags/kornikola/f57b0ad6f1bcd56cde7c3c15270560be5130f3a .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/ipv4.o.d" -o ${OBJECTDIR}/_ext/1408260596/ipv4.o ../../../../framework/tcpip/src/ipv4.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/tcp.o: ../../../../framework/tcpip/src/tcp.c  .generated_files/flags/kornikola/6e478609ed8e69fb85fc4e474884d3905f39e9d6 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcp.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcp.o ../../../../framework/tcpip/src/tcp.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/udp.o: ../../../../framework/tcpip/src/udp.c  .generated_files/flags/kornikola/cda4420ac0cc402acfd09f81a86d53138f1f712a .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/udp.o.d" -o ${OBJECTDIR}/_ext/1408260596/udp.o ../../../../framework/tcpip/src/udp.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o: ../../../../framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/kornikola/1b33575022c82b16c92bad2761301867a01946db .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o ../../../../framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o: ../../../../framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/kornikola/d67946007ff08d627dbe30ab8a0ad6e70ebdfd55 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o ../../../../framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/arp.o: ../../../../framework/tcpip/src/arp.c  .generated_files/flags/kornikola/d484c34da500be3ce81b4f3ac434f0bf8212727 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/arp.o.d" -o ${OBJECTDIR}/_ext/1408260596/arp.o ../../../../framework/tcpip/src/arp.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/dhcp.o: ../../../../framework/tcpip/src/dhcp.c  .generated_files/flags/kornikola/364c9b92232fb24cf20722620560276752c3173a .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/dhcp.o.d" -o ${OBJECTDIR}/_ext/1408260596/dhcp.o ../../../../framework/tcpip/src/dhcp.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/dns.o: ../../../../framework/tcpip/src/dns.c  .generated_files/flags/kornikola/809a903fab0082335c50e0ea864e096e5887e278 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/dns.o.d" -o ${OBJECTDIR}/_ext/1408260596/dns.o ../../../../framework/tcpip/src/dns.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/http.o: ../../../../framework/tcpip/src/http.c  .generated_files/flags/kornikola/dd11ba4f0b3bcae63793c89dd8fe6e194250d17e .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/http.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/http.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/http.o.d" -o ${OBJECTDIR}/_ext/1408260596/http.o ../../../../framework/tcpip/src/http.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/icmp.o: ../../../../framework/tcpip/src/icmp.c  .generated_files/flags/kornikola/70a4b68b520c58274748464e0a5d5f0b88aa5bd6 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/icmp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/icmp.o.d" -o ${OBJECTDIR}/_ext/1408260596/icmp.o ../../../../framework/tcpip/src/icmp.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/nbns.o: ../../../../framework/tcpip/src/nbns.c  .generated_files/flags/kornikola/87ad6e8576960a61de31c21d651a97098aae645a .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/nbns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/nbns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/nbns.o.d" -o ${OBJECTDIR}/_ext/1408260596/nbns.o ../../../../framework/tcpip/src/nbns.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/sntp.o: ../../../../framework/tcpip/src/sntp.c  .generated_files/flags/kornikola/8b2a7865b9318fa38c03e636bcdc24a00fb04 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/sntp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/sntp.o.d" -o ${OBJECTDIR}/_ext/1408260596/sntp.o ../../../../framework/tcpip/src/sntp.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/tcpip_announce.o: ../../../../framework/tcpip/src/tcpip_announce.c  .generated_files/flags/kornikola/a997eb36cf8b0ab06778e0c57ec899777fd7c909 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o ../../../../framework/tcpip/src/tcpip_announce.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/hash_fnv.o: ../../../../framework/tcpip/src/hash_fnv.c  .generated_files/flags/kornikola/868962e546ecf1718e22ba514c16f1c3e63ccac6 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1408260596/hash_fnv.o ../../../../framework/tcpip/src/hash_fnv.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/oahash.o: ../../../../framework/tcpip/src/oahash.c  .generated_files/flags/kornikola/bb288d419642a6c29a84a48198b5a7e18f015f09 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/oahash.o.d" -o ${OBJECTDIR}/_ext/1408260596/oahash.o ../../../../framework/tcpip/src/oahash.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o: ../../../../framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/kornikola/cb82374f8020587492ced07c303abe66356e3f95 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o ../../../../framework/tcpip/src/tcpip_helpers.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/tcpip_manager.o: ../../../../framework/tcpip/src/tcpip_manager.c  .generated_files/flags/kornikola/c5558138f185971bbd19cfadf6ca8f4a3e1a1391 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o ../../../../framework/tcpip/src/tcpip_manager.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/tcpip_notify.o: ../../../../framework/tcpip/src/tcpip_notify.c  .generated_files/flags/kornikola/e618cbc08daa413e8d022131105563bd89c0cc2 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o ../../../../framework/tcpip/src/tcpip_notify.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/tcpip_packet.o: ../../../../framework/tcpip/src/tcpip_packet.c  .generated_files/flags/kornikola/b576fc018534d2836afab6eb3a686d7a0287017 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o ../../../../framework/tcpip/src/tcpip_packet.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/974317859/drv_adc_static.o: ../src/system_config/kornikola/framework/driver/adc/src/drv_adc_static.c  .generated_files/flags/kornikola/937a6ca93d078d76adf699cc13ef50085b4bd2f8 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/974317859" 
	@${RM} ${OBJECTDIR}/_ext/974317859/drv_adc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/974317859/drv_adc_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/974317859/drv_adc_static.o.d" -o ${OBJECTDIR}/_ext/974317859/drv_adc_static.o ../src/system_config/kornikola/framework/driver/adc/src/drv_adc_static.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2054243789/sys_devcon.o: ../src/system_config/kornikola/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/kornikola/1450f8c152f9a19f9d28d8819f4fbf03541483d7 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2054243789" 
	@${RM} ${OBJECTDIR}/_ext/2054243789/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/2054243789/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/2054243789/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/2054243789/sys_devcon.o ../src/system_config/kornikola/framework/system/devcon/src/sys_devcon.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2054243789/sys_devcon_pic32mz.o: ../src/system_config/kornikola/framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/kornikola/fbf09eecad8c1ed27d7c7d85bb81d344c7f3ddc2 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2054243789" 
	@${RM} ${OBJECTDIR}/_ext/2054243789/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/2054243789/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/2054243789/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/2054243789/sys_devcon_pic32mz.o ../src/system_config/kornikola/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1887603036/sys_ports_static.o: ../src/system_config/kornikola/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/kornikola/f5bdedaa13be740f8c31634b6c71c09a1062d188 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1887603036" 
	@${RM} ${OBJECTDIR}/_ext/1887603036/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1887603036/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1887603036/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1887603036/sys_ports_static.o ../src/system_config/kornikola/framework/system/ports/src/sys_ports_static.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2018613845/system_init.o: ../src/system_config/kornikola/system_init.c  .generated_files/flags/kornikola/c8940f2dd20c3e28b1fd2edcd95b6b856df45ed6 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2018613845" 
	@${RM} ${OBJECTDIR}/_ext/2018613845/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/2018613845/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/2018613845/system_init.o.d" -o ${OBJECTDIR}/_ext/2018613845/system_init.o ../src/system_config/kornikola/system_init.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2018613845/system_interrupt.o: ../src/system_config/kornikola/system_interrupt.c  .generated_files/flags/kornikola/da0849e08e60f34e54b3f468cf95b232014df57 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2018613845" 
	@${RM} ${OBJECTDIR}/_ext/2018613845/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2018613845/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/2018613845/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/2018613845/system_interrupt.o ../src/system_config/kornikola/system_interrupt.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2018613845/system_exceptions.o: ../src/system_config/kornikola/system_exceptions.c  .generated_files/flags/kornikola/a54656c92dbbfaffea0bec5e476ecd88ed395751 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2018613845" 
	@${RM} ${OBJECTDIR}/_ext/2018613845/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2018613845/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/2018613845/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/2018613845/system_exceptions.o ../src/system_config/kornikola/system_exceptions.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2018613845/system_tasks.o: ../src/system_config/kornikola/system_tasks.c  .generated_files/flags/kornikola/f58aecadb8126b6d2136038fe53f197f364ec137 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2018613845" 
	@${RM} ${OBJECTDIR}/_ext/2018613845/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2018613845/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/2018613845/system_tasks.o.d" -o ${OBJECTDIR}/_ext/2018613845/system_tasks.o ../src/system_config/kornikola/system_tasks.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/kornikola/3e1cc5806eeccb25205380aea569cb95100e8e11 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/kornikola/9e6a66c398a993375715108f9ddc2fab3b9c5a92 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/http_print.o: ../src/http_print.c  .generated_files/flags/kornikola/24ca3f993a76fe636da97eeb60068e1814351209 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/http_print.o.d" -o ${OBJECTDIR}/_ext/1360937237/http_print.o ../src/http_print.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/custom_http_app.o: ../src/custom_http_app.c  .generated_files/flags/kornikola/8b23e351b83cde65e66779930c5ff63cf61fe0ba .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d" -o ${OBJECTDIR}/_ext/1360937237/custom_http_app.o ../src/custom_http_app.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mpfs_img2.o: ../src/mpfs_img2.c  .generated_files/flags/kornikola/27d471c62b64052caccdf7e4d8fdd90ab4698297 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d" -o ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o ../src/mpfs_img2.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1908841681/drv_ethmac.o: ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/kornikola/3a3dcacd03cbc032a52652f48e25f3422c10c8df .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1908841681" 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o: ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/kornikola/b607bd15c4b205c35c013b1a89653a56e1f407aa .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1908841681" 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732687875/drv_ethphy.o: ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/kornikola/a003f1078f8b0b0e1c5f7bd71b708ea8ec8e8a1d .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/732687875" 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/732687875/drv_ethphy.o ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732687875/drv_extphy_ksz8041.o: ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8041.c  .generated_files/flags/kornikola/fb231d4cab31e3264c1211d0871c9ebabb6edb13 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/732687875" 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_extphy_ksz8041.o.d 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_extphy_ksz8041.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/732687875/drv_extphy_ksz8041.o.d" -o ${OBJECTDIR}/_ext/732687875/drv_extphy_ksz8041.o ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8041.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/487513595/drv_miim.o: ../../../../framework/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/kornikola/40e16640ebd20dba3d5171aeca0dcab10297ccf2 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/487513595" 
	@${RM} ${OBJECTDIR}/_ext/487513595/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/487513595/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/487513595/drv_miim.o.d" -o ${OBJECTDIR}/_ext/487513595/drv_miim.o ../../../../framework/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/571308596/drv_nvm.o: ../../../../framework/driver/nvm/src/dynamic/drv_nvm.c  .generated_files/flags/kornikola/7281f9e2d08dde4408bdc0a393cd2fc6186eafb9 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/571308596" 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/571308596/drv_nvm.o.d" -o ${OBJECTDIR}/_ext/571308596/drv_nvm.o ../../../../framework/driver/nvm/src/dynamic/drv_nvm.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o: ../../../../framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c  .generated_files/flags/kornikola/51e94e1ea46e7de7a50acf56cb15a78b084dd9d1 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/571308596" 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o.d" -o ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o ../../../../framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/185269848/drv_tmr.o: ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/kornikola/18d8e6b08e83b56a96eb513ed230aed5203f17ac .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/185269848" 
	@${RM} ${OBJECTDIR}/_ext/185269848/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/185269848/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/185269848/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/185269848/drv_tmr.o ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/972827896/sys_clk.o: ../../../../framework/system/clk/src/sys_clk.c  .generated_files/flags/kornikola/ba54a794e623b39665228bde83af8300f839b8b0 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/972827896" 
	@${RM} ${OBJECTDIR}/_ext/972827896/sys_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/972827896/sys_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/972827896/sys_clk.o.d" -o ${OBJECTDIR}/_ext/972827896/sys_clk.o ../../../../framework/system/clk/src/sys_clk.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/972827896/sys_clk_pic32mz.o: ../../../../framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/kornikola/a7c48678c09dbf17daf0a5f064f0799f8e86378c .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/972827896" 
	@${RM} ${OBJECTDIR}/_ext/972827896/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/972827896/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/972827896/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/972827896/sys_clk_pic32mz.o ../../../../framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2104899551/sys_fs.o: ../../../../framework/system/fs/src/dynamic/sys_fs.c  .generated_files/flags/kornikola/872da1610ba5c977cd0fd15320d3883e1eb8fe28 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2104899551" 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/2104899551/sys_fs.o.d" -o ${OBJECTDIR}/_ext/2104899551/sys_fs.o ../../../../framework/system/fs/src/dynamic/sys_fs.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o: ../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c  .generated_files/flags/kornikola/f8dfc42478909260ea410f086dbd5caf7f5b2c04 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2104899551" 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o ../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/850537704/mpfs.o: ../../../../framework/system/fs/mpfs/src/mpfs.c  .generated_files/flags/kornikola/313c83f745104a550fa7af2a4d0c0815a8089da2 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/850537704" 
	@${RM} ${OBJECTDIR}/_ext/850537704/mpfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/850537704/mpfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/850537704/mpfs.o.d" -o ${OBJECTDIR}/_ext/850537704/mpfs.o ../../../../framework/system/fs/mpfs/src/mpfs.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/122796885/sys_int_pic32.o: ../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/kornikola/ac3f59ef831d5729920ca6ef7e8eb43d67c98c71 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/122796885" 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283840359/sys_random.o: ../../../../framework/system/random/src/sys_random.c  .generated_files/flags/kornikola/e50e09326fb446a7b783564616196822e75a4446 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1283840359" 
	@${RM} ${OBJECTDIR}/_ext/1283840359/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283840359/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1283840359/sys_random.o.d" -o ${OBJECTDIR}/_ext/1283840359/sys_random.o ../../../../framework/system/random/src/sys_random.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1264926591/sys_tmr.o: ../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/kornikola/9d0176c8971345e1b676ac53b77720e8bd80a983 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1264926591" 
	@${RM} ${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1264926591/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1264926591/sys_tmr.o ../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o: ../../../../framework/tcpip/src/common/sys_fs_wrapper.c  .generated_files/flags/kornikola/7d3d58b675e43a80d79611ad4a2ce371028ba402 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o.d" -o ${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o ../../../../framework/tcpip/src/common/sys_fs_wrapper.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1136935090/helpers.o: ../../../../framework/tcpip/src/common/helpers.c  .generated_files/flags/kornikola/b596e2bdc90238d524a45607a4d0316529e3d791 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1136935090/helpers.o.d" -o ${OBJECTDIR}/_ext/1136935090/helpers.o ../../../../framework/tcpip/src/common/helpers.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/ipv4.o: ../../../../framework/tcpip/src/ipv4.c  .generated_files/flags/kornikola/3b30bb4216d74ec7f94a167bfe7468b13097eb31 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/ipv4.o.d" -o ${OBJECTDIR}/_ext/1408260596/ipv4.o ../../../../framework/tcpip/src/ipv4.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/tcp.o: ../../../../framework/tcpip/src/tcp.c  .generated_files/flags/kornikola/76fdfaa392642f02f495b938168b6fcaf182835c .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcp.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcp.o ../../../../framework/tcpip/src/tcp.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/udp.o: ../../../../framework/tcpip/src/udp.c  .generated_files/flags/kornikola/172a2af468860100f1f977fe5de05b5e91d108ce .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/udp.o.d" -o ${OBJECTDIR}/_ext/1408260596/udp.o ../../../../framework/tcpip/src/udp.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o: ../../../../framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/kornikola/55c609f7ca1bcc87fea975028dafb02f4cc422d9 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o ../../../../framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o: ../../../../framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/kornikola/ce5f5b17f10b427423aa6939178998dce227d203 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_internal.o ../../../../framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/arp.o: ../../../../framework/tcpip/src/arp.c  .generated_files/flags/kornikola/9c5cbb3d02e98c01bc6d75c60cc2a6ec06495561 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/arp.o.d" -o ${OBJECTDIR}/_ext/1408260596/arp.o ../../../../framework/tcpip/src/arp.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/dhcp.o: ../../../../framework/tcpip/src/dhcp.c  .generated_files/flags/kornikola/4ffd92f69b9f989e0a7d1c369ee6eadcd5fab00b .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/dhcp.o.d" -o ${OBJECTDIR}/_ext/1408260596/dhcp.o ../../../../framework/tcpip/src/dhcp.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/dns.o: ../../../../framework/tcpip/src/dns.c  .generated_files/flags/kornikola/46246eb62304d005742872422ec855194d656f9e .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/dns.o.d" -o ${OBJECTDIR}/_ext/1408260596/dns.o ../../../../framework/tcpip/src/dns.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/http.o: ../../../../framework/tcpip/src/http.c  .generated_files/flags/kornikola/ca2836548bce808253503cb3907ec732d8524a10 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/http.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/http.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/http.o.d" -o ${OBJECTDIR}/_ext/1408260596/http.o ../../../../framework/tcpip/src/http.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/icmp.o: ../../../../framework/tcpip/src/icmp.c  .generated_files/flags/kornikola/7fde6089ee271b48870fb9a9fb67782bb8db9752 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/icmp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/icmp.o.d" -o ${OBJECTDIR}/_ext/1408260596/icmp.o ../../../../framework/tcpip/src/icmp.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/nbns.o: ../../../../framework/tcpip/src/nbns.c  .generated_files/flags/kornikola/ee12e18115f84e725ab56fa88f5ccb295047714a .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/nbns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/nbns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/nbns.o.d" -o ${OBJECTDIR}/_ext/1408260596/nbns.o ../../../../framework/tcpip/src/nbns.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/sntp.o: ../../../../framework/tcpip/src/sntp.c  .generated_files/flags/kornikola/ff8087fe2ad8ce8683bd9eb76fda9d57a39410c4 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/sntp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/sntp.o.d" -o ${OBJECTDIR}/_ext/1408260596/sntp.o ../../../../framework/tcpip/src/sntp.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/tcpip_announce.o: ../../../../framework/tcpip/src/tcpip_announce.c  .generated_files/flags/kornikola/a4913efc645dd4191ee612c20c4e6a1258ebcb07 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o ../../../../framework/tcpip/src/tcpip_announce.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/hash_fnv.o: ../../../../framework/tcpip/src/hash_fnv.c  .generated_files/flags/kornikola/371a6ed71918d2cf831d6f6cc8876c415169ccc1 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1408260596/hash_fnv.o ../../../../framework/tcpip/src/hash_fnv.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/oahash.o: ../../../../framework/tcpip/src/oahash.c  .generated_files/flags/kornikola/87d1fb2b2effbe42c1c7bdff6ec3cb01d8e87f6f .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/oahash.o.d" -o ${OBJECTDIR}/_ext/1408260596/oahash.o ../../../../framework/tcpip/src/oahash.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o: ../../../../framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/kornikola/4058afafb5bc143ef4f1b43fdc0726d916f37496 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o ../../../../framework/tcpip/src/tcpip_helpers.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/tcpip_manager.o: ../../../../framework/tcpip/src/tcpip_manager.c  .generated_files/flags/kornikola/b1fc1346ece76eb3266c8f795cee6b89ec2ff79d .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o ../../../../framework/tcpip/src/tcpip_manager.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/tcpip_notify.o: ../../../../framework/tcpip/src/tcpip_notify.c  .generated_files/flags/kornikola/dc425daebf00c564c6e82441aa9b365d8b813944 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o ../../../../framework/tcpip/src/tcpip_notify.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1408260596/tcpip_packet.o: ../../../../framework/tcpip/src/tcpip_packet.c  .generated_files/flags/kornikola/f48d2d59c6086d5c7a74f482bc1c41f197362854 .generated_files/flags/kornikola/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/kornikola" -I"../src/kornikola" -I"../../../../framework" -I"../src/system_config/kornikola/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o ../../../../framework/tcpip/src/tcpip_packet.c    -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/WaterLeakSensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../bin/framework/peripheral/PIC32MZ1024EFG064_peripherals.a  
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/WaterLeakSensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ../../../../bin/framework/peripheral/PIC32MZ1024EFG064_peripherals.a      -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=44960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/WaterLeakSensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../bin/framework/peripheral/PIC32MZ1024EFG064_peripherals.a 
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/WaterLeakSensor.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ../../../../bin/framework/peripheral/PIC32MZ1024EFG064_peripherals.a      -DXPRJ_kornikola=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=44960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}/xc32-bin2hex ${DISTDIR}/WaterLeakSensor.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
