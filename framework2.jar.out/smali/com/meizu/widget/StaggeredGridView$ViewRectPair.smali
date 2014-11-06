.class Lcom/meizu/widget/StaggeredGridView$ViewRectPair;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewRectPair"
.end annotation


# instance fields
.field public final rect:Landroid/graphics/Rect;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "paramView"
    .parameter "paramRect"

    .prologue
    .line 3462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3463
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$ViewRectPair;->view:Landroid/view/View;

    .line 3464
    iput-object p2, p0, Lcom/meizu/widget/StaggeredGridView$ViewRectPair;->rect:Landroid/graphics/Rect;

    .line 3465
    return-void
.end method
