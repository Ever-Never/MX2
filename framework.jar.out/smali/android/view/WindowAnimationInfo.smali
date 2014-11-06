.class public Landroid/view/WindowAnimationInfo;
.super Ljava/lang/Object;
.source "WindowAnimationInfo.java"


# static fields
.field public static final ANIM_ALPHA:I = 0x4

.field public static final ANIM_IDLE:I = 0x0

.field public static final ANIM_SCALE:I = 0x2

.field public static final ANIM_TRANSLATE:I = 0x1


# instance fields
.field public alphaAnimTime:J

.field public alphaFromValue:F

.field public alphaToValue:F

.field public animType:I

.field public scaleAnimTime:J

.field public scaleFromX:F

.field public scaleFromY:F

.field public scalePivotXType:I

.field public scalePivotXValue:F

.field public scalePivotYType:I

.field public scalePivotYValue:F

.field public scaleToX:F

.field public scaleToY:F

.field public translateAnimTime:J

.field public translateFromXType:I

.field public translateFromXValue:F

.field public translateFromYType:I

.field public translateFromYValue:F

.field public translateToXType:I

.field public translateToXValue:F

.field public translateToYType:I

.field public translateToYValue:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->animType:I

    return-void
.end method


# virtual methods
.method public clearAnimations()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 242
    iput v1, p0, Landroid/view/WindowAnimationInfo;->animType:I

    .line 243
    iput v1, p0, Landroid/view/WindowAnimationInfo;->translateFromXType:I

    .line 244
    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateFromXValue:F

    .line 245
    iput v1, p0, Landroid/view/WindowAnimationInfo;->translateToXType:I

    .line 246
    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateToXValue:F

    .line 247
    iput v1, p0, Landroid/view/WindowAnimationInfo;->translateFromYType:I

    .line 248
    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateFromYValue:F

    .line 249
    iput v1, p0, Landroid/view/WindowAnimationInfo;->translateToYType:I

    .line 250
    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateToYValue:F

    .line 251
    iput v0, p0, Landroid/view/WindowAnimationInfo;->scaleFromX:F

    .line 252
    iput v0, p0, Landroid/view/WindowAnimationInfo;->scaleToX:F

    .line 253
    iput v0, p0, Landroid/view/WindowAnimationInfo;->scaleFromY:F

    .line 254
    iput v0, p0, Landroid/view/WindowAnimationInfo;->scaleToY:F

    .line 255
    iput v1, p0, Landroid/view/WindowAnimationInfo;->scalePivotXType:I

    .line 256
    iput v1, p0, Landroid/view/WindowAnimationInfo;->scalePivotYType:I

    .line 257
    iput v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotXValue:F

    .line 258
    iput v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotYValue:F

    .line 259
    iput v0, p0, Landroid/view/WindowAnimationInfo;->alphaFromValue:F

    .line 260
    iput v0, p0, Landroid/view/WindowAnimationInfo;->alphaToValue:F

    .line 261
    iput-wide v2, p0, Landroid/view/WindowAnimationInfo;->translateAnimTime:J

    .line 262
    iput-wide v2, p0, Landroid/view/WindowAnimationInfo;->alphaAnimTime:J

    .line 263
    iput-wide v2, p0, Landroid/view/WindowAnimationInfo;->scaleAnimTime:J

    .line 264
    return-void
.end method

