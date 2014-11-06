.class Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecipientAutoCompleteTextView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBgNoShadow:Landroid/graphics/drawable/Drawable;

.field private mBgWithShadow:Landroid/graphics/drawable/Drawable;

.field private mCurrentBg:Landroid/graphics/drawable/Drawable;

.field private mObserver:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;

.field private mOnDropDownListener:Lcom/meizu/widget/RecipientEdit$OnDropDownListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mRoot:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 2851
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 2852
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->init()V

    .line 2853
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 2856
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2857
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->init()V

    .line 2858
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 2861
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2862
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->init()V

    .line 2863
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 2866
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080641

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mBgNoShadow:Landroid/graphics/drawable/Drawable;

    .line 2867
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080640

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mBgWithShadow:Landroid/graphics/drawable/Drawable;

    .line 2868
    return-void
.end method


# virtual methods
.method public changePopupBackground()V
    .locals 9

    .prologue
    .line 2917
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v5

    .line 2918
    .local v5, popup:Landroid/widget/ListPopupWindow;
    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 2919
    .local v0, anchorView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 2920
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchor()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 2921
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2927
    :cond_0
    :goto_0
    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownVerticalOffset()I

    move-result v8

    invoke-virtual {v7, v0, v8}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v4

    .line 2929
    .local v4, maxHeight:I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050228

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2931
    .local v3, listItemHeight:I
    const/4 v2, 0x0

    .line 2932
    .local v2, listHeaderHeight:I
    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->getHeaderView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 2933
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050205

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2937
    :cond_1
    const/4 v1, 0x0

    .line 2938
    .local v1, bgChanged:Z
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    mul-int/2addr v7, v3

    add-int/2addr v7, v2

    if-ge v4, v7, :cond_5

    .line 2940
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mCurrentBg:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mBgNoShadow:Landroid/graphics/drawable/Drawable;

    if-eq v7, v8, :cond_2

    .line 2941
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mBgNoShadow:Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mCurrentBg:Landroid/graphics/drawable/Drawable;

    .line 2942
    const/4 v1, 0x1

    .line 2950
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 2951
    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getPopupView()Landroid/view/View;

    move-result-object v6

    .line 2952
    .local v6, popupView:Landroid/view/View;
    if-nez v6, :cond_6

    .line 2953
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mCurrentBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v7}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2958
    .end local v6           #popupView:Landroid/view/View;
    :cond_3
    :goto_2
    return-void

    .line 2923
    .end local v1           #bgChanged:Z
    .end local v2           #listHeaderHeight:I
    .end local v3           #listItemHeight:I
    .end local v4           #maxHeight:I
    :cond_4
    move-object v0, p0

    goto :goto_0

    .line 2944
    .restart local v1       #bgChanged:Z
    .restart local v2       #listHeaderHeight:I
    .restart local v3       #listItemHeight:I
    .restart local v4       #maxHeight:I
    :cond_5
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mCurrentBg:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mBgWithShadow:Landroid/graphics/drawable/Drawable;

    if-eq v7, v8, :cond_2

    .line 2946
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mBgWithShadow:Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mCurrentBg:Landroid/graphics/drawable/Drawable;

    .line 2947
    const/4 v1, 0x1

    goto :goto_1

    .line 2955
    .restart local v6       #popupView:Landroid/view/View;
    :cond_6
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mCurrentBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public dismiss(Z)V
    .locals 5
    .parameter "close"

    .prologue
    .line 2881
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    .line 2882
    .local v1, isShow:Z
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 2884
    if-eqz p1, :cond_0

    .line 2885
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    .line 2886
    .local v0, adapter:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;
    invoke-virtual {v0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->close()V

    .line 2889
    .end local v0           #adapter:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;
    :cond_0
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mOnDropDownListener:Lcom/meizu/widget/RecipientEdit$OnDropDownListener;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 2890
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mOnDropDownListener:Lcom/meizu/widget/RecipientEdit$OnDropDownListener;

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mRoot:Landroid/view/View;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/meizu/widget/RecipientEdit$OnDropDownListener;->onDropDown(Landroid/view/View;Z)V

    .line 2892
    :cond_1
    return-void
.end method

.method public dismissDropDown()V
    .locals 1

    .prologue
    .line 2896
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->dismiss(Z)V

    .line 2897
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 5
    .parameter "text"
    .parameter "keyCode"

    .prologue
    .line 2873
    move-object v1, p1

    check-cast v1, Landroid/text/Editable;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroid/text/style/VoiceAnimSpan;

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/VoiceAnimSpan;

    .line 2875
    .local v0, spans:[Landroid/text/style/VoiceAnimSpan;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 2876
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 2878
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 2971
    .local p1, adapter:Landroid/widget/ListAdapter;,"TT;"
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2973
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mObserver:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;

    if-nez v0, :cond_2

    .line 2974
    new-instance v0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;-><init>(Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;Lcom/meizu/widget/RecipientEdit$1;)V

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mObserver:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;

    .line 2979
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2980
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 2981
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mObserver:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2983
    :cond_1
    return-void

    .line 2975
    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2976
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mObserver:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setOnPopupListener(Landroid/view/View;Lcom/meizu/widget/RecipientEdit$OnDropDownListener;)V
    .locals 0
    .parameter "root"
    .parameter "l"

    .prologue
    .line 2961
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mRoot:Landroid/view/View;

    .line 2962
    iput-object p2, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mOnDropDownListener:Lcom/meizu/widget/RecipientEdit$OnDropDownListener;

    .line 2963
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2966
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 2967
    return-void
.end method

.method public showDropDown()V
    .locals 4

    .prologue
    .line 2901
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    .line 2902
    .local v0, isShow:Z
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 2904
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mOnDropDownListener:Lcom/meizu/widget/RecipientEdit$OnDropDownListener;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 2905
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mOnDropDownListener:Lcom/meizu/widget/RecipientEdit$OnDropDownListener;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mRoot:Landroid/view/View;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/meizu/widget/RecipientEdit$OnDropDownListener;->onDropDown(Landroid/view/View;Z)V

    .line 2908
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 2909
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 2911
    :cond_1
    return-void
.end method
