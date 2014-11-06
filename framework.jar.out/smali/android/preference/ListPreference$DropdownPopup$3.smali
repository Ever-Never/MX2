.class Landroid/preference/ListPreference$DropdownPopup$3;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

.field final synthetic val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor <init>(Landroid/preference/ListPreference$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Landroid/preference/ListPreference$DropdownPopup$3;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    iput-object p2, p0, Landroid/preference/ListPreference$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .prologue
    .line 574
    iget-object v1, p0, Landroid/preference/ListPreference$DropdownPopup$3;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    iget-object v1, v1, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    iget-object v1, v1, Landroid/preference/Preference;->mPreferenceView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    .line 575
    iget-object v1, p0, Landroid/preference/ListPreference$DropdownPopup$3;->this$1:Landroid/preference/ListPreference$DropdownPopup;

    iget-object v1, v1, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v1}, Landroid/preference/ListPreference;->access$200(Landroid/preference/ListPreference;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 576
    .local v0, vto:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 577
    iget-object v1, p0, Landroid/preference/ListPreference$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 579
    :cond_0
    return-void
.end method
