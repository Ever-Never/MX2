.class final Lcom/android/server/power/AmbientLuxBox;
.super Ljava/lang/Object;
.source "AmbientLuxBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;,
        Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Iphone;,
        Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_google;,
        Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;,
        Lcom/android/server/power/AmbientLuxBox$AmbientLuxListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AmbientLuxBox"


# instance fields
.field private mAutoBrightnessLevels:[I

.field private mContext:Landroid/content/Context;

.field private final mLightSensorWarmUpTimeConfig:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/AmbientLuxBox;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/power/AmbientLuxBox;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/android/server/power/AmbientLuxBox;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/AmbientLuxBox;->mLightSensorWarmUpTimeConfig:I

    .line 57
    iget-object v0, p0, Lcom/android/server/power/AmbientLuxBox;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/AmbientLuxBox;->mAutoBrightnessLevels:[I

    .line 59
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/server/power/AmbientLuxBox;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/power/AmbientLuxBox;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/server/power/AmbientLuxBox;->mLightSensorWarmUpTimeConfig:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/power/AmbientLuxBox;F)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/power/AmbientLuxBox;->getBrightnessLevel(F)I

    move-result v0

    return v0
.end method

.method private getBrightnessLevel(F)I
    .locals 2
    .parameter "sensorValue"

    .prologue
    .line 63
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/AmbientLuxBox;->mAutoBrightnessLevels:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/server/power/AmbientLuxBox;->mAutoBrightnessLevels:[I

    aget v1, v1, v0

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 68
    :cond_0
    return v0

    .line 63
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getALBinstance(Landroid/os/Looper;)Lcom/android/server/power/AmbientLuxBox$AmbientLuxBoxExecutor;
    .locals 1
    .parameter "looper"

    .prologue
    .line 72
    new-instance v0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;-><init>(Lcom/android/server/power/AmbientLuxBox;Landroid/os/Looper;)V

    return-object v0
.end method
