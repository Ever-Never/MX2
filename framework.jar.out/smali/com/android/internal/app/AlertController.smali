.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$ButtonHandler;
    }
.end annotation


# static fields
.field private static mEllipsize:Landroid/text/TextUtils$TruncateAt;


# instance fields
.field private BIT_BUTTON_NEGATIVE:I

.field private BIT_BUTTON_NEUTRAL:I

.field private BIT_BUTTON_POSITIVE:I

.field protected checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field protected isChecked:Z

.field protected labelOfCheckBox:Ljava/lang/String;

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private mAnchorView:Landroid/view/View;

.field private mAutoShowSoftInput:Z

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeDismiss:Z

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralDismiss:Z

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveDismiss:Z

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private mDialog:Landroid/app/Dialog;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxHeight:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleStyle:I

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private mWidth:I

.field private final mWindow:Landroid/view/Window;

.field private whichButtons:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1832
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    sput-object v0, Lcom/android/internal/app/AlertController;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 5
    .parameter "context"
    .parameter "di"
    .parameter "window"

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 122
    iput v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 138
    iput v1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 154
    iput-boolean v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveDismiss:Z

    .line 156
    iput-boolean v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeDismiss:Z

    .line 158
    iput-boolean v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralDismiss:Z

    .line 160
    iput-boolean v2, p0, Lcom/android/internal/app/AlertController;->mAutoShowSoftInput:Z

    .line 162
    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mAnchorView:Landroid/view/View;

    .line 166
    new-instance v1, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 1350
    iput v3, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    .line 1351
    iput v2, p0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_POSITIVE:I

    .line 1352
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_NEGATIVE:I

    .line 1353
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_NEUTRAL:I

    .line 227
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 228
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 229
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 230
    new-instance v1, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 232
    sget-object v1, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v2, 0x101005d

    invoke-virtual {p1, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 236
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0xa

    const v2, 0x1090023

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 238
    const/16 v1, 0xb

    const v2, 0x109010a

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 241
    const/16 v1, 0xc

    const v2, 0x1090013

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 244
    const/16 v1, 0xd

    const v2, 0x1090012

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    .line 247
    const/16 v1, 0xe

    const v2, 0x1090011

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    .line 251
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/AlertController;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/internal/app/AlertController;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/app/AlertController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1600()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/internal/app/AlertController;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/app/AlertController;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/AlertController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveDismiss:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/internal/app/AlertController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/AlertController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeDismiss:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/AlertController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralDismiss:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method private adjustLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 29
    .parameter "p"

    .prologue
    .line 1083
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .line 1084
    .local v25, windowLocation:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAnchorView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1086
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 1087
    .local v10, displayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAnchorView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "input_method"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodManager;

    .line 1090
    .local v11, iMM:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 1092
    .local v20, res:Landroid/content/res/Resources;
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v26, v0

    move/from16 v0, v26

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 1095
    .end local v20           #res:Landroid/content/res/Resources;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    .line 1097
    .local v16, mCurrentOrientation:I
    const/16 v26, 0x2

    move/from16 v0, v16

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    const/4 v4, 0x0

    .line 1101
    .local v4, actionButtonMinHeight:I
    :goto_0
    const/16 v21, 0x0

    .line 1102
    .local v21, topShadowHeight:I
    const/4 v6, 0x0

    .line 1103
    .local v6, bottomShadowHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v26, v0

    const v27, 0x102027c

    invoke-virtual/range {v26 .. v27}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 1104
    .local v17, parentPanel:Landroid/widget/LinearLayout;
    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v26, v0

    const v27, 0x1020284

    invoke-virtual/range {v26 .. v27}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/meizu/widget/LimitedHeightLinearLayout;

    .line 1106
    .local v9, contentPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1107
    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1108
    .local v5, backgroundDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    .line 1109
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 1110
    .local v19, rect:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1111
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .line 1112
    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 1116
    .end local v19           #rect:Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ListView;->getDividerHeight()I

    .line 1117
    const/4 v8, 0x0

    .line 1118
    .local v8, contentHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    if-lez v26, :cond_5

    .line 1119
    const/4 v12, 0x0

    .line 1120
    .local v12, itemHeight:I
    const/16 v18, 0x0

    .line 1122
    .local v18, position:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v18

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 1123
    .local v13, itemView:Landroid/view/View;
    if-eqz v13, :cond_3

    .line 1124
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1125
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1127
    :cond_3
    add-int/lit8 v18, v18, 0x1

    .line 1128
    if-gtz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    move/from16 v0, v18

    move/from16 v1, v26

    if-lt v0, v1, :cond_2

    .line 1129
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v26

    add-int v26, v26, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/widget/ListAdapter;->getCount()I

    move-result v27

    mul-int v26, v26, v27

    add-int v26, v26, v21

    add-int v8, v26, v6

    .line 1134
    .end local v12           #itemHeight:I
    .end local v13           #itemView:Landroid/view/View;
    .end local v18           #position:I
    :cond_5
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v26, v26, v4

    const/16 v27, 0x1

    aget v27, v25, v27

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAnchorView:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getHeight()I

    move-result v27

    sub-int v7, v26, v27

    .line 1135
    .local v7, bottomSpecHeight:I
    const/16 v26, 0x1

    aget v26, v25, v26

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v22, v26, v27

    .line 1137
    .local v22, topSpecHeight:I
    if-le v8, v7, :cond_a

    move/from16 v0, v22

    if-le v0, v7, :cond_a

    .line 1138
    const/16 v26, 0x51

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1139
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    const/16 v27, 0x1

    aget v27, v25, v27

    sub-int v26, v26, v27

    sub-int v26, v26, v6

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1140
    move/from16 v0, v22

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    .line 1148
    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 1149
    .local v15, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v26, v0

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v27, v0

    add-int v24, v26, v27

    .line 1150
    .local v24, width:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, -0x2

    const v27, 0x800003

    or-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1151
    const/16 v26, 0x0

    aget v26, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAnchorView:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getWidth()I

    move-result v27

    sub-int v27, v27, v24

    div-int/lit8 v27, v27, 0x2

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1152
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v26, v0

    if-gez v26, :cond_6

    .line 1153
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1155
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v26, v0

    if-lez v26, :cond_7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v26, v0

    add-int v26, v26, v24

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_7

    .line 1156
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1157
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v26, v0

    const v27, -0x800004

    and-int v26, v26, v27

    const v27, 0x800005

    or-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1160
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAnchorView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v23

    .line 1161
    .local v23, vto:Landroid/view/ViewTreeObserver;
    if-eqz v23, :cond_8

    .line 1162
    new-instance v14, Lcom/android/internal/app/AlertController$3;

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v14, v0, v1, v2}, Lcom/android/internal/app/AlertController$3;-><init>(Lcom/android/internal/app/AlertController;ILandroid/view/ViewTreeObserver;)V

    .line 1174
    .local v14, layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1178
    .end local v14           #layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_8
    return-void

    .line 1097
    .end local v4           #actionButtonMinHeight:I
    .end local v5           #backgroundDrawable:Landroid/graphics/drawable/Drawable;
    .end local v6           #bottomShadowHeight:I
    .end local v7           #bottomSpecHeight:I
    .end local v8           #contentHeight:I
    .end local v9           #contentPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;
    .end local v15           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v17           #parentPanel:Landroid/widget/LinearLayout;
    .end local v21           #topShadowHeight:I
    .end local v22           #topSpecHeight:I
    .end local v23           #vto:Landroid/view/ViewTreeObserver;
    .end local v24           #width:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x1050227

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto/16 :goto_0

    .line 1142
    .restart local v4       #actionButtonMinHeight:I
    .restart local v5       #backgroundDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v6       #bottomShadowHeight:I
    .restart local v7       #bottomSpecHeight:I
    .restart local v8       #contentHeight:I
    .restart local v9       #contentPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;
    .restart local v17       #parentPanel:Landroid/widget/LinearLayout;
    .restart local v21       #topShadowHeight:I
    .restart local v22       #topSpecHeight:I
    :cond_a
    const/16 v26, 0x31

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1143
    const/16 v26, 0x1

    aget v26, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAnchorView:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getHeight()I

    move-result v27

    add-int v26, v26, v27

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    sub-int v26, v26, v21

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1144
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    goto/16 :goto_1
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 255
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v2

    .line 259
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 260
    goto :goto_0

    .line 263
    :cond_2
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v1, p0

    .line 267
    check-cast v1, Landroid/view/ViewGroup;

    .line 268
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 269
    .local v0, i:I
    :cond_3
    if-lez v0, :cond_0

    .line 270
    add-int/lit8 v0, v0, -0x1

    .line 271
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 272
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 273
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    .line 1408
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1409
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1410
    const/high16 v3, 0x3f00

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1411
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1412
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020282

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1413
    .local v0, leftSpacer:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1414
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1416
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020283

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1417
    .local v2, rightSpacer:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1418
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1420
    :cond_1
    return-void
