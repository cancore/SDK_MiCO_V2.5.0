#
#  UNPUBLISHED PROPRIETARY SOURCE CODE
#  Copyright (c) 2016 MXCHIP Inc.
#
#  The contents of this file may not be disclosed to third parties, copied or
#  duplicated in any form, in whole or in part, without the prior written
#  permission of MXCHIP Corporation.
#

NAME := Lib_bluetooth_bte
PROTO_DBG=1
################################################################################
# Supported variants                                                           #
################################################################################

SUPPORTED_BT_CHIPS           := 20702B0 43341B0 20710A1 4343A0 43438A0


################################################################################
# Default settings                                                             #
################################################################################

COMPLETE_BT_CHIP_NAME := BCM$(BT_CHIP)$(BT_CHIP_REVISION)

BTEDIR := BTE
PROTO_DISP_DIR := BTE/proto_disp

BTESOURCES := \
		$(BTEDIR)/Components/hcis/hcill_proto.c \
		$(BTEDIR)/Components/hcis/hcilp.c \
		$(BTEDIR)/Components/hcis/hcisu_h4.c \
		$(BTEDIR)/Components/hcis/hciutil.c \
		$(BTEDIR)/Components/stack/brcm/brcm_ble.c \
		$(BTEDIR)/Components/stack/brcm/brcm_prm.c \
		$(BTEDIR)/Components/stack/brcm/brcm_tbfc.c \
		$(BTEDIR)/Components/stack/brcm/bte_brcm.c \
		$(BTEDIR)/Components/stack/btm/btm_acl.c \
		$(BTEDIR)/Components/stack/btm/btm_cfg.c \
		$(BTEDIR)/Components/stack/btm/btm_dev.c \
		$(BTEDIR)/Components/stack/btm/btm_devctl.c \
		$(BTEDIR)/Components/stack/btm/btm_inq.c \
		$(BTEDIR)/Components/stack/btm/btm_main.c \
		$(BTEDIR)/Components/stack/btm/btm_pm.c \
		$(BTEDIR)/Components/stack/btm/btm_sco.c \
		$(BTEDIR)/Components/stack/btm/btm_sec.c \
		$(BTEDIR)/Components/stack/btm/btm_sec_nvram.c \
		$(BTEDIR)/Components/stack/btu/btu_hcif.c \
		$(BTEDIR)/Components/stack/btu/btu_init.c \
		$(BTEDIR)/Components/stack/btu/btu_task.c \
		$(BTEDIR)/Components/stack/hcic/hcicmds.c \
		$(BTEDIR)/Components/stack/l2cap/l2c_api.c \
		$(BTEDIR)/Components/stack/l2cap/l2c_csm.c \
		$(BTEDIR)/Components/stack/l2cap/l2c_fcr.c \
		$(BTEDIR)/Components/stack/l2cap/l2c_fcr_patch.c \
		$(BTEDIR)/Components/stack/l2cap/l2c_link.c \
		$(BTEDIR)/Components/stack/l2cap/l2c_main.c \
		$(BTEDIR)/Components/stack/l2cap/l2c_utils.c \
		$(BTEDIR)/Components/stack/sdp/sdp_api.c \
		$(BTEDIR)/Components/stack/sdp/sdp_db.c \
		$(BTEDIR)/Components/stack/sdp/sdp_discovery.c \
		$(BTEDIR)/Components/stack/sdp/sdp_main.c \
		$(BTEDIR)/Components/stack/sdp/sdp_server.c \
		$(BTEDIR)/Components/stack/sdp/sdp_utils.c \
		$(BTEDIR)/Components/stack/wbt/wbt_ext.c \
		$(BTEDIR)/Projects/bte/main/bte_hcisu.c \
		$(BTEDIR)/Projects/bte/main/bte_init.c \
		$(BTEDIR)/Projects/bte/main/bte_load.c \
		$(BTEDIR)/Projects/bte/main/bte_version.c

BTE_RFCOMM_SOURCES := \
		$(BTEDIR)/Components/stack/rfcomm/port_api.c \
		$(BTEDIR)/Components/stack/rfcomm/port_rfc.c \
		$(BTEDIR)/Components/stack/rfcomm/port_utils.c \
		$(BTEDIR)/Components/stack/rfcomm/rfc_l2cap_if.c \
		$(BTEDIR)/Components/stack/rfcomm/rfc_mx_fsm.c \
		$(BTEDIR)/Components/stack/rfcomm/rfc_port_fsm.c \
		$(BTEDIR)/Components/stack/rfcomm/rfc_port_if.c \
		$(BTEDIR)/Components/stack/rfcomm/rfc_ts_frames.c \
		$(BTEDIR)/Components/stack/rfcomm/rfc_utils.c


#####ifndef MINDRAY                    ####oscar for mindray

