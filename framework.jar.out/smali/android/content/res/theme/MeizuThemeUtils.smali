.class public Landroid/content/res/theme/MeizuThemeUtils;
.super Ljava/lang/Object;
.source "MeizuThemeUtils.java"


# static fields
.field public static final DEF_ICON:Ljava/lang/String; = "def_icon.png"

.field public static final DEF_RES_DPI:Ljava/lang/String; = "xhdpi/"

.field private static final DISPLAY:[Ljava/lang/String; = null

.field public static final DPI_STRING:Ljava/lang/String; = "dpi"

.field public static final FILE_THEME_VALUE:Ljava/lang/String; = "theme_values.xml"

.field public static final FRAMEWORK_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final FRAMEWORK_PATH_NAME:Ljava/lang/String; = "framework-res"

.field public static final ICON_BACKGROUND:Ljava/lang/String; = "icon_background.png"

.field public static final ICON_BORDER:Ljava/lang/String; = "icon_border.png"

.field public static final ICON_MASK:Ljava/lang/String; = "icon_mask.png"

.field public static final ICON_PATH_NAME:Ljava/lang/String; = "icons"

.field public static final MX3_MATCH_OLD_THEME:Ljava/lang/String; = "res/drawable-sw432dp-400dpi/"

.field public static final MX3_NEW_PATH:Ljava/lang/String; = "drawable-400dpi"

.field public static final MX3_OLD_PATH:Ljava/lang/String; = "drawable-sw432dp-400dpi"

.field private static final PIXELS:[Ljava/lang/String; = null

.field public static final PNG:Ljava/lang/String; = ".png"

.field public static final SHORTCUT_BACKGROUND:Ljava/lang/String; = "shortcut_background.png"

.field public static final THEME_DATA_PATH:Ljava/lang/String; = "/data/mtheme/"

.field public static final THEME_DEBUG:Z = false

.field public static final THEME_DEBUG_TAG:Ljava/lang/String; = "MeizuTheme"

.field public static final THEME_SYSTEM_PATH:Ljava/lang/String; = "/system/mtheme/"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "800_1280"

    aput-object v1, v0, v2

    const-string v1, "640_960"

    aput-object v1, v0, v3

    const-string v1, "1080_1800"

    aput-object v1, v0, v4

    sput-object v0, Landroid/content/res/theme/MeizuThemeUtils;->DISPLAY:[Ljava/lang/String;

    .line 24
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "800x1280"

    aput-object v1, v0, v2

    const-string v1, "640x960"

    aput-object v1, v0, v3

    const-string v1, "1080x1800"

    aput-object v1, v0, v4

    sput-object v0, Landroid/content/res/theme/MeizuThemeUtils;->PIXELS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModelDisplyPixels()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    sget-object v0, Landroid/os/Build;->IS_MX3:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Landroid/content/res/theme/MeizuThemeUtils;->PIXELS:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 54
    :goto_0
    return-object v0

    .line 49
    :cond_0
    sget-object v0, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sget-object v0, Landroid/content/res/theme/MeizuThemeUtils;->PIXELS:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0

    .line 51
    :cond_1
    sget-object v0, Landroid/os/Build;->IS_M9:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->IS_MX:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    :cond_2
    sget-object v0, Landroid/content/res/theme/MeizuThemeUtils;->PIXELS:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 54
    :cond_3
    sget-object v0, Landroid/content/res/theme/MeizuThemeUtils;->PIXELS:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static getModelFileName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    sget-object v0, Landroid/os/Build;->IS_MX3:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/content/res/theme/MeizuThemeUtils;->DISPLAY:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    .line 34
    :cond_0
    sget-object v0, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/content/res/theme/MeizuThemeUtils;->DISPLAY:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_1
    sget-object v0, Landroid/os/Build;->IS_M9:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->IS_MX:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/content/res/theme/MeizuThemeUtils;->DISPLAY:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/content/res/theme/MeizuThemeUtils;->DISPLAY:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