.end method

.method private getOneEditText(Landroid/view/View;)Landroid/widget/EditText;
    .locals 7
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 796
    const/4 v4, 0x0

    .line 797
    .local v4, vg:Landroid/view/ViewGroup;
    instance-of v6, p1, Landroid/widget/EditText;

    if-eqz v6, :cond_0

    .line 798
    check-cast p1, Landroid/widget/EditText;

    .line 813
    .end local p1
    :goto_0
    return-object p1

    .line 800
    .restart local p1
    :cond_0
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    move-object v4, p1

    .line 801
    check-cast v4, Landroid/view/ViewGroup;

    .line 803
    :cond_1
    if-nez v4, :cond_2

    move-object p1, v5

    .line 804
    goto :goto_0

    .line 806
    :cond_2
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 807
    .local v0, c:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 808
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 809
    .local v1, child:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/internal/app/AlertController;->getOneEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v2

    .line 810
    .local v2, editText:Landroid/widget/EditText;
    if-eqz v2, :cond_3

    move-object p1, v2

    .line 811
    goto :goto_0

    .line 807
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1           #child:Landroid/view/View;
    .end local v2           #editText:Landroid/widget/EditText;
    :cond_4
    move-object p1, v5

    .line 813
    goto :goto_0
.end method

.method private hasEditTextCount(Landroid/view/View;)I
    .locals 6
    .parameter "v"

    .prologue
    .line 775
    const/4 v2, 0x0

    .line 776
    .local v2, editCount:I
    const/4 v4, 0x0

    .line 777
    .local v4, vg:Landroid/view/ViewGroup;
    instance-of v5, p1, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 778
    const/4 v5, 0x1

    .line 791
    :goto_0
    return v5

    .line 780
    :cond_0
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    move-object v4, p1

    .line 781
    check-cast v4, Landroid/view/ViewGroup;

    .line 783
    :cond_1
    if-nez v4, :cond_2

    .line 784
    const/4 v5, 0x0

    goto :goto_0

    .line 786
    :cond_2
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 787
    .local v0, c:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 788
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 789
    .local v1, child:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/internal/app/AlertController;->hasEditTextCount(Landroid/view/View;)I

    move-result v5

    add-int/2addr v2, v5

    .line 787
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1           #child:Landroid/view/View;
    :cond_3
    move v5, v2

    .line 791
    goto :goto_0
.end method

.method private hasGridView(Landroid/view/View;)Z
    .locals 7
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 841
    const/4 v3, 0x0

    .line 842
    .local v3, vg:Landroid/view/ViewGroup;
    instance-of v6, p1, Landroid/widget/GridView;

    if-eqz v6, :cond_1

    .line 862
    :cond_0
    :goto_0
    return v4

    .line 846
    :cond_1
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    move-object v3, p1

    .line 847
    check-cast v3, Landroid/view/ViewGroup;

    .line 850
    :cond_2
    if-nez v3, :cond_3

    move v4, v5

    .line 851
    goto :goto_0

    .line 854
    :cond_3
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 855
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 856
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 857
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/internal/app/AlertController;->hasEditTextCount(Landroid/view/View;)I

    move-result v6

    if-gtz v6, :cond_0

    .line 855
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #child:Landroid/view/View;
    :cond_4
    move v4, v5

    .line 862
    goto :goto_0
