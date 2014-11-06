.class public abstract Lcom/meizu/preference/MzPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MzPreferenceActivity.java"


# static fields
.field private static final ACC_ACTIVITY_KEY:Ljava/lang/String; = "MzAccountMainActivity"

.field static final PARENT_NON_CONFIG_INSTANCE_KEY:Ljava/lang/String; = "android:parent_non_config_instance"

.field private static final STATES_KEY:Ljava/lang/String; = "android:states"


# instance fields
.field private mAccActivity:Landroid/app/Activity;

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mPreferenceFrame:Lcom/meizu/widget/PreferenceFrame;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mScrollPane:Landroid/view/ViewGroup;

.field private mUpdateHeader:Landroid/preference/PreferenceActivity$Header;

.field private mViewContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mUpdateHeader:Landroid/preference/PreferenceActivity$Header;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/preference/MzPreferenceActivity;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mUpdateHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private getViewFromActivity(Landroid/app/LocalActivityManager;Landroid/content/Intent;)Landroid/view/View;
    .locals 10
    .parameter "activityManager"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 358
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    new-array v6, v9, [I

    const v7, 0x1010054

    aput v7, v6, v8

    invoke-virtual {v4, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 362
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 363
    .local v1, background:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 365
    invoke-direct {p0, p2}, Lcom/meizu/preference/MzPreferenceActivity;->isMzAccountIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "MzAccountMainActivity"

    :goto_0
    invoke-virtual {p1, v4, p2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v3

    .line 367
    .local v3, window:Landroid/view/Window;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 368
    .local v2, contentView:Landroid/view/View;
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 370
    if-eqz v2, :cond_0

    .line 371
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 372
    invoke-virtual {v2, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    move-object v4, v2

    .line 373
    check-cast v4, Landroid/view/ViewGroup;

    const/high16 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 376
    :cond_0
    return-object v2

    .end local v2           #contentView:Landroid/view/View;
    .end local v3           #window:Landroid/view/Window;
    :cond_1
    move-object v4, v5

    .line 365
    goto :goto_0

    .restart local v3       #window:Landroid/view/Window;
    :cond_2
    move-object v2, v5

    .line 367
    goto :goto_1
.end method

.method private getWindowBackgroud()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 241
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x1010054

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 245
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 246
    .local v1, background:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 248
    return v1
.end method

.method private isCurAccountView()Z
    .locals 2

    .prologue
    .line 438
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getCurrentHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    .line 439
    .local v0, curHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-direct {p0, v0}, Lcom/meizu/preference/MzPreferenceActivity;->isMzAccountIntent(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v1

    return v1
.end method

.method private isMzAccountIntent(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 445
    if-eqz p1, :cond_0

    const-string v0, "android.meizu.account.MEIZUACCOUNT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMzAccountIntent(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 1
    .parameter "header"

    .prologue
    .line 442
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/meizu/preference/MzPreferenceActivity;->isMzAccountIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_0
.end method

.method private setDefaultBackgroud(Landroid/view/View;I)V
    .locals 4
    .parameter "view"
    .parameter "background"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 259
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    move v3, v1

    :goto_0
    if-eqz p1, :cond_2

    :goto_1
    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 262
    :cond_0
    return-void

    :cond_1
    move v3, v2

    .line 259
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public enableScroll(Z)V
    .locals 1
    .parameter "scroll"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mPreferenceFrame:Lcom/meizu/widget/PreferenceFrame;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/PreferenceFrame;->setScrollEnable(Z)V

    .line 233
    return-void
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalActivityManager()Landroid/app/LocalActivityManager;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    return-object v0
.end method

.method public getRightPaneMarginLeft()I
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 207
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    return v1
.end method

.method public getScrollRange()I
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 217
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/preference/MzPreferenceActivity;->getRightPaneMarginLeft()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public getShadowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080520

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getShadowWidth()I
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/meizu/preference/MzPreferenceActivity;->getShadowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public loadActivity(Landroid/content/Intent;Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "intent"
    .parameter "container"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 319
    iget-object v1, p0, Lcom/meizu/preference/MzPreferenceActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-nez v1, :cond_0

    .line 320
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Did you forget to call \'public void setup(LocalActivityManager activityManager)\'?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_0
    if-nez p2, :cond_1

    .line 325
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RightPane must has second child which is a ViewGroup?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/meizu/preference/MzPreferenceActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-direct {p0, v1, p1}, Lcom/meizu/preference/MzPreferenceActivity;->getViewFromActivity(Landroid/app/LocalActivityManager;Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    .line 330
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_2

    .line 331
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "get content from Activity failed!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :cond_2
    invoke-direct {p0, p1}, Lcom/meizu/preference/MzPreferenceActivity;->isMzAccountIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 335
    iget-object v1, p0, Lcom/meizu/preference/MzPreferenceActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    const-string v2, "MzAccountMainActivity"

    invoke-virtual {v1, v2}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/preference/MzPreferenceActivity;->mAccActivity:Landroid/app/Activity;

    .line 338
    :cond_3
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 339
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_4

    .line 346
    :goto_0
    return-void

    .line 342
    :cond_4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 344
    :cond_5
    invoke-virtual {p2, v0, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 345
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/meizu/preference/MzPreferenceActivity;->isCurAccountView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mAccActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mAccActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/16 v5, 0xe6

    const/4 v6, 0x0

    .line 80
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v4, 0x10900bc

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    new-instance v4, Landroid/app/LocalActivityManager;

    invoke-direct {v4, p0, v7}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    iput-object v4, p0, Lcom/meizu/preference/MzPreferenceActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 87
    if-eqz p1, :cond_0

    const-string v4, "android:states"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 89
    .local v3, states:Landroid/os/Bundle;
    :cond_0
    iget-object v4, p0, Lcom/meizu/preference/MzPreferenceActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v4, p1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 94
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/AbsListView;->setDelayPressedStateReleased(Z)V

    .line 95
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 97
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 98
    const v4, 0x10203a4

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/meizu/preference/MzPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 99
    const v4, 0x10203a6

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/meizu/preference/MzPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 100
    const v4, 0x10203a5

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/meizu/preference/MzPreferenceActivity;->mScrollPane:Landroid/view/ViewGroup;

    .line 101
    const v4, 0x10203a8

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/meizu/preference/MzPreferenceActivity;->mViewContainer:Landroid/view/ViewGroup;

    .line 102
    const v4, 0x10203a2

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/PreferenceFrame;

    iput-object v4, p0, Lcom/meizu/preference/MzPreferenceActivity;->mPreferenceFrame:Lcom/meizu/widget/PreferenceFrame;

    .line 105
    iget-object v4, p0, Lcom/meizu/preference/MzPreferenceActivity;->mPreferenceFrame:Lcom/meizu/widget/PreferenceFrame;

    invoke-virtual {p0}, Lcom/meizu/preference/MzPreferenceActivity;->getShadowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/widget/PreferenceFrame;->setShadow(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v4, p0, Lcom/meizu/preference/MzPreferenceActivity;->mPreferenceFrame:Lcom/meizu/widget/PreferenceFrame;

    invoke-virtual {p0}, Lcom/meizu/preference/MzPreferenceActivity;->getShadowWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/meizu/widget/PreferenceFrame;->setShadowWidth(I)V

    .line 108
    iget-object v4, p0, Lcom/meizu/preference/MzPreferenceActivity;->mPreferenceFrame:Lcom/meizu/widget/PreferenceFrame;

    invoke-virtual {p0}, Lcom/meizu/preference/MzPreferenceActivity;->getScrollRange()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/meizu/widget/PreferenceFrame;->setScrollDistance(I)V

    .line 111
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 112
    .local v1, listLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/meizu/preference/MzPreferenceActivity;->getScrollRange()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/preference/MzPreferenceActivity;->getRightPaneMarginLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 115
    iget-object v4, p0, Lcom/meizu/preference/MzPreferenceActivity;->mScrollPane:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 116
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/meizu/preference/MzPreferenceActivity;->getRightPaneMarginLeft()I

    move-result v4

    invoke-virtual {v2, v4, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 118
    iget-object v4, p0, Lcom/meizu/preference/MzPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->setListFooter(Landroid/widget/FrameLayout;)V

    .line 119
    iget-object v4, p0, Lcom/meizu/preference/MzPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->setPrefsContainer(Landroid/view/ViewGroup;)V

    .line 122
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 123
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-object v4, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_2

    .line 124
    iget-object v4, p0, Lcom/meizu/preference/MzPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v4, p0, Lcom/meizu/preference/MzPreferenceActivity;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v4, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/meizu/preference/MzPreferenceActivity;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v4, v5}, Lcom/meizu/preference/MzPreferenceActivity;->loadActivity(Landroid/content/Intent;Landroid/view/ViewGroup;)V

    .line 128
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 135
    :goto_0
    iget-object v4, p0, Lcom/meizu/preference/MzPreferenceActivity;->mPreferenceFrame:Lcom/meizu/widget/PreferenceFrame;

    new-instance v5, Lcom/meizu/preference/MzPreferenceActivity$1;

    invoke-direct {v5, p0}, Lcom/meizu/preference/MzPreferenceActivity$1;-><init>(Lcom/meizu/preference/MzPreferenceActivity;)V

    invoke-virtual {v4, v5}, Lcom/meizu/widget/PreferenceFrame;->setOnScrollingListener(Lcom/meizu/widget/PreferenceFrame$OnScrollingListener;)V

    .line 145
    .end local v0           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v1           #listLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    return-void

    .line 130
    .restart local v0       #header:Landroid/preference/PreferenceActivity$Header;
    .restart local v1       #listLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v2       #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    iget-object v4, p0, Lcom/meizu/preference/MzPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v4, p0, Lcom/meizu/preference/MzPreferenceActivity;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/meizu/preference/MzPreferenceActivity;->isCurAccountView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mAccActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mAccActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 415
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 293
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 294
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    .line 295
    return-void
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 5
    .parameter "header"
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mUpdateHeader:Landroid/preference/PreferenceActivity$Header;

    .line 151
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mPreferenceFrame:Lcom/meizu/widget/PreferenceFrame;

    invoke-virtual {v0}, Lcom/meizu/widget/PreferenceFrame;->getCurrentState()Lcom/meizu/widget/PreferenceFrame$State;

    move-result-object v0

    sget-object v1, Lcom/meizu/widget/PreferenceFrame$State;->OPEN:Lcom/meizu/widget/PreferenceFrame$State;

    if-ne v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mPreferenceFrame:Lcom/meizu/widget/PreferenceFrame;

    invoke-virtual {v0, v4}, Lcom/meizu/widget/PreferenceFrame;->toggle(Z)V

    .line 156
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iput-object p1, p0, Lcom/meizu/preference/MzPreferenceActivity;->mUpdateHeader:Landroid/preference/PreferenceActivity$Header;

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 162
    invoke-virtual {p0, p1}, Lcom/meizu/preference/MzPreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 165
    :cond_2
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mPreferenceFrame:Lcom/meizu/widget/PreferenceFrame;

    invoke-virtual {v0}, Lcom/meizu/widget/PreferenceFrame;->getCurrentState()Lcom/meizu/widget/PreferenceFrame$State;

    move-result-object v0

    sget-object v1, Lcom/meizu/widget/PreferenceFrame$State;->OPEN:Lcom/meizu/widget/PreferenceFrame$State;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mPreferenceFrame:Lcom/meizu/widget/PreferenceFrame;

    invoke-virtual {v0, v4}, Lcom/meizu/widget/PreferenceFrame;->toggle(Z)V

    .line 167
    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getCurrentHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/preference/MzPreferenceActivity;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/preference/MzPreferenceActivity;->loadActivity(Landroid/content/Intent;Landroid/view/ViewGroup;)V

    .line 174
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_0
.end method

.method public onIsMultiPane()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/meizu/preference/MzPreferenceActivity;->isCurAccountView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mAccActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mAccActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 405
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 282
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    .line 283
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "view"
    .parameter "menu"

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/meizu/preference/MzPreferenceActivity;->isCurAccountView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mAccActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mAccActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 425
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 267
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V

    .line 268
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 272
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 273
    iget-object v1, p0, Lcom/meizu/preference/MzPreferenceActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->saveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 274
    .local v0, state:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 275
    const-string v1, "android:states"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 277
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 287
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 288
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchStop()V

    .line 289
    return-void
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 2
    .parameter "header"

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/meizu/preference/MzPreferenceActivity;->isCurAccountView()Z

    move-result v0

    .line 384
    .local v0, isMzAccount:Z
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 385
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/meizu/preference/MzPreferenceActivity;->isCurAccountView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 388
    :cond_0
    return-void
.end method

.method public switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/meizu/preference/MzPreferenceActivity;->isCurAccountView()Z

    move-result v0

    .line 393
    .local v0, isMzAccount:Z
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 394
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/meizu/preference/MzPreferenceActivity;->isCurAccountView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 397
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/meizu/preference/MzPreferenceActivity;->mPreferenceFrame:Lcom/meizu/widget/PreferenceFrame;

    invoke-virtual {v0}, Lcom/meizu/widget/PreferenceFrame;->toggle()V

    .line 226
    return-void
.end method
