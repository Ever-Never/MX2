.class public Lcom/meizu/widget/SmartBarConfiguration;
.super Ljava/lang/Object;
.source "SmartBarConfiguration.java"


# static fields
.field private static final CONFIG_BUTTON_PADDING_INDEX:I = 0x3

.field private static final CONFIG_BUTTON_WIDTH_INDEX:I = 0x2

.field private static final CONFIG_PADDING_FOR_4_INDEX:I = 0x1

.field private static final CONFIG_PADDING_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SmartBarConfiguration"

.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/meizu/widget/SmartBarConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mButtonPadding:I

.field private mButtonWidth:I

.field private mDensityScale:F

.field private mExpandedTouchWidth:I

.field private mPadding:I

.field private mPaddingFor4:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/meizu/widget/SmartBarConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 10
    .parameter "context"
    .parameter "padding"

    .prologue
    const/4 v9, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v9, p0, Lcom/meizu/widget/SmartBarConfiguration;->mPadding:I

    .line 34
    iput v9, p0, Lcom/meizu/widget/SmartBarConfiguration;->mPaddingFor4:I

    .line 35
    iput v9, p0, Lcom/meizu/widget/SmartBarConfiguration;->mButtonWidth:I

    .line 36
    iput v9, p0, Lcom/meizu/widget/SmartBarConfiguration;->mButtonPadding:I

    .line 42
    iput v9, p0, Lcom/meizu/widget/SmartBarConfiguration;->mExpandedTouchWidth:I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    iput v7, p0, Lcom/meizu/widget/SmartBarConfiguration;->mDensityScale:F

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107004f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, configString:[Ljava/lang/String;
    const/4 v7, 0x4

    new-array v0, v7, [I

    .line 58
    .local v0, config:[I
    const/4 v6, 0x0

    .line 59
    .local v6, result:Z
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_0

    .line 61
    aget-object v7, v1, v3

    invoke-direct {p0, v7, v0}, Lcom/meizu/widget/SmartBarConfiguration;->parseConfig(Ljava/lang/String;[I)I

    move-result v7

    if-ne v7, p2, :cond_3

    .line 62
    const/4 v6, 0x1

    .line 68
    :cond_0
    if-eqz v6, :cond_1

    sget-object v7, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 69
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040554

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, defaultConfig:Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/meizu/widget/SmartBarConfiguration;->parseConfig(Ljava/lang/String;[I)I

    .line 74
    .end local v2           #defaultConfig:Ljava/lang/String;
    :cond_2
    aget v7, v0, v9

    iput v7, p0, Lcom/meizu/widget/SmartBarConfiguration;->mPadding:I

    .line 75
    const/4 v7, 0x1

    aget v7, v0, v7

    iput v7, p0, Lcom/meizu/widget/SmartBarConfiguration;->mPaddingFor4:I

    .line 76
    const/4 v7, 0x2

    aget v7, v0, v7

    iput v7, p0, Lcom/meizu/widget/SmartBarConfiguration;->mButtonWidth:I

    .line 77
    const/4 v7, 0x3

    aget v7, v0, v7

    iput v7, p0, Lcom/meizu/widget/SmartBarConfiguration;->mButtonPadding:I

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 80
    .local v4, metrics:Landroid/util/DisplayMetrics;
    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 81
    .local v5, portScreenWidth:I
    iget v7, p0, Lcom/meizu/widget/SmartBarConfiguration;->mPadding:I

    iget v8, p0, Lcom/meizu/widget/SmartBarConfiguration;->mButtonPadding:I

    add-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/meizu/widget/SmartBarConfiguration;->mButtonWidth:I

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    sub-int v7, v5, v7

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/meizu/widget/SmartBarConfiguration;->mExpandedTouchWidth:I

    .line 82
    return-void

    .line 59
    .end local v4           #metrics:Landroid/util/DisplayMetrics;
    .end local v5           #portScreenWidth:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private dp2Px(F)I
    .locals 1
    .parameter "dp"

    .prologue
    .line 110
    iget v0, p0, Lcom/meizu/widget/SmartBarConfiguration;->mDensityScale:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method public static get(Landroid/content/Context;)Lcom/meizu/widget/SmartBarConfiguration;
    .locals 5
    .parameter "context"

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mz_smartbar_padding_value"

    const/16 v4, 0x8c

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 25
    .local v1, padding:I
    sget-object v2, Lcom/meizu/widget/SmartBarConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/SmartBarConfiguration;

    .line 26
    .local v0, config:Lcom/meizu/widget/SmartBarConfiguration;
    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/meizu/widget/SmartBarConfiguration;

    .end local v0           #config:Lcom/meizu/widget/SmartBarConfiguration;
    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/SmartBarConfiguration;-><init>(Landroid/content/Context;I)V

    .line 28
    .restart local v0       #config:Lcom/meizu/widget/SmartBarConfiguration;
    sget-object v2, Lcom/meizu/widget/SmartBarConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    :cond_0
    return-object v0
.end method

.method private parseConfig(Ljava/lang/String;[I)I
    .locals 6
    .parameter "value"
    .parameter "outConfig"

    .prologue
    const/4 v5, 0x0

    .line 92
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, valueArray:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_1

    .line 95
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 96
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, subString:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/meizu/widget/SmartBarConfiguration;->dp2Px(F)I

    move-result v4

    aput v4, p2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v2           #subString:Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .restart local v2       #subString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/NumberFormatException;
    aput v5, p2, v1

    goto :goto_1

    .line 103
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v2           #subString:Ljava/lang/String;
    :cond_0
    aput v5, p2, v1

    goto :goto_1

    .line 106
    :cond_1
    aget v4, p2, v5

    return v4
.end method


# virtual methods
.method public getButtonPadding()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/meizu/widget/SmartBarConfiguration;->mButtonPadding:I

    return v0
.end method

.method public getButtonWidth()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/meizu/widget/SmartBarConfiguration;->mButtonWidth:I

    return v0
.end method

.method public getExpandedTouchWidth()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/meizu/widget/SmartBarConfiguration;->mExpandedTouchWidth:I

    return v0
.end method

.method public getHorizontalPadding()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/meizu/widget/SmartBarConfiguration;->mPadding:I

    return v0
.end method

.method public getHorizontalPaddingFor4()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/meizu/widget/SmartBarConfiguration;->mPaddingFor4:I

    return v0
.end method
