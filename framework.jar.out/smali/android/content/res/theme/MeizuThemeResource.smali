.class public Landroid/content/res/theme/MeizuThemeResource;
.super Ljava/lang/Object;
.source "MeizuThemeResource.java"


# instance fields
.field private mColors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/theme/MeizuThemeColorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDimensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/theme/MeizuThemeDimensionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsWaitingLoad:Z

.field private mOwner:Landroid/content/res/Resources;

.field private mPackageName:Ljava/lang/String;

.field private mXmlhandler:Landroid/content/res/theme/MeizuThemeXmlHelper;

.field private mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 2
    .parameter "packageName"
    .parameter "resources"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mColors:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mDimensions:Ljava/util/Map;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mIsWaitingLoad:Z

    .line 36
    iput-object p1, p0, Landroid/content/res/theme/MeizuThemeResource;->mPackageName:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/content/res/theme/MeizuThemeZipManager;

    invoke-direct {v0}, Landroid/content/res/theme/MeizuThemeZipManager;-><init>()V

    iput-object v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    .line 38
    new-instance v0, Landroid/content/res/theme/MeizuThemeXmlHelper;

    invoke-direct {v0, p0}, Landroid/content/res/theme/MeizuThemeXmlHelper;-><init>(Landroid/content/res/theme/MeizuThemeResource;)V

    iput-object v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mXmlhandler:Landroid/content/res/theme/MeizuThemeXmlHelper;

    .line 39
    iput-object p2, p0, Landroid/content/res/theme/MeizuThemeResource;->mOwner:Landroid/content/res/Resources;

    .line 41
    iget-object v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getSystemThemeManager()Landroid/content/res/theme/MeizuThemeZipManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/theme/MeizuThemeZipManager;->setSystemThemeManager(Landroid/content/res/theme/MeizuThemeZipManager;)V

    .line 42
    invoke-virtual {p0}, Landroid/content/res/theme/MeizuThemeResource;->load()V

    .line 43
    return-void
.end method

