.class final Lcom/android/server/power/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final AUTOMODE:I = 0x0

.field public static final BOOTINGMODE:I = 0x2

.field public static final USERMODE:I = 0x1


# instance fields
.field private final DEBUG:Z

.field private MaxBrightnessVal:I

.field private MinBrigntnessVal:I

.field private RoomBrigntnessVal:I

.field private final TAG:Ljava/lang/String;

.field brightnessChangeIntent:Landroid/content/Intent;

.field private mAnimatedValue:F

.field private mAnimating:Z

.field private mAnimatorMode:I

.field private final mCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mContext:Landroid/content/Context;

.field private mCurrentValue:I

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private mLastNotifyTimeNanos:J

.field private mLastStableValue:F

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mSpline:D

.field private mTargetValue:I

.field private mdifferencevalue:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/server/power/RampAnimator;,"Lcom/android/server/power/RampAnimator<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    .local p2, property:Landroid/util/IntProperty;,"Landroid/util/IntProperty<TT;>;"
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "RampAnimator"

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->TAG:Ljava/lang/String;

    .line 37
    iput-boolean v2, p0, Lcom/android/server/power/RampAnimator;->DEBUG:Z

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/RampAnimator;->mLastNotifyTimeNanos:J

    .line 52
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/power/RampAnimator;->mdifferencevalue:F

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    .line 55
    const-wide/high16 v0, 0x401a

    iput-wide v0, p0, Lcom/android/server/power/RampAnimator;->mSpline:D

    .line 56
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/server/power/RampAnimator;->MaxBrightnessVal:I

    .line 57
    iput v2, p0, Lcom/android/server/power/RampAnimator;->MinBrigntnessVal:I

    .line 58
    const/16 v0, 0x61

    iput v0, p0, Lcom/android/server/power/RampAnimator;->RoomBrigntnessVal:I

    .line 62
    iput v2, p0, Lcom/android/server/power/RampAnimator;->mAnimatorMode:I

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEIZU_SCREEN_BRIGHTNESS_CHANGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->brightnessChangeIntent:Landroid/content/Intent;

    .line 176
    new-instance v0, Lcom/android/server/power/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/RampAnimator$1;-><init>(Lcom/android/server/power/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mCallback:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    .line 67
    iput-object p2, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    .line 68
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter
    .parameter "ct"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty",
            "<TT;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/server/power/RampAnimator;,"Lcom/android/server/power/RampAnimator<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    .local p2, property:Landroid/util/IntProperty;,"Landroid/util/IntProperty<TT;>;"
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "RampAnimator"

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->TAG:Ljava/lang/String;

    .line 37
    iput-boolean v2, p0, Lcom/android/server/power/RampAnimator;->DEBUG:Z

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/RampAnimator;->mLastNotifyTimeNanos:J

    .line 52
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/power/RampAnimator;->mdifferencevalue:F

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    .line 55
    const-wide/high16 v0, 0x401a

    iput-wide v0, p0, Lcom/android/server/power/RampAnimator;->mSpline:D

    .line 56
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/server/power/RampAnimator;->MaxBrightnessVal:I

    .line 57
    iput v2, p0, Lcom/android/server/power/RampAnimator;->MinBrigntnessVal:I

    .line 58
    const/16 v0, 0x61

    iput v0, p0, Lcom/android/server/power/RampAnimator;->RoomBrigntnessVal:I

    .line 62
    iput v2, p0, Lcom/android/server/power/RampAnimator;->mAnimatorMode:I

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEIZU_SCREEN_BRIGHTNESS_CHANGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->brightnessChangeIntent:Landroid/content/Intent;

    .line 176
    new-instance v0, Lcom/android/server/power/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/RampAnimator$1;-><init>(Lcom/android/server/power/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mCallback:Ljava/lang/Runnable;

    .line 72
    iput-object p1, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    .line 73
    iput-object p2, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    .line 74
    iput-object p3, p0, Lcom/android/server/power/RampAnimator;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 76
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/RampAnimator;->MaxBrightnessVal:I

    .line 78
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/RampAnimator;->MinBrigntnessVal:I

    .line 80
    iget v0, p0, Lcom/android/server/power/RampAnimator;->MaxBrightnessVal:I

    iget v1, p0, Lcom/android/server/power/RampAnimator;->MinBrigntnessVal:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4070

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/RampAnimator;->mSpline:D

    .line 81
    iget v0, p0, Lcom/android/server/power/RampAnimator;->RoomBrigntnessVal:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/android/server/power/RampAnimator;->mSpline:D

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/android/server/power/RampAnimator;->MinBrigntnessVal:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/server/power/RampAnimator;->RoomBrigntnessVal:I

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/RampAnimator;)Landroid/view/Choreographer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/RampAnimator;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/RampAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/server/power/RampAnimator;->MinBrigntnessVal:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/power/RampAnimator;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/server/power/RampAnimator;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/power/RampAnimator;)Landroid/util/IntProperty;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/power/RampAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->postCallback()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/power/RampAnimator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/power/RampAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/power/RampAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/power/RampAnimator;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/power/RampAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/power/RampAnimator;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mdifferencevalue:F

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/power/RampAnimator;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/power/RampAnimator;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/power/RampAnimator;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/android/server/power/RampAnimator;->mSpline:D

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/power/RampAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatorMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/power/RampAnimator;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private postCallback()V
    .locals 4

    .prologue
    .line 173
    .local p0, this:Lcom/android/server/power/RampAnimator;,"Lcom/android/server/power/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 174
    return-void
