.class Lcom/android/server/power/RampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/power/RampAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    .local p0, this:Lcom/android/server/power/RampAnimator$1;,"Lcom/android/server/power/RampAnimator.1;"
    iput-object p1, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 179
    .local p0, this:Lcom/android/server/power/RampAnimator$1;,"Lcom/android/server/power/RampAnimator.1;"
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v5}, Lcom/android/server/power/RampAnimator;->access$000(Lcom/android/server/power/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v1

    .line 180
    .local v1, frameTimeNanos:J
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v5}, Lcom/android/server/power/RampAnimator;->access$100(Lcom/android/server/power/RampAnimator;)J

    move-result-wide v5

    sub-long v5, v1, v5

    long-to-float v5, v5

    const v6, 0x3089705f

    mul-float v4, v5, v6

    .line 182
    .local v4, timeDelta:F
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mRate:I
    invoke-static {v5}, Lcom/android/server/power/RampAnimator;->access$200(Lcom/android/server/power/RampAnimator;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v6

    div-float v0, v5, v6

    .line 183
    .local v0, amount:F
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #setter for: Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v5, v1, v2}, Lcom/android/server/power/RampAnimator;->access$102(Lcom/android/server/power/RampAnimator;J)J

    .line 189
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v5}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v3

    .line 190
    .local v3, oldCurrentValue:I
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v5}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mdifferencevalue:F
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)F

    move-result v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    const-wide v7, 0x3fd3333333333333L

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    .line 191
    const/high16 v5, 0x4000

    div-float/2addr v0, v5

    .line 194
    :cond_0
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v5}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v6

    if-le v5, v6, :cond_4

    .line 195
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$600(Lcom/android/server/power/RampAnimator;)F

    move-result v6

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    #setter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v5, v6}, Lcom/android/server/power/RampAnimator;->access$602(Lcom/android/server/power/RampAnimator;F)F

    .line 199
    :goto_0
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$600(Lcom/android/server/power/RampAnimator;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    #setter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v5, v6}, Lcom/android/server/power/RampAnimator;->access$302(Lcom/android/server/power/RampAnimator;I)I

    .line 206
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v5}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v5

    if-eq v3, v5, :cond_3

    .line 207
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mRate:I
    invoke-static {v5}, Lcom/android/server/power/RampAnimator;->access$200(Lcom/android/server/power/RampAnimator;)I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v7, 0x4049

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mSpline:D
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$700(Lcom/android/server/power/RampAnimator;)D

    move-result-wide v9

    mul-double/2addr v7, v9

    cmpg-double v5, v5, v7

    if-ltz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mAnimatorMode:I
    invoke-static {v5}, Lcom/android/server/power/RampAnimator;->access$800(Lcom/android/server/power/RampAnimator;)I

    move-result v5

    if-nez v5, :cond_2

    .line 208
    :cond_1
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/power/RampAnimator;->access$900(Lcom/android/server/power/RampAnimator;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness"

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->MinBrigntnessVal:I
    invoke-static {v8}, Lcom/android/server/power/RampAnimator;->access$1000(Lcom/android/server/power/RampAnimator;)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-double v7, v7

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mSpline:D
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$700(Lcom/android/server/power/RampAnimator;)D

    move-result-wide v9

    div-double/2addr v7, v9

    double-to-int v7, v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    :cond_2
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;
    invoke-static {v5}, Lcom/android/server/power/RampAnimator;->access$1200(Lcom/android/server/power/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$1100(Lcom/android/server/power/RampAnimator;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 213
    :cond_3
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v5}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v6

    if-eq v5, v6, :cond_5

    .line 214
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #calls: Lcom/android/server/power/RampAnimator;->postCallback()V
    invoke-static {v5}, Lcom/android/server/power/RampAnimator;->access$1300(Lcom/android/server/power/RampAnimator;)V

    .line 219
    :goto_1
    return-void

    .line 197
    :cond_4
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$600(Lcom/android/server/power/RampAnimator;)F

    move-result v6

    sub-float/2addr v6, v0

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    #setter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v5, v6}, Lcom/android/server/power/RampAnimator;->access$602(Lcom/android/server/power/RampAnimator;F)F

    goto/16 :goto_0

    .line 216
    :cond_5
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/power/RampAnimator;->mAnimating:Z
    invoke-static {v5, v6}, Lcom/android/server/power/RampAnimator;->access$1402(Lcom/android/server/power/RampAnimator;Z)Z

    goto :goto_1
.end method
