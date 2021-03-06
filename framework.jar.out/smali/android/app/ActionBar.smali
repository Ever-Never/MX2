.class public abstract Landroid/app/ActionBar;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActionBar$VisibilityAnimationListener;,
        Landroid/app/ActionBar$LayoutParams;,
        Landroid/app/ActionBar$TabListener;,
        Landroid/app/ActionBar$Tab;,
        Landroid/app/ActionBar$OnMenuVisibilityListener;,
        Landroid/app/ActionBar$OnNavigationListener;
    }
.end annotation


# static fields
.field public static final DISPLAY_HOME_AS_UP:I = 0x4

.field public static final DISPLAY_SHOW_CUSTOM:I = 0x10

.field public static final DISPLAY_SHOW_HOME:I = 0x2

.field public static final DISPLAY_SHOW_TITLE:I = 0x8

.field public static final DISPLAY_USE_LOGO:I = 0x1

.field public static final NAVIGATION_MODE_LIST:I = 0x1

.field public static final NAVIGATION_MODE_STANDARD:I = 0x0

.field public static final NAVIGATION_MODE_TABS:I = 0x2


# instance fields
.field protected mMeasureWithLargestChild:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1041
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActionBar;->mMeasureWithLargestChild:Z

    return-void
.end method


# virtual methods
.method public abstract addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
.end method

.method public abstract addTab(Landroid/app/ActionBar$Tab;)V
.end method

.method public abstract addTab(Landroid/app/ActionBar$Tab;I)V
.end method

.method public abstract addTab(Landroid/app/ActionBar$Tab;IZ)V
.end method

.method public abstract addTab(Landroid/app/ActionBar$Tab;Z)V
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getDisplayOptions()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getNavigationItemCount()I
.end method

.method public abstract getNavigationMode()I
.end method

.method public abstract getSelectedNavigationIndex()I
.end method

.method public abstract getSelectedTab()Landroid/app/ActionBar$Tab;
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public abstract getTabAt(I)Landroid/app/ActionBar$Tab;
.end method

.method public abstract getTabCount()I
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 680
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract hide()V
.end method

.method public abstract isShowing()Z
.end method

.method public abstract newTab()Landroid/app/ActionBar$Tab;
.end method

.method public abstract removeAllTabs()V
.end method

.method public abstract removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
.end method

.method public abstract removeTab(Landroid/app/ActionBar$Tab;)V
.end method

.method public abstract removeTabAt(I)V
.end method

.method public abstract selectTab(Landroid/app/ActionBar$Tab;)V
.end method

.method public setActionBarViewCollapsable(Z)V
    .locals 0
    .parameter "collapsable"

    .prologue
    .line 1009
    return-void
.end method

.method public setActionModeHeaderHidden(Z)V
    .locals 0
    .parameter "hidden"

    .prologue
    .line 1002
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "backIcon"

    .prologue
    .line 1083
    return-void
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setCustomView(I)V
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public abstract setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
.end method

.method public abstract setDisplayHomeAsUpEnabled(Z)V
.end method

.method public abstract setDisplayOptions(I)V
.end method

.method public abstract setDisplayOptions(II)V
.end method

.method public abstract setDisplayShowCustomEnabled(Z)V
.end method

.method public abstract setDisplayShowHomeEnabled(Z)V
.end method

.method public abstract setDisplayShowTitleEnabled(Z)V
.end method

.method public abstract setDisplayUseLogoEnabled(Z)V
.end method

.method public setEmbeddedTabsWhenNarrow(Z)V
    .locals 0
    .parameter "embedTabsWhenNarrow"

    .prologue
    .line 995
    return-void
.end method

.method public setEnabledBackWhenOverlay(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1058
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 669
    return-void
.end method

.method public setHomeUpDrawable(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 1071
    return-void
.end method

.method public setHomeUpDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 1077
    return-void
.end method

.method public abstract setIcon(I)V
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
.end method

.method public abstract setLogo(I)V
.end method

.method public abstract setLogo(Landroid/graphics/drawable/Drawable;)V
.end method

.method public setMeasureWithLargestChildEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1049
    iput-boolean p1, p0, Landroid/app/ActionBar;->mMeasureWithLargestChild:Z

    .line 1050
    return-void
.end method

.method public abstract setNavigationMode(I)V
.end method

.method public abstract setSelectedNavigationItem(I)V
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 446
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 436
    return-void
.end method

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public setTabsHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 988
    return-void
.end method

.method public setTabsOnTopWhenNoHome(Z)V
    .locals 0
    .parameter "onTopWhenNoHome"

    .prologue
    .line 974
    return-void
.end method

.method public setTabsShowAtBottom(Z)V
    .locals 0
    .parameter "showAtBottom"

    .prologue
    .line 981
    return-void
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setTopBarHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 1065
    return-void
.end method

.method public setVisibilityAnimationListener(Landroid/app/ActionBar$VisibilityAnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1023
    return-void
.end method

.method public abstract show()V
.end method

.method public useMzTitleLayout(Z)V
    .locals 0
    .parameter "used"

    .prologue
    .line 1016
    return-void
.end method
