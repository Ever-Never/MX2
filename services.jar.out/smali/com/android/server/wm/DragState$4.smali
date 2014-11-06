.class Lcom/android/server/wm/DragState$4;
.super Ljava/lang/Object;
.source "DragState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DragState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DragState;)V
    .locals 0
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/android/server/wm/DragState$4;->this$0:Lcom/android/server/wm/DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/server/wm/DragState$4;->this$0:Lcom/android/server/wm/DragState;

    #getter for: Lcom/android/server/wm/DragState;->mDragObjectAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/server/wm/DragState;->access$500(Lcom/android/server/wm/DragState;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/server/wm/DragState$4;->this$0:Lcom/android/server/wm/DragState;

    #getter for: Lcom/android/server/wm/DragState;->mDragObjectAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/server/wm/DragState;->access$500(Lcom/android/server/wm/DragState;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 647
    :cond_0
    return-void
.end method
