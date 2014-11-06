.class public Lcom/meizu/widget/StaggeredGridView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 0
    .parameter "targetView"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 4171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4172
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 4173
    iput p2, p0, Lcom/meizu/widget/StaggeredGridView$AdapterContextMenuInfo;->position:I

    .line 4174
    iput-wide p3, p0, Lcom/meizu/widget/StaggeredGridView$AdapterContextMenuInfo;->id:J

    .line 4175
    return-void
.end method
