.class Landroid/preference/ListPreference$DropdownPopup$1;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/ListPreference$DropdownPopup;-><init>(Landroid/preference/ListPreference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/preference/ListPreference$DropdownPopup;

.field final synthetic val$this$0:Landroid/preference/ListPreference;


# direct methods
.method constructor <init>(Landroid/preference/ListPreference$DropdownPopup;Landroid/preference/ListPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Landroid/preference/ListPreference$DropdownPopup$1;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    iput-object p2, p0, Landroid/preference/ListPreference$DropdownPopup$1;->val$this$0:Landroid/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 480
    iget-object v0, p0, Landroid/preference/ListPreference$DropdownPopup$1;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    iget-object v0, v0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #setter for: Landroid/preference/ListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p3}, Landroid/preference/ListPreference;->access$002(Landroid/preference/ListPreference;I)I

    .line 481
    iget-object v0, p0, Landroid/preference/ListPreference$DropdownPopup$1;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    iget-object v1, p0, Landroid/preference/ListPreference$DropdownPopup$1;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    iget-object v1, v1, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v1}, Landroid/preference/ListPreference;->access$000(Landroid/preference/ListPreference;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    .line 482
    iget-object v0, p0, Landroid/preference/ListPreference$DropdownPopup$1;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    iget-object v0, v0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 483
    iget-object v0, p0, Landroid/preference/ListPreference$DropdownPopup$1;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 484
    return-void
.end method