.end method

.method private hasScrollTextView(Landroid/view/View;)Z
    .locals 9
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 817
    const/4 v4, 0x0

    .line 821
    .local v4, vg:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.meizu.widget.ScrollTextView"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 837
    :cond_0
    :goto_0
    return v5

    .line 824
    :cond_1
    instance-of v7, p1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    move-object v4, p1

    .line 825
    check-cast v4, Landroid/view/ViewGroup;

    .line 827
    :cond_2
    if-nez v4, :cond_3

    move v5, v6

    .line 828
    goto :goto_0

    .line 830
    :cond_3
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 831
    .local v1, c:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 832
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 833
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->hasScrollTextView(Landroid/view/View;)Z

    move-result v0

    .line 834
    .local v0, b:Z
    if-nez v0, :cond_0

    .line 831
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #b:Z
    .end local v2           #child:Landroid/view/View;
    :cond_4
    move v5, v6

    .line 837
    goto :goto_0
.end method

.method private isTextEditable(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v2

    .line 310
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 311
    goto :goto_0

    .line 314
    :cond_2
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 318
    check-cast v1, Landroid/view/ViewGroup;

    .line 319
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 320
    .local v0, i:I
    :cond_3
    if-lez v0, :cond_0

    .line 321
    add-int/lit8 v0, v0, -0x1

    .line 322
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 323
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController;->isTextEditable(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 324
    goto :goto_0
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 22
    .parameter "topPanel"
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "a"
    .parameter "hasTitle"
    .parameter "buttonPanel"

    .prologue
    .line 1427
    const/16 v19, 0x0

    const v20, 0x1080810

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 1429
    .local v9, fullDark:I
    const/16 v19, 0x1

    const v20, 0x1080818

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 1431
    .local v16, topDark:I
    const/16 v19, 0x2

    const v20, 0x108080d

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 1433
    .local v7, centerDark:I
    const/16 v19, 0x3

    const v20, 0x108080a

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1435
    .local v4, bottomDark:I
    const/16 v19, 0x4

    const v20, 0x108080f

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1437
    .local v8, fullBright:I
    const/16 v19, 0x5

    const v20, 0x1080817

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 1439
    .local v15, topBright:I
    const/16 v19, 0x6

    const v20, 0x108080c

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 1441
    .local v6, centerBright:I
    const/16 v19, 0x7

    const v20, 0x1080809

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 1443
    .local v3, bottomBright:I
    const/16 v19, 0x8

    const v20, 0x108080b

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 1455
    .local v5, bottomMedium:I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v18, v0

    .line 1456
    .local v18, views:[Landroid/view/View;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v12, v0, [Z

    .line 1457
    .local v12, light:[Z
    const/4 v11, 0x0

    .line 1458
    .local v11, lastView:Landroid/view/View;
    const/4 v10, 0x0

    .line 1460
    .local v10, lastLight:Z
    const/4 v13, 0x0

    .line 1461
    .local v13, pos:I
    if-eqz p6, :cond_0

    .line 1462
    aput-object p1, v18, v13

    .line 1463
    const/16 v19, 0x0

    aput-boolean v19, v12, v13

    .line 1464
    add-int/lit8 v13, v13, 0x1

    .line 1472
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/16 p2, 0x0

    .end local p2
    :cond_1
    aput-object p2, v18, v13

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    const/16 v19, 0x1

    :goto_0
    aput-boolean v19, v12, v13

    .line 1475
    add-int/lit8 v13, v13, 0x1

    .line 1476
    if-eqz p3, :cond_2

    .line 1477
    aput-object p3, v18, v13

    .line 1478
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    move/from16 v19, v0

    aput-boolean v19, v12, v13

    .line 1479
    add-int/lit8 v13, v13, 0x1

    .line 1481
    :cond_2
    if-eqz p4, :cond_3

    .line 1482
    aput-object p7, v18, v13

    .line 1483
    const/16 v19, 0x1

    aput-boolean v19, v12, v13

    .line 1486
    :cond_3
    const/4 v14, 0x0

    .line 1487
    .local v14, setView:Z
    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_a

    .line 1488
    aget-object v17, v18, v13

    .line 1489
    .local v17, v:Landroid/view/View;
    if-nez v17, :cond_5

    .line 1487
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1474
    .end local v14           #setView:Z
    .end local v17           #v:Landroid/view/View;
    :cond_4
    const/16 v19, 0x0

    goto :goto_0

    .line 1492
    .restart local v14       #setView:Z
    .restart local v17       #v:Landroid/view/View;
    :cond_5
    if-eqz v11, :cond_6

    .line 1493
    if-nez v14, :cond_8

    .line 1494
    if-eqz v10, :cond_7

    move/from16 v19, v15

    :goto_3
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1498
    :goto_4
    const/4 v14, 0x1

    .line 1500
    :cond_6
    move-object/from16 v11, v17

    .line 1501
    aget-boolean v10, v12, v13

    goto :goto_2

    :cond_7
    move/from16 v19, v16

    .line 1494
    goto :goto_3

    .line 1496
    :cond_8
    if-eqz v10, :cond_9

    move/from16 v19, v6

    :goto_5
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_9
    move/from16 v19, v7

    goto :goto_5

    .line 1504
    .end local v17           #v:Landroid/view/View;
    :cond_a
    if-eqz v11, :cond_b

    .line 1505
    if-eqz v14, :cond_f

    .line 1510
    if-eqz v10, :cond_e

    if-eqz p4, :cond_d

    .end local v5           #bottomMedium:I
    :goto_6
    invoke-virtual {v11, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1542
    .end local v8           #fullBright:I
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1544
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setSelection(I)V

    .line 1549
    :cond_c
    return-void

    .restart local v5       #bottomMedium:I
    .restart local v8       #fullBright:I
    :cond_d
    move v5, v3

    .line 1510
    goto :goto_6

    :cond_e
    move v5, v4

    goto :goto_6

    .line 1513
    :cond_f
    if-eqz v10, :cond_10

    .end local v8           #fullBright:I
    :goto_8
    invoke-virtual {v11, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    .restart local v8       #fullBright:I
    :cond_10
    move v8, v9

    goto :goto_8
.end method

.method private setTopShadowEnable(Landroid/view/View;Z)V
    .locals 5
    .parameter "v"
    .parameter "flag"

    .prologue
    .line 739
    if-nez p1, :cond_1

    .line 770
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 743
    .restart local p1
    :cond_1
    const/4 v3, 0x0

    .line 745
    .local v3, vg:Landroid/view/ViewGroup;
    instance-of v4, p1, Landroid/widget/ListView;

    if-eqz v4, :cond_2

    .line 746
    check-cast p1, Landroid/widget/ListView;

    .end local p1
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setTopShadowEnable(Z)V

    goto :goto_0

    .line 748
    .restart local p1
    :cond_2
    instance-of v4, p1, Landroid/widget/ScrollView;

    if-eqz v4, :cond_3

    .line 749
    check-cast p1, Landroid/widget/ScrollView;

    .end local p1
    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->setTopShadowEnable(Z)V

    goto :goto_0

    .line 751
    .restart local p1
    :cond_3
    instance-of v4, p1, Landroid/widget/GridView;

    if-eqz v4, :cond_4

    .line 752
    check-cast p1, Landroid/widget/GridView;

    .end local p1
    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setTopShadowEnable(Z)V

    goto :goto_0

    .line 756
    .restart local p1
    :cond_4
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_5

    move-object v3, p1

    .line 757
    check-cast v3, Landroid/view/ViewGroup;

    .line 760
    :cond_5
    if-eqz v3, :cond_0

    .line 764
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 765
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 766
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 767
    .local v0, childView:Landroid/view/View;
    invoke-direct {p0, v0, p2}, Lcom/android/internal/app/AlertController;->setTopShadowEnable(Landroid/view/View;Z)V

    .line 765
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private setupButtons()Z
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 1355
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x1020019

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 1356
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1358
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1359
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1366
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x102001a

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 1367
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1369
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1370
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1378
    :goto_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x102001b

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 1379
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1381
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1382
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1390
    :goto_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    iget v0, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    iget v2, p0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_POSITIVE:I

    if-ne v0, v2, :cond_4

    .line 1396
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 1404
    :cond_0
    :goto_3
    iget v0, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    return v0

    .line 1361
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1362
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1363
    iget v0, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    iget v2, p0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_POSITIVE:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    goto :goto_0

    .line 1372
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1373
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1375
    iget v0, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    iget v2, p0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_NEGATIVE:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    goto :goto_1

    .line 1384
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1385
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1387
    iget v0, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    iget v2, p0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_NEUTRAL:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    goto :goto_2

    .line 1397
    :cond_4
    iget v0, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    iget v2, p0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_NEGATIVE:I

    if-ne v0, v2, :cond_5

    .line 1398
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 1399
    :cond_5
    iget v0, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    iget v2, p0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_NEUTRAL:I

    if-ne v0, v2, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    move v0, v1

    .line 1404
    goto :goto_4
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter "contentPanel"

    .prologue
    const v5, 0x1020285

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1324
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 1325
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 1328
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 1329
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1348
    :goto_0
    return-void

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1334
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1336
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1337
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1339
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 1340
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1341
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1343
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1345
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 11
    .parameter "topPanel"

    .prologue
    const v7, 0x102027e

    const/4 v0, 0x0

    const/16 v10, 0x8

    .line 1260
    const/4 v1, 0x1

    .line 1262
    .local v1, hasTitle:Z
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 1264
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1267
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v5, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1270
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1271
    .local v4, titleTemplate:Landroid/view/View;
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1320
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #titleTemplate:Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 1273
    :cond_1
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v0, 0x1

    .line 1275
    .local v0, hasTextTitle:Z
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 1278
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x102037d

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1279
    .local v2, idView:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 1280
    iget v5, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-gtz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_3

    .line 1281
    const v5, 0x1080588

    iput v5, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 1285
    :cond_3
    if-eqz v0, :cond_6

    .line 1287
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x102027f

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 1289
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    iget v5, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-lez v5, :cond_4

    .line 1296
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1297
    :cond_4
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 1298
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1299
    :cond_5
    iget v5, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-nez v5, :cond_0

    .line 1304
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1308
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1313
    :cond_6
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1314
    .restart local v4       #titleTemplate:Landroid/view/View;
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1315
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1316
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1317
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 14

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x1020284

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1209
    .local v2, contentPanel:Landroid/widget/LinearLayout;
    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 1210
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupButtons()Z

    move-result v4

    .line 1212
    .local v4, hasButtons:Z
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x102027d

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1213
    .local v1, topPanel:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    sget-object v11, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v12, 0x101005d

    const/4 v13, 0x0

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1215
    .local v5, a:Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v6

    .line 1217
    .local v6, hasTitle:Z
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x1020281

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1218
    .local v7, buttonPanel:Landroid/view/View;
    if-nez v4, :cond_0

    .line 1219
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1220
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 1223
    :cond_0
    const/4 v3, 0x0

    .line 1224
    .local v3, customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1225
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x1020286

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #customPanel:Landroid/widget/FrameLayout;
    check-cast v3, Landroid/widget/FrameLayout;

    .line 1226
    .restart local v3       #customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x102002b

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 1227
    .local v8, custom:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1228
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_1

    .line 1229
    iget v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    iget v10, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    iget v11, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    iget v12, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v8, v0, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 1232
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 1233
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1242
    .end local v8           #custom:Landroid/widget/FrameLayout;
    :cond_2
    :goto_0
    if-eqz v6, :cond_4

    .line 1243
    const/4 v9, 0x0

    .line 1244
    .local v9, divider:Landroid/view/View;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_6

    .line 1245
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x1020280

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1250
    :goto_1
    if-eqz v9, :cond_4

    .line 1251
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .end local v9           #divider:Landroid/view/View;
    :cond_4
    move-object v0, p0

    .line 1255
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 1256
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1257
    return-void

    .line 1236
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x1020286

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1247
    .restart local v9       #divider:Landroid/view/View;
    :cond_6
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x1020287

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    goto :goto_1
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 220
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 221
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103d9

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 223
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected applyMeizuStyle()V
    .locals 51

    .prologue
    .line 370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x102037d

    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .line 371
    .local v29, idView:Landroid/view/View;
    if-nez v29, :cond_0

    .line 731
    :goto_0
    return-void

    .line 374
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x102027c

    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/LinearLayout;

    .line 375
    .local v36, parentPanel:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x1020281

    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 376
    .local v10, buttonPanel:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x1020286

    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 377
    .local v6, customPanel:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x1020284

    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 378
    .local v5, contentPanel:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x102027d

    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 379
    .local v4, topPanel:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x102027e

    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/LinearLayout;

    .line 380
    .local v42, titleTemplate:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x102002b

    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/FrameLayout;

    .line 382
    .local v21, custom:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x1020381

    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/CheckBox;

    .line 383
    .local v45, vCheckBox:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x1020382

    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v46

    check-cast v46, Landroid/widget/TextView;

    .line 384
    .local v46, vCheckLabel:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x102027f

    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/TextView;

    .line 385
    .local v43, titleView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x102037f

    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 387
    .local v39, summryView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->labelOfCheckBox:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    const/16 v16, 0x1

    .line 388
    .local v16, checkBoxVisible:Z
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v16, :cond_1f

    :cond_1
    const/16 v44, 0x1

    .line 389
    .local v44, topVisible:Z
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_20

    const/16 v19, 0x1

    .line 390
    .local v19, contentVisible:Z
    :goto_3
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_21

    const/16 v22, 0x1

    .line 391
    .local v22, customVisible:Z
    :goto_4
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_22

    const/4 v15, 0x1

    .line 395
    .local v15, buttonVisible:Z
    :goto_5
    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isCancelable()Z

    move-result v3

    if-nez v3, :cond_23

    .line 396
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x3ecccccd

    invoke-virtual {v3, v7}, Landroid/view/Window;->setDimAmount(F)V

    .line 401
    :goto_6
    const v3, 0x1020287

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    .line 402
    .local v41, titleDividerTop:Landroid/view/View;
    const v3, 0x1020280

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    .line 403
    .local v40, titleDivider:Landroid/view/View;
    if-eqz v41, :cond_3

    .line 404
    const/16 v3, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 406
    :cond_3
    if-eqz v40, :cond_4

    .line 407
    const/16 v3, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 411
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_24

    const/16 v26, 0x1

    .line 412
    .local v26, hasListView:Z
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/app/AlertController;->hasEditTextCount(Landroid/view/View;)I

    move-result v25

    .line 413
    .local v25, hasEditTextCount:I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/app/AlertController;->hasScrollTextView(Landroid/view/View;)Z

    move-result v27

    .line 416
    .local v27, hasScrollTextView:Z
    if-eqz v26, :cond_25

    .line 417
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/AlertController;->mTitleStyle:I

    if-nez v3, :cond_6

    .line 418
    if-eqz v40, :cond_5

    .line 419
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 422
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const v9, 0x10301b3

    invoke-virtual {v3, v7, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v3, v7, v9, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x1050128

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 430
    const/16 v3, 0x10

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 431
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x105012c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v9, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v49

    invoke-virtual {v0, v3, v7, v9, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    move-object/from16 v17, v5

    .line 436
    check-cast v17, Lcom/meizu/widget/LimitedHeightLinearLayout;

    .line 439
    .local v17, content:Lcom/meizu/widget/LimitedHeightLinearLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_b

    .line 440
    const/16 v30, 0x0

    .line 441
    .local v30, itemHeight:I
    const/16 v37, 0x0

    .line 443
    .local v37, position:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move/from16 v0, v37

    invoke-interface {v3, v0, v7, v9}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v31

    .line 444
    .local v31, itemView:Landroid/view/View;
    if-eqz v31, :cond_8

    .line 445
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v7}, Landroid/view/View;->measure(II)V

    .line 446
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredHeight()I

    move-result v30

    .line 448
    :cond_8
    add-int/lit8 v37, v37, 0x1

    .line 449
    if-gtz v30, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    move/from16 v0, v37

    if-lt v0, v3, :cond_7

    .line 451
    :cond_9
    if-lez v30, :cond_a

    .line 452
    invoke-virtual/range {v17 .. v17}, Lcom/meizu/widget/LimitedHeightLinearLayout;->getMaxHeight()I

    move-result v3

    div-int v20, v3, v30

    .line 453
    .local v20, countOneScreen:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    div-int v7, v7, v20

    mul-int v7, v7, v20

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setSelection(I)V

    .line 457
    .end local v20           #countOneScreen:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 458
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Landroid/widget/AbsListView;->setOverScrollMode(I)V

    .line 459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    mul-int v3, v3, v30

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    mul-int/2addr v7, v9

    add-int v18, v3, v7

    .line 460
    .local v18, contentHeight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v7, Lcom/android/internal/app/AlertController$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v18

    invoke-direct {v7, v0, v1, v2}, Lcom/android/internal/app/AlertController$2;-><init>(Lcom/android/internal/app/AlertController;Landroid/view/View;I)V

    invoke-virtual {v3, v7}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 534
    .end local v17           #content:Lcom/meizu/widget/LimitedHeightLinearLayout;
    .end local v18           #contentHeight:I
    .end local v30           #itemHeight:I
    .end local v31           #itemView:Landroid/view/View;
    .end local v37           #position:I
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/AlertController;->mTitleStyle:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v3, :cond_c

    .line 535
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const v9, 0x10301b3

    invoke-virtual {v3, v7, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 540
    :cond_c
    if-nez v44, :cond_d

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v3, :cond_d

    .line 541
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const v9, 0x1030326

    invoke-virtual {v3, v7, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x105013a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v49, 0x105012a

    move/from16 v0, v49

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getPaddingRight()I

    move-result v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/view/View;->getPaddingBottom()I

    move-result v50

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v3, v7, v9, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 546
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 550
    :cond_d
    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_e

    .line 551
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/app/AlertController;->getOneEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v23

    .line 552
    .local v23, editText:Landroid/widget/EditText;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1050144

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 557
    .end local v23           #editText:Landroid/widget/EditText;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_f

    if-eqz v15, :cond_f

    if-nez v22, :cond_f

    .line 558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    const/16 v28, 0x1

    .line 559
    .local v28, hasTextTitle:Z
    :goto_9
    if-nez v28, :cond_2f

    .line 560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x1020273

    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 565
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-lez v3, :cond_2d

    .line 566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 611
    .end local v28           #hasTextTitle:Z
    :cond_f
    :goto_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/AlertController;->mMaxHeight:I

    if-lez v3, :cond_33

    move-object/from16 v3, v36

    .line 612
    check-cast v3, Lcom/meizu/widget/LimitedHeightLinearLayout;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/AlertController;->mMaxHeight:I

    invoke-virtual {v3, v7}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    .line 620
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x1050122

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 622
    .local v12, MIN_HEIGHT_WITH_BUTTON:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x1050123

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 625
    .local v11, MIN_HEIGHT_ONLY_PANEL:I
    if-eqz v15, :cond_11

    if-nez v19, :cond_10

    if-nez v22, :cond_10

    if-eqz v44, :cond_11

    .line 626
    :cond_10
    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Landroid/view/View;->setMinimumHeight(I)V

    .line 629
    :cond_11
    if-nez v19, :cond_12

    if-nez v22, :cond_12

    if-eqz v44, :cond_12

    .line 630
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout$LayoutParams;

    .line 631
    .local v32, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x3f80

    move-object/from16 v0, v32

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 632
    const/16 v3, 0x10

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 635
    .end local v32           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_12
    if-nez v15, :cond_15

    .line 636
    if-nez v19, :cond_13

    if-nez v22, :cond_13

    if-eqz v44, :cond_13

    .line 637
    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Landroid/view/View;->setMinimumHeight(I)V

    .line 640
    :cond_13
    if-eqz v19, :cond_14

    if-nez v22, :cond_14

    if-nez v44, :cond_14

    .line 641
    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Landroid/view/View;->setMinimumHeight(I)V

    .line 644
    :cond_14
    if-nez v19, :cond_15

    if-eqz v22, :cond_15

    if-nez v44, :cond_15

    .line 645
    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Landroid/view/View;->setMinimumHeight(I)V

    .line 649
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x1050124

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 651
    .local v13, MIN_WIDTH:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x1050125

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 654
    .local v14, MIN_WIDTH_NO_BUTTON:I
    if-eqz v15, :cond_35

    .line 655
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/widget/FrameLayout$LayoutParams;

    .line 656
    .local v32, lp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Landroid/view/View;->setMinimumWidth(I)V

    .line 658
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/AlertController;->mWidth:I

    if-lez v3, :cond_34

    .line 659
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/AlertController;->mWidth:I

    move-object/from16 v0, v32

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 673
    :goto_c
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->requestLayout()V

    .line 676
    if-eqz v26, :cond_16

    if-nez v15, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_16

    .line 677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v48

    .line 678
    .local v48, window:Landroid/view/Window;
    invoke-virtual/range {v48 .. v48}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v33

    .line 680
    .local v33, p:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController;->adjustLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 684
    .end local v33           #p:Landroid/view/WindowManager$LayoutParams;
    .end local v48           #window:Landroid/view/Window;
    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/AlertController;->whichButtons:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_NEGATIVE:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_NEUTRAL:I

    or-int/2addr v7, v9

    if-ne v3, v7, :cond_37

    .line 685
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    const v7, 0x1080655

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    const v7, 0x1080659

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 692
    :cond_17
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 697
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/AlertController;->whichButtons:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_POSITIVE:I

    if-ne v3, v7, :cond_38

    .line 698
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    const v7, 0x1080653

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 707
    :cond_18
    :goto_e
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout$LayoutParams;

    .line 708
    .local v24, flp:Landroid/widget/FrameLayout$LayoutParams;
    if-lez v25, :cond_19

    .line 709
    const v3, 0x108051a

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x105013e

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, v24

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v49, 0x105013f

    move/from16 v0, v49

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x1050141

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v49

    move-object/from16 v0, v24

    move/from16 v1, v49

    invoke-virtual {v0, v3, v7, v9, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 716
    :cond_19
    if-gtz v25, :cond_1a

    if-eqz v27, :cond_1b

    :cond_1a
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_1b

    .line 717
    move-object/from16 v0, v24

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1050142

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object/from16 v0, v24

    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v49, v0

    move-object/from16 v0, v24

    move/from16 v1, v49

    invoke-virtual {v0, v3, v7, v9, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 722
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v3, :cond_1c

    .line 723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ScrollView;->setTopShadowEnable(Z)V

    .line 726
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x102037e

    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/ScrollView;

    .line 727
    .local v38, scrollView:Landroid/widget/ScrollView;
    if-eqz v38, :cond_1d

    .line 728
    const/4 v3, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setTopShadowEnable(Z)V

    .line 730
    :cond_1d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lcom/android/internal/app/AlertController;->setTopShadowEnable(Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 387
    .end local v11           #MIN_HEIGHT_ONLY_PANEL:I
    .end local v12           #MIN_HEIGHT_WITH_BUTTON:I
    .end local v13           #MIN_WIDTH:I
    .end local v14           #MIN_WIDTH_NO_BUTTON:I
    .end local v15           #buttonVisible:Z
    .end local v16           #checkBoxVisible:Z
    .end local v19           #contentVisible:Z
    .end local v22           #customVisible:Z
    .end local v24           #flp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v25           #hasEditTextCount:I
    .end local v26           #hasListView:Z
    .end local v27           #hasScrollTextView:Z
    .end local v32           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v38           #scrollView:Landroid/widget/ScrollView;
    .end local v40           #titleDivider:Landroid/view/View;
    .end local v41           #titleDividerTop:Landroid/view/View;
    .end local v44           #topVisible:Z
    :cond_1e
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 388
    .restart local v16       #checkBoxVisible:Z
    :cond_1f
    const/16 v44, 0x0

    goto/16 :goto_2

    .line 389
    .restart local v44       #topVisible:Z
    :cond_20
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 390
    .restart local v19       #contentVisible:Z
    :cond_21
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 391
    .restart local v22       #customVisible:Z
    :cond_22
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 398
    .restart local v15       #buttonVisible:Z
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/Window;->setDimAmount(F)V

    goto/16 :goto_6

    .line 411
    .restart local v40       #titleDivider:Landroid/view/View;
    .restart local v41       #titleDividerTop:Landroid/view/View;
    :cond_24
    const/16 v26, 0x0

    goto/16 :goto_7

    .line 486
    .restart local v25       #hasEditTextCount:I
    .restart local v26       #hasListView:Z
    .restart local v27       #hasScrollTextView:Z
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v3, :cond_27

    .line 487
    if-gtz v25, :cond_26

    if-eqz v27, :cond_28

    .line 488
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const v9, 0x10301b3

    invoke-virtual {v3, v7, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1050132

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x1050133

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v49

    const/16 v50, 0x0

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v3, v7, v9, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x1050128

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 501
    const/16 v3, 0x10

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 502
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x105012c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v9, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v49

    invoke-virtual {v0, v3, v7, v9, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 512
    :cond_27
    :goto_f
    if-eqz v16, :cond_b

    .line 513
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 514
    const/4 v3, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 515
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v49

    invoke-virtual {v0, v3, v7, v9, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 516
    const/16 v3, 0x8

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 517
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    sget-object v9, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v49, 0x101005d

    const/16 v50, 0x0

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v3, v7, v9, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 519
    .local v8, a:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/AlertController;->whichButtons:I

    if-eqz v3, :cond_2b

    const/4 v7, 0x1

    :goto_10
    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 520
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 521
    const/4 v3, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 523
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x1020380

    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1050129

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 525
    const/4 v3, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->labelOfCheckBox:Ljava/lang/String;

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/AlertController;->isChecked:Z

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 528
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v3, :cond_b

    .line 529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_8

    .line 504
    .end local v8           #a:Landroid/content/res/TypedArray;
    :cond_28
    if-nez v19, :cond_29

    if-eqz v22, :cond_27

    .line 505
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x105012a

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    .line 507
    .local v35, paddingTop:I
    if-eqz v22, :cond_2a

    const/16 v34, 0x0

    .line 508
    .local v34, paddingBottom:I
    :goto_11
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v35

    move/from16 v2, v34

    invoke-virtual {v0, v3, v1, v7, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_f

    .end local v34           #paddingBottom:I
    :cond_2a
    move/from16 v34, v35

    .line 507
    goto :goto_11

    .line 519
    .end local v35           #paddingTop:I
    .restart local v8       #a:Landroid/content/res/TypedArray;
    :cond_2b
    const/4 v7, 0x0

    goto/16 :goto_10

    .line 558
    .end local v8           #a:Landroid/content/res/TypedArray;
    :cond_2c
    const/16 v28, 0x0

    goto/16 :goto_9

    .line 568
    .restart local v28       #hasTextTitle:Z
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2e

    .line 569
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 570
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    .line 571
    :cond_2e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-nez v3, :cond_f

    .line 575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getPaddingRight()I

    move-result v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/view/View;->getPaddingBottom()I

    move-result v50

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v3, v7, v9, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 579
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    .line 583
    :cond_2f
    const/16 v3, 0x8

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 584
    const/16 v19, 0x0

    .line 585
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 586
    const/4 v3, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 587
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    sget-object v9, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v49, 0x101005d

    const/16 v50, 0x0

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v3, v7, v9, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 590
    .restart local v8       #a:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/AlertController;->whichButtons:I

    if-eqz v3, :cond_31

    const/4 v7, 0x1

    :goto_12
    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 591
    const/16 v47, 0x0

    .line 592
    .local v47, width:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x1020006

    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 593
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x102027f

    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 594
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    add-int/2addr v3, v7

    add-int v47, v47, v3

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int v47, v47, v3

    .line 596
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-lez v3, :cond_32

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int v47, v47, v3

    .line 601
    :cond_30
    :goto_13
    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 602
    const/4 v3, 0x3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    const/4 v3, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 605
    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int v3, v3, v47

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getPaddingBottom()I

    move-result v49

    move-object/from16 v0, v39

    move/from16 v1, v49

    invoke-virtual {v0, v3, v7, v9, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_a

    .line 590
    .end local v47           #width:I
    :cond_31
    const/4 v7, 0x0

    goto/16 :goto_12

    .line 598
    .restart local v47       #width:I
    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_30

    .line 599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int v47, v47, v3

    goto :goto_13

    .end local v8           #a:Landroid/content/res/TypedArray;
    .end local v28           #hasTextTitle:Z
    .end local v47           #width:I
    :cond_33
    move-object/from16 v3, v36

    .line 614
    check-cast v3, Lcom/meizu/widget/LimitedHeightLinearLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1050121

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    goto/16 :goto_b

    .line 661
    .restart local v11       #MIN_HEIGHT_ONLY_PANEL:I
    .restart local v12       #MIN_HEIGHT_WITH_BUTTON:I
    .restart local v13       #MIN_WIDTH:I
    .restart local v14       #MIN_WIDTH_NO_BUTTON:I
    .restart local v32       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_34
    move-object/from16 v0, v32

    iput v13, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_c

    .line 664
    .end local v32           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_35
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/widget/FrameLayout$LayoutParams;

    .line 665
    .restart local v32       #lp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Landroid/view/View;->setMinimumWidth(I)V

    .line 667
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/AlertController;->mWidth:I

    if-lez v3, :cond_36

    .line 668
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/AlertController;->mWidth:I

    move-object/from16 v0, v32

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_c

    .line 670
    :cond_36
    move-object/from16 v0, v32

    iput v14, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_c

    .line 687
    :cond_37
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/AlertController;->whichButtons:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_NEUTRAL:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_POSITIVE:I

    or-int/2addr v7, v9

    if-ne v3, v7, :cond_17

    .line 688
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    const v7, 0x1080655

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    const v7, 0x1080659

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_d

    .line 699
    :cond_38
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/AlertController;->whichButtons:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_NEGATIVE:I

    if-ne v3, v7, :cond_39

    .line 700
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    const v7, 0x1080653

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_e

    .line 701
    :cond_39
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/AlertController;->whichButtons:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_NEUTRAL:I

    if-ne v3, v7, :cond_18

    .line 702
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    const v7, 0x1080653

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_e
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 1185
    packed-switch p1, :pswitch_data_0

    .line 1193
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1187
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 1189
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 1191
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 1185
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .parameter "attrId"

    .prologue
    .line 978
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 979
    .local v0, out:Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 980
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertController;->installContent(Landroid/app/Dialog;)V

    .line 282
    return-void
.end method

.method public installContent(Landroid/app/Dialog;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/high16 v2, 0x2

    .line 289
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 291
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 298
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 299
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 301
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mDialog:Landroid/app/Dialog;

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->applyMeizuStyle()V

    .line 303
    return-void

    .line 294
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mAutoShowSoftInput:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/internal/app/AlertController;->isTextEditable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .parameter "anchorView"

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAnchorView:Landroid/view/View;

    .line 1073
    return-void
.end method

.method public setAutoShowSoftInput(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 1013
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mAutoShowSoftInput:Z

    .line 1014
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"
    .parameter "msg"

    .prologue
    .line 922
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 923
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 926
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 944
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 929
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 930
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 946
    :goto_0
    return-void

    .line 934
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 935
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 939
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 940
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 926
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonClickDismiss(IZ)V
    .locals 0
    .parameter "whichButton"
    .parameter "dismiss"

    .prologue
    .line 991
    packed-switch p1, :pswitch_data_0

    .line 1005
    :goto_0
    return-void

    .line 994
    :pswitch_0
    iput-boolean p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveDismiss:Z

    goto :goto_0

    .line 997
    :pswitch_1
    iput-boolean p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeDismiss:Z

    goto :goto_0

    .line 1000
    :pswitch_2
    iput-boolean p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralDismiss:Z

    goto :goto_0

    .line 991
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCheckBoxListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "checkBoxListener"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 364
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "isChecked"

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->isChecked:Z

    .line 355
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .parameter "customTitleView"

    .prologue
    .line 876
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 877
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .parameter "ellipsize"

    .prologue
    .line 1835
    sput-object p1, Lcom/android/internal/app/AlertController;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 1836
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 954
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 955
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 956
    if-lez p1, :cond_1

    .line 957
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 958
    :cond_1
    if-nez p1, :cond_0

    .line 959
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 965
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 966
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 969
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .parameter "forceInverseBackground"

    .prologue
    .line 984
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 985
    return-void
.end method

.method public setLabelOfCheckBox(Ljava/lang/String;)V
    .locals 0
    .parameter "labelOfCheckBox"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->labelOfCheckBox:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .parameter "maxHeight"

    .prologue
    .line 1065
    iput p1, p0, Lcom/android/internal/app/AlertController;->mMaxHeight:I

    .line 1066
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 880
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 881
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 867
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 870
    :cond_0
    return-void
.end method

.method public setTitleStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 1020
    iput p1, p0, Lcom/android/internal/app/AlertController;->mTitleStyle:I

    .line 1021
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 890
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 891
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 892
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 899
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 900
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 901
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 902
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 903
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 904
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 905
    return-void
.end method

.method public setWidth(I)V
    .locals 9
    .parameter "width"

    .prologue
    .line 1027
    iput p1, p0, Lcom/android/internal/app/AlertController;->mWidth:I

    .line 1029
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v8, 0x102037d

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1034
    .local v4, idView:Landroid/view/View;
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v8, 0x102027c

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 1035
    .local v6, parentPanel:Landroid/widget/LinearLayout;
    if-eqz v4, :cond_0

    if-eqz v6, :cond_0

    .line 1036
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1037
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v5, :cond_0

    .line 1038
    iget v7, p0, Lcom/android/internal/app/AlertController;->mWidth:I

    if-lez v7, :cond_2

    .line 1039
    iget v7, p0, Lcom/android/internal/app/AlertController;->mWidth:I

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 1041
    :cond_2
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v8, 0x1020281

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1042
    .local v2, buttonPanel:Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    const/4 v3, 0x1

    .line 1044
    .local v3, buttonVisible:Z
    :goto_1
    if-eqz v3, :cond_4

    .line 1045
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050124

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1047
    .local v0, MIN_WIDTH:I
    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 1042
    .end local v0           #MIN_WIDTH:I
    .end local v3           #buttonVisible:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 1049
    .restart local v3       #buttonVisible:Z
    :cond_4
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050125

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1051
    .local v1, MIN_WIDTH_NO_BUTTON:I
    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method