.end method


# virtual methods
.method public animateTo(II)Z
    .locals 1
    .parameter "target"
    .parameter "rate"

    .prologue
    .line 95
    .local p0, this:Lcom/android/server/power/RampAnimator;,"Lcom/android/server/power/RampAnimator<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/RampAnimator;->animateTo(III)Z

    move-result v0

    return v0
.end method

.method public animateTo(III)Z
    .locals 10
    .parameter "target"
    .parameter "rate"
    .parameter "mode"

    .prologue
    .line 109
    .local p0, this:Lcom/android/server/power/RampAnimator;,"Lcom/android/server/power/RampAnimator<TT;>;"
    int-to-double v2, p1

    iget-wide v4, p0, Lcom/android/server/power/RampAnimator;->mSpline:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget v3, p0, Lcom/android/server/power/RampAnimator;->MinBrigntnessVal:I

    add-int v1, v2, v3

    .line 111
    .local v1, reallyTarget:I
    const-string v2, "RampAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateTo  reallyTarget is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "rate is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    if-eqz v2, :cond_0

    .line 114
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    .line 115
    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v3, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 116
    iput v1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    .line 118
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    .line 128
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    if-gt p2, v2, :cond_2

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt v1, v2, :cond_1

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    iget v3, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    if-le v2, v3, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    iget v3, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt v2, v3, :cond_6

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt v2, v1, :cond_6

    .line 132
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    if-le p2, v2, :cond_3

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-le v2, v1, :cond_3

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    if-le v1, v2, :cond_3

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mAnimatorMode:I

    if-eq v2, p3, :cond_4

    .line 133
    :cond_3
    iput p2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    .line 136
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    iget v3, p0, Lcom/android/server/power/RampAnimator;->RoomBrigntnessVal:I

    if-ge v2, v3, :cond_5

    iget v2, p0, Lcom/android/server/power/RampAnimator;->RoomBrigntnessVal:I

    if-ge v1, v2, :cond_5

    if-nez p3, :cond_5

    .line 137
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-le v2, v1, :cond_8

    .line 139
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    int-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL

    iget v6, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    sub-int/2addr v6, v1

    int-to-double v6, v6

    const-wide/high16 v8, 0x4008

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4024

    div-double/2addr v6, v8

    iget v8, p0, Lcom/android/server/power/RampAnimator;->RoomBrigntnessVal:I

    iget v9, p0, Lcom/android/server/power/RampAnimator;->MinBrigntnessVal:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    .line 140
    const-string v2, "RampAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateTo mRate is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_5
    :goto_1
    iput p3, p0, Lcom/android/server/power/RampAnimator;->mAnimatorMode:I

    .line 149
    :cond_6
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    if-eq v2, v1, :cond_9

    const/4 v0, 0x1

    .line 150
    .local v0, changed:Z
    :goto_2
    iput v1, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    .line 153
    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->brightnessChangeIntent:Landroid/content/Intent;

    const-string v3, "target"

    iget v4, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    iget v5, p0, Lcom/android/server/power/RampAnimator;->MinBrigntnessVal:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/android/server/power/RampAnimator;->mSpline:D

    div-double/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 154
    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->brightnessChangeIntent:Landroid/content/Intent;

    const-string v3, "rate"

    iget v4, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/android/server/power/RampAnimator;->mSpline:D

    div-double/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 155
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/power/RampAnimator;->mLastNotifyTimeNanos:J

    .line 158
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-nez v2, :cond_7

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-eq v1, v2, :cond_7

    .line 159
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    .line 160
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    iput v2, p0, Lcom/android/server/power/RampAnimator;->mLastStableValue:F

    .line 162
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J

    .line 164
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->postCallback()V

    .line 166
    :cond_7
    int-to-float v2, v1

    iget v3, p0, Lcom/android/server/power/RampAnimator;->mLastStableValue:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, p0, Lcom/android/server/power/RampAnimator;->mdifferencevalue:F

    goto/16 :goto_0

    .line 141
    .end local v0           #changed:Z
    :cond_8
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-ge v2, v1, :cond_5

    .line 142
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    int-to-double v2, v2

    const-wide v4, 0x3fd3333333333333L

    iget v6, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    sub-int/2addr v6, v1

    int-to-double v6, v6

    const-wide/high16 v8, 0x4008

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4024

    div-double/2addr v6, v8

    iget v8, p0, Lcom/android/server/power/RampAnimator;->RoomBrigntnessVal:I

    iget v9, p0, Lcom/android/server/power/RampAnimator;->MinBrigntnessVal:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    .line 143
    const-string v2, "RampAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateTo mRate is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 149
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_2
.end method
