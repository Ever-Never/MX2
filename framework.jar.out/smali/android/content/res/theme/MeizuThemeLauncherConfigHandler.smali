.class public Landroid/content/res/theme/MeizuThemeLauncherConfigHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "MeizuThemeLauncherConfigHandler.java"


# static fields
.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final TAG_CONFIG:Ljava/lang/String; = "config"

.field public static final TAG_ROOT:Ljava/lang/String; = "meizu_theme_values"


# instance fields
.field private mAttrName:Ljava/lang/String;

.field private mCurrentFlag:Z

.field private mPreTag:Ljava/lang/String;

.field private mtlci:Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;


# direct methods
.method public constructor <init>(Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 14
    iput-object v1, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHandler;->mPreTag:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHandler;->mAttrName:Ljava/lang/String;

    .line 16
    iput-boolean v0, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHandler;->mCurrentFlag:Z

    .line 20
    iput-boolean v0, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHandler;->mCurrentFlag:Z

    .line 21
    iput-object p1, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHandler;->mtlci:Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;

    .line 22
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHandler;->mPreTag:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 58
    .local v0, con:Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHandler;->mPreTag:Ljava/lang/String;

    const-string v2, "config"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/String;

    .end local v0           #con:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p3}, Ljava/lang/String;-><init>([CII)V

    .line 60
    .restart local v0       #con:Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHandler;->mtlci:Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;

    iget-object v2, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHandler;->mAttrName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHandler;->mPreTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 45
    .local v0, tagName:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string/jumbo v1, "meizu_theme_values"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHandler;->mCurrentFlag:Z

    .line 50
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void

    .end local v0           #tagName:Ljava/lang/String;
    :cond_1
    move-object v0, p3

    .line 44
    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p2

    .line 28
    .local v0, tagName:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string/jumbo v1, "meizu_theme_values"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHandler;->mCurrentFlag:Z

    .line 33
    :cond_0
    iget-boolean v1, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHandler;->mCurrentFlag:Z

    if-eqz v1, :cond_1

    .line 34
    const-string v1, "config"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    const-string/jumbo v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHandler;->mAttrName:Ljava/lang/String;

    .line 39
    :cond_1
    iput-object p2, p0, Landroid/content/res/theme/MeizuThemeLauncherConfigHandler;->mPreTag:Ljava/lang/String;

    .line 40
    return-void

    .end local v0           #tagName:Ljava/lang/String;
    :cond_2
    move-object v0, p3

    .line 27
    goto :goto_0
.end method
