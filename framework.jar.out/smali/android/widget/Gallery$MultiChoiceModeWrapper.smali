.class Landroid/widget/Gallery$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Landroid/widget/Gallery$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/widget/Gallery$MultiChoiceModeListener;

.field final synthetic this$0:Landroid/widget/Gallery;


# direct methods
.method constructor <init>(Landroid/widget/Gallery;)V
    .locals 0
    .parameter

    .prologue
    .line 2134
    iput-object p1, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->this$0:Landroid/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    .prologue
    .line 2142
    iget-object v0, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/Gallery$MultiChoiceModeListener;

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
    .line 2164
    iget-object v0, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/Gallery$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/Gallery$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2146
    iget-object v2, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/Gallery$MultiChoiceModeListener;

    invoke-interface {v2, p1, p2}, Landroid/widget/Gallery$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2148
    iget-object v2, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->this$0:Landroid/widget/Gallery;

    #getter for: Landroid/widget/Gallery;->mChoiceMode:I
    invoke-static {v2}, Landroid/widget/Gallery;->access$1700(Landroid/widget/Gallery;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 2150
    iget-object v1, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 2156
    :goto_0
    return v0

    .line 2152
    :cond_0
    iget-object v2, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLongClickable(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2156
    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2168
    iget-object v0, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/Gallery$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Landroid/widget/Gallery$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 2170
    iget-object v0, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->this$0:Landroid/widget/Gallery;

    const/4 v1, 0x0

    #setter for: Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Landroid/widget/Gallery;->access$402(Landroid/widget/Gallery;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 2173
    iget-object v0, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->this$0:Landroid/widget/Gallery;

    #calls: Landroid/widget/Gallery;->clearChoices()V
    invoke-static {v0}, Landroid/widget/Gallery;->access$1800(Landroid/widget/Gallery;)V

    .line 2175
    iget-object v0, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->this$0:Landroid/widget/Gallery;

    #calls: Landroid/widget/Gallery;->invalidateViews()V
    invoke-static {v0}, Landroid/widget/Gallery;->access$300(Landroid/widget/Gallery;)V

    .line 2177
    iget-object v0, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->this$0:Landroid/widget/Gallery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 2178
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 6
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 2182
    iget-object v0, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/Gallery$MultiChoiceModeListener;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/widget/Gallery$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 2185
    iget-object v0, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2186
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 2188
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 2160
    iget-object v0, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/Gallery$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/Gallery$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Landroid/widget/Gallery$MultiChoiceModeListener;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 2138
    iput-object p1, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/Gallery$MultiChoiceModeListener;

    .line 2139
    return-void
.end method