.method public copyFrom(ILandroid/view/WindowAnimationInfo;)V
    .locals 4
    .parameter "changes"
    .parameter "o"

    .prologue
    .line 317
    iget v0, p0, Landroid/view/WindowAnimationInfo;->animType:I

    iget v1, p2, Landroid/view/WindowAnimationInfo;->animType:I

    if-eq v0, v1, :cond_0

    .line 318
    iget v0, p2, Landroid/view/WindowAnimationInfo;->animType:I

    iput v0, p0, Landroid/view/WindowAnimationInfo;->animType:I

    .line 319
    or-int/lit8 p1, p1, 0x10

    .line 321
    :cond_0
    iget v0, p0, Landroid/view/WindowAnimationInfo;->translateFromXType:I

    iget v1, p2, Landroid/view/WindowAnimationInfo;->translateFromXType:I

    if-eq v0, v1, :cond_1

    .line 322
    iget v0, p2, Landroid/view/WindowAnimationInfo;->translateFromXType:I

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateFromXType:I

    .line 323
    or-int/lit8 p1, p1, 0x10

    .line 325
    :cond_1
    iget v0, p0, Landroid/view/WindowAnimationInfo;->translateFromXValue:F

    iget v1, p2, Landroid/view/WindowAnimationInfo;->translateFromXValue:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 326
    iget v0, p2, Landroid/view/WindowAnimationInfo;->translateFromXValue:F

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateFromXValue:F

    .line 327
    or-int/lit8 p1, p1, 0x10

    .line 329
    :cond_2
    iget v0, p0, Landroid/view/WindowAnimationInfo;->translateToXType:I

    iget v1, p2, Landroid/view/WindowAnimationInfo;->translateToXType:I

    if-eq v0, v1, :cond_3

    .line 330
    iget v0, p2, Landroid/view/WindowAnimationInfo;->translateToXType:I

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateToXType:I

    .line 331
    or-int/lit8 p1, p1, 0x10

    .line 333
    :cond_3
    iget v0, p0, Landroid/view/WindowAnimationInfo;->translateToXValue:F

    iget v1, p2, Landroid/view/WindowAnimationInfo;->translateToXValue:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 334
    iget v0, p2, Landroid/view/WindowAnimationInfo;->translateToXValue:F

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateToXValue:F

    .line 335
    or-int/lit8 p1, p1, 0x10

    .line 337
    :cond_4
    iget v0, p0, Landroid/view/WindowAnimationInfo;->translateFromYType:I

    iget v1, p2, Landroid/view/WindowAnimationInfo;->translateFromYType:I

    if-eq v0, v1, :cond_5

    .line 338
    iget v0, p2, Landroid/view/WindowAnimationInfo;->translateFromYType:I

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateFromYType:I

    .line 339
    or-int/lit8 p1, p1, 0x10

    .line 341
    :cond_5
    iget v0, p0, Landroid/view/WindowAnimationInfo;->translateFromYValue:F

    iget v1, p2, Landroid/view/WindowAnimationInfo;->translateFromYValue:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 342
    iget v0, p2, Landroid/view/WindowAnimationInfo;->translateFromYValue:F

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateFromYValue:F

    .line 343
    or-int/lit8 p1, p1, 0x10

    .line 345
    :cond_6
    iget v0, p0, Landroid/view/WindowAnimationInfo;->translateToYType:I

    iget v1, p2, Landroid/view/WindowAnimationInfo;->translateToYType:I

    if-eq v0, v1, :cond_7

    .line 346
    iget v0, p2, Landroid/view/WindowAnimationInfo;->translateToYType:I

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateToYType:I

    .line 347
    or-int/lit8 p1, p1, 0x10

    .line 349
    :cond_7
    iget v0, p0, Landroid/view/WindowAnimationInfo;->translateToYValue:F

    iget v1, p2, Landroid/view/WindowAnimationInfo;->translateToYValue:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    .line 350
    iget v0, p2, Landroid/view/WindowAnimationInfo;->translateToYValue:F

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateToYValue:F

    .line 351
    or-int/lit8 p1, p1, 0x10

    .line 353
    :cond_8
    iget v0, p0, Landroid/view/WindowAnimationInfo;->scaleFromX:F

    iget v1, p2, Landroid/view/WindowAnimationInfo;->scaleFromX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    .line 354
    iget v0, p2, Landroid/view/WindowAnimationInfo;->scaleFromX:F

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scaleFromX:F

    .line 355
    or-int/lit8 p1, p1, 0x10

    .line 357
    :cond_9
    iget v0, p0, Landroid/view/WindowAnimationInfo;->scaleToX:F

    iget v1, p2, Landroid/view/WindowAnimationInfo;->scaleToX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    .line 358
    iget v0, p2, Landroid/view/WindowAnimationInfo;->scaleToX:F

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scaleToX:F

    .line 359
    or-int/lit8 p1, p1, 0x10

    .line 361
    :cond_a
    iget v0, p0, Landroid/view/WindowAnimationInfo;->scaleFromY:F

    iget v1, p2, Landroid/view/WindowAnimationInfo;->scaleFromY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_b

    .line 362
    iget v0, p2, Landroid/view/WindowAnimationInfo;->scaleFromY:F

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scaleFromY:F

    .line 363
    or-int/lit8 p1, p1, 0x10

    .line 365
    :cond_b
    iget v0, p0, Landroid/view/WindowAnimationInfo;->scaleToY:F

    iget v1, p2, Landroid/view/WindowAnimationInfo;->scaleToY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c

    .line 366
    iget v0, p2, Landroid/view/WindowAnimationInfo;->scaleToY:F

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scaleToY:F

    .line 367
    or-int/lit8 p1, p1, 0x10

    .line 369
    :cond_c
    iget v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotXType:I

    iget v1, p2, Landroid/view/WindowAnimationInfo;->scalePivotXType:I

    if-eq v0, v1, :cond_d

    .line 370
    iget v0, p2, Landroid/view/WindowAnimationInfo;->scalePivotXType:I

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotXType:I

    .line 371
    or-int/lit8 p1, p1, 0x10

    .line 373
    :cond_d
    iget v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotYType:I

    iget v1, p2, Landroid/view/WindowAnimationInfo;->scalePivotYType:I

    if-eq v0, v1, :cond_e

    .line 374
    iget v0, p2, Landroid/view/WindowAnimationInfo;->scalePivotYType:I

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotYType:I

    .line 375
    or-int/lit8 p1, p1, 0x10

    .line 377
    :cond_e
    iget v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotXValue:F

    iget v1, p2, Landroid/view/WindowAnimationInfo;->scalePivotXValue:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f

    .line 378
    iget v0, p2, Landroid/view/WindowAnimationInfo;->scalePivotXValue:F

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotXValue:F

    .line 379
    or-int/lit8 p1, p1, 0x10

    .line 381
    :cond_f
    iget v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotYValue:F

    iget v1, p2, Landroid/view/WindowAnimationInfo;->scalePivotYValue:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_10

    .line 382
    iget v0, p2, Landroid/view/WindowAnimationInfo;->scalePivotYValue:F

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotYValue:F

    .line 383
    or-int/lit8 p1, p1, 0x10

    .line 385
    :cond_10
    iget v0, p0, Landroid/view/WindowAnimationInfo;->alphaFromValue:F

    iget v1, p2, Landroid/view/WindowAnimationInfo;->alphaFromValue:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_11

    .line 386
    iget v0, p2, Landroid/view/WindowAnimationInfo;->alphaFromValue:F

    iput v0, p0, Landroid/view/WindowAnimationInfo;->alphaFromValue:F

    .line 387
    or-int/lit8 p1, p1, 0x10

    .line 389
    :cond_11
    iget v0, p0, Landroid/view/WindowAnimationInfo;->alphaToValue:F

    iget v1, p2, Landroid/view/WindowAnimationInfo;->alphaToValue:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_12

    .line 390
    iget v0, p2, Landroid/view/WindowAnimationInfo;->alphaToValue:F

    iput v0, p0, Landroid/view/WindowAnimationInfo;->alphaToValue:F

    .line 391
    or-int/lit8 p1, p1, 0x10

    .line 393
    :cond_12
    iget-wide v0, p0, Landroid/view/WindowAnimationInfo;->translateAnimTime:J

    iget-wide v2, p2, Landroid/view/WindowAnimationInfo;->translateAnimTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 394
    iget-wide v0, p2, Landroid/view/WindowAnimationInfo;->translateAnimTime:J

    iput-wide v0, p0, Landroid/view/WindowAnimationInfo;->translateAnimTime:J

    .line 395
    or-int/lit8 p1, p1, 0x10

    .line 397
    :cond_13
    iget-wide v0, p0, Landroid/view/WindowAnimationInfo;->alphaAnimTime:J

    iget-wide v2, p2, Landroid/view/WindowAnimationInfo;->alphaAnimTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    .line 398
    iget-wide v0, p2, Landroid/view/WindowAnimationInfo;->alphaAnimTime:J

    iput-wide v0, p0, Landroid/view/WindowAnimationInfo;->alphaAnimTime:J

    .line 399
    or-int/lit8 p1, p1, 0x10

    .line 401
    :cond_14
    iget-wide v0, p0, Landroid/view/WindowAnimationInfo;->scaleAnimTime:J

    iget-wide v2, p2, Landroid/view/WindowAnimationInfo;->scaleAnimTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 402
    iget-wide v0, p2, Landroid/view/WindowAnimationInfo;->scaleAnimTime:J

    iput-wide v0, p0, Landroid/view/WindowAnimationInfo;->scaleAnimTime:J

    .line 403
    or-int/lit8 p1, p1, 0x10

    .line 405
    :cond_15
    return-void