BTE_AVRC_SOURCES := \
		$(BTEDIR)/Components/stack/avrc/avrc_api.c \
		$(BTEDIR)/Components/stack/avrc/avrc_sdp.c \
		$(BTEDIR)/Components/stack/avrc/avrc_opt.c \
		$(BTEDIR)/Components/stack/avrc/avrc_bld_ct.c \
		$(BTEDIR)/Components/stack/avrc/avrc_bld_tg.c \
		$(BTEDIR)/Components/stack/avrc/avrc_pars_ct.c \
		$(BTEDIR)/Components/stack/avrc/avrc_pars_tg.c \
		$(BTEDIR)/Components/stack/avrc/avrc_utils.c \
		$(BTEDIR)/Components/stack/wiced/wrapper/wiced_bt_avrc_wrapper.c

BTE_AVCT_SOURCES := \
		$(BTEDIR)/Components/stack/avct/avct_api.c \
		$(BTEDIR)/Components/stack/avct/avct_ccb.c \
		$(BTEDIR)/Components/stack/avct/avct_l2c.c \
		$(BTEDIR)/Components/stack/avct/avct_l2c_br.c \
		$(BTEDIR)/Components/stack/avct/avct_lcb.c \
		$(BTEDIR)/Components/stack/avct/avct_bcb_act.c \
		$(BTEDIR)/Components/stack/avct/avct_lcb_act.c

BTE_A2DP_SOURCES := \
		$(BTEDIR)/Components/stack/a2dp/a2d_api.c \
		$(BTEDIR)/Components/stack/a2dp/a2d_sbc.c \
		$(BTEDIR)/Components/stack/a2dp/a2d_m12.c \
		$(BTEDIR)/Components/stack/a2dp/a2d_m24.c \
		$(BTEDIR)/Components/stack/wiced/wrapper/wiced_bt_a2d_wrapper.c

BTE_AVDT_SOURCES := \
		$(BTEDIR)/Components/stack/avdt/avdt_ad.c \
		$(BTEDIR)/Components/stack/avdt/avdt_api.c \
		$(BTEDIR)/Components/stack/avdt/avdt_ccb.c \
		$(BTEDIR)/Components/stack/avdt/avdt_l2c.c \
		$(BTEDIR)/Components/stack/avdt/avdt_scb.c \
		$(BTEDIR)/Components/stack/avdt/avdt_scb_act.c \
		$(BTEDIR)/Components/stack/avdt/avdt_msg.c \
		$(BTEDIR)/Components/stack/avdt/avdt_ccb_act.c \
		$(BTEDIR)/Components/stack/wiced/wrapper/wiced_bt_avdt_wrapper.c

#####endif



BTE_GATT_SMP_SOURCES := \
		$(BTEDIR)/Components/stack/gatt/att_protocol.c \
		$(BTEDIR)/Components/stack/gatt/gatt_attr.c \
		$(BTEDIR)/Components/stack/gatt/gatt_cl.c \
		$(BTEDIR)/Components/stack/gatt/gatt_sr.c \
		$(BTEDIR)/Components/stack/gatt/gatt_api.c \
		$(BTEDIR)/Components/stack/gatt/gatt_auth.c \
		$(BTEDIR)/Components/stack/gatt/gatt_main.c \
		$(BTEDIR)/Components/stack/gatt/gatt_utils.c \
		$(BTEDIR)/Components/stack/gatt/legattdb/legattdb.c \
		$(BTEDIR)/Components/stack/smp/aes.c \
		$(BTEDIR)/Components/stack/smp/p_256_curvepara.c \
		$(BTEDIR)/Components/stack/smp/p_256_ecc_pp.c \
		$(BTEDIR)/Components/stack/smp/p_256_multprecision.c \
		$(BTEDIR)/Components/stack/smp/smp_act.c \
		$(BTEDIR)/Components/stack/smp/smp_api.c \
		$(BTEDIR)/Components/stack/smp/smp_br_main.c \
		$(BTEDIR)/Components/stack/smp/smp_cmac.c \
		$(BTEDIR)/Components/stack/smp/smp_keys.c \
		$(BTEDIR)/Components/stack/smp/smp_l2c.c \
		$(BTEDIR)/Components/stack/smp/smp_main.c \
		$(BTEDIR)/Components/stack/smp/smp_utils.c \
		$(BTEDIR)/Components/stack/hcic/hciblecmds.c \
		$(BTEDIR)/Components/stack/l2cap/l2c_ble.c \
		$(BTEDIR)/Components/stack/l2cap/l2c_ble_conn.c \
		$(BTEDIR)/Components/stack/l2cap/l2c_ble_utils.c \
		$(BTEDIR)/Components/stack/btm/btm_ble.c \
		$(BTEDIR)/Components/stack/btm/btm_ble_addr.c \
		$(BTEDIR)/Components/stack/btm/btm_ble_bgconn.c \
		$(BTEDIR)/Components/stack/btm/btm_ble_gap.c \
		$(BTEDIR)/Components/stack/btm/btm_ble_privacy.c \
		$(BTEDIR)/Components/stack/gap/gap_api.c \
		$(BTEDIR)/Components/stack/gap/gap_ble.c \
		$(BTEDIR)/Components/stack/gap/gap_conn.c \
		$(BTEDIR)/Components/stack/gap/gap_utils.c \
		$(BTEDIR)/Components/stack/wiced/wrapper/wiced_bt_l2c_le_wrapper.c \
		$(BTEDIR)/Components/stack/wiced/wrapper/wiced_bt_ble_wrapper.c \
		$(BTEDIR)/Components/stack/wiced/wrapper/wiced_bt_dev_wrapper.c \
		$(BTEDIR)/Components/stack/wiced/wrapper/wiced_bt_gatt_wrapper.c \
		$(BTEDIR)/Components/stack/wiced/wrapper/wiced_bt_rfcomm_wrapper.c \
		$(BTEDIR)/Components/stack/wiced/wrapper/wiced_bt_sdp_wrapper.c \
		$(BTEDIR)/Components/stack/wiced/wiced_bt_gatt.c \
		$(BTEDIR)/Components/stack/wiced/wiced_bt_sdp.c



