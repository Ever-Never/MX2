.class public Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;
.super Ljava/lang/Object;
.source "MeizuThemeLauncherConfigHelper.java"


# instance fields
.field public final DRAW_DATE:Ljava/lang/String;

.field public final DRAW_SHADOW:Ljava/lang/String;

.field public final LOCKSCREEN_CHARGING_ANIM:Ljava/lang/String;

.field private mConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mXmlhandler:Landroid/content/res/theme/MeizuThemeLauncherConfigHandler;

.field private mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "draw_date"

    iput-object v0, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;->DRAW_DATE:Ljava/lang/String;

    .line 20
    const-string v0, "draw_shadow"

    iput-object v0, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;->DRAW_SHADOW:Ljava/lang/String;

    .line 21
    const-string v0, "lockscreen_charging_anim"

    iput-object v0, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;->LOCKSCREEN_CHARGING_ANIM:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;->mConfig:Ljava/util/HashMap;

    .line 28
    invoke-virtual {p0}, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;->load()V

    .line 29
    return-void
.end method

.method private initMeizuThemeZipManager()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/content/res/theme/MeizuThemeZipManager;

    invoke-direct {v0}, Landroid/content/res/theme/MeizuThemeZipManager;-><init>()V

    iput-object v0, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    .line 49
    :cond_0
    return-void
.end method

.method private parseConfigFromXml(Ljava/io/InputStream;)V
    .locals 6
    .parameter "is"

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 55
    :cond_0
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 56
    .local v3, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 57
    .local v2, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 58
    .local v1, reader:Lorg/xml/sax/XMLReader;
    new-instance v4, Landroid/content/res/theme/MeizuThemeLauncherConfigHandler;

    invoke-direct {v4, p0}, Landroid/content/res/theme/MeizuThemeLauncherConfigHandler;-><init>(Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;)V

    iput-object v4, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;->mXmlhandler:Landroid/content/res/theme/MeizuThemeLauncherConfigHandler;

    .line 59
    iget-object v4, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;->mXmlhandler:Landroid/content/res/theme/MeizuThemeLauncherConfigHandler;

    invoke-interface {v1, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 60
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 61
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 62
    .end local v1           #reader:Lorg/xml/sax/XMLReader;
    .end local v2           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v3           #spf:Ljavax/xml/parsers/SAXParserFactory;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 63
    :catch_1
    move-exception v0

    .line 64
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MeizuTheme"

    const-string/jumbo v5, "themeValueParser"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 65
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "MeizuTheme"

    const-string/jumbo v5, "themeValueParser"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;->load()V

    .line 78
    :cond_0
    iget-object v0, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public load()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, is:Ljava/io/InputStream;
    iget-object v2, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    if-nez v2, :cond_0

    .line 37
    invoke-direct {p0}, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;->initMeizuThemeZipManager()V

    .line 39
    :cond_0
    const-string/jumbo v1, "theme_values.xml"

    .line 40
    .local v1, resPath:Ljava/lang/String;
    iget-object v2, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    invoke-virtual {v2, v1}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromIcon(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    invoke-direct {p0, v0}, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;->parseConfigFromXml(Ljava/io/InputStream;)V

    .line 44
    :cond_1
    return-void
.end method

.method public setConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method
