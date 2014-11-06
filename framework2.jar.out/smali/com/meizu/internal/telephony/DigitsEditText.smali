.class public Lcom/meizu/internal/telephony/DigitsEditText;
.super Lcom/meizu/widget/EditTextEx;
.source "DigitsEditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/EditTextEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 32
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setShowSoftInputOnFocus(Z)V

    .line 33
    invoke-virtual {p0, v2}, Lcom/meizu/widget/EditTextEx;->setInputMethodEnabled(Z)V

    .line 34
    invoke-virtual {p0, v2}, Lcom/meizu/widget/EditTextEx;->setOptionsVisible(Z)V

    .line 35
    invoke-virtual {p0, v2}, Lcom/meizu/widget/EditTextEx;->setMagnifierVisible(Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 40
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3

    .line 43
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getAddedCount()I

    move-result v0

    .line 44
    .local v0, added:I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getRemovedCount()I

    move-result v2

    .line 45
    .local v2, removed:I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 46
    .local v1, length:I
    if-le v0, v2, :cond_2

    .line 47
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 48
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 49
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 62
    .end local v0           #added:I
    .end local v1           #length:I
    .end local v2           #removed:I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 63
    :cond_1
    :goto_1
    return-void

    .line 50
    .restart local v0       #added:I
    .restart local v1       #length:I
    .restart local v2       #removed:I
    :cond_2
    if-le v2, v0, :cond_1

    .line 51
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 52
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 53
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    goto :goto_0

    .line 57
    .end local v0           #added:I
    .end local v1           #length:I
    .end local v2           #removed:I
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_1
.end method