GKI_SOURCES := \
		$(BTEDIR)/Components/gki/common/gki_buffer.c \
		$(BTEDIR)/Components/gki/common/gki_debug.c \
		$(BTEDIR)/Components/gki/common/gki_time.c \
		$(BTEDIR)/Components/gki/wiced/gki_wiced.c

UDRV_SOURCES := \
		$(BTEDIR)/Components/udrv/wiced/upio_wiced.c \
		$(BTEDIR)/Components/udrv/wiced/userial_wiced.c
		
ifdef PROTO_DBG
PROTODISP_SOURCES := \
		$(PROTO_DISP_DIR)/hcidisp.c 
endif

PROTODISP_INCLUDES := \
		$(PROTO_DISP_DIR)


BTEINCLUDES := \
		$(BTEDIR)/Components/hcis \
		$(BTEDIR)/Components/hcis/include \
		$(BTEDIR)/Components/stack/include \
		$(BTEDIR)/Components/stack/avrc \
		$(BTEDIR)/Components/stack/avct \
		$(BTEDIR)/Components/stack/avdt \
		$(BTEDIR)/Components/stack/a2dp \
		$(BTEDIR)/Components/stack/btm \
		$(BTEDIR)/Components/stack/brcm \
		$(BTEDIR)/Components/stack/l2cap \
		$(BTEDIR)/Components/stack/sdp \
		$(BTEDIR)/Components/stack/gap \
		$(BTEDIR)/Components/stack/gatt \
		$(BTEDIR)/Components/stack/gatt/legattdb/inc \
		$(BTEDIR)/Components/stack/smp \
		$(BTEDIR)/Components/stack/hid \
		$(BTEDIR)/Components/stack/wbt \
		$(BTEDIR)/Components/stack/wiced \
		$(BTEDIR)/Components/rpc/include
		

$(NAME)_SOURCES := 	\
					$(BTEDIR)/Projects/bte/embedded/wiced/lib/wiced_stubs.c  \
					$(BTEDIR)/Projects/bte/embedded/wiced/lib/wiced_logmsg.c \
					$(BTEDIR)/Projects/bte/embedded/wiced/lib/wiced_bt_main.c \
					$(GKI_SOURCES) \
					$(BTESOURCES) \
					$(BTE_GATT_SMP_SOURCES) \
					$(BTE_RFCOMM_SOURCES) \
					$(PROTODISP_SOURCES)
	
					
ifndef BUILD_BTE_LIB	

			
$(NAME)_SOURCES +=	$(BTEDIR)/Projects/bte/embedded/wiced/lib/fwpatches/$(COMPLETE_BT_CHIP_NAME)/brcm_patch.c \
					$(BTEDIR)/Projects/bte/embedded/wiced/lib/wiced_post_reset.c \
					$(BTEDIR)/Projects/bte/embedded/wiced/lib/wiced_bt_nvram_access.c \
					$(BTEDIR)/Projects/bte/embedded/wiced/lib/wiced_bt_hcd.c  \
					$(UDRV_SOURCES)
endif

$(NAME)_INCLUDES := \
					$(BTEDIR)/Projects/bte/embedded/wiced/lib \
					$(BTEINCLUDES)

$(NAME)_DEFINES := WICED_BTE_LIB

GLOBAL_DEFINES += 	BUILDCFG BLUETOOTH_BTE \
GATT_ENABLE WBT_EXT_ENABLE SCO_ENABLE A2DP_ENABLE

GLOBAL_INCLUDES += \
					$(INCLUDE_PATH_PREFIX). \
					$(INCLUDE_PATH_PREFIX)include \
					$(INCLUDE_PATH_PREFIX)$(BTEDIR)/Components/gki/common \
					$(INCLUDE_PATH_PREFIX)$(BTEDIR)/Components/gki/wiced \
					$(INCLUDE_PATH_PREFIX)$(BTEDIR)/Components/udrv/include \
					$(INCLUDE_PATH_PREFIX)$(BTEDIR)/Projects/bte/main \
					$(INCLUDE_PATH_PREFIX)$(BTEDIR)/Projects/bte/embedded/wiced/include \
					$(INCLUDE_PATH_PREFIX)$(BTEDIR)/Components/stack/include \
					$(INCLUDE_PATH_PREFIX)$(PROTODISP_INCLUDES) \
					$(INCLUDE_PATH_PREFIX)$(BTEDIR)/Projects/bte/embedded/wiced/lib