.method public static get3rdPartThemeIcon(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "resPath"

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, iStream:Ljava/io/InputStream;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getSystemThemeManager()Landroid/content/res/theme/MeizuThemeZipManager;

    move-result-object v1

    .line 148
    .local v1, sysZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1, p0}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromIcon(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 151
    :cond_0
    return-object v0
.end method

.method public static getDefaultActivityIcon()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, iStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 232
    .local v3, retBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getSystemThemeManager()Landroid/content/res/theme/MeizuThemeZipManager;

    move-result-object v4

    .line 233
    .local v4, sysZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;
    if-eqz v4, :cond_0

    .line 234
    const-string v2, "def_icon.png"

    .line 235
    .local v2, resPath:Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromIcon(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 238
    .end local v2           #resPath:Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 240
    if-eqz v1, :cond_1

    .line 241
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_1
    :goto_0
    return-object v3

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIconBackguard()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, iStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 175
    .local v3, retBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getSystemThemeManager()Landroid/content/res/theme/MeizuThemeZipManager;

    move-result-object v4

    .line 176
    .local v4, sysZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;
    if-eqz v4, :cond_0

    .line 177
    const-string v2, "icon_background.png"

    .line 178
    .local v2, resPath:Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromIcon(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 181
    .end local v2           #resPath:Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 183
    if-eqz v1, :cond_1

    .line 184
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_1
    :goto_0
    return-object v3

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIconBorder()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, iStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 194
    .local v3, retBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getSystemThemeManager()Landroid/content/res/theme/MeizuThemeZipManager;

    move-result-object v4

    .line 195
    .local v4, sysZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;
    if-eqz v4, :cond_0

    .line 196
    const-string v2, "icon_border.png"

    .line 197
    .local v2, resPath:Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromIcon(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 200
    .end local v2           #resPath:Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 202
    if-eqz v1, :cond_1

    .line 203
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_1
    :goto_0
    return-object v3

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIconMask()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, iStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 157
    .local v3, retBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getSystemThemeManager()Landroid/content/res/theme/MeizuThemeZipManager;

    move-result-object v4

    .line 158
    .local v4, sysZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;
    if-eqz v4, :cond_0

    .line 159
    const-string v2, "icon_mask.png"

    .line 160
    .local v2, resPath:Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromIcon(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 162
    .end local v2           #resPath:Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 164
    if-eqz v1, :cond_1

    .line 165
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_1
    :goto_0
    return-object v3

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getShortcutBackguard()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, iStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 213
    .local v3, retBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getSystemThemeManager()Landroid/content/res/theme/MeizuThemeZipManager;

    move-result-object v4

    .line 214
    .local v4, sysZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;
    if-eqz v4, :cond_0

    .line 215
    const-string/jumbo v2, "shortcut_background.png"

    .line 216
    .local v2, resPath:Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromIcon(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 219
    .end local v2           #resPath:Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 221
    if-eqz v1, :cond_1

    .line 222
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_1
    :goto_0
    return-object v3

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static getSystemThemeManager()Landroid/content/res/theme/MeizuThemeZipManager;
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getThemeResource()Landroid/content/res/theme/MeizuThemeResource;

    move-result-object v0

    .line 47
    .local v0, sysThemeResource:Landroid/content/res/theme/MeizuThemeResource;
    if-eqz v0, :cond_0

    .line 48
    iget-object v1, v0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    .line 50
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseColorsFromXml(Ljava/io/InputStream;)V
    .locals 4
    .parameter "is"

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 62
    :cond_0
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 63
    .local v2, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 64
    .local v1, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 66
    .local v0, reader:Lorg/xml/sax/XMLReader;
    iget-object v3, p0, Landroid/content/res/theme/MeizuThemeResource;->mXmlhandler:Landroid/content/res/theme/MeizuThemeXmlHelper;

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 67
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 68
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 72
    .end local v0           #reader:Lorg/xml/sax/XMLReader;
    .end local v1           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v2           #spf:Ljavax/xml/parsers/SAXParserFactory;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 76
    :catch_1
    move-exception v3

    goto :goto_0

    .line 74
    :catch_2
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public addColorValue(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "data"
    .parameter "pkgTag"

    .prologue
    .line 89
    new-instance v0, Landroid/content/res/theme/MeizuThemeColorInfo;

    invoke-direct {v0, p2, p3, p4}, Landroid/content/res/theme/MeizuThemeColorInfo;-><init>(JLjava/lang/String;)V

    .line 90
    .local v0, value:Landroid/content/res/theme/MeizuThemeColorInfo;
    if-eqz p4, :cond_0

    .line 91
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeResource;->mColors:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeResource;->mColors:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addDimensionValue(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "data"
    .parameter "pkgTag"

    .prologue
    .line 105
    new-instance v0, Landroid/content/res/theme/MeizuThemeDimensionInfo;

    invoke-direct {v0, p2, p3}, Landroid/content/res/theme/MeizuThemeDimensionInfo;-><init>(ILjava/lang/String;)V

    .line 106
    .local v0, value:Landroid/content/res/theme/MeizuThemeDimensionInfo;
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeResource;->mDimensions:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeColor(Ljava/lang/String;Z)Landroid/content/res/theme/MeizuThemeColorInfo;
    .locals 7
    .parameter "colorName"
    .parameter "isFramework"

    .prologue
    const/4 v5, 0x0

    .line 269
    iget-boolean v4, p0, Landroid/content/res/theme/MeizuThemeResource;->mIsWaitingLoad:Z

    if-eqz v4, :cond_0

    .line 270
    invoke-virtual {p0}, Landroid/content/res/theme/MeizuThemeResource;->load()V

    .line 271
    :cond_0
    move-object v1, p1

    .line 272
    .local v1, overName:Ljava/lang/String;
    iget-object v4, p0, Landroid/content/res/theme/MeizuThemeResource;->mPackageName:Ljava/lang/String;

    const-string v6, "android"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    .line 274
    .local v0, isIntoFramework:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "android"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    :cond_1
    iget-object v4, p0, Landroid/content/res/theme/MeizuThemeResource;->mColors:Ljava/util/Map;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/content/res/theme/MeizuThemeResource;->mColors:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_5

    :cond_2
    const/4 v2, 0x0

    .line 279
    .local v2, retColorInfo:Landroid/content/res/theme/MeizuThemeColorInfo;
    :goto_1
    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 280
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getThemeResource()Landroid/content/res/theme/MeizuThemeResource;

    move-result-object v3

    .line 281
    .local v3, themeResource:Landroid/content/res/theme/MeizuThemeResource;
    if-eqz v3, :cond_3

    .line 282
    invoke-virtual {v3, p1, v5}, Landroid/content/res/theme/MeizuThemeResource;->getThemeColor(Ljava/lang/String;Z)Landroid/content/res/theme/MeizuThemeColorInfo;

    move-result-object v2

    .line 285
    .end local v3           #themeResource:Landroid/content/res/theme/MeizuThemeResource;
    :cond_3
    return-object v2

    .end local v0           #isIntoFramework:Z
    .end local v2           #retColorInfo:Landroid/content/res/theme/MeizuThemeColorInfo;
    :cond_4
    move v0, v5

    .line 272
    goto :goto_0

    .line 277
    .restart local v0       #isIntoFramework:Z
    :cond_5
    iget-object v4, p0, Landroid/content/res/theme/MeizuThemeResource;->mColors:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/theme/MeizuThemeColorInfo;

    move-object v2, v4

    goto :goto_1
.end method

.method public getThemeFileStream(Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 5
    .parameter "fileName"
    .parameter "isFramework"

    .prologue
    .line 249
    iget-object v3, p0, Landroid/content/res/theme/MeizuThemeResource;->mOwner:Landroid/content/res/Resources;

    if-nez v3, :cond_1

    .line 250
    const/4 v1, 0x0

    .line 265
    :cond_0
    :goto_0
    return-object v1

    .line 251
    :cond_1
    const/4 v1, 0x0

    .line 252
    .local v1, iStream:Ljava/io/InputStream;
    iget-object v3, p0, Landroid/content/res/theme/MeizuThemeResource;->mPackageName:Ljava/lang/String;

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 253
    iget-object v3, p0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    invoke-virtual {v3, p1}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromFramework(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 254
    :cond_2
    if-eqz p2, :cond_3

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "framework-res"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, filePath:Ljava/lang/String;
    iget-object v3, p0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    iget-object v4, p0, Landroid/content/res/theme/MeizuThemeResource;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 257
    if-nez v1, :cond_0

    .line 258
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getSystemThemeManager()Landroid/content/res/theme/MeizuThemeZipManager;

    move-result-object v2

    .line 259
    .local v2, sysThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;
    if-eqz v2, :cond_0

    .line 260
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getSystemThemeManager()Landroid/content/res/theme/MeizuThemeZipManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromFramework(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 263
    .end local v0           #filePath:Ljava/lang/String;
    .end local v2           #sysThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;
    :cond_3
    iget-object v3, p0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    iget-object v4, p0, Landroid/content/res/theme/MeizuThemeResource;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method public load()V
    .locals 4

    .prologue
    .line 130
    iget-boolean v1, p0, Landroid/content/res/theme/MeizuThemeResource;->mIsWaitingLoad:Z

    if-nez v1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    .line 133
    .local v0, is:Ljava/io/InputStream;
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeResource;->mPackageName:Ljava/lang/String;

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    const-string/jumbo v2, "theme_values.xml"

    invoke-virtual {v1, v2}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromFramework(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 139
    :goto_1
    if-eqz v0, :cond_1

    .line 140
    invoke-direct {p0, v0}, Landroid/content/res/theme/MeizuThemeResource;->parseColorsFromXml(Ljava/io/InputStream;)V

    .line 142
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/theme/MeizuThemeResource;->mIsWaitingLoad:Z

    goto :goto_0

    .line 136
    :cond_2
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    iget-object v2, p0, Landroid/content/res/theme/MeizuThemeResource;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "theme_values.xml"

    invoke-virtual {v1, v2, v3}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    invoke-virtual {v0}, Landroid/content/res/theme/MeizuThemeZipManager;->clean()V

    .line 120
    iget-object v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getSystemThemeManager()Landroid/content/res/theme/MeizuThemeZipManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/theme/MeizuThemeZipManager;->setSystemThemeManager(Landroid/content/res/theme/MeizuThemeZipManager;)V

    .line 122
    :cond_0
    iget-object v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mColors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mIsWaitingLoad:Z

    .line 124
    return-void
.end method
