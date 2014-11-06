.class public Lcom/meizu/widget/CheckedTwoLineListItem;
.super Landroid/widget/LinearLayout;
.source "CheckedTwoLineListItem.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mCheckButton:Landroid/widget/CompoundButton;

.field private mChecked:Z

.field private mTextView1:Landroid/widget/TextView;

.field private mTextView2:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/meizu/widget/CheckedTwoLineListItem;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/CheckedTwoLineListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/CheckedTwoLineListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const v0, 0x109009a

    invoke-static {p1, v0, p0}, Lcom/meizu/widget/CheckedTwoLineListItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/meizu/widget/CheckedTwoLineListItem;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 81
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 82
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lcom/meizu/widget/CheckedTwoLineListItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    sget-object v1, Lcom/meizu/widget/CheckedTwoLineListItem;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/meizu/widget/CheckedTwoLineListItem;->mergeDrawableStates([I[I)[I

    .line 85
    :cond_0
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/meizu/widget/CheckedTwoLineListItem;->mChecked:Z

    .line 67
    const v0, 0x1020001

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/meizu/widget/CheckedTwoLineListItem;->mCheckButton:Landroid/widget/CompoundButton;

    .line 68
    iget-object v0, p0, Lcom/meizu/widget/CheckedTwoLineListItem;->mCheckButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/meizu/widget/CheckedTwoLineListItem;->mCheckButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 72
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/meizu/widget/CheckedTwoLineListItem;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/meizu/widget/CheckedTwoLineListItem;->setChecked(Z)V

    .line 77
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
