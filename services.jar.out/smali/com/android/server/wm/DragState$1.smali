.class Lcom/android/server/wm/DragState$1;
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
    .line 529
    iput-object p1, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    iget v1, v0, Lcom/android/server/wm/DragState;->mUpdateCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/wm/DragState;->mUpdateCount:I

    .line 538
    iget-object v0, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    iget v1, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    const/high16 v2, 0x4000

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 539
    iget-object v0, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    iget v1, v1, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget-object v2, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    iget v2, v2, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    iget v2, v2, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget-object v3, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    iget v3, v3, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setPosition(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 549
    iget-object v0, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    iget v0, v0, Lcom/android/server/wm/DragState;->mUpdateCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 544
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v0
.end method