.end method

.method public getBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "key"
    .parameter "opts"

    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":animType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->animType:I

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":translateFromXType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateFromXType:I

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":translateFromXValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateFromXValue:F

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":translateToXType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateToXType:I

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":translateToXValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateToXValue:F

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":translateFromYType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateFromYType:I

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":translateFromYValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateFromYValue:F

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":translateToYType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateToYType:I

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":translateToYValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateToYValue:F

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":scaleFromX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scaleFromX:F

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":scaleToX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scaleToX:F

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":scaleFromY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scaleFromY:F

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":scaleToY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scaleToY:F

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":scalePivotXType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotXType:I

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":scalePivotYType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotYType:I

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":scalePivotXValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotXValue:F

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":scalePivotYValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotYValue:F

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":alphaFromValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->alphaFromValue:F

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":alphaToValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->alphaToValue:F

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":translateAnimTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowAnimationInfo;->translateAnimTime:J

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":alphaAnimTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowAnimationInfo;->alphaAnimTime:J

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":scaleAnimTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowAnimationInfo;->scaleAnimTime:J

    .line 455
    return-void
.end method

.method public putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "key"
    .parameter "bundle"

    .prologue
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":animType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowAnimationInfo;->animType:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":translateFromXType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowAnimationInfo;->translateFromXType:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":translateFromXValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowAnimationInfo;->translateFromXValue:F

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":translateToXType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowAnimationInfo;->translateToXType:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":translateToXValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowAnimationInfo;->translateToXValue:F

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":translateFromYType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowAnimationInfo;->translateFromYType:I

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":translateFromYValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowAnimationInfo;->translateFromYValue:F

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":translateToYType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowAnimationInfo;->translateToYType:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":translateToYValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowAnimationInfo;->translateToYValue:F

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":scaleFromX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowAnimationInfo;->scaleFromX:F

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":scaleToX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowAnimationInfo;->scaleToX:F

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":scaleFromY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowAnimationInfo;->scaleFromY:F

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":scaleToY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowAnimationInfo;->scaleToY:F

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":scalePivotXType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowAnimationInfo;->scalePivotXType:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":scalePivotYType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowAnimationInfo;->scalePivotYType:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":scalePivotXValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowAnimationInfo;->scalePivotXValue:F

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":scalePivotYValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowAnimationInfo;->scalePivotYValue:F

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":alphaFromValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowAnimationInfo;->alphaFromValue:F

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":alphaToValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowAnimationInfo;->alphaToValue:F

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":translateAnimTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/WindowAnimationInfo;->translateAnimTime:J

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":alphaAnimTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/WindowAnimationInfo;->alphaAnimTime:J

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":scaleAnimTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/WindowAnimationInfo;->scaleAnimTime:J

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 430
    return-void
