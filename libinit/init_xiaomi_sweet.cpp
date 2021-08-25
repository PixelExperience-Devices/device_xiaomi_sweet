/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t sweet_global_info = {
    .hwc_value = "GLOBAL",
    .sku_value = "",

    .brand = "Redmi",
    .device = "sweet",
    .marketname = "Redmi Note 10 Pro",
    .model = "M2101K6G",

    .nfc = true,
};

static const variant_info_t sweet_eea_info = {
    .hwc_value = "EEA",
    .sku_value = "",

    .brand = "Redmi",
    .device = "sweet",
    .marketname = "Redmi Note 10 Pro",
    .model = "M2101K6G",

    .nfc = true,
};

static const variant_info_t sweetin_info = {
    .hwc_value = "INDIA",
    .sku_value = "",

    .brand = "Redmi",
    .device = "sweetin",
    .marketname = "Redmi Note 10 Pro Max",
    .model = "M2101K6I",

    .nfc = false,
};

static const std::vector<variant_info_t> variants = {
    sweet_global_info,
    sweet_eea_info,
    sweetin_info,
};

void vendor_load_properties() {
    search_variant(variants);
    set_dalvik_heap();
}
