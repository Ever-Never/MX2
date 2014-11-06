.class public Lcom/android/server/wm/DragState$DragAnimator;
.super Ljava/lang/Object;
.source "DragState.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DragState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;
    }
.end annotation


# static fields
.field private static final ANIM_NFC_TIME:I = 0x14a

.field private static final DRAG_DISMISS_ANIM_MIN_SCALE:F = 0.0f

.field private static final DRAG_DISMISS_ANIM_TIME:I = 0x14d

.field private static final DRAG_END_ANIM_TIME:I = 0x1a1

.field private static final DRAG_END_MOVEMENT_SPEED:D = 2.0


# instance fields
.field mAnimatorSet:Landroid/animation/AnimatorSet;

.field mDragAnimator:Landroid/animation/ObjectAnimator;

.field private mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

.field private sInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragState;)V
    .locals 1
    .parameter

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    new-instance v0, Lcom/android/server/wm/DragState$DragAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DragState$DragAnimator$1;-><init>(Lcom/android/server/wm/DragState$DragAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 795
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DragState$DragAnimator;)Landroid/animation/AnimatorSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 651
    invoke-direct {p0}, Lcom/android/server/wm/DragState$DragAnimator;->createAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method private createAnimation()Landroid/animation/AnimatorSet;
    .locals 27

    .prologue
    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/wm/DragState;->mAnimType:I
    invoke-static/range {v21 .. v21}, Lcom/android/server/wm/DragState;->access$400(Lcom/android/server/wm/DragState;)I

    move-result v21

    packed-switch v21, :pswitch_data_0

    .line 746
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    return-object v21

    .line 668
    :pswitch_0
    new-instance v21, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;-><init>(Lcom/android/server/wm/DragState$DragAnimator;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceX:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->setX(F)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceY:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->setY(F)V

    .line 671
    const-string v21, "x"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceX:F

    move/from16 v24, v0

    aput v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitX:F

    move/from16 v24, v0

    aput v24, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 672
    .local v10, dragEndXPHolder:Landroid/animation/PropertyValuesHolder;
    const-string v21, "y"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceY:F

    move/from16 v24, v0

    aput v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitY:F

    move/from16 v24, v0

    aput v24, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 673
    .local v11, dragEndYPHolder:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    const/16 v23, 0x1

    aput-object v11, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->sInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceX:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceX:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    mul-float v19, v21, v22

    .line 676
    .local v19, xDis:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceY:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceY:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    mul-float v20, v21, v22

    .line 677
    .local v20, yDis:F
    add-float v21, v19, v20

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 678
    .local v4, dis:D
    const-wide/high16 v21, 0x4000

    div-double v21, v4, v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->round(D)J

    move-result-wide v17

    .line 679
    .local v17, time:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 683
    new-instance v21, Landroid/animation/AnimatorSet;

    invoke-direct/range {v21 .. v21}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0

    .line 688
    .end local v4           #dis:D
    .end local v10           #dragEndXPHolder:Landroid/animation/PropertyValuesHolder;
    .end local v11           #dragEndYPHolder:Landroid/animation/PropertyValuesHolder;
    .end local v17           #time:J
    .end local v19           #xDis:F
    .end local v20           #yDis:F
    :pswitch_1
    new-instance v21, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;-><init>(Lcom/android/server/wm/DragState$DragAnimator;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceX:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->setX(F)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceY:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->setY(F)V

    .line 691
    const-string v21, "x"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceX:F

    move/from16 v24, v0

    aput v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentX:F

    move/from16 v24, v0

    aput v24, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 693
    .local v8, dragDelXPHolder:Landroid/animation/PropertyValuesHolder;
    const-string v21, "y"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceY:F

    move/from16 v24, v0

    aput v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentY:F

    move/from16 v24, v0

    aput v24, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 695
    .local v9, dragDelYPHolder:Landroid/animation/PropertyValuesHolder;
    const-string v21, "scale"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    fill-array-data v22, :array_0

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 696
    .local v7, dragDelWidthPHolder:Landroid/animation/PropertyValuesHolder;
    const-string v21, "alpha"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    fill-array-data v22, :array_1

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 697
    .local v6, dragDelAlphaPHolder:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v8, v22, v23

    const/16 v23, 0x1

    aput-object v9, v22, v23

    const/16 v23, 0x2

    aput-object v7, v22, v23

    const/16 v23, 0x3

    aput-object v6, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->sInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x14d

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 705
    new-instance v21, Landroid/animation/AnimatorSet;

    invoke-direct/range {v21 .. v21}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0

    .line 712
    .end local v6           #dragDelAlphaPHolder:Landroid/animation/PropertyValuesHolder;
    .end local v7           #dragDelWidthPHolder:Landroid/animation/PropertyValuesHolder;
    .end local v8           #dragDelXPHolder:Landroid/animation/PropertyValuesHolder;
    .end local v9           #dragDelYPHolder:Landroid/animation/PropertyValuesHolder;
    :pswitch_2
    new-instance v21, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;-><init>(Lcom/android/server/wm/DragState$DragAnimator;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceX:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->setX(F)V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceY:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->setY(F)V

    .line 715
    const-string v21, "y"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mCurrentSurfaceY:F

    move/from16 v24, v0

    aput v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitHeight:F

    move/from16 v24, v0

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    aput v24, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 716
    .local v12, dragSendYPHolder:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v12, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->sInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x14a

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 723
    const-string v21, "scale"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    fill-array-data v22, :array_2

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 725
    .local v16, pvhScale:Landroid/animation/PropertyValuesHolder;
    const-string v21, "x"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitWidth:F

    move/from16 v25, v0

    const/high16 v26, 0x4120

    div-float v25, v25, v26

    add-float v24, v24, v25

    aput v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitX:F

    move/from16 v24, v0

    aput v24, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 727
    .local v13, dragXPHolder:Landroid/animation/PropertyValuesHolder;
    const-string v21, "y"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitY:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitHeight:F

    move/from16 v25, v0

    const/high16 v26, 0x4120

    div-float v25, v25, v26

    add-float v24, v24, v25

    aput v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/DragState;->mInitY:F

    move/from16 v24, v0

    aput v24, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 729
    .local v14, dragYPHolder:Landroid/animation/PropertyValuesHolder;
    const-string v21, "alpha"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    fill-array-data v22, :array_3

    invoke-static/range {v21 .. v22}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 731
    .local v15, pvhAlpha:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v16, v22, v23

    const/16 v23, 0x1

    aput-object v15, v22, v23

    const/16 v23, 0x2

    aput-object v13, v22, v23

    const/16 v23, 0x3

    aput-object v14, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v21

    const-wide/16 v22, 0x14a

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 732
    .local v3, animator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->sInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 733
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 734
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 736
    new-instance v21, Landroid/animation/AnimatorSet;

    invoke-direct/range {v21 .. v21}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/wm/DragState;->mRecoverAnimNfc:Z
    invoke-static/range {v21 .. v21}, Lcom/android/server/wm/DragState;->access$200(Lcom/android/server/wm/DragState;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    const/16 v23, 0x1

    aput-object v3, v22, v23

    invoke-virtual/range {v21 .. v22}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto/16 :goto_0

    .line 741
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0

    .line 666
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 695
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 696
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 723
    :array_2
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 729
    :array_3
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 765
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 756
    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->endDragLw()V

    .line 757
    iput-object v2, p0, Lcom/android/server/wm/DragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    .line 758
    iput-object v2, p0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    .line 759
    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/wm/DragState;->mIsDragAnimating:Z
    invoke-static {v0, v1}, Lcom/android/server/wm/DragState;->access$602(Lcom/android/server/wm/DragState;Z)Z

    .line 760
    iput-object v2, p0, Lcom/android/server/wm/DragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 761
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 769
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/wm/DragState;->mIsDragAnimating:Z
    invoke-static {v0, v1}, Lcom/android/server/wm/DragState;->access$602(Lcom/android/server/wm/DragState;Z)Z

    .line 752
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x0

    .line 773
    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 785
    :goto_0
    return-void

    .line 776
    :cond_0
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 777
    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    #getter for: Lcom/android/server/wm/DragState;->mAnimType:I
    invoke-static {v0}, Lcom/android/server/wm/DragState;->access$400(Lcom/android/server/wm/DragState;)I

    move-result v0

    if-nez v0, :cond_2

    .line 778
    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    invoke-virtual {v1}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setPosition(FF)V

    .line 784
    :cond_1
    :goto_1
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    goto :goto_0

    .line 779
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    #getter for: Lcom/android/server/wm/DragState;->mAnimType:I
    invoke-static {v0}, Lcom/android/server/wm/DragState;->access$400(Lcom/android/server/wm/DragState;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    #getter for: Lcom/android/server/wm/DragState;->mAnimType:I
    invoke-static {v0}, Lcom/android/server/wm/DragState;->access$400(Lcom/android/server/wm/DragState;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 780
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    invoke-virtual {v1}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setPosition(FF)V

    .line 781
    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    invoke-virtual {v1}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->getScale()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->getScale()F

    move-result v2

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/view/Surface;->setMatrix(FFFF)V

    .line 782
    iget-object v0, p0, Lcom/android/server/wm/DragState$DragAnimator;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/DragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;

    invoke-virtual {v1}, Lcom/android/server/wm/DragState$DragAnimator$ShapeHolder;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setAlpha(F)V

    goto :goto_1
.end method