.end method

.method public readInParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->animType:I

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateFromXType:I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateFromXValue:F

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateToXType:I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateToXValue:F

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateFromYType:I

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateFromYValue:F

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateToYType:I

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->translateToYValue:F

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scaleFromX:F

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scaleToX:F

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scaleFromY:F

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scaleToY:F

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotXType:I

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotYType:I

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotXValue:F

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotYValue:F

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->alphaFromValue:F

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowAnimationInfo;->alphaToValue:F

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowAnimationInfo;->translateAnimTime:J

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowAnimationInfo;->alphaAnimTime:J

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowAnimationInfo;->scaleAnimTime:J

    .line 289
    return-void
.end method

.method public setAnimAlpha(FFJ)V
    .locals 1
    .parameter "fromAlpha"
    .parameter "toAlpha"
    .parameter "animTime"

    .prologue
    .line 231
    iget v0, p0, Landroid/view/WindowAnimationInfo;->animType:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/view/WindowAnimationInfo;->animType:I

    .line 232
    iput p1, p0, Landroid/view/WindowAnimationInfo;->alphaFromValue:F

    .line 233
    iput p2, p0, Landroid/view/WindowAnimationInfo;->alphaToValue:F

    .line 234
    iput-wide p3, p0, Landroid/view/WindowAnimationInfo;->alphaAnimTime:J

    .line 235
    return-void
.end method

