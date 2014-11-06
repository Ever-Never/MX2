.class public Lcom/meizu/internal/policy/impl/keyguard/GlowView;
.super Landroid/view/View;
.source "GlowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/keyguard/GlowView$Callback;,
        Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;
    }
.end annotation


# static fields
.field public static final ANIM_STATUS_DYING:Ljava/lang/String; = "dying"

.field public static final ANIM_STATUS_RUNNING:Ljava/lang/String; = "running"

.field public static final ANIM_STATUS_STOP:Ljava/lang/String; = "stop"

.field private static final BORN_GLOW_VIEW:I = 0x0

.field private static final DEBUG:Z = false

.field private static final GLOW_ANIM_DRUGTION_PART_ONE:J = 0x85L

.field private static final GLOW_ANIM_DRUGTION_PART_TWO:J = 0x374L

.field private static final GLOW_ANIM_DRUGTION_TOTAL:J = 0x3f9L

.field private static final GLOW_VIEW_BORN_CIRCLE_TIME:J = 0x42bL

.field private static final GLOW_VIEW_BORN_HALF_TIME:J = 0x13dL

.field private static GLOW_VIEW_START_SIZE:I = 0x0

.field private static GLOW_VIEW_SUBJOIN_SIZE:I = 0x0

.field private static final MAX_GLOW_VIEW_NUM:I = 0x4

.field private static final TAG:Ljava/lang/String; = null

.field private static final TEXT_ANIM_DRUGTION_PART_ONE:J = 0x226L

.field private static final TEXT_ANIM_DRUGTION_PART_ONE_TWO:J = 0x2ddL

.field private static final TEXT_ANIM_DRUGTION_PART_THREE:J = 0x1d3L

.field private static final TEXT_ANIM_DRUGTION_TOTAL:J = 0x4b0L

.field private static final VALUE_ANIMATOR_CIRCLE:J = 0x2710L

.field private static final WAITINT_FOR_STOP_ANIM:I = 0x1

.field private static cx:I

.field private static cy:I

.field private static delayCx:I

.field private static delayCy:I

.field private static mDelayFontSize:F

.field private static mGlowViewColor:I

.field private static mPaddingBetweenTitleAndDelay:I

.field private static mtitleFontSize:F

.field private static titleCx:I

.field private static titleCy:I


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mCallback:Lcom/meizu/internal/policy/impl/keyguard/GlowView$Callback;

.field private mDelay:Ljava/lang/String;

.field private mDelayAlpha:I

.field private mDelayPaint:Landroid/graphics/Paint;

.field private mGlowViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mNewGlowViewDelay:J

.field private mPaint:Landroid/graphics/Paint;

.field private mRunningStatus:Ljava/lang/String;

.field private mTextAnimStartTime:J

.field private mtitle:Ljava/lang/String;

.field private mtitleAlpha:I

