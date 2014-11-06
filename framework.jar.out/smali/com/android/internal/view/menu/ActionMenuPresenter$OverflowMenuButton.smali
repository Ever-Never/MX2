.class Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;
.super Lcom/meizu/widget/GlowImageButton;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;
.implements Lcom/meizu/widget/LayoutPositionState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mTouchDelegate:Lcom/meizu/widget/SmartBarButtonTouchDelegate;

.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 706
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 707
    const/4 v0, 0x0

    const v1, 0x10102f6

    invoke-direct {p0, p2, v0, v1}, Lcom/meizu/widget/GlowImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 709
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 710
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 711
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 712
    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 714
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 716
    new-instance v0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;

    invoke-direct {v0, p0}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mTouchDelegate:Lcom/meizu/widget/SmartBarButtonTouchDelegate;

    .line 717
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 735
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 746
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 747
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mTouchDelegate:Lcom/meizu/widget/SmartBarButtonTouchDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 761
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 721
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    :goto_0
    return v1

    .line 725
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 726
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public restoreDrawable()V
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 751
    return-void
.end method

.method public setLayoutPosition(I)V
    .locals 1
    .parameter "layoutPosition"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mTouchDelegate:Lcom/meizu/widget/SmartBarButtonTouchDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->setLayoutPosition(I)V

    .line 756
    return-void
.end method
