.class Lcom/meizu/widget/StaggeredGridView$PositionScroller$1;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/StaggeredGridView$PositionScroller;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/meizu/widget/StaggeredGridView$PositionScroller;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4507
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller$1;->this$1:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    iput p2, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4509
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller$1;->this$1:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    iget v1, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->start(I)V

    .line 4510
    return-void
.end method
