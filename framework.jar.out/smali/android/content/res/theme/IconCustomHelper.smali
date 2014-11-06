.class public Landroid/content/res/theme/IconCustomHelper;
.super Ljava/lang/Object;
.source "IconCustomHelper.java"


# static fields
.field public static MEIZU_CALENDAR_ICON:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Landroid/content/res/theme/IconCustomHelper;->MEIZU_CALENDAR_ICON:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "backguard"
    .parameter "top"

    .prologue
    const/4 v1, 0x0

    .line 63
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 65
    .local v6, bitmap:Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 67
    .local v9, newBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 68
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 69
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 71
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 72
    .local v10, w:I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 74
    .local v7, h:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 75
    .local v11, w_2:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 78
    .local v8, h_2:I
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 79
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 81
    new-instance v5, Landroid/graphics/Paint;

    .end local v5           #paint:Landroid/graphics/Paint;
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 82
    .restart local v5       #paint:Landroid/graphics/Paint;
    sub-int v1, v10, v11

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-int v2, v7, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 85
    return-object v9
.end method

.method public static addDateToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 14
    .parameter "dr"

    .prologue
    .line 234
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 235
    .local v7, resources:Landroid/content/res/Resources;
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    .line 236
    .local v1, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 237
    .local v4, newBitmap:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 238
    .local v6, paint:Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 239
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 240
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-static {}, Landroid/content/res/theme/IconCustomHelper;->getDateOfMonth()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, date:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 242
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v7, v11}, Landroid/content/res/theme/IconCustomHelper;->getDateImage(Landroid/content/res/Resources;C)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 243
    .local v5, oneBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    const/high16 v12, 0x4000

    div-float v9, v11, v12

    .line 244
    .local v9, x:F
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x427c

    mul-float/2addr v11, v12

    const/high16 v12, 0x4310

    div-float v10, v11, v12

    .line 245
    .local v10, y:F
    invoke-virtual {v2, v5, v9, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 254
    :goto_0
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v11, v7, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p0, v11

    .line 259
    .end local v1           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #date:Ljava/lang/String;
    .end local v4           #newBitmap:Landroid/graphics/Bitmap;
    .end local v5           #oneBitmap:Landroid/graphics/Bitmap;
    .end local v6           #paint:Landroid/graphics/Paint;
    .end local v7           #resources:Landroid/content/res/Resources;
    .end local v9           #x:F
    .end local v10           #y:F
    .end local p0
    :goto_1
    return-object p0

    .line 247
    .restart local v1       #bd:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    .restart local v3       #date:Ljava/lang/String;
    .restart local v4       #newBitmap:Landroid/graphics/Bitmap;
    .restart local v6       #paint:Landroid/graphics/Paint;
    .restart local v7       #resources:Landroid/content/res/Resources;
    .restart local p0
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v7, v11}, Landroid/content/res/theme/IconCustomHelper;->getDateImage(Landroid/content/res/Resources;C)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 248
    .restart local v5       #oneBitmap:Landroid/graphics/Bitmap;
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v7, v11}, Landroid/content/res/theme/IconCustomHelper;->getDateImage(Landroid/content/res/Resources;C)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 249
    .local v8, twoBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    sub-int/2addr v11, v12

    int-to-float v11, v11

    const/high16 v12, 0x4000

    div-float v9, v11, v12

    .line 250
    .restart local v9       #x:F
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x427c

    mul-float/2addr v11, v12

    const/high16 v12, 0x4310

    div-float v10, v11, v12

    .line 251
    .restart local v10       #y:F
    invoke-virtual {v2, v5, v9, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 252
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v9

    invoke-virtual {v2, v8, v11, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    .end local v1           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #date:Ljava/lang/String;
    .end local v4           #newBitmap:Landroid/graphics/Bitmap;
    .end local v5           #oneBitmap:Landroid/graphics/Bitmap;
    .end local v6           #paint:Landroid/graphics/Paint;
    .end local v7           #resources:Landroid/content/res/Resources;
    .end local v8           #twoBitmap:Landroid/graphics/Bitmap;
    .end local v9           #x:F
    .end local v10           #y:F
    :catch_0
    move-exception v11

    goto :goto_1
.end method

.method public static addDayOfWeekToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 15
    .parameter "dr"

    .prologue
    const/high16 v14, 0x4310

    .line 273
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 274
    .local v12, resources:Landroid/content/res/Resources;
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v9, v0

    .line 275
    .local v9, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 276
    .local v11, newBitmap:Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 277
    .local v10, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 278
    .local v3, textPaint:Landroid/text/TextPaint;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 279
    const v4, 0x1050214

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v14

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 282
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 283
    const v4, 0x106008e

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 286
    invoke-static {v12}, Landroid/content/res/theme/IconCustomHelper;->getDayOfWeek(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, date:Ljava/lang/String;
    new-instance v1, Landroid/text/StaticLayout;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 289
    .local v1, sl:Landroid/text/StaticLayout;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41a8

    mul-float/2addr v4, v5

    div-float v13, v4, v14

    .line 290
    .local v13, tanslateY:F
    const/4 v4, 0x0

    invoke-virtual {v10, v4, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 291
    invoke-virtual {v1, v10}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 292
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v12, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v4

    .line 296
    .end local v1           #sl:Landroid/text/StaticLayout;
    .end local v2           #date:Ljava/lang/String;
    .end local v3           #textPaint:Landroid/text/TextPaint;
    .end local v9           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v10           #canvas:Landroid/graphics/Canvas;
    .end local v11           #newBitmap:Landroid/graphics/Bitmap;
    .end local v12           #resources:Landroid/content/res/Resources;
    .end local v13           #tanslateY:F
    .end local p0
    :goto_0
    return-object p0

    .line 293
    .restart local p0
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static drawShadowToIcon()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 175
    :try_start_0
    new-instance v2, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;

    invoke-direct {v2}, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;-><init>()V

    .line 176
    .local v2, info:Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "draw_shadow"

    invoke-virtual {v2, v4}, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, hasDate:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_0

    const-string v4, "false"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    .end local v1           #hasDate:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 179
    .restart local v1       #hasDate:Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    const/4 v3, 0x1

    goto :goto_0

    .line 183
    .end local v1           #hasDate:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCalendarIcon()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 126
    const-string v4, "com.android.calendar"

    .line 127
    .local v4, nameWithDate:Ljava/lang/String;
    const-string v3, "com.android.calendar.nodate"

    .line 128
    .local v3, nameNoDate:Ljava/lang/String;
    const/4 v0, 0x0

    .line 130
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {v3}, Landroid/content/res/theme/IconCustomHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 144
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 134
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-static {v4}, Landroid/content/res/theme/IconCustomHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/content/res/theme/IconCustomHelper;->isAddDateToIcon()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    invoke-static {v0}, Landroid/content/res/theme/IconCustomHelper;->addDateToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 138
    invoke-static {v0}, Landroid/content/res/theme/IconCustomHelper;->addDayOfWeekToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    move-object v1, v0

    .line 144
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 141
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    .line 142
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static getConfigByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 196
    :try_start_0
    new-instance v2, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;

    invoke-direct {v2}, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;-><init>()V

    .line 197
    .local v2, info:Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;
    invoke-virtual {v2, p0}, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;->getConfig(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 201
    .end local v2           #info:Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;
    :goto_0
    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 201
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "packageName"

    .prologue
    .line 96
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 97
    .local v6, sysResources:Landroid/content/res/Resources;
    if-nez v6, :cond_1

    .line 98
    const/4 v1, 0x0

    .line 116
    :cond_0
    :goto_0
    return-object v1

    .line 101
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, resPath:Ljava/lang/String;
    invoke-static {v5}, Landroid/content/res/theme/MeizuThemeResource;->get3rdPartThemeIcon(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 105
    .local v4, is:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 107
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 108
    :try_start_0
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    .local v2, dr:Landroid/graphics/drawable/Drawable;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 113
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 114
    .local v3, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #dr:Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method private static getDateImage(Landroid/content/res/Resources;C)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "resources"
    .parameter "date"

    .prologue
    .line 325
    const v0, 0x1080321

    .line 326
    .local v0, dr:I
    packed-switch p1, :pswitch_data_0

    .line 363
    :goto_0
    :pswitch_0
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 328
    :pswitch_1
    const v0, 0x1080321

    .line 329
    goto :goto_0

    .line 331
    :pswitch_2
    const v0, 0x1080322

    .line 332
    goto :goto_0

    .line 334
    :pswitch_3
    const v0, 0x1080323

    .line 335
    goto :goto_0

    .line 337
    :pswitch_4
    const v0, 0x1080324

    .line 338
    goto :goto_0

    .line 340
    :pswitch_5
    const v0, 0x1080325

    .line 341
    goto :goto_0

    .line 343
    :pswitch_6
    const v0, 0x1080326

    .line 344
    goto :goto_0

    .line 346
    :pswitch_7
    const v0, 0x1080327

    .line 347
    goto :goto_0

    .line 349
    :pswitch_8
    const v0, 0x1080328

    .line 350
    goto :goto_0

    .line 352
    :pswitch_9
    const v0, 0x1080329

    .line 353
    goto :goto_0

    .line 355
    :pswitch_a
    const v0, 0x108032a

    .line 356
    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method private static getDateOfMonth()Ljava/lang/String;
    .locals 4

    .prologue
    .line 300
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 301
    .local v2, today:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 302
    .local v1, cal:Ljava/util/Calendar;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 303
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 304
    .local v0, aDate:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getDayOfWeek(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 8
    .parameter "resources"

    .prologue
    .line 308
    const v5, 0x1070042

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, weekDays:[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 312
    .local v0, cal:Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 313
    .local v1, curDate:Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 314
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 315
    .local v3, w:I
    if-gez v3, :cond_0

    .line 316
    const/4 v3, 0x0

    .line 317
    :cond_0
    aget-object v5, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #curDate:Ljava/util/Date;
    .end local v3           #w:I
    :goto_0
    return-object v5

    .line 318
    :catch_0
    move-exception v2

    .line 319
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "IconCustomHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v5, 0x0

    aget-object v5, v4, v5

    goto :goto_0
.end method

.method public static getThemeDefaultActivityIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"
    .parameter "srcDrawable"

    .prologue
    .line 476
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    move-object v1, p1

    .line 484
    :goto_0
    return-object v1

    .line 479
    :cond_0
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getDefaultActivityIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 480
    .local v0, defIcon:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 481
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local p1
    move-object v1, p1

    .line 482
    goto :goto_0

    .line 484
    :cond_1
    invoke-static {p0, p1}, Landroid/content/res/theme/IconCustomHelper;->makeThemeIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static isAddDateToIcon()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 155
    :try_start_0
    new-instance v2, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;

    invoke-direct {v2}, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;-><init>()V

    .line 156
    .local v2, info:Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "draw_date"

    invoke-virtual {v2, v4}, Landroid/content/res/theme/MeizuThemeLauncherConfigHelper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, hasDate:Ljava/lang/String;
    const-string v4, "false"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    const/4 v3, 0x0

    .line 164
    .end local v1           #hasDate:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isThemeIcon()Z
    .locals 4

    .prologue
    .line 214
    :try_start_0
    const-string v2, "/data/mtheme/icons"

    .line 215
    .local v2, zipFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    const/4 v3, 0x1

    .line 222
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return v3

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 222
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "maskBmp"
    .parameter "viewBmp"

    .prologue
    .line 32
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 33
    .local v2, resultBmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 34
    .local v1, paint:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 37
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 38
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {p1, v5, v6}, Landroid/content/res/theme/IconCustomHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 39
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    .line 40
    .local v3, x:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v4, v5, 0x2

    .line 42
    .local v4, y:I
    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {v0, p1, v5, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 45
    return-object v2
.end method

.method public static makeThemeIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "res"
    .parameter "srcDrawable"

    .prologue
    .line 372
    instance-of v8, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v8, :cond_0

    .line 415
    .end local p1
    :goto_0
    return-object p1

    .line 374
    .restart local p1
    :cond_0
    const/4 v5, 0x0

    .line 375
    .local v5, retDrawable:Landroid/graphics/drawable/Drawable;
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 376
    .local v6, src:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getIconMask()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 377
    .local v2, maskBmp:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getIconBackguard()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 378
    .local v0, backguard:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getIconBorder()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 379
    .local v1, border:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_4

    .line 380
    invoke-static {v2, v6}, Landroid/content/res/theme/IconCustomHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 381
    .local v7, top:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 382
    invoke-static {v0, v7}, Landroid/content/res/theme/IconCustomHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 383
    .local v3, resBmp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 384
    invoke-static {v3, v1}, Landroid/content/res/theme/IconCustomHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 385
    .local v4, resBmp2:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v3           #resBmp:Landroid/graphics/Bitmap;
    .end local v4           #resBmp2:Landroid/graphics/Bitmap;
    .end local v7           #top:Landroid/graphics/Bitmap;
    .restart local v5       #retDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    move-object p1, v5

    .line 415
    goto :goto_0

    .line 387
    .restart local v3       #resBmp:Landroid/graphics/Bitmap;
    .restart local v7       #top:Landroid/graphics/Bitmap;
    :cond_1
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v5       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 390
    .end local v3           #resBmp:Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v1, :cond_3

    .line 391
    invoke-static {v7, v1}, Landroid/content/res/theme/IconCustomHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 392
    .restart local v4       #resBmp2:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 393
    .restart local v5       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 394
    .end local v4           #resBmp2:Landroid/graphics/Bitmap;
    :cond_3
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v5       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 398
    .end local v7           #top:Landroid/graphics/Bitmap;
    :cond_4
    if-eqz v0, :cond_6

    .line 399
    invoke-static {v0, v6}, Landroid/content/res/theme/IconCustomHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 400
    .restart local v3       #resBmp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_5

    .line 401
    invoke-static {v3, v1}, Landroid/content/res/theme/IconCustomHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 402
    .restart local v4       #resBmp2:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 403
    .restart local v5       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 404
    .end local v4           #resBmp2:Landroid/graphics/Bitmap;
    :cond_5
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v5       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 407
    .end local v3           #resBmp:Landroid/graphics/Bitmap;
    :cond_6
    if-eqz v1, :cond_7

    .line 408
    invoke-static {v6, v1}, Landroid/content/res/theme/IconCustomHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 409
    .restart local v4       #resBmp2:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 410
    .restart local v5       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 411
    .end local v4           #resBmp2:Landroid/graphics/Bitmap;
    :cond_7
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v5       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method public static makeThemeShortcut(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "res"
    .parameter "srcDrawable"

    .prologue
    .line 424
    instance-of v8, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v8, :cond_0

    .line 467
    .end local p1
    :goto_0
    return-object p1

    .line 426
    .restart local p1
    :cond_0
    const/4 v5, 0x0

    .line 427
    .local v5, retDrawable:Landroid/graphics/drawable/Drawable;
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 428
    .local v6, src:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getIconMask()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 429
    .local v2, maskBmp:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getShortcutBackguard()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 430
    .local v0, backguard:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getIconBorder()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 431
    .local v1, border:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_4

    .line 432
    invoke-static {v2, v6}, Landroid/content/res/theme/IconCustomHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 433
    .local v7, top:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 434
    invoke-static {v0, v7}, Landroid/content/res/theme/IconCustomHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 435
    .local v3, resBmp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 436
    invoke-static {v3, v1}, Landroid/content/res/theme/IconCustomHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 437
    .local v4, resBmp2:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v3           #resBmp:Landroid/graphics/Bitmap;
    .end local v4           #resBmp2:Landroid/graphics/Bitmap;
    .end local v7           #top:Landroid/graphics/Bitmap;
    .restart local v5       #retDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    move-object p1, v5

    .line 467
    goto :goto_0

    .line 439
    .restart local v3       #resBmp:Landroid/graphics/Bitmap;
    .restart local v7       #top:Landroid/graphics/Bitmap;
    :cond_1
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v5       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 442
    .end local v3           #resBmp:Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v1, :cond_3

    .line 443
    invoke-static {v7, v1}, Landroid/content/res/theme/IconCustomHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 444
    .restart local v4       #resBmp2:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 445
    .restart local v5       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 446
    .end local v4           #resBmp2:Landroid/graphics/Bitmap;
    :cond_3
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v5       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 450
    .end local v7           #top:Landroid/graphics/Bitmap;
    :cond_4
    if-eqz v0, :cond_6

    .line 451
    invoke-static {v0, v6}, Landroid/content/res/theme/IconCustomHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 452
    .restart local v3       #resBmp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_5

    .line 453
    invoke-static {v3, v1}, Landroid/content/res/theme/IconCustomHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 454
    .restart local v4       #resBmp2:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 455
    .restart local v5       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 456
    .end local v4           #resBmp2:Landroid/graphics/Bitmap;
    :cond_5
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v5       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 459
    .end local v3           #resBmp:Landroid/graphics/Bitmap;
    :cond_6
    if-eqz v1, :cond_7

    .line 460
    invoke-static {v6, v1}, Landroid/content/res/theme/IconCustomHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 461
    .restart local v4       #resBmp2:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 462
    .restart local v5       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 463
    .end local v4           #resBmp2:Landroid/graphics/Bitmap;
    :cond_7
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, p0, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v5       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method private static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 51
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 52
    .local v4, height:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 53
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 54
    .local v9, scaleWidht:F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 55
    .local v8, scaleHeight:F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 56
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 57
    .local v7, newbmp:Landroid/graphics/Bitmap;
    return-object v7
.end method
