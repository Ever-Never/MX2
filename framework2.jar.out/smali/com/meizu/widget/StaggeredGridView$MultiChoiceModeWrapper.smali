.class Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;

.field final synthetic this$0:Lcom/meizu/widget/StaggeredGridView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/StaggeredGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 2840
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    .prologue
    .line 2848
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->mWrapped:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 2880
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->mWrapped:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2852
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->mWrapped:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;

    invoke-interface {v2, p1, p2}, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2854
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget v2, v2, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 2856
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 2861
    :goto_0
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mActionItemListener:Landroid/view/ActionMode$OnActionItemDragListener;
    invoke-static {v1}, Lcom/meizu/widget/StaggeredGridView;->access$2100(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/ActionMode$OnActionItemDragListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2862
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/meizu/widget/StaggeredGridView;

    new-instance v2, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper$1;

    invoke-direct {v2, p0}, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper$1;-><init>(Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;)V

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mActionItemListener:Landroid/view/ActionMode$OnActionItemDragListener;
    invoke-static {v1, v2}, Lcom/meizu/widget/StaggeredGridView;->access$2102(Lcom/meizu/widget/StaggeredGridView;Landroid/view/ActionMode$OnActionItemDragListener;)Landroid/view/ActionMode$OnActionItemDragListener;

    .line 2869
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mActionItemListener:Landroid/view/ActionMode$OnActionItemDragListener;
    invoke-static {v1}, Lcom/meizu/widget/StaggeredGridView;->access$2100(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/ActionMode$OnActionItemDragListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setActionItemDragListener(Landroid/view/ActionMode$OnActionItemDragListener;)V

    .line 2872
    :goto_1
    return v0

    .line 2858
    :cond_1
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLongClickable(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2872
    goto :goto_1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2884
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->mWrapped:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 2886
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2889
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #calls: Lcom/meizu/widget/StaggeredGridView;->clearChoices()V
    invoke-static {v0}, Lcom/meizu/widget/StaggeredGridView;->access$2300(Lcom/meizu/widget/StaggeredGridView;)V

    .line 2893
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v0}, Lcom/meizu/widget/StaggeredGridView;->invalidateViews()V

    .line 2895
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 2896
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 6
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 2900
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->mWrapped:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 2903
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v0}, Lcom/meizu/widget/StaggeredGridView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2904
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 2906
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 2876
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->mWrapped:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 2844
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->mWrapped:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;

    .line 2845
    return-void
.end method
