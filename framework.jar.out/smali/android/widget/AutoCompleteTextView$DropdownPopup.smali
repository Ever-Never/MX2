.class Landroid/widget/AutoCompleteTextView$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "AutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method public constructor <init>(Landroid/widget/AutoCompleteTextView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 1341
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->this$0:Landroid/widget/AutoCompleteTextView;

    .line 1342
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1343
    return-void
.end method


# virtual methods
.method public show()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1347
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 1348
    .local v0, buildDropDown:Z
    :goto_0
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1350
    if-eqz v0, :cond_0

    .line 1351
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1352
    .local v1, dropdownList:Landroid/widget/ListView;
    iget-object v3, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mDropDownPaddingStart:I
    invoke-static {v3}, Landroid/widget/AutoCompleteTextView;->access$900(Landroid/widget/AutoCompleteTextView;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mDropDownPaddingEnd:I
    invoke-static {v4}, Landroid/widget/AutoCompleteTextView;->access$1000(Landroid/widget/AutoCompleteTextView;)I

    move-result v4

    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1353
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mDropDownDivider:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/AutoCompleteTextView;->access$1100(Landroid/widget/AutoCompleteTextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1355
    .end local v1           #dropdownList:Landroid/widget/ListView;
    :cond_0
    return-void

    .end local v0           #buildDropDown:Z
    :cond_1
    move v0, v2

    .line 1347
    goto :goto_0
.end method
