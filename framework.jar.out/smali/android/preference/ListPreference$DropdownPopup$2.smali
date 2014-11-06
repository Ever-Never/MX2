.class Landroid/preference/ListPreference$DropdownPopup$2;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/ListPreference$DropdownPopup;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/preference/ListPreference$DropdownPopup;


# direct methods
.method constructor <init>(Landroid/preference/ListPreference$DropdownPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Landroid/preference/ListPreference$DropdownPopup$2;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Landroid/preference/ListPreference$DropdownPopup$2;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Landroid/preference/ListPreference$DropdownPopup$2;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    iget-object v0, v0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v0}, Landroid/preference/ListPreference;->access$200(Landroid/preference/ListPreference;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/ListPreference$DropdownPopup$2;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    iget-object v0, v0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v0}, Landroid/preference/ListPreference;->access$200(Landroid/preference/ListPreference;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/ListPreference$DropdownPopup$2;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    iget-object v0, v0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mCurrentOrientation:I
    invoke-static {v0}, Landroid/preference/ListPreference;->access$600(Landroid/preference/ListPreference;)I

    move-result v0

    iget-object v1, p0, Landroid/preference/ListPreference$DropdownPopup$2;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    iget-object v1, v1, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2

    .line 561
    :cond_0
    iget-object v0, p0, Landroid/preference/ListPreference$DropdownPopup$2;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 567
    :cond_1
    :goto_0
    return-void

    .line 562
    :cond_2
    iget-object v0, p0, Landroid/preference/ListPreference$DropdownPopup$2;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/preference/ListPreference$DropdownPopup$2;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    iget-object v0, v0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v0}, Landroid/preference/ListPreference;->access$200(Landroid/preference/ListPreference;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/ListPreference$DropdownPopup$2;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 563
    iget-object v0, p0, Landroid/preference/ListPreference$DropdownPopup$2;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    iget-object v0, v0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mPopup:Landroid/preference/ListPreference$DropdownPopup;
    invoke-static {v0}, Landroid/preference/ListPreference;->access$700(Landroid/preference/ListPreference;)Landroid/preference/ListPreference$DropdownPopup;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/ListPreference$DropdownPopup$2;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    iget-object v1, v1, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v1}, Landroid/preference/ListPreference;->access$200(Landroid/preference/ListPreference;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 564
    iget-object v0, p0, Landroid/preference/ListPreference$DropdownPopup$2;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    iget-object v0, v0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mPopup:Landroid/preference/ListPreference$DropdownPopup;
    invoke-static {v0}, Landroid/preference/ListPreference;->access$700(Landroid/preference/ListPreference;)Landroid/preference/ListPreference$DropdownPopup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/ListPreference$DropdownPopup;->show()V

    goto :goto_0
.end method
