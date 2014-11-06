.class public Lcom/android/internal/view/menu/GridMenuPopupHelper;
.super Ljava/lang/Object;
.source "GridMenuPopupHelper.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MzMenuPopupHelper"


# instance fields
.field private mAdapter:Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field mForceShowIcon:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mOverflowOnly:Z

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .parameter "context"
    .parameter "menu"

    .prologue
    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/view/menu/GridMenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "menu"
    .parameter "anchorView"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/GridMenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 1
    .parameter "context"
    .parameter "menu"
    .parameter "anchorView"
    .parameter "overflowOnly"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 90
    iput-object p2, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 91
    iput-boolean p4, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mOverflowOnly:Z

    .line 92
    iput-object p3, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 94
    invoke-virtual {p2, p0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 95
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/view/menu/GridMenuPopupHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mOverflowOnly:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/GridMenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/view/menu/GridMenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method private getNumColumns(I)I
    .locals 2
    .parameter "count"

    .prologue
    const/4 v1, 0x6

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, numColumns:I
    if-gt p1, v1, :cond_1

    .line 181
    const/4 v0, 0x3

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    if-le p1, v1, :cond_0

    .line 183
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private measureContentWidth(Landroid/widget/GridView;Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;)I
    .locals 5
    .parameter "view"
    .parameter "adapter"

    .prologue
    .line 224
    iget-object v2, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050209

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 225
    .local v0, itemWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p2}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->getCount()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->getNumColumns(I)I

    move-result v3

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/widget/GridView;->getRequestedHorizontalSpacing()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->getCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->getNumColumns(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int v1, v2, v3

    .line 227
    .local v1, width:I
    return v1
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 192
    :cond_0
    return-void
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 2
    .parameter "root"

    .prologue
    .line 282
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopupHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "context"
    .parameter "menu"

    .prologue
    .line 278
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->dismiss()V

    .line 352
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    iput-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    .line 196
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 197
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 200
    iput-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 203
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 235
    .local v0, anchor:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->dismiss()V

    .line 242
    .end local v0           #anchor:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 237
    .restart local v0       #anchor:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;

    .line 212
    .local v0, adapter:Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;
    #getter for: Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->access$000(Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 213
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 216
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->dismiss()V

    .line 220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 382
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 9
    .parameter "subMenu"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 297
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 298
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuItemImpl;->isSubMenuShowAsGrid()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 299
    new-instance v4, Lcom/android/internal/view/menu/GridMenuPopupHelper;

    iget-object v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v5, p1, v8, v7}, Lcom/android/internal/view/menu/GridMenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 300
    .local v4, subPopup:Lcom/android/internal/view/menu/GridMenuPopupHelper;
    iget-object v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 302
    const/4 v3, 0x0

    .line 303
    .local v3, preserveIconSpacing:Z
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v1

    .line 304
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 305
    invoke-virtual {p1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 306
    .local v0, childItem:Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 307
    const/4 v3, 0x1

    .line 311
    .end local v0           #childItem:Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->setForceShowIcon(Z)V

    .line 313
    invoke-virtual {v4}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->tryShow()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 314
    iget-object v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v5, :cond_1

    .line 315
    iget-object v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    :cond_1
    move v5, v6

    .line 343
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #preserveIconSpacing:Z
    .end local v4           #subPopup:Lcom/android/internal/view/menu/GridMenuPopupHelper;
    :goto_1
    return v5

    .line 304
    .restart local v0       #childItem:Landroid/view/MenuItem;
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #preserveIconSpacing:Z
    .restart local v4       #subPopup:Lcom/android/internal/view/menu/GridMenuPopupHelper;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    .end local v0           #childItem:Landroid/view/MenuItem;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #preserveIconSpacing:Z
    .end local v4           #subPopup:Lcom/android/internal/view/menu/GridMenuPopupHelper;
    :cond_3
    new-instance v4, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v5, p1, v8, v7}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 321
    .local v4, subPopup:Lcom/android/internal/view/menu/MenuPopupHelper;
    iget-object v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 323
    const/4 v3, 0x0

    .line 324
    .restart local v3       #preserveIconSpacing:Z
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v1

    .line 325
    .restart local v1       #count:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 326
    invoke-virtual {p1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 327
    .restart local v0       #childItem:Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 328
    const/4 v3, 0x1

    .line 332
    .end local v0           #childItem:Landroid/view/MenuItem;
    :cond_4
    invoke-virtual {v4, v3}, Lcom/android/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 334
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 335
    iget-object v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v5, :cond_5

    .line 336
    iget-object v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    :cond_5
    move v5, v6

    .line 338
    goto :goto_1

    .line 325
    .restart local v0       #childItem:Landroid/view/MenuItem;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #childItem:Landroid/view/MenuItem;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #preserveIconSpacing:Z
    .end local v4           #subPopup:Lcom/android/internal/view/menu/MenuPopupHelper;
    :cond_7
    move v5, v7

    .line 343
    goto :goto_1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 252
    .local v0, addGlobalListener:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 253
    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 256
    .end local v0           #addGlobalListener:Z
    :cond_0
    return-void

    .line 251
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 273
    :cond_2
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 99
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 293
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .parameter "forceShow"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mForceShowIcon:Z

    .line 103
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 12

    .prologue
    .line 112
    new-instance v8, Landroid/widget/PopupWindow;

    iget-object v9, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const v11, 0x1010076

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    .line 113
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 115
    new-instance v8, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;

    iget-object v9, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v8, p0, v9}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;-><init>(Lcom/android/internal/view/menu/GridMenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V

    iput-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;

    .line 116
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x10900a4

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 117
    .local v6, view:Landroid/view/View;
    const v8, 0x1020390

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 118
    .local v2, gridView:Landroid/widget/GridView;
    if-nez v2, :cond_0

    .line 119
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "Content view is null!"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 121
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/AbsListView;->setDelayTopOverScrollEnabled(Z)V

    .line 122
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/GridView;->setTopShadowEnable(Z)V

    .line 123
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/widget/AbsListView;->setOverScrollMode(I)V

    .line 124
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;

    invoke-virtual {v2, v8}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 126
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 127
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;

    invoke-virtual {v8}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->getCount()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->getNumColumns(I)I

    move-result v3

    .line 128
    .local v3, numColumns:I
    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 130
    const/4 v8, 0x3

    if-le v3, v8, :cond_2

    .line 131
    invoke-virtual {v2}, Landroid/widget/GridView;->getRequestedHorizontalSpacing()I

    move-result v8

    if-eqz v8, :cond_1

    .line 132
    invoke-virtual {v2}, Landroid/widget/GridView;->getRequestedHorizontalSpacing()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v2, v8}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 133
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    if-lez v8, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    if-lez v8, :cond_2

    .line 134
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 138
    .local v1, anchor:Landroid/view/View;
    if-eqz v1, :cond_7

    .line 139
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v8, :cond_6

    const/4 v0, 0x1

    .line 140
    .local v0, addGlobalListener:Z
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 141
    if-eqz v0, :cond_3

    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v8, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 142
    :cond_3
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 147
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 148
    .local v4, popupBackground:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;

    invoke-direct {p0, v2, v8}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->measureContentWidth(Landroid/widget/GridView;Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;)I

    move-result v7

    .line 149
    .local v7, width:I
    if-eqz v4, :cond_4

    .line 150
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 151
    .local v5, tempRect:Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 152
    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 154
    .end local v5           #tempRect:Landroid/graphics/Rect;
    :cond_4
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 155
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 156
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 157
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-virtual {v8, v9, v10}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 158
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 159
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 162
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 163
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setLayoutMode(I)V

    .line 166
    :cond_5
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 168
    const/4 v8, 0x1

    .end local v0           #addGlobalListener:Z
    .end local v4           #popupBackground:Landroid/graphics/drawable/Drawable;
    .end local v7           #width:I
    :goto_1
    return v8

    .line 139
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :cond_7
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public updateMenuView(Z)V
    .locals 1
    .parameter "cleared"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->notifyDataSetChanged()V

    .line 288
    :cond_0
    return-void
.end method