.field private mtitlePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const-string v1, "stop"

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mRunningStatus:Ljava/lang/String;

    .line 47
    const-wide/16 v1, 0x13d

    iput-wide v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mNewGlowViewDelay:J

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mGlowViewList:Ljava/util/ArrayList;

    .line 125
    new-instance v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView$1;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/keyguard/GlowView$1;-><init>(Lcom/meizu/internal/policy/impl/keyguard/GlowView;)V

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mHandler:Landroid/os/Handler;

    .line 86
    const/4 v1, -0x1

    sput v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mGlowViewColor:I

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mtitleFontSize:F

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelayFontSize:F

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->GLOW_VIEW_START_SIZE:I

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->GLOW_VIEW_START_SIZE:I

    sub-int/2addr v1, v2

    sput v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->GLOW_VIEW_SUBJOIN_SIZE:I

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mPaddingBetweenTitleAndDelay:I

    .line 93
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 94
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mGlowViewList:Ljava/util/ArrayList;

    new-instance v2, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;

    invoke-direct {v2, p0}, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;-><init>(Lcom/meizu/internal/policy/impl/keyguard/GlowView;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 97
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mPaint:Landroid/graphics/Paint;

    .line 98
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mGlowViewColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mtitlePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_2

    .line 102
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mtitlePaint:Landroid/graphics/Paint;

    .line 103
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mtitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mtitlePaint:Landroid/graphics/Paint;

    sget v2, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mtitleFontSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 105
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mtitlePaint:Landroid/graphics/Paint;

    sget v2, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mGlowViewColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelayPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_3

    .line 109
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelayPaint:Landroid/graphics/Paint;

    .line 110
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelayPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelayPaint:Landroid/graphics/Paint;

    sget v2, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelayFontSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 112
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelayPaint:Landroid/graphics/Paint;

    sget v2, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mGlowViewColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/keyguard/GlowView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mNewGlowViewDelay:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/meizu/internal/policy/impl/keyguard/GlowView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mNewGlowViewDelay:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/meizu/internal/policy/impl/keyguard/GlowView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mGlowViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/internal/policy/impl/keyguard/GlowView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->reliveGlowView(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/internal/policy/impl/keyguard/GlowView;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->isAllGlowViewDied(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/meizu/internal/policy/impl/keyguard/GlowView;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/internal/policy/impl/keyguard/GlowView;)Lcom/meizu/internal/policy/impl/keyguard/GlowView$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/GlowView$Callback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/internal/policy/impl/keyguard/GlowView;Ljava/util/ArrayList;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->updateGlowView(Ljava/util/ArrayList;J)V

    return-void
.end method

.method private caculateTextPosition()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 321
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mtitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mtitlePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mtitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 323
    .local v0, textWidth:F
    sget v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->cx:I

    int-to-float v1, v1

    div-float v2, v0, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->titleCx:I

    .line 324
    sget v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->cy:I

    sput v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->titleCy:I

    .line 326
    .end local v0           #textWidth:F
    :cond_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelay:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelayPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 328
    .restart local v0       #textWidth:F
    sget v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->cx:I

    int-to-float v1, v1

    div-float v2, v0, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->delayCx:I

    .line 329
    sget v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->cy:I

    int-to-float v1, v1

    sget v2, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelayFontSize:F

    add-float/2addr v1, v2

    sget v2, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mPaddingBetweenTitleAndDelay:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->delayCy:I

    .line 331
    .end local v0           #textWidth:F
    :cond_1
    return-void
.end method

.method private isAllGlowViewDied(Ljava/util/ArrayList;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, mGlowViewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;

    .line 213
    .local v1, mGlowViewInfo:Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;
    iget-boolean v2, v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;->isAlive:Z

    if-eqz v2, :cond_0

    .line 214
    const/4 v2, 0x0

    .line 217
    .end local v1           #mGlowViewInfo:Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private reliveGlowView(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, mGlowViewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;

    .line 268
    .local v1, mGlowViewInfo:Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;
    iget-boolean v2, v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;->isAlive:Z

    if-nez v2, :cond_0

    .line 269
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;->isAlive:Z

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;->mBornTime:J

    .line 275
    .end local v1           #mGlowViewInfo:Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;
    :cond_1
    return-void
.end method

.method private updateGlowView(Ljava/util/ArrayList;J)V
    .locals 12
    .parameter
    .parameter "currentTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, mGlowViewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;

    .line 231
    .local v3, mGlowViewInfo:Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;
    iget-boolean v6, v3, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;->isAlive:Z

    if-eqz v6, :cond_0

    .line 232
    iget-wide v6, v3, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;->mBornTime:J

    sub-long v1, p2, v6

    .line 233
    .local v1, mAge:J
    const-wide/16 v6, 0x3f9

    cmp-long v6, v1, v6

    if-gez v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, v3, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;->isAlive:Z

    .line 234
    iget-boolean v6, v3, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;->isAlive:Z

    if-eqz v6, :cond_0

    .line 235
    sget v6, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->GLOW_VIEW_START_SIZE:I

    int-to-long v6, v6

    sget v8, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->GLOW_VIEW_SUBJOIN_SIZE:I

    int-to-long v8, v8

    mul-long/2addr v8, v1

    const-wide/16 v10, 0x3f9

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, v3, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;->mRadius:I

    .line 236
    const-wide/16 v6, 0x85

    cmp-long v6, v1, v6

    if-gez v6, :cond_2

    const-wide/16 v6, 0x1a

    mul-long/2addr v6, v1

    const-wide/16 v8, 0x85

    div-long/2addr v6, v8

    :goto_2
    long-to-int v6, v6

    iput v6, v3, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;->mAlpha:I

    goto :goto_0

    .line 233
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 236
    :cond_2
    const-wide/16 v6, 0x1a

    const-wide/16 v8, 0x3f9

    sub-long/2addr v8, v1

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x374

    div-long/2addr v6, v8

    goto :goto_2

    .line 244
    .end local v1           #mAge:J
    .end local v3           #mGlowViewInfo:Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;
    :cond_3
    iget-wide v6, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mTextAnimStartTime:J

    sub-long v6, p2, v6

    const-wide/16 v8, 0x4b0

    rem-long v4, v6, v8

    .line 245
    .local v4, textAnimAge:J
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mRunningStatus:Ljava/lang/String;

    const-string v7, "dying"

    if-ne v6, v7, :cond_4

    .line 246
    iget v6, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mtitleAlpha:I

    int-to-double v6, v6

    const-wide v8, 0x3feccccccccccccdL

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mtitleAlpha:I

    .line 247
    iget v6, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelayAlpha:I

    int-to-double v6, v6

    const-wide v8, 0x3feccccccccccccdL

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelayAlpha:I

    .line 259
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 260
    return-void

    .line 248
    :cond_4
    const-wide/16 v6, 0x226

    cmp-long v6, v4, v6

    if-gez v6, :cond_5

    .line 249
    const-wide/16 v6, 0x66

    mul-long/2addr v6, v4

    const-wide/16 v8, 0x226

    div-long/2addr v6, v8

    long-to-int v6, v6

    rsub-int v6, v6, 0xff

    iput v6, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mtitleAlpha:I

    .line 250
    const-wide/16 v6, 0x4c

    mul-long/2addr v6, v4

    const-wide/16 v8, 0x226

    div-long/2addr v6, v8

    long-to-int v6, v6

    rsub-int v6, v6, 0x99

    iput v6, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelayAlpha:I

    goto :goto_3

    .line 251
    :cond_5
    const-wide/16 v6, 0x2dd

    cmp-long v6, v4, v6

    if-lez v6, :cond_6

    .line 252
    const-wide/16 v6, 0x66

    const-wide/16 v8, 0x2dd

    sub-long v8, v4, v8

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x1d3

    div-long/2addr v6, v8

    long-to-int v6, v6

    add-int/lit16 v6, v6, 0x99

    iput v6, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mtitleAlpha:I

    .line 253
    const-wide/16 v6, 0x4c

    const-wide/16 v8, 0x2dd

    sub-long v8, v4, v8

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x1d3

    div-long/2addr v6, v8

    long-to-int v6, v6

    add-int/lit8 v6, v6, 0x4d

    iput v6, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelayAlpha:I

    goto :goto_3

    .line 255
    :cond_6
    const/16 v6, 0x99

    iput v6, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mtitleAlpha:I

    .line 256
    const/16 v6, 0x4d

    iput v6, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelayAlpha:I

    goto :goto_3
.end method


# virtual methods
.method public SetText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "delay"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mtitle:Ljava/lang/String;

    .line 313
    iput-object p2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelay:Ljava/lang/String;

    .line 314
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->caculateTextPosition()V

    .line 315
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 340
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 341
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 280
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mGlowViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;

    .line 281
    .local v1, mGlowViewInfo:Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;
    iget-boolean v2, v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;->isAlive:Z

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mPaint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;->mAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 283
    sget v2, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->cx:I

    int-to-float v2, v2

    sget v3, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->cy:I

    int-to-float v3, v3

    iget v4, v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;->mRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 288
    .end local v1           #mGlowViewInfo:Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;
    :cond_1
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mtitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 289
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mtitlePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mtitleAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 290
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mtitle:Ljava/lang/String;

    sget v3, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->titleCx:I

    int-to-float v3, v3

    sget v4, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->titleCy:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mtitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 292
    :cond_2
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelay:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 293
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelayPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelayAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 294
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelay:Ljava/lang/String;

    sget v3, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->delayCx:I

    int-to-float v3, v3

    sget v4, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->delayCy:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mDelayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 296
    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 301
    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->cx:I

    .line 302
    sub-int v0, p5, p3

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->cy:I

    .line 303
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->caculateTextPosition()V

    .line 304
    return-void
.end method

.method public setCallback(Lcom/meizu/internal/policy/impl/keyguard/GlowView$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 336
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/GlowView$Callback;

    .line 337
    return-void
.end method

.method public startAnim()V
    .locals 4

    .prologue
    .line 153
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mRunningStatus:Ljava/lang/String;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mRunningStatus:Ljava/lang/String;

    const-string v2, "running"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    monitor-exit v1

    .line 180
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string v0, "running"

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mRunningStatus:Ljava/lang/String;

    .line 157
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mTextAnimStartTime:J

    .line 160
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mGlowViewList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->reliveGlowView(Ljava/util/ArrayList;)V

    .line 161
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mNewGlowViewDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 162
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 163
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 164
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 165
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView$2;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/keyguard/GlowView$2;-><init>(Lcom/meizu/internal/policy/impl/keyguard/GlowView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 178
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 179
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 177
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public stopAnim(Z)V
    .locals 5
    .parameter "animToEnd"

    .prologue
    const/4 v4, 0x0

    .line 187
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    const-wide/16 v2, 0x13d

    iput-wide v2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mNewGlowViewDelay:J

    .line 189
    if-eqz p1, :cond_0

    .line 190
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 191
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mRunningStatus:Ljava/lang/String;

    monitor-enter v3

    .line 192
    :try_start_0
    const-string v2, "dying"

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mRunningStatus:Ljava/lang/String;

    .line 193
    monitor-exit v3

    .line 204
    :goto_0
    return-void

    .line 193
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mGlowViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;

    .line 198
    .local v1, mGlowViewInfo:Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;
    iput-boolean v4, v1, Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;->isAlive:Z

    goto :goto_1

    .line 200
    .end local v1           #mGlowViewInfo:Lcom/meizu/internal/policy/impl/keyguard/GlowView$GlowViewInfo;
    :cond_2
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mRunningStatus:Ljava/lang/String;

    monitor-enter v3

    .line 201
    :try_start_1
    const-string v2, "stop"

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mRunningStatus:Ljava/lang/String;

    .line 202
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method
