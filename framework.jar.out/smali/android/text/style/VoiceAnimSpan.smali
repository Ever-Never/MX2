.class public Landroid/text/style/VoiceAnimSpan;
.super Landroid/text/style/ImageSpan;
.source "VoiceAnimSpan.java"


# static fields
.field private static ANIM_TIME:I = 0x0

.field private static final INIT_OFFSET:I = -0x64

.field private static final MESSAGE_INVALIDATE:I = 0x3e9

.field private static final NUM_0:I = 0x0

.field private static final NUM_1:I = 0x1

.field private static final NUM_2:I = 0x2

.field private static final NUM_3:I = 0x3

.field private static final NUM_4:I = 0x4

.field private static final SHAKE_ANIM_TIME:I = 0x14


# instance fields
.field private final ANIM_ONE:I

.field private final ANIM_TWO:I

.field private CUR_ANIM:I

.field private PATH:[I

.field private mContext:Landroid/content/Context;

.field private mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mEnd:I

.field private mHandler:Landroid/os/Handler;

.field private mOffset:I

.field private mPoint0:Landroid/graphics/drawable/BitmapDrawable;

.field private mPoint1:Landroid/graphics/drawable/BitmapDrawable;

.field private mPoint2:Landroid/graphics/drawable/BitmapDrawable;

.field private mPoint3:Landroid/graphics/drawable/BitmapDrawable;

.field private mPreTime:J

.field private mRunningLeft:Ljava/lang/Boolean;

.field private mShake:Ljava/lang/Boolean;

.field private mStart:I

.field private mTextView:Landroid/widget/TextView;

.field private mWhichPoint:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x1f4

    sput v0, Landroid/text/style/VoiceAnimSpan;->ANIM_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "resourceId"

    .prologue
    const/16 v3, 0x3ea

    const/16 v2, 0x3e9

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mShake:Ljava/lang/Boolean;

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mRunningLeft:Ljava/lang/Boolean;

    .line 40
    const/16 v0, -0x64

    iput v0, p0, Landroid/text/style/VoiceAnimSpan;->mOffset:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/style/VoiceAnimSpan;->mWhichPoint:I

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/style/VoiceAnimSpan;->mPreTime:J

    .line 47
    iput v2, p0, Landroid/text/style/VoiceAnimSpan;->ANIM_ONE:I

    .line 48
    iput v3, p0, Landroid/text/style/VoiceAnimSpan;->ANIM_TWO:I

    .line 49
    iput v3, p0, Landroid/text/style/VoiceAnimSpan;->CUR_ANIM:I

    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/text/style/VoiceAnimSpan;->PATH:[I

    .line 54
    new-instance v0, Landroid/text/style/VoiceAnimSpan$1;

    invoke-direct {v0, p0}, Landroid/text/style/VoiceAnimSpan$1;-><init>(Landroid/text/style/VoiceAnimSpan;)V

    iput-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Landroid/text/style/VoiceAnimSpan;->mContext:Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Landroid/text/style/VoiceAnimSpan;->initPointBitmap()V

    .line 74
    iget v0, p0, Landroid/text/style/VoiceAnimSpan;->CUR_ANIM:I

    if-ne v0, v2, :cond_0

    .line 75
    const/16 v0, 0x1f4

    sput v0, Landroid/text/style/VoiceAnimSpan;->ANIM_TIME:I

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    const/16 v0, 0xc8

    sput v0, Landroid/text/style/VoiceAnimSpan;->ANIM_TIME:I

    goto :goto_0

    .line 50
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/text/style/VoiceAnimSpan;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/text/style/VoiceAnimSpan;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Landroid/text/style/VoiceAnimSpan;->mStart:I

    return v0
.end method

.method static synthetic access$200(Landroid/text/style/VoiceAnimSpan;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Landroid/text/style/VoiceAnimSpan;->mEnd:I

    return v0
.end method

.method private getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 166
    iget-object v1, p0, Landroid/text/style/VoiceAnimSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 167
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    .line 169
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 172
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    if-nez v0, :cond_1

    .line 173
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 174
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/text/style/VoiceAnimSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 177
    :cond_1
    return-object v0
.end method

.method private getPointDrawable(J)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6
    .parameter "now"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 181
    iget v0, p0, Landroid/text/style/VoiceAnimSpan;->CUR_ANIM:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_7

    .line 182
    iget-wide v0, p0, Landroid/text/style/VoiceAnimSpan;->mPreTime:J

    sub-long v0, p1, v0

    sget v2, Landroid/text/style/VoiceAnimSpan;->ANIM_TIME:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 183
    iget v0, p0, Landroid/text/style/VoiceAnimSpan;->mWhichPoint:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/style/VoiceAnimSpan;->mWhichPoint:I

    .line 184
    iget v0, p0, Landroid/text/style/VoiceAnimSpan;->mWhichPoint:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/text/style/VoiceAnimSpan;->mWhichPoint:I

    if-gez v0, :cond_1

    .line 185
    :cond_0
    iput v5, p0, Landroid/text/style/VoiceAnimSpan;->mWhichPoint:I

    .line 187
    :cond_1
    iput-wide p1, p0, Landroid/text/style/VoiceAnimSpan;->mPreTime:J

    .line 189
    :cond_2
    iget v0, p0, Landroid/text/style/VoiceAnimSpan;->mWhichPoint:I

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/text/style/VoiceAnimSpan;->mWhichPoint:I

    if-ne v0, v4, :cond_4

    .line 190
    :cond_3
    iget-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mPoint0:Landroid/graphics/drawable/BitmapDrawable;

    .line 220
    :goto_0
    return-object v0

    .line 191
    :cond_4
    iget v0, p0, Landroid/text/style/VoiceAnimSpan;->mWhichPoint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 192
    iget-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mPoint1:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 193
    :cond_5
    iget v0, p0, Landroid/text/style/VoiceAnimSpan;->mWhichPoint:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 194
    iget-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mPoint2:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 196
    :cond_6
    iget-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mPoint3:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 199
    :cond_7
    iget-wide v0, p0, Landroid/text/style/VoiceAnimSpan;->mPreTime:J

    sub-long v0, p1, v0

    sget v2, Landroid/text/style/VoiceAnimSpan;->ANIM_TIME:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9

    .line 200
    iget v0, p0, Landroid/text/style/VoiceAnimSpan;->mWhichPoint:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/style/VoiceAnimSpan;->mWhichPoint:I

    .line 201
    iget v0, p0, Landroid/text/style/VoiceAnimSpan;->mWhichPoint:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_8

    .line 202
    iput v5, p0, Landroid/text/style/VoiceAnimSpan;->mWhichPoint:I

    .line 204
    :cond_8
    const-string v0, "dada"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/text/style/VoiceAnimSpan;->mWhichPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iput-wide p1, p0, Landroid/text/style/VoiceAnimSpan;->mPreTime:J

    .line 207
    :cond_9
    iget v0, p0, Landroid/text/style/VoiceAnimSpan;->mWhichPoint:I

    if-ne v0, v4, :cond_a

    .line 208
    iget-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mPoint0:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 210
    :cond_a
    iget-object v0, p0, Landroid/text/style/VoiceAnimSpan;->PATH:[I

    iget v1, p0, Landroid/text/style/VoiceAnimSpan;->mWhichPoint:I

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 220
    iget-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mPoint0:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 212
    :pswitch_0
    iget-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mPoint0:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mPoint1:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 216
    :pswitch_2
    iget-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mPoint2:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 218
    :pswitch_3
    iget-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mPoint3:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initPointBitmap()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mPoint0:Landroid/graphics/drawable/BitmapDrawable;

    .line 99
    iget-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mPoint1:Landroid/graphics/drawable/BitmapDrawable;

    .line 100
    iget-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mPoint2:Landroid/graphics/drawable/BitmapDrawable;

    .line 101
    iget-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mPoint3:Landroid/graphics/drawable/BitmapDrawable;

    .line 102
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 10
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 109
    .local v3, now:J
    iget-wide v6, p0, Landroid/text/style/VoiceAnimSpan;->mPreTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 110
    iput-wide v3, p0, Landroid/text/style/VoiceAnimSpan;->mPreTime:J

    .line 112
    :cond_0
    iput p3, p0, Landroid/text/style/VoiceAnimSpan;->mStart:I

    .line 113
    iput p4, p0, Landroid/text/style/VoiceAnimSpan;->mEnd:I

    .line 114
    invoke-direct {p0}, Landroid/text/style/VoiceAnimSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 115
    .local v1, b:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 116
    move/from16 v0, p6

    int-to-float v6, v0

    move/from16 v0, p8

    int-to-float v7, v0

    iget-object v8, p0, Landroid/text/style/VoiceAnimSpan;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v8

    sub-float/2addr v7, v8

    move/from16 v0, p6

    int-to-float v8, v0

    sub-float/2addr v7, v8

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f80

    add-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v5, v6, v7

    .line 119
    .local v5, transY:F
    invoke-virtual {p1, p5, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 122
    invoke-direct {p0, v3, v4}, Landroid/text/style/VoiceAnimSpan;->getPointDrawable(J)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 123
    .local v2, mBitmap:Landroid/graphics/Bitmap;
    iget-object v6, p0, Landroid/text/style/VoiceAnimSpan;->mShake:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 124
    iget v6, p0, Landroid/text/style/VoiceAnimSpan;->mOffset:I

    const/16 v7, -0x64

    if-ne v6, v7, :cond_1

    .line 125
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Landroid/text/style/VoiceAnimSpan;->mOffset:I

    .line 126
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/text/style/VoiceAnimSpan;->mRunningLeft:Ljava/lang/Boolean;

    .line 128
    :cond_1
    iget-object v6, p0, Landroid/text/style/VoiceAnimSpan;->mRunningLeft:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 129
    iget v6, p0, Landroid/text/style/VoiceAnimSpan;->mOffset:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iput v6, p0, Landroid/text/style/VoiceAnimSpan;->mOffset:I

    .line 130
    iget v6, p0, Landroid/text/style/VoiceAnimSpan;->mOffset:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x4

    if-lt v6, v7, :cond_2

    .line 131
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x4

    iput v6, p0, Landroid/text/style/VoiceAnimSpan;->mOffset:I

    .line 132
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/text/style/VoiceAnimSpan;->mRunningLeft:Ljava/lang/Boolean;

    .line 141
    :cond_2
    :goto_0
    iget v6, p0, Landroid/text/style/VoiceAnimSpan;->mOffset:I

    int-to-float v6, v6

    add-float/2addr v6, p5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v5

    move-object/from16 v0, p9

    invoke-virtual {p1, v2, v6, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 150
    :goto_1
    iget-object v6, p0, Landroid/text/style/VoiceAnimSpan;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3e9

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    iget-object v6, p0, Landroid/text/style/VoiceAnimSpan;->mShake:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 152
    iget-object v6, p0, Landroid/text/style/VoiceAnimSpan;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3e9

    const-wide/16 v8, 0x14

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 156
    :goto_2
    monitor-exit p0

    .line 157
    return-void

    .line 135
    :cond_3
    iget v6, p0, Landroid/text/style/VoiceAnimSpan;->mOffset:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x4

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/text/style/VoiceAnimSpan;->mOffset:I

    .line 136
    iget v6, p0, Landroid/text/style/VoiceAnimSpan;->mOffset:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x4

    if-gt v6, v7, :cond_2

    .line 137
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x4

    iput v6, p0, Landroid/text/style/VoiceAnimSpan;->mOffset:I

    .line 138
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/text/style/VoiceAnimSpan;->mRunningLeft:Ljava/lang/Boolean;

    goto :goto_0

    .line 156
    .end local v1           #b:Landroid/graphics/drawable/Drawable;
    .end local v2           #mBitmap:Landroid/graphics/Bitmap;
    .end local v3           #now:J
    .end local v5           #transY:F
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 144
    .restart local v1       #b:Landroid/graphics/drawable/Drawable;
    .restart local v2       #mBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #now:J
    .restart local v5       #transY:F
    :cond_4
    const/16 v6, -0x64

    :try_start_1
    iput v6, p0, Landroid/text/style/VoiceAnimSpan;->mOffset:I

    .line 145
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/text/style/VoiceAnimSpan;->mRunningLeft:Ljava/lang/Boolean;

    .line 146
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, p5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v5

    move-object/from16 v0, p9

    invoke-virtual {p1, v2, v6, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 154
    :cond_5
    iget-object v6, p0, Landroid/text/style/VoiceAnimSpan;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3e9

    sget v8, Landroid/text/style/VoiceAnimSpan;->ANIM_TIME:I

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 161
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 162
    iget-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    const/16 v0, -0x64

    iput v0, p0, Landroid/text/style/VoiceAnimSpan;->mOffset:I

    .line 91
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mShake:Ljava/lang/Boolean;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/style/VoiceAnimSpan;->mWhichPoint:I

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/style/VoiceAnimSpan;->mPreTime:J

    .line 94
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mRunningLeft:Ljava/lang/Boolean;

    .line 95
    return-void
.end method

.method public setShake(Z)V
    .locals 1
    .parameter "shake"

    .prologue
    .line 86
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/VoiceAnimSpan;->mShake:Ljava/lang/Boolean;

    .line 87
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 82
    iput-object p1, p0, Landroid/text/style/VoiceAnimSpan;->mTextView:Landroid/widget/TextView;

    .line 83
    return-void
.end method