.method public setScaleAnim(FFFFIFIFJ)V
    .locals 1
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "pivotXType"
    .parameter "pivotXValue"
    .parameter "pivotYType"
    .parameter "pivotYValue"
    .parameter "animTime"

    .prologue
    .line 208
    iget v0, p0, Landroid/view/WindowAnimationInfo;->animType:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/WindowAnimationInfo;->animType:I

    .line 209
    iput p1, p0, Landroid/view/WindowAnimationInfo;->scaleFromX:F

    .line 210
    iput p2, p0, Landroid/view/WindowAnimationInfo;->scaleToX:F

    .line 211
    iput p3, p0, Landroid/view/WindowAnimationInfo;->scaleFromY:F

    .line 212
    iput p4, p0, Landroid/view/WindowAnimationInfo;->scaleToY:F

    .line 213
    iput p6, p0, Landroid/view/WindowAnimationInfo;->scalePivotXValue:F

    .line 214
    iput p5, p0, Landroid/view/WindowAnimationInfo;->scalePivotXType:I

    .line 215
    iput p8, p0, Landroid/view/WindowAnimationInfo;->scalePivotYValue:F

    .line 216
    iput p7, p0, Landroid/view/WindowAnimationInfo;->scalePivotYType:I

    .line 217
    iput-wide p9, p0, Landroid/view/WindowAnimationInfo;->scaleAnimTime:J

    .line 218
    return-void
.end method

.method public setTranslateAnim(IFIFIFIFJ)V
    .locals 1
    .parameter "fromXType"
    .parameter "fromXValue"
    .parameter "toXType"
    .parameter "toXValue"
    .parameter "fromYType"
    .parameter "fromYValue"
    .parameter "toYType"
    .parameter "toYValue"
    .parameter "animTime"

    .prologue
    .line 183
    iget v0, p0, Landroid/view/WindowAnimationInfo;->animType:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/WindowAnimationInfo;->animType:I

    .line 184
    iput p2, p0, Landroid/view/WindowAnimationInfo;->translateFromXValue:F

    .line 185
    iput p4, p0, Landroid/view/WindowAnimationInfo;->translateToXValue:F

    .line 186
    iput p6, p0, Landroid/view/WindowAnimationInfo;->translateFromYValue:F

    .line 187
    iput p8, p0, Landroid/view/WindowAnimationInfo;->translateToYValue:F

    .line 189
    iput p1, p0, Landroid/view/WindowAnimationInfo;->translateFromXType:I

    .line 190
    iput p3, p0, Landroid/view/WindowAnimationInfo;->translateToXType:I

    .line 191
    iput p5, p0, Landroid/view/WindowAnimationInfo;->translateFromYType:I

    .line 192
    iput p7, p0, Landroid/view/WindowAnimationInfo;->translateToYType:I

    .line 193
    iput-wide p9, p0, Landroid/view/WindowAnimationInfo;->translateAnimTime:J

    .line 194
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 292
    iget v0, p0, Landroid/view/WindowAnimationInfo;->animType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget v0, p0, Landroid/view/WindowAnimationInfo;->translateFromXType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget v0, p0, Landroid/view/WindowAnimationInfo;->translateFromXValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 295
    iget v0, p0, Landroid/view/WindowAnimationInfo;->translateToXType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget v0, p0, Landroid/view/WindowAnimationInfo;->translateToXValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 297
    iget v0, p0, Landroid/view/WindowAnimationInfo;->translateFromYType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget v0, p0, Landroid/view/WindowAnimationInfo;->translateFromYValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 299
    iget v0, p0, Landroid/view/WindowAnimationInfo;->translateToYType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget v0, p0, Landroid/view/WindowAnimationInfo;->translateToYValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 301
    iget v0, p0, Landroid/view/WindowAnimationInfo;->scaleFromX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 302
    iget v0, p0, Landroid/view/WindowAnimationInfo;->scaleToX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 303
    iget v0, p0, Landroid/view/WindowAnimationInfo;->scaleFromY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 304
    iget v0, p0, Landroid/view/WindowAnimationInfo;->scaleToY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 305
    iget v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotXType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotYType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotXValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 308
    iget v0, p0, Landroid/view/WindowAnimationInfo;->scalePivotYValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 309
    iget v0, p0, Landroid/view/WindowAnimationInfo;->alphaFromValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 310
    iget v0, p0, Landroid/view/WindowAnimationInfo;->alphaToValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 311
    iget-wide v0, p0, Landroid/view/WindowAnimationInfo;->translateAnimTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 312
    iget-wide v0, p0, Landroid/view/WindowAnimationInfo;->alphaAnimTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 313
    iget-wide v0, p0, Landroid/view/WindowAnimationInfo;->scaleAnimTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 314
    return-void
.end method
