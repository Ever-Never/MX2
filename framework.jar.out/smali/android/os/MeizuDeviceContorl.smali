.class public Landroid/os/MeizuDeviceContorl;
.super Ljava/lang/Object;
.source "MeizuDeviceContorl.java"


# static fields
.field private static DEBUG:Z = false

.field public static final DEVCFG_ACTIVATE_STATS:I = 0x5

.field public static final DEVCFG_BUTTON_LIGHT:I = 0x2

.field public static final DEVCFG_GRAVITY_SENSOR:I = 0x4

.field public static final DEVCFG_IR_CALIBRATE:I = 0x0

.field public static final DEVCFG_LIGHT_SENSOR:I = 0x3

.field public static final DEVCFG_MAINTAIN_STATE:I = 0x6

.field public static final DEVCFG_MAX_INT_FIELDS:I = 0x7

.field public static final DEVCFG_SHOPDEMO_TOOL:I = 0x8

.field public static final DEVCFG_TOUCH_SCREEN:I = 0x1

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "MeizuDeviceContorl"

    sput-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static adjustGravitySensor([I)I
    .locals 2
    .parameter "values"

    .prologue
    .line 198
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    const-string v1, "adjustGravitySensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_adjust_gravity_sensor([I)I

    move-result v0

    return v0
.end method

.method public static calibrateGp2ap()I
    .locals 2

    .prologue
    .line 235
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    const-string v1, "calibrateGp2ap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->native_calibrate_gp2ap()I

    move-result v0

    return v0
.end method

.method public static calibrateGravitySensor()I
    .locals 2

    .prologue
    .line 210
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    const-string v1, "calibrateGravitySensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->native_calibrate_gravity_sensor()I

    move-result v0

    return v0
.end method

.method public static enableTouchAdjust()I
    .locals 2

    .prologue
    .line 185
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    const-string v1, "enableTouchAdjust"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->native_enable_touch_adjust()I

    move-result v0

    return v0
.end method

.method private static native native_adjust_gravity_sensor([I)I
.end method

.method private static native native_calibrate_gp2ap()I
.end method

.method private static native native_calibrate_gravity_sensor()I
.end method

.method private static native native_enable_touch_adjust()I
.end method

.method private static native native_read_auto_cabc()I
.end method

.method private static native native_read_cfgparam(I[I)I
.end method

.method private static native native_read_cpu_value()I
.end method

.method private static native native_read_gp2ap()I
.end method

.method private static native native_read_gravity_value([I)I
.end method

.method private static native native_reset_calibration()I
.end method

.method private static native native_save_cpu_value(I)I
.end method

.method private static native native_set_auto_cabc(I)I
.end method

.method private static native native_set_hdmi_cable_status(I)I
.end method

.method private static native native_set_key_wakeup_type(I)I
.end method

.method private static native native_switch_usb_fast_charger(I)I
.end method

.method private static native native_update_led_brightness(I)I
.end method

.method private static native native_write_cfgparam(I[I)I
.end method

.method private static native native_write_gp2ap(I)I
.end method

.method public static readAutoCabc()I
    .locals 4

    .prologue
    .line 113
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->native_read_auto_cabc()I

    move-result v0

    .line 114
    .local v0, ret:I
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 115
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readAutoCabc--value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    return v0
.end method

.method public static readCPUfreq()I
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->native_read_cpu_value()I

    move-result v0

    .line 73
    .local v0, ret:I
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 74
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readCPUfreq----value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    return v0
.end method

.method public static readCfgParam(I[I)I
    .locals 4
    .parameter "dev"
    .parameter "info"

    .prologue
    .line 170
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 171
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readCfgParam dev:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    invoke-static {p0, p1}, Landroid/os/MeizuDeviceContorl;->native_read_cfgparam(I[I)I

    move-result v0

    .line 174
    .local v0, ret:I
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 175
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readCfgParam dev over:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_1
    return v0
.end method

.method public static readGp2apValue()I
    .locals 4

    .prologue
    .line 248
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->native_read_gp2ap()I

    move-result v0

    .line 249
    .local v0, ret:I
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 250
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readGp2apValue--value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    return v0
.end method

.method public static readGravityValue([I)I
    .locals 2
    .parameter "values"

    .prologue
    .line 223
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readGravityValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_read_gravity_value([I)I

    move-result v0

    return v0
.end method

.method public static resetCalibration()I
    .locals 4

    .prologue
    .line 86
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->native_reset_calibration()I

    move-result v0

    .line 87
    .local v0, ret:I
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 88
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetCalibration----value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    return v0
.end method

.method public static saveCPUfreq(I)I
    .locals 3
    .parameter "value"

    .prologue
    .line 59
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveCPUfreq----value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_save_cpu_value(I)I

    move-result v0

    return v0
.end method

.method public static saveKeyWakeupType(I)I
    .locals 3
    .parameter "value"

    .prologue
    .line 128
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveKeyWakeupType value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_set_key_wakeup_type(I)I

    move-result v0

    return v0
.end method

.method public static setAutoCabc(I)I
    .locals 3
    .parameter "value"

    .prologue
    .line 100
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoCabc--value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_set_auto_cabc(I)I

    move-result v0

    return v0
.end method

.method public static set_hdmi_cable_status(I)I
    .locals 4
    .parameter "value"

    .prologue
    .line 288
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 289
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set_hdmi_cable_status value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_set_hdmi_cable_status(I)I

    move-result v0

    .line 292
    .local v0, ret:I
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 293
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set_hdmi_cable_status--value overy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1
    return v0
.end method

.method public static switchUsbFastCharger(I)I
    .locals 3
    .parameter "value"

    .prologue
    .line 142
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchUsbFastCharger value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_switch_usb_fast_charger(I)I

    move-result v0

    return v0
.end method

.method public static updateLedBrightness(I)I
    .locals 7
    .parameter "value"

    .prologue
    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 279
    .local v1, time:J
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_update_led_brightness(I)I

    move-result v0

    .line 280
    .local v0, ret:I
    sget-boolean v3, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 281
    sget-object v3, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateLedBrightness--value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "time cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    return v0
.end method

.method public static writeCfgParam(I[I)I
    .locals 3
    .parameter "dev"
    .parameter "info"

    .prologue
    .line 156
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeCfgParam dev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    invoke-static {p0, p1}, Landroid/os/MeizuDeviceContorl;->native_write_cfgparam(I[I)I

    move-result v0

    return v0
.end method

.method public static writeGp2apValue(I)I
    .locals 4
    .parameter "value"

    .prologue
    .line 262
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 263
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeGp2apValue value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_write_gp2ap(I)I

    move-result v0

    .line 266
    .local v0, ret:I
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 267
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeGp2apValue--value overy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_1
    return v0
.end method
