.class public Lcom/meizu/widget/RecipientEdit;
.super Landroid/widget/FrameLayout;
.source "RecipientEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;,
        Lcom/meizu/widget/RecipientEdit$OnSingleRecipientAddWhenGroupListener;,
        Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;,
        Lcom/meizu/widget/RecipientEdit$OnDropDownListener;,
        Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;,
        Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;,
        Lcom/meizu/widget/RecipientEdit$RecipientRunnable;,
        Lcom/meizu/widget/RecipientEdit$RecipientObserver;,
        Lcom/meizu/widget/RecipientEdit$DirectoryObserver;,
        Lcom/meizu/widget/RecipientEdit$HistoryHandler;,
        Lcom/meizu/widget/RecipientEdit$RecipientHandler;,
        Lcom/meizu/widget/RecipientEdit$RecipientWorker;,
        Lcom/meizu/widget/RecipientEdit$DirectoryListQuery;,
        Lcom/meizu/widget/RecipientEdit$DirectoryObject;,
        Lcom/meizu/widget/RecipientEdit$RecipientAdapter;,
        Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;,
        Lcom/meizu/widget/RecipientEdit$ItemView;,
        Lcom/meizu/widget/RecipientEdit$RecipientDragShadowBuilder;,
        Lcom/meizu/widget/RecipientEdit$DragInfo;
    }
.end annotation


# static fields
.field private static final DATA_INDEX:I = 0x1

.field private static final DELAYMILLIS:J = 0x5dcL

.field public static final INPUT_TYPE_EMAIL:I = 0x2

.field public static final INPUT_TYPE_PHONE:I = 0x1

.field public static final INPUT_TYPE_SNS:I = 0x4

.field private static final MSG_LOAD_DIRECTORY:I = 0x4

.field private static final MSG_SAVE:I = 0x2

.field private static final MSG_SIP_CHECK:I = 0x1

.field private static final MSG_UPDATE_NAME:I = 0x3

.field public static final NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final NAME_INDEX:I = 0x0

.field private static final PHONE:Ljava/util/regex/Pattern; = null

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final SINGLE_RECIPIENT_MASK:I = 0x6

.field public static final TAG:Ljava/lang/String; = "RecipientEdit"

.field private static sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

.field private static sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

.field private static sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;


# instance fields
.field private mAddContactsBtn:Landroid/widget/ImageButton;

.field private mAutoGlobalSearch:Z

.field private mBeginSipCheck:Z

.field private mBtnVisibility:Z

.field private mCheckSipDestAddr:Z

.field private mCheckingRecipient:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentHandler:Landroid/os/Handler;

.field private mCountView:Landroid/widget/TextView;

.field private mDbHelper:Lcom/meizu/widget/RecipientDbHelper;

.field private final mDbLock:Ljava/lang/Object;

.field private mDirectoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/widget/RecipientEdit$DirectoryObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mDirectoryLock:Ljava/lang/Object;

.field private mDirectoryObserver:Landroid/database/ContentObserver;

.field private mDisplayNameView:Landroid/widget/TextView;

.field private mDragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;

.field private mDragWatcher:Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;

.field private mEditMaxWidth:I

.field private mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

.field private mEnabledDrag:Z

.field private mFirstDragPos:I

.field private mHintStr:Ljava/lang/String;

.field private mHintView:Landroid/widget/TextView;

.field private mHintView2:Landroid/widget/TextView;

.field private mHistoryEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoryHandler:Lcom/meizu/widget/RecipientEdit$HistoryHandler;

.field private mInDrag:Z

.field private mInputType:I

.field private mIsFirstLayout:Z

.field private mIsSaveHistory:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mLastInputMethod:Ljava/lang/String;

.field private mMaxHeight:I

.field private mObserver:Landroid/database/ContentObserver;

.field private mOnDragListener:Landroid/view/View$OnDragListener;

.field private mOnKeyPreImeListener:Landroid/widget/EditText$OnKeyPreImeListener;

.field private mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

.field private mOnRecipientFirstAddListener:Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;

.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOnSingleAddWhenGroupListener:Lcom/meizu/widget/RecipientEdit$OnSingleRecipientAddWhenGroupListener;

.field private mOnSipCheckerBehaviorListener:Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;

.field private mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

.field private mOnTextChangedListener:Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;

.field private mOpenGlobalAddressBook:Z

.field private mRecipientDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

.field private mRecipientLayout:Landroid/widget/AbsoluteLayout;

.field private mRecipientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipientNotSip:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipientScrollView:Landroid/widget/ScrollView;

.field private mRecipientState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/widget/RecipientStateInfo$SipState;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSingleRecipientFlag:I

.field private mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

.field private mSipVersion:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDrag:Z

.field private mViewSelected:Landroid/view/View;

.field private mWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1848
    const-string v0, "(\\+[0-9]+[\\- \\.]*)?(\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/meizu/widget/RecipientEdit;->PHONE:Ljava/util/regex/Pattern;

    .line 1884
    const-string v0, "\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/meizu/widget/RecipientEdit;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    .line 3873
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/widget/RecipientEdit;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/RecipientEdit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/RecipientEdit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 261
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 189
    iput-boolean v2, p0, Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z

    .line 194
    iput-boolean v3, p0, Lcom/meizu/widget/RecipientEdit;->mOpenGlobalAddressBook:Z

    .line 225
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mDbLock:Ljava/lang/Object;

    .line 238
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mDirectoryLock:Ljava/lang/Object;

    .line 241
    new-instance v1, Lcom/meizu/widget/RecipientEdit$1;

    invoke-direct {v1, p0}, Lcom/meizu/widget/RecipientEdit$1;-><init>(Lcom/meizu/widget/RecipientEdit;)V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 989
    new-instance v1, Lcom/meizu/widget/RecipientEdit$4;

    invoke-direct {v1, p0}, Lcom/meizu/widget/RecipientEdit$4;-><init>(Lcom/meizu/widget/RecipientEdit;)V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mWatcher:Landroid/text/TextWatcher;

    .line 1151
    new-instance v1, Lcom/meizu/widget/RecipientEdit$5;

    invoke-direct {v1, p0}, Lcom/meizu/widget/RecipientEdit$5;-><init>(Lcom/meizu/widget/RecipientEdit;)V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRunnable:Ljava/lang/Runnable;

    .line 1175
    new-instance v1, Lcom/meizu/widget/RecipientEdit$6;

    invoke-direct {v1, p0}, Lcom/meizu/widget/RecipientEdit$6;-><init>(Lcom/meizu/widget/RecipientEdit;)V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 263
    sget-object v1, Lcom/android/internal/R$styleable;->RecipientEdit:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 265
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    .line 267
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHintStr:Ljava/lang/String;

    .line 268
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RecipientEdit;->mMaxHeight:I

    .line 269
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 271
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->initRecipientEdit()V

    .line 272
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/widget/RecipientEdit;)Landroid/widget/EditText$OnKeyPreImeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnKeyPreImeListener:Landroid/widget/EditText$OnKeyPreImeListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/widget/RecipientEdit;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/widget/RecipientEdit;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/widget/RecipientEdit;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->refreshSipDestState()V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/widget/RecipientEdit;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->endCheck()V

    return-void
.end method

.method static synthetic access$1600(Lcom/meizu/widget/RecipientEdit;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/meizu/widget/RecipientEdit;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/meizu/widget/RecipientEdit;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->isDefaultInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/meizu/widget/RecipientEdit;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/meizu/widget/RecipientEdit;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->splitRecipient(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/meizu/widget/RecipientEdit;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/meizu/widget/RecipientEdit;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/meizu/widget/RecipientEdit;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/meizu/widget/RecipientEdit;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->beginCheck()V

    return-void
.end method

.method static synthetic access$2600(Lcom/meizu/widget/RecipientEdit;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/RecipientEdit;->addGroupData(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientFirstAddListener:Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$DragInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/widget/RecipientEdit;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDirectoryLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/meizu/widget/RecipientEdit;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    return v0
.end method

.method static synthetic access$3800(Lcom/meizu/widget/RecipientEdit;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mAutoGlobalSearch:Z

    return v0
.end method

.method static synthetic access$400(Lcom/meizu/widget/RecipientEdit;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->loadDirectories()V

    return-void
.end method

.method static synthetic access$4600(Lcom/meizu/widget/RecipientEdit;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/meizu/widget/RecipientEdit;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDbLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/meizu/widget/RecipientEdit;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnTextChangedListener:Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientDbHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/meizu/widget/RecipientEdit;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mOpenGlobalAddressBook:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/meizu/widget/RecipientEdit;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDirectoryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/meizu/widget/RecipientEdit;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/meizu/widget/RecipientEdit;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->queryDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Lcom/meizu/widget/RecipientEdit;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/meizu/widget/RecipientEdit;)Landroid/widget/AbsoluteLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$HistoryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryHandler:Lcom/meizu/widget/RecipientEdit$HistoryHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/widget/RecipientEdit;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addGroupData(J)I
    .locals 11
    .parameter "groupId"

    .prologue
    .line 1569
    const/4 v6, 0x0

    .line 1570
    .local v6, dataCursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 1571
    .local v1, uri:Landroid/net/Uri;
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    packed-switch v0, :pswitch_data_0

    .line 1581
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_GROUP_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1582
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/meizu/widget/RecipientEdit;->PROJECTION:[Ljava/lang/String;

    const-string v3, "is_primary = 1"

    const/4 v4, 0x0

    const-string v5, "sort_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1590
    :goto_0
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 1591
    const/4 v9, 0x0

    .line 1593
    .local v9, result:I
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1594
    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1595
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1596
    .local v8, number:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1597
    .local v7, name:Ljava/lang/String;
    invoke-direct {p0, v8, v7}, Lcom/meizu/widget/RecipientEdit;->addRecipientInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 1598
    .local v10, ret:Z
    if-eqz v10, :cond_0

    .line 1599
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1573
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #number:Ljava/lang/String;
    .end local v9           #result:I
    .end local v10           #ret:Z
    :pswitch_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_GROUP_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1574
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/meizu/widget/RecipientEdit;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "sort_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1578
    goto :goto_0

    .line 1603
    .restart local v9       #result:I
    :cond_1
    if-lez v9, :cond_4

    .line 1604
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    if-eqz v0, :cond_2

    .line 1605
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    invoke-interface {v0}, Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;->OnRecipientChanged()V

    .line 1608
    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    and-int/lit8 v0, v0, 0x6

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnSingleAddWhenGroupListener:Lcom/meizu/widget/RecipientEdit$OnSingleRecipientAddWhenGroupListener;

    if-eqz v0, :cond_3

    .line 1611
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnSingleAddWhenGroupListener:Lcom/meizu/widget/RecipientEdit$OnSingleRecipientAddWhenGroupListener;

    iget v2, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    iget v3, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    and-int/2addr v2, v3

    invoke-interface {v0, v2}, Lcom/meizu/widget/RecipientEdit$OnSingleRecipientAddWhenGroupListener;->onSingleRecipientAddWhenGroup(I)V

    .line 1615
    :cond_3
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mIsFirstLayout:Z

    if-nez v0, :cond_4

    .line 1616
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 1620
    :cond_4
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->saveHistory()V

    .line 1627
    .end local v9           #result:I
    :goto_2
    return v9

    .line 1624
    :cond_5
    if-eqz v6, :cond_6

    .line 1625
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1627
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 1571
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private addItemView(Ljava/lang/CharSequence;)I
    .locals 8
    .parameter "name"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1765
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x10900c1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/meizu/widget/RecipientEdit;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/RecipientEdit$ItemView;

    .line 1766
    .local v1, item:Lcom/meizu/widget/RecipientEdit$ItemView;
    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$ItemView;->getView()Landroid/widget/TextView;

    move-result-object v2

    .line 1767
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1768
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 1770
    invoke-virtual {v1, v6}, Landroid/view/View;->setClickable(Z)V

    .line 1771
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1772
    invoke-virtual {v1, v6}, Landroid/view/View;->setLongClickable(Z)V

    .line 1773
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1774
    invoke-virtual {v1, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 1775
    invoke-virtual {v1, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1776
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 1777
    .local v0, index:I
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1778
    return v0
.end method

.method private addRecipientInternal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number"
    .parameter "contactName"

    .prologue
    .line 1631
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/RecipientEdit;->addRecipientInternal(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private addRecipientInternal(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 12
    .parameter "number"
    .parameter "contactName"
    .parameter "dragPos"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1635
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1637
    .local v1, dstNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1702
    :cond_0
    :goto_0
    return v9

    .line 1641
    :cond_1
    iget-object v10, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1645
    iget v10, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    and-int/lit8 v10, v10, 0x2

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    move v2, v8

    .line 1646
    .local v2, hasEmail:Z
    :goto_1
    iget v10, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    and-int/lit8 v10, v10, 0x4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_7

    move v3, v8

    .line 1647
    .local v3, hasSns:Z
    :goto_2
    if-nez v2, :cond_8

    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->isEmailAddress(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1648
    iget v9, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    .line 1653
    :cond_2
    :goto_3
    move-object v0, p2

    .line 1654
    .local v0, displayName:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1655
    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->queryDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1657
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1658
    move-object v0, p2

    .line 1664
    :cond_3
    :goto_4
    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v7

    .line 1665
    .local v7, valid:Z
    move v4, p3

    .line 1666
    .local v4, index:I
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1667
    .local v5, item:Landroid/view/View;
    if-eqz v5, :cond_a

    .line 1668
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1669
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1676
    :cond_4
    :goto_5
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v9, v10, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1677
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v9, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 1681
    .local v6, state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    if-eqz v6, :cond_b

    sget-object v9, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_UNCHECK:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-eq v6, v9, :cond_b

    :cond_5
    move v9, v8

    .line 1684
    goto :goto_0

    .end local v0           #displayName:Ljava/lang/String;
    .end local v2           #hasEmail:Z
    .end local v3           #hasSns:Z
    .end local v4           #index:I
    .end local v5           #item:Landroid/view/View;
    .end local v6           #state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    .end local v7           #valid:Z
    :cond_6
    move v2, v9

    .line 1645
    goto :goto_1

    .restart local v2       #hasEmail:Z
    :cond_7
    move v3, v9

    .line 1646
    goto :goto_2

    .line 1649
    .restart local v3       #hasSns:Z
    :cond_8
    if-nez v3, :cond_2

    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->isSns(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1650
    iget v9, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    goto :goto_3

    .line 1660
    .restart local v0       #displayName:Ljava/lang/String;
    :cond_9
    move-object v0, v1

    goto :goto_4

    .line 1671
    .restart local v4       #index:I
    .restart local v5       #item:Landroid/view/View;
    .restart local v7       #valid:Z
    :cond_a
    invoke-direct {p0, v0}, Lcom/meizu/widget/RecipientEdit;->addItemView(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1672
    iget-boolean v9, p0, Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z

    if-eqz v9, :cond_4

    if-eqz v7, :cond_4

    .line 1673
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryEntries:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1687
    .restart local v6       #state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    :cond_b
    if-eqz v7, :cond_e

    .line 1688
    iget-boolean v9, p0, Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1689
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    sget-object v10, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_CHECKING:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-virtual {v9, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1691
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    invoke-virtual {v9, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 1692
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->beginCheck()V

    :cond_c
    :goto_6
    move v9, v8

    .line 1702
    goto/16 :goto_0

    .line 1694
    :cond_d
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    sget-object v10, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_UNCHECK:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-virtual {v9, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1697
    :cond_e
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1698
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v8, :cond_c

    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    if-eqz v9, :cond_c

    .line 1699
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    sget-object v10, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-interface {v9, p0, v10}, Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;->onSipStateChanged(Landroid/view/View;Lcom/meizu/widget/RecipientStateInfo$SipState;)V

    goto :goto_6
.end method

.method private beginCheck()V
    .locals 1

    .prologue
    .line 2641
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mBeginSipCheck:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipCheckerBehaviorListener:Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;

    if-eqz v0, :cond_0

    .line 2642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mBeginSipCheck:Z

    .line 2643
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipCheckerBehaviorListener:Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;

    invoke-interface {v0, p0}, Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;->beginCheck(Landroid/view/View;)V

    .line 2645
    :cond_0
    return-void
.end method

.method private changeViewPos(Lcom/meizu/widget/RecipientEdit$DragInfo;II)I
    .locals 19
    .parameter "dragInfo"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v17

    sub-int p2, p2, v17

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int p3, p3, v17

    .line 725
    move-object/from16 v0, p1

    iget v0, v0, Lcom/meizu/widget/RecipientEdit$DragInfo;->mOffSetX:I

    move/from16 v17, v0

    sub-int v10, p2, v17

    .line 726
    .local v10, left:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/meizu/widget/RecipientEdit$DragInfo;->mOffSetY:I

    move/from16 v17, v0

    sub-int v15, p3, v17

    .line 727
    .local v15, top:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit$DragInfo;->mDragView:Lcom/meizu/widget/RecipientEdit$ItemView;

    move-object/from16 v16, v0

    .line 728
    .local v16, v:Landroid/view/View;
    new-instance v14, Landroid/graphics/Rect;

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v17

    add-int v17, v17, v10

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v18

    add-int v18, v18, v15

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v14, v10, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 729
    .local v14, shadowFrame:Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    .line 730
    .local v12, shadowCenterX:I
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    .line 732
    .local v13, shadowCenterY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 733
    .local v9, lastIndex:I
    const/4 v8, -0x1

    .line 734
    .local v8, index:I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 735
    .local v6, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 736
    .local v5, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v5, :cond_1

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 738
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 739
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 740
    .local v2, centerX:I
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .line 741
    .local v3, centerY:I
    invoke-virtual {v6, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual {v14, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 743
    :cond_0
    if-ge v2, v12, :cond_6

    .line 744
    add-int/lit8 v8, v7, 0x1

    .line 758
    .end local v2           #centerX:I
    .end local v3           #centerY:I
    .end local v4           #child:Landroid/view/View;
    :cond_1
    :goto_1
    if-nez v8, :cond_a

    .line 759
    const/4 v8, 0x1

    .line 764
    :cond_2
    :goto_2
    if-lez v9, :cond_3

    if-ge v9, v8, :cond_3

    .line 765
    add-int/lit8 v8, v8, -0x1

    .line 768
    :cond_3
    if-gez v9, :cond_4

    if-gez v8, :cond_4

    .line 769
    add-int/lit8 v8, v5, -0x1

    .line 772
    :cond_4
    if-lez v8, :cond_b

    if-eq v8, v9, :cond_b

    .line 773
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 774
    .local v11, oldParent:Landroid/view/ViewGroup;
    if-eqz v11, :cond_5

    .line 775
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 778
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 782
    .end local v8           #index:I
    .end local v11           #oldParent:Landroid/view/ViewGroup;
    :goto_3
    return v8

    .line 746
    .restart local v2       #centerX:I
    .restart local v3       #centerY:I
    .restart local v4       #child:Landroid/view/View;
    .restart local v8       #index:I
    :cond_6
    move v8, v7

    .line 748
    goto :goto_1

    .line 749
    :cond_7
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 750
    move v8, v7

    .line 751
    goto :goto_1

    .line 752
    :cond_8
    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 753
    add-int/lit8 v8, v7, 0x1

    .line 754
    goto :goto_1

    .line 736
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 760
    .end local v2           #centerX:I
    .end local v3           #centerY:I
    .end local v4           #child:Landroid/view/View;
    :cond_a
    if-ne v8, v5, :cond_2

    .line 761
    add-int/lit8 v8, v5, -0x1

    goto :goto_2

    :cond_b
    move v8, v9

    .line 782
    goto :goto_3
.end method

.method private endCheck()V
    .locals 1

    .prologue
    .line 2648
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mBeginSipCheck:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipCheckerBehaviorListener:Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;

    if-eqz v0, :cond_0

    .line 2650
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mBeginSipCheck:Z

    .line 2651
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipCheckerBehaviorListener:Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;

    invoke-interface {v0, p0}, Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;->endCheck(Landroid/view/View;)V

    .line 2653
    :cond_0
    return-void
.end method

.method public static extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "address"

    .prologue
    .line 1888
    sget-object v1, Lcom/meizu/widget/RecipientEdit;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1890
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1891
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 1893
    .end local p0
    :cond_0
    return-object p0
.end method

.method private goContactDetail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .parameter "number"
    .parameter "displayName"

    .prologue
    .line 888
    const/4 v14, 0x0

    .line 890
    .local v14, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 891
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$SocialProfile;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 893
    .local v2, uriSp:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "contact_id"

    aput-object v7, v3, v5

    const/4 v5, 0x1

    const-string v7, "lookup"

    aput-object v7, v3, v5

    const/4 v5, 0x2

    const-string v7, "data1"

    aput-object v7, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 898
    .end local v2           #uriSp:Landroid/net/Uri;
    :cond_0
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    and-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 900
    if-eqz v14, :cond_2

    .line 901
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 902
    const/4 v14, 0x0

    .line 905
    :cond_2
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 907
    .local v4, uriP:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v1

    const/4 v1, 0x1

    const-string v7, "lookup"

    aput-object v7, v5, v1

    const/4 v1, 0x2

    const-string v7, "number"

    aput-object v7, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 912
    .end local v4           #uriP:Landroid/net/Uri;
    :cond_3
    if-eqz v14, :cond_4

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    .line 914
    if-eqz v14, :cond_5

    .line 915
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 916
    const/4 v14, 0x0

    .line 919
    :cond_5
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 921
    .local v6, uriE:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "contact_id"

    aput-object v3, v7, v1

    const/4 v1, 0x1

    const-string v3, "lookup"

    aput-object v3, v7, v1

    const/4 v1, 0x2

    const-string v3, "data1"

    aput-object v3, v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 926
    .end local v6           #uriE:Landroid/net/Uri;
    :cond_6
    const/16 v17, 0x0

    .line 927
    .local v17, lookupUri:Landroid/net/Uri;
    if-eqz v14, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 928
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 929
    .local v12, contactId:J
    const/4 v1, 0x1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 931
    .local v16, lookupKey:Ljava/lang/String;
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_8

    const/4 v1, 0x2

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 932
    :cond_7
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 933
    const/4 v1, 0x2

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 934
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 935
    const/4 v1, 0x1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 941
    :cond_8
    move-object/from16 v0, v16

    invoke-static {v12, v13, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 944
    .end local v12           #contactId:J
    .end local v16           #lookupKey:Ljava/lang/String;
    :cond_9
    if-eqz v14, :cond_a

    .line 945
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 948
    :cond_a
    const/4 v15, 0x0

    .line 949
    .local v15, intent:Landroid/content/Intent;
    if-eqz v17, :cond_c

    .line 951
    new-instance v15, Landroid/content/Intent;

    .end local v15           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-direct {v15, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 958
    .restart local v15       #intent:Landroid/content/Intent;
    :goto_0
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 959
    .local v11, bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    and-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_d

    invoke-direct/range {p0 .. p1}, Lcom/meizu/widget/RecipientEdit;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 961
    const-string v1, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const-string v1, "name"

    move-object/from16 v0, p2

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const-string v1, "android.intent.action.INSERT"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v11, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    :goto_1
    const-string v1, "com.android.contacts.extra.SUB_TITLE_EXTRA"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v5, 0x10405c3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v3, "com.android.contacts.extra.TITLE_EXTRA"

    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v5, 0x10405c2

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v11, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-virtual {v15, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 982
    const/high16 v1, 0x8

    invoke-virtual {v15, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 983
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_b

    .line 984
    const/high16 v1, 0x5000

    invoke-virtual {v15, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 986
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 987
    return-void

    .line 954
    .end local v11           #bundle:Landroid/os/Bundle;
    :cond_c
    new-instance v15, Landroid/content/Intent;

    .end local v15           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 955
    .restart local v15       #intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/data"

    invoke-virtual {v15, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 964
    .restart local v11       #bundle:Landroid/os/Bundle;
    :cond_d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_e

    invoke-direct/range {p0 .. p1}, Lcom/meizu/widget/RecipientEdit;->isSns(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 966
    const-string v1, "social_profile"

    move-object/from16 v0, p1

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string v1, "android.intent.action.INSERT"

    const-string v3, "vnd.android.cursor.item/social_profile"

    invoke-virtual {v11, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 970
    :cond_e
    const-string v1, "email"

    move-object/from16 v0, p1

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string v1, "name"

    move-object/from16 v0, p2

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const-string v1, "android.intent.action.INSERT"

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v11, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 976
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v5, 0x10405c1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private initRecipientEdit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 275
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    .line 276
    iput-boolean v3, p0, Lcom/meizu/widget/RecipientEdit;->mBtnVisibility:Z

    .line 277
    iput-boolean v3, p0, Lcom/meizu/widget/RecipientEdit;->mIsFirstLayout:Z

    .line 278
    iput-boolean v4, p0, Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z

    .line 279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    .line 280
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    .line 281
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    .line 282
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    .line 284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryEntries:Ljava/util/ArrayList;

    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mDirectoryList:Ljava/util/ArrayList;

    .line 288
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x10900c0

    invoke-static {v1, v2, p0}, Lcom/meizu/widget/RecipientEdit;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 292
    const v1, 0x10203af

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    .line 293
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 294
    const v1, 0x10203b0

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsoluteLayout;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    .line 295
    const v1, 0x10203b1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHintView:Landroid/widget/TextView;

    .line 296
    const v1, 0x10203b2

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    .line 297
    const v1, 0x10203b3

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    .line 298
    const v1, 0x10203b4

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    .line 299
    const v1, 0x10203b5

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    .line 300
    const v1, 0x10203b6

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    .line 302
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 303
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 306
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHintStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHintStr:Ljava/lang/String;

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHintView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mHintStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mHintStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    new-instance v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;-><init>(Lcom/meizu/widget/RecipientEdit;Landroid/content/Context;)V

    .line 313
    .local v0, adapter:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1, v0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 314
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    iget-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 315
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setDropDownAnchor(I)V

    .line 316
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1, v4}, Landroid/widget/AutoCompleteTextView;->setDropDownAnimationStyle(I)V

    .line 317
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const v2, 0x1080640

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundResource(I)V

    .line 318
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->keepInputMethodNeeded(Z)V

    .line 319
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 320
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 321
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1, p0}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 323
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setForceIgnoreOutsideTouch(Z)V

    .line 324
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    new-instance v2, Lcom/meizu/widget/RecipientEdit$2;

    invoke-direct {v2, p0}, Lcom/meizu/widget/RecipientEdit$2;-><init>(Lcom/meizu/widget/RecipientEdit;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnKeyPreImeListener(Landroid/widget/EditText$OnKeyPreImeListener;)V

    .line 333
    iget v1, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 334
    const v1, 0x1080683

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 335
    iput-boolean v3, p0, Lcom/meizu/widget/RecipientEdit;->mAutoGlobalSearch:Z

    .line 340
    :goto_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 343
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mLastInputMethod:Ljava/lang/String;

    .line 347
    invoke-super {p0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 348
    invoke-super {p0, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 349
    invoke-virtual {p0, v3}, Lcom/meizu/widget/RecipientEdit;->setFocusable(Z)V

    .line 350
    invoke-virtual {p0, v3}, Lcom/meizu/widget/RecipientEdit;->setFocusableInTouchMode(Z)V

    .line 351
    return-void

    .line 337
    :cond_1
    const v1, 0x1080684

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 338
    iput-boolean v4, p0, Lcom/meizu/widget/RecipientEdit;->mAutoGlobalSearch:Z

    goto :goto_0
.end method

.method private isDefaultInputMethod()Z
    .locals 3

    .prologue
    .line 485
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, lastInputMethodId:Ljava/lang/String;
    const-string v1, "com.baidu.input_mz/com.meizu.input.MzInputService"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isEmailAddress(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 1870
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1871
    const/4 v2, 0x0

    .line 1876
    :goto_0
    return v2

    .line 1874
    :cond_0
    invoke-static {p0}, Lcom/meizu/widget/RecipientEdit;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1875
    .local v1, s:Ljava/lang/String;
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1876
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_0
.end method

.method private isPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 1855
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1856
    const/4 v1, 0x0

    .line 1860
    :goto_0
    return v1

    .line 1859
    :cond_0
    sget-object v1, Lcom/meizu/widget/RecipientEdit;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1860
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private isSns(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 1841
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1842
    :cond_0
    const/4 v0, 0x0

    .line 1845
    :goto_0
    return v0

    :cond_1
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private isValidRecipient(Ljava/lang/String;)Z
    .locals 3
    .parameter "number"

    .prologue
    .line 1825
    const/4 v0, 0x0

    .line 1826
    .local v0, valid:Z
    iget v1, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1827
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    .line 1830
    :cond_0
    if-nez v0, :cond_1

    iget v1, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1831
    invoke-static {p1}, Lcom/meizu/widget/RecipientEdit;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    .line 1834
    :cond_1
    if-nez v0, :cond_2

    iget v1, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 1835
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->isSns(Ljava/lang/String;)Z

    move-result v0

    .line 1837
    :cond_2
    return v0
.end method

.method private layoutChildren()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/high16 v4, 0x4000

    .line 1334
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-nez v3, :cond_0

    .line 1335
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1337
    .local v2, widthMeasureSpec:I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1339
    .local v0, heightMeasureSpec:I
    invoke-virtual {p0, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1342
    .end local v0           #heightMeasureSpec:I
    .end local v2           #widthMeasureSpec:I
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1343
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->layoutChildrenRtl()V

    .line 1348
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1349
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v3, p0, Lcom/meizu/widget/RecipientEdit;->mInDrag:Z

    if-eqz v3, :cond_3

    .line 1350
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1365
    :cond_1
    :goto_1
    return-void

    .line 1345
    .end local v1           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->layoutChildrenLtr()V

    goto :goto_0

    .line 1351
    .restart local v1       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget v3, p0, Lcom/meizu/widget/RecipientEdit;->mMaxHeight:I

    if-lez v3, :cond_1

    .line 1352
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1354
    .restart local v2       #widthMeasureSpec:I
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1356
    .restart local v0       #heightMeasureSpec:I
    invoke-virtual {p0, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1358
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcom/meizu/widget/RecipientEdit;->mMaxHeight:I

    if-lt v3, v4, :cond_4

    .line 1359
    iget v3, p0, Lcom/meizu/widget/RecipientEdit;->mMaxHeight:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 1361
    :cond_4
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method

.method private layoutChildrenLtr()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1368
    const/16 v5, 0x3c

    .line 1369
    .local v5, minLen:I
    const/4 v7, 0x0

    .line 1370
    .local v7, x:I
    const/4 v8, 0x0

    .line 1372
    .local v8, y:I
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1373
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 1374
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1375
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 1373
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1379
    :cond_0
    if-ne v2, v12, :cond_1

    const/4 v9, 0x2

    if-le v1, v9, :cond_1

    instance-of v9, v0, Lcom/meizu/widget/RecipientEdit$ItemView;

    if-eqz v9, :cond_1

    move-object v9, v0

    .line 1380
    check-cast v9, Lcom/meizu/widget/RecipientEdit$ItemView;

    invoke-virtual {v9}, Lcom/meizu/widget/RecipientEdit$ItemView;->getView()Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1383
    :cond_1
    invoke-virtual {v0, v11, v11}, Landroid/view/View;->measure(II)V

    .line 1385
    add-int/lit8 v9, v1, -0x1

    if-ne v2, v9, :cond_3

    .line 1386
    add-int v6, v7, v5

    .line 1391
    .local v6, width:I
    :goto_2
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-le v6, v9, :cond_2

    if-le v2, v12, :cond_2

    .line 1392
    const/4 v7, 0x0

    .line 1393
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 1396
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1397
    .local v3, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1398
    iput v8, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 1401
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v7, v9

    goto :goto_1

    .line 1388
    .end local v3           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v6           #width:I
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int v6, v7, v9

    .restart local v6       #width:I
    goto :goto_2

    .line 1404
    .end local v0           #child:Landroid/view/View;
    .end local v6           #width:I
    :cond_4
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1406
    .local v4, lpEditText:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget v10, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    .line 1407
    iget v9, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    if-lez v9, :cond_5

    iget v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    .end local v5           #minLen:I
    :cond_5
    iput v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    .line 1408
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    iget v10, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setWidth(I)V

    .line 1409
    return-void
.end method

.method private layoutChildrenRtl()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1412
    const/16 v6, 0x3c

    .line 1413
    .local v6, minLen:I
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1414
    .local v7, x:I
    const/4 v8, 0x0

    .line 1416
    .local v8, y:I
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1417
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 1418
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1419
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 1417
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1423
    :cond_0
    const/4 v9, 0x1

    if-ne v3, v9, :cond_1

    const/4 v9, 0x2

    if-le v2, v9, :cond_1

    instance-of v9, v0, Lcom/meizu/widget/RecipientEdit$ItemView;

    if-eqz v9, :cond_1

    move-object v9, v0

    .line 1424
    check-cast v9, Lcom/meizu/widget/RecipientEdit$ItemView;

    invoke-virtual {v9}, Lcom/meizu/widget/RecipientEdit$ItemView;->getView()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1427
    :cond_1
    invoke-virtual {v0, v11, v11}, Landroid/view/View;->measure(II)V

    .line 1429
    add-int/lit8 v9, v2, -0x1

    if-ne v3, v9, :cond_2

    .line 1430
    move v1, v6

    .line 1435
    .local v1, childWidth:I
    :goto_2
    sub-int v9, v7, v1

    if-gez v9, :cond_4

    .line 1436
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-ge v9, v1, :cond_3

    .line 1437
    const/4 v7, 0x0

    .line 1441
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 1446
    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1447
    .local v4, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iput v7, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1448
    iput v8, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    goto :goto_1

    .line 1432
    .end local v1           #childWidth:I
    .end local v4           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .restart local v1       #childWidth:I
    goto :goto_2

    .line 1439
    :cond_3
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v7, v9, v1

    goto :goto_3

    .line 1443
    :cond_4
    sub-int/2addr v7, v1

    goto :goto_4

    .line 1451
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childWidth:I
    :cond_5
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1453
    .local v5, lpEditText:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v9, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    add-int/2addr v9, v6

    iput v9, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    .line 1454
    iput v11, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1455
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    iget v10, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setWidth(I)V

    .line 1456
    return-void
.end method

.method private loadDirectories()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    .line 411
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDirectoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 412
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/meizu/widget/RecipientEdit$DirectoryListQuery;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/meizu/widget/RecipientEdit$DirectoryListQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id!=1 AND _id!=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 416
    .local v7, directoryCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 417
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 418
    .local v9, packageManager:Landroid/content/pm/PackageManager;
    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 419
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v13, :cond_0

    .line 422
    new-instance v6, Lcom/meizu/widget/RecipientEdit$DirectoryObject;

    invoke-direct {v6}, Lcom/meizu/widget/RecipientEdit$DirectoryObject;-><init>()V

    .line 423
    .local v6, directory:Lcom/meizu/widget/RecipientEdit$DirectoryObject;
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/meizu/widget/RecipientEdit$DirectoryObject;->directoryId:J

    .line 424
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/meizu/widget/RecipientEdit$DirectoryObject;->displayName:Ljava/lang/String;

    .line 425
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/meizu/widget/RecipientEdit$DirectoryObject;->accountName:Ljava/lang/String;

    .line 426
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/meizu/widget/RecipientEdit$DirectoryObject;->accountType:Ljava/lang/String;

    .line 427
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 429
    .local v10, packageName:Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 430
    .local v11, resourceId:I
    if-eqz v10, :cond_1

    if-eqz v11, :cond_1

    .line 432
    :try_start_0
    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 434
    .local v12, resources:Landroid/content/res/Resources;
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/meizu/widget/RecipientEdit$DirectoryObject;->directoryType:Ljava/lang/String;

    .line 435
    iget-object v0, v6, Lcom/meizu/widget/RecipientEdit$DirectoryObject;->directoryType:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 436
    const-string v0, "RecipientEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot resolve directory name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .end local v12           #resources:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDirectoryList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 439
    :catch_0
    move-exception v8

    .line 440
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "RecipientEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot resolve directory name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 450
    .end local v6           #directory:Lcom/meizu/widget/RecipientEdit$DirectoryObject;
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9           #packageManager:Landroid/content/pm/PackageManager;
    .end local v10           #packageName:Ljava/lang/String;
    .end local v11           #resourceId:I
    :cond_2
    if-eqz v7, :cond_3

    .line 451
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 453
    :cond_3
    return-void
.end method

.method private queryDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "number"

    .prologue
    .line 1706
    const-string v11, ""

    .line 1707
    .local v11, displayName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1709
    .local v10, cursor:Landroid/database/Cursor;
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 1710
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$SocialProfile;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1712
    .local v1, uriSp:Landroid/net/Uri;
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "display_name"

    aput-object v6, v2, v4

    const/4 v4, 0x1

    const-string v6, "data1"

    aput-object v6, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1717
    .end local v1           #uriSp:Landroid/net/Uri;
    :cond_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 1719
    if-eqz v10, :cond_2

    .line 1720
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1721
    const/4 v10, 0x0

    .line 1724
    :cond_2
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1726
    .local v3, uriP:Landroid/net/Uri;
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v6, "display_name"

    aput-object v6, v4, v0

    const/4 v0, 0x1

    const-string v6, "number"

    aput-object v6, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1731
    .end local v3           #uriP:Landroid/net/Uri;
    :cond_3
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 1733
    if-eqz v10, :cond_5

    .line 1734
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1735
    const/4 v10, 0x0

    .line 1738
    :cond_5
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1740
    .local v5, uriE:Landroid/net/Uri;
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "display_name"

    aput-object v2, v6, v0

    const/4 v0, 0x1

    const-string v2, "data1"

    aput-object v2, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1745
    .end local v5           #uriE:Landroid/net/Uri;
    :cond_6
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1746
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1747
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_8

    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1748
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1749
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1750
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1757
    :cond_8
    if-eqz v10, :cond_9

    .line 1758
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1761
    :cond_9
    return-object v11
.end method

.method private refreshLayout(Z)V
    .locals 11
    .parameter "hasFocus"

    .prologue
    const/4 v8, -0x2

    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 550
    if-nez p1, :cond_0

    iget-boolean v7, p0, Lcom/meizu/widget/RecipientEdit;->mInDrag:Z

    if-eqz v7, :cond_1

    .line 551
    :cond_0
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 553
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 554
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 555
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 556
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->layoutChildren()V

    .line 598
    :goto_0
    return-void

    .line 558
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 559
    .local v4, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v7, v8, :cond_2

    .line 560
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 561
    invoke-virtual {p0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 565
    .local v1, displayNames:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 566
    .local v2, i:I
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 567
    .local v6, number:Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 568
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 569
    .local v5, name:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 570
    move-object v5, v6

    .line 572
    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    const/16 v7, 0x14

    if-lt v2, v7, :cond_3

    .line 578
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 579
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 582
    :cond_6
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 584
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 586
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getRecipientCount()I

    move-result v0

    .line 587
    .local v0, count:I
    const/4 v7, 0x1

    if-le v0, v7, :cond_7

    .line 588
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 595
    :goto_1
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 596
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 591
    :cond_7
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private refreshSipDestState()V
    .locals 4

    .prologue
    .line 2656
    iget-boolean v2, p0, Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2657
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2658
    .local v1, number:Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_UNCHECK:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2660
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    sget-object v3, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_CHECKING:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2661
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2662
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2663
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->beginCheck()V

    goto :goto_0

    .line 2667
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #number:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private removeComposingSpan()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 493
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    instance-of v8, v8, Landroid/text/Spannable;

    if-eqz v8, :cond_0

    .line 494
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 495
    .local v5, sp:Landroid/text/Spannable;
    invoke-static {v5}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 496
    .local v1, candStart:I
    invoke-static {v5}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .line 497
    .local v0, candEnd:I
    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    .line 498
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5, v10, v1}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v9

    invoke-interface {v5, v0, v9}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, dstr:Ljava/lang/String;
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    .end local v0           #candEnd:I
    .end local v1           #candStart:I
    .end local v2           #dstr:Ljava/lang/String;
    .end local v5           #sp:Landroid/text/Spannable;
    :cond_0
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 506
    .local v4, s:Landroid/text/Editable;
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v8

    const-class v9, Landroid/text/style/VoiceAnimSpan;

    invoke-interface {v4, v10, v8, v9}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/VoiceAnimSpan;

    .line 507
    .local v6, spans:[Landroid/text/style/VoiceAnimSpan;
    array-length v8, v6

    if-lez v8, :cond_1

    .line 508
    aget-object v8, v6, v10

    invoke-interface {v4, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 509
    .local v7, start:I
    aget-object v8, v6, v10

    invoke-interface {v4, v8}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 510
    .local v3, end:I
    invoke-interface {v4, v7, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 512
    .end local v3           #end:I
    .end local v7           #start:I
    :cond_1
    return-void
.end method

.method private removeRecipientAt(IZ)Z
    .locals 5
    .parameter "index"
    .parameter "removeView"

    .prologue
    const/4 v2, 0x1

    .line 2050
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2051
    .local v1, size:I
    const/4 v3, -0x1

    if-le p1, v3, :cond_7

    if-ge p1, v1, :cond_7

    .line 2052
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2053
    .local v0, removeStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    if-eqz v3, :cond_0

    .line 2054
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    invoke-virtual {v3, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2056
    :cond_0
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2058
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2059
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2061
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2062
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->refreshSipDestState()V

    .line 2065
    :cond_1
    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2066
    iget v3, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    .line 2071
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->endCheck()V

    .line 2072
    if-eqz p2, :cond_3

    .line 2073
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 2074
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 2077
    :cond_3
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    if-eqz v3, :cond_4

    .line 2078
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getSipState()Lcom/meizu/widget/RecipientStateInfo$SipState;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;->onSipStateChanged(Landroid/view/View;Lcom/meizu/widget/RecipientStateInfo$SipState;)V

    .line 2081
    :cond_4
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    if-eqz v3, :cond_5

    .line 2082
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    invoke-interface {v3}, Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;->OnRecipientChanged()V

    .line 2087
    .end local v0           #removeStr:Ljava/lang/String;
    :cond_5
    :goto_1
    return v2

    .line 2067
    .restart local v0       #removeStr:Ljava/lang/String;
    :cond_6
    invoke-direct {p0, v0}, Lcom/meizu/widget/RecipientEdit;->isSns(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2068
    iget v3, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    goto :goto_0

    .line 2087
    .end local v0           #removeStr:Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "cons"

    .prologue
    .line 1782
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1783
    const-string v4, ""

    .line 1821
    :cond_0
    :goto_0
    return-object v4

    .line 1786
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1787
    .local v4, str:Ljava/lang/String;
    iget v6, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    and-int/lit8 v6, v6, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    const-string v6, "@"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1791
    :cond_2
    iget v6, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    and-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    invoke-static {v4}, Lcom/meizu/widget/RecipientEdit;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1793
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 1794
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1796
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 1797
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1798
    .local v0, c:C
    const/16 v6, 0x20

    if-ne v0, v6, :cond_4

    .line 1796
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1800
    :cond_4
    const/16 v6, 0x2e

    if-eq v0, v6, :cond_3

    .line 1802
    const/16 v6, 0x2d

    if-eq v0, v6, :cond_3

    .line 1804
    const/16 v6, 0x28

    if-eq v0, v6, :cond_3

    .line 1806
    const/16 v6, 0x29

    if-eq v0, v6, :cond_3

    .line 1809
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1813
    .end local v0           #c:C
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1814
    goto :goto_0

    .line 1815
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #ret:Ljava/lang/StringBuilder;
    :cond_6
    invoke-static {v4}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v5

    .line 1816
    .local v5, token:[Landroid/text/util/Rfc822Token;
    array-length v6, v5

    if-lez v6, :cond_0

    .line 1817
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private saveHistory()V
    .locals 3

    .prologue
    .line 2580
    iget-boolean v1, p0, Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2581
    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    if-nez v1, :cond_0

    .line 2582
    new-instance v1, Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    const-string v2, "mz_recipient_history"

    invoke-direct {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    .line 2585
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryHandler:Lcom/meizu/widget/RecipientEdit$HistoryHandler;

    if-nez v1, :cond_1

    .line 2586
    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->access$204(Lcom/meizu/widget/RecipientEdit$RecipientWorker;)I

    .line 2587
    new-instance v1, Lcom/meizu/widget/RecipientEdit$HistoryHandler;

    sget-object v2, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/RecipientEdit$HistoryHandler;-><init>(Lcom/meizu/widget/RecipientEdit;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryHandler:Lcom/meizu/widget/RecipientEdit$HistoryHandler;

    .line 2590
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryHandler:Lcom/meizu/widget/RecipientEdit$HistoryHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2591
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryEntries:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2592
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryHandler:Lcom/meizu/widget/RecipientEdit$HistoryHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2595
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2596
    return-void
.end method

.method private splitRecipient(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 11
    .parameter "s"

    .prologue
    .line 1099
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1100
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1101
    .local v4, len:I
    const/4 v7, 0x0

    .line 1103
    .local v7, start:I
    :goto_0
    if-ge v7, v4, :cond_0

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-gt v9, v10, :cond_0

    .line 1104
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1107
    :cond_0
    if-lt v7, v4, :cond_2

    .line 1148
    .end local v4           #len:I
    .end local v7           #start:I
    .end local p1
    :cond_1
    :goto_1
    return-object p1

    .line 1111
    .restart local v4       #len:I
    .restart local v7       #start:I
    .restart local p1
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1112
    .local v8, str:Ljava/lang/String;
    move v1, v7

    .line 1113
    .local v1, begin:I
    const-string v9, " "

    invoke-virtual {v8, v9, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 1114
    .local v3, end:I
    :cond_3
    :goto_2
    if-lez v3, :cond_8

    if-gt v3, v4, :cond_8

    .line 1115
    const/4 v0, 0x0

    .line 1117
    .local v0, add:Z
    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1118
    .local v2, c:C
    const/16 v9, 0x2c

    if-eq v2, v9, :cond_4

    const/16 v9, 0x3b

    if-ne v2, v9, :cond_6

    .line 1119
    :cond_4
    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v8, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 1120
    const/4 v0, 0x1

    .line 1130
    :cond_5
    :goto_3
    add-int/lit8 v5, v3, 0x1

    .line 1131
    .local v5, nextBegin:I
    const-string v9, " "

    invoke-virtual {v8, v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 1132
    :goto_4
    if-ne v5, v3, :cond_7

    .line 1133
    add-int/lit8 v5, v3, 0x1

    .line 1134
    const-string v9, " "

    invoke-virtual {v8, v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto :goto_4

    .line 1123
    .end local v5           #nextBegin:I
    :cond_6
    invoke-virtual {v8, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1124
    .local v6, number:Ljava/lang/String;
    invoke-static {v6}, Lcom/meizu/widget/RecipientEdit;->isEmailAddress(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1125
    invoke-virtual {p0, v6}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 1126
    const/4 v0, 0x1

    goto :goto_3

    .line 1137
    .end local v6           #number:Ljava/lang/String;
    .restart local v5       #nextBegin:I
    :cond_7
    if-eqz v0, :cond_3

    .line 1138
    move v1, v5

    goto :goto_2

    .line 1142
    .end local v0           #add:Z
    .end local v2           #c:C
    .end local v5           #nextBegin:I
    :cond_8
    if-lt v1, v4, :cond_9

    .line 1143
    const-string p1, ""

    goto :goto_1

    .line 1145
    :cond_9
    if-eq v1, v7, :cond_1

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method


# virtual methods
.method public addRecipient(Ljava/util/ArrayList;)I
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 1521
    if-nez p1, :cond_0

    move v2, v6

    .line 1560
    :goto_0
    return v2

    .line 1525
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1526
    .local v0, count:I
    const/4 v2, 0x0

    .line 1527
    .local v2, result:I
    const/4 v3, 0x0

    .line 1528
    .local v3, ret:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1529
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1531
    .local v4, str:[Ljava/lang/String;
    array-length v5, v4

    if-le v5, v8, :cond_3

    .line 1532
    aget-object v5, v4, v6

    aget-object v7, v4, v8

    invoke-direct {p0, v5, v7}, Lcom/meizu/widget/RecipientEdit;->addRecipientInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1537
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 1538
    add-int/lit8 v2, v2, 0x1

    .line 1528
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1533
    :cond_3
    array-length v5, v4

    if-ne v5, v8, :cond_1

    .line 1534
    aget-object v5, v4, v6

    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/meizu/widget/RecipientEdit;->addRecipientInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_2

    .line 1542
    .end local v4           #str:[Ljava/lang/String;
    :cond_4
    if-lez v2, :cond_7

    .line 1543
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    if-eqz v5, :cond_5

    .line 1544
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    invoke-interface {v5}, Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;->OnRecipientChanged()V

    .line 1547
    :cond_5
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v8, :cond_6

    iget v5, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    and-int/lit8 v5, v5, 0x6

    if-lez v5, :cond_6

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mOnSingleAddWhenGroupListener:Lcom/meizu/widget/RecipientEdit$OnSingleRecipientAddWhenGroupListener;

    if-eqz v5, :cond_6

    .line 1550
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mOnSingleAddWhenGroupListener:Lcom/meizu/widget/RecipientEdit$OnSingleRecipientAddWhenGroupListener;

    iget v6, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    iget v7, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    and-int/2addr v6, v7

    invoke-interface {v5, v6}, Lcom/meizu/widget/RecipientEdit$OnSingleRecipientAddWhenGroupListener;->onSingleRecipientAddWhenGroup(I)V

    .line 1554
    :cond_6
    iget-boolean v5, p0, Lcom/meizu/widget/RecipientEdit;->mIsFirstLayout:Z

    if-nez v5, :cond_7

    .line 1555
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 1559
    :cond_7
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->saveHistory()V

    goto :goto_0
.end method

.method public addRecipient(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 1476
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1485
    :cond_0
    :goto_0
    return v1

    .line 1480
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1481
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1482
    invoke-virtual {p0, v0}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/util/ArrayList;)I

    move-result v2

    if-lez v2, :cond_0

    .line 1483
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addRecipient(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 5
    .parameter "number"
    .parameter "contactName"

    .prologue
    const/4 v2, 0x0

    .line 1496
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1511
    :cond_0
    :goto_0
    return v2

    .line 1500
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1501
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1502
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1507
    :goto_1
    invoke-virtual {p0, v0}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/util/ArrayList;)I

    move-result v1

    .line 1508
    .local v1, ret:I
    if-lez v1, :cond_0

    .line 1509
    const/4 v2, 0x1

    goto :goto_0

    .line 1504
    .end local v1           #ret:I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public autoGlobalSearch(Z)V
    .locals 0
    .parameter "auto"

    .prologue
    .line 2750
    iput-boolean p1, p0, Lcom/meizu/widget/RecipientEdit;->mAutoGlobalSearch:Z

    .line 2751
    return-void
.end method

.method public checkSipDestAddress(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 2602
    iput-boolean p1, p0, Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z

    .line 2604
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z

    if-eqz v0, :cond_1

    .line 2605
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    if-nez v0, :cond_0

    .line 2606
    new-instance v0, Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    const-string v1, "mz_recipient_worker"

    invoke-direct {v0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    .line 2609
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    if-nez v0, :cond_1

    .line 2610
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->access$204(Lcom/meizu/widget/RecipientEdit$RecipientWorker;)I

    .line 2611
    new-instance v0, Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientHandler;-><init>(Lcom/meizu/widget/RecipientEdit;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    .line 2614
    :cond_1
    return-void
.end method

.method public closeHistory()V
    .locals 2

    .prologue
    .line 2566
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2577
    :goto_0
    return-void

    .line 2570
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2571
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z

    .line 2572
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;

    if-eqz v0, :cond_1

    .line 2573
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 2574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;

    .line 2576
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public completeInput()V
    .locals 3

    .prologue
    .line 1462
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->removeComposingSpan()V

    .line 1463
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1464
    .local v0, text:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1465
    invoke-virtual {p0, v0}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 1466
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1468
    :cond_0
    return-void
.end method

.method public containsEmail()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v3, 0x1

    .line 1932
    iget v5, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    if-ne v5, v6, :cond_2

    .line 1933
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1934
    .local v2, number:Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/widget/RecipientEdit;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1953
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #number:Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 1939
    :cond_2
    iget v5, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    and-int/lit8 v5, v5, 0x2

    if-ne v5, v6, :cond_5

    .line 1940
    iget v5, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    and-int/lit8 v5, v5, 0x2

    if-eq v5, v6, :cond_1

    .line 1948
    :cond_3
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1949
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_4
    move v3, v4

    .line 1953
    goto :goto_0

    .end local v1           #input:Ljava/lang/String;
    :cond_5
    move v3, v4

    .line 1944
    goto :goto_0
.end method

.method public containsSns()Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1957
    iget v3, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v4, :cond_1

    .line 1958
    iget v3, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v4, :cond_2

    .line 1970
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 1962
    goto :goto_0

    .line 1965
    :cond_2
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1966
    .local v0, input:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, v0}, Lcom/meizu/widget/RecipientEdit;->isSns(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    .line 1970
    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnDragListener:Landroid/view/View$OnDragListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnDragListener:Landroid/view/View$OnDragListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    const/4 v0, 0x1

    .line 607
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/widget/RecipientEdit;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1200
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 1202
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->removeComposingSpan()V

    .line 1203
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1204
    .local v1, inputText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1205
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1206
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1207
    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 1231
    .end local v1           #inputText:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return v2

    .line 1213
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x43

    if-ne v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 1215
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1216
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1217
    .local v0, index:I
    add-int/lit8 v3, v0, -0x1

    invoke-direct {p0, v3, v2}, Lcom/meizu/widget/RecipientEdit;->removeRecipientAt(IZ)Z

    .line 1218
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 1219
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 1220
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_0

    .line 1222
    .end local v0           #index:I
    :cond_2
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_3

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1224
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 1225
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1226
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto :goto_0

    .line 1231
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public formatInvalidNumbers()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1977
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1978
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1979
    .local v2, number:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1980
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1981
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1983
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1987
    .end local v2           #number:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1988
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1990
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 1991
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1993
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1996
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getAllNumbers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2171
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2172
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 2175
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2176
    .local v0, input:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2177
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2180
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2183
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllRecipientNames()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2192
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2193
    .local v4, number:Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2194
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2195
    move-object v3, v4

    .line 2197
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2200
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2201
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2202
    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->queryDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2203
    .restart local v3       #name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2204
    move-object v3, v1

    .line 2206
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2209
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 2212
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getButtonVisibility()Z
    .locals 1

    .prologue
    .line 2500
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mBtnVisibility:Z

    return v0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 2543
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getImeOptions()I

    move-result v0

    and-int/lit16 v0, v0, -0x100

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 2521
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    return v0
.end method

.method public getInvalidNumbers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2334
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2335
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2336
    .local v3, number:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2337
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2341
    .end local v3           #number:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2342
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2344
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2347
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 2350
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getInvalidRecipientNames()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2358
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2359
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2360
    .local v4, number:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2361
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2362
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2363
    move-object v3, v4

    .line 2365
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2369
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2370
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2372
    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->queryDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2373
    .restart local v3       #name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2374
    move-object v3, v1

    .line 2376
    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2379
    .end local v3           #name:Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 2382
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 2453
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mMaxHeight:I

    return v0
.end method

.method public getRecipientCount()I
    .locals 3

    .prologue
    .line 2421
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2422
    .local v0, count:I
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2423
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2424
    add-int/lit8 v0, v0, 0x1

    .line 2427
    :cond_0
    return v0
.end method

.method public getRecipients()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2392
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2393
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2394
    .local v4, number:Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2395
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2396
    move-object v3, v4

    .line 2398
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2401
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2402
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2403
    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->queryDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2404
    .restart local v3       #name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2405
    move-object v3, v1

    .line 2407
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2410
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 2413
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSipState()Lcom/meizu/widget/RecipientStateInfo$SipState;
    .locals 6

    .prologue
    .line 2220
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 2221
    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 2255
    :goto_0
    return-object v5

    .line 2224
    :cond_0
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 2225
    :cond_1
    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    goto :goto_0

    .line 2228
    :cond_2
    const/4 v3, 0x0

    .line 2229
    .local v3, offline:Z
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2230
    .local v2, number:Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 2231
    .local v4, state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    if-eqz v4, :cond_4

    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_YES:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-eq v4, v5, :cond_5

    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_OFFLINE:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-eq v4, v5, :cond_5

    .line 2232
    :cond_4
    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    goto :goto_0

    .line 2235
    :cond_5
    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_OFFLINE:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-ne v4, v5, :cond_3

    .line 2236
    const/4 v3, 0x1

    goto :goto_1

    .line 2240
    .end local v2           #number:Ljava/lang/String;
    .end local v4           #state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    :cond_6
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2241
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 2242
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 2243
    .restart local v4       #state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    if-eqz v4, :cond_7

    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_YES:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-eq v4, v5, :cond_8

    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_OFFLINE:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-eq v4, v5, :cond_8

    .line 2244
    :cond_7
    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    goto :goto_0

    .line 2247
    :cond_8
    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_OFFLINE:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-ne v4, v5, :cond_9

    .line 2248
    const/4 v3, 0x1

    .line 2252
    .end local v4           #state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    :cond_9
    if-eqz v3, :cond_a

    .line 2253
    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_OFFLINE:Lcom/meizu/widget/RecipientStateInfo$SipState;

    goto :goto_0

    .line 2255
    :cond_a
    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_YES:Lcom/meizu/widget/RecipientStateInfo$SipState;

    goto :goto_0
.end method

.method public getSipVersion()I
    .locals 4

    .prologue
    .line 2263
    const v1, 0x7fffffff

    .line 2264
    .local v1, sipVersion:I
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2265
    .local v2, version:I
    if-ge v2, v1, :cond_0

    .line 2266
    move v1, v2

    goto :goto_0

    .line 2270
    .end local v2           #version:I
    :cond_1
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_2

    const/4 v1, -0x1

    .end local v1           #sipVersion:I
    :cond_2
    return v1
.end method

.method public getValidNumbers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2278
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2279
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2280
    .local v3, number:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2281
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2285
    .end local v3           #number:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2286
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2288
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2291
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 2294
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getValidRecipientNames()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2302
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2303
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2304
    .local v4, number:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2305
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2306
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2307
    move-object v3, v4

    .line 2309
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2313
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2314
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2316
    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->queryDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2317
    .restart local v3       #name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2318
    move-object v3, v1

    .line 2320
    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2323
    .end local v3           #name:Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 2326
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public hasInvalidRecipient()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1902
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1903
    .local v2, number:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1913
    .end local v2           #number:Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 1908
    :cond_2
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1909
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1913
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasValidRecipient()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1917
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1918
    .local v2, number:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1928
    .end local v2           #number:Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 1923
    :cond_2
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1924
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1928
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isPopupShowing()Z
    .locals 1

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 374
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 376
    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    if-nez v1, :cond_0

    .line 377
    new-instance v1, Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    const-string v2, "mz_recipient_content"

    invoke-direct {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mContentHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 381
    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->access$204(Lcom/meizu/widget/RecipientEdit$RecipientWorker;)I

    .line 382
    new-instance v1, Lcom/meizu/widget/RecipientEdit$3;

    sget-object v2, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/RecipientEdit$3;-><init>(Lcom/meizu/widget/RecipientEdit;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mContentHandler:Landroid/os/Handler;

    .line 396
    :cond_1
    new-instance v1, Lcom/meizu/widget/RecipientEdit$RecipientObserver;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mContentHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/RecipientEdit$RecipientObserver;-><init>(Lcom/meizu/widget/RecipientEdit;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mObserver:Landroid/database/ContentObserver;

    .line 397
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 399
    new-instance v1, Lcom/meizu/widget/RecipientEdit$DirectoryObserver;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mContentHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/RecipientEdit$DirectoryObserver;-><init>(Lcom/meizu/widget/RecipientEdit;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mDirectoryObserver:Landroid/database/ContentObserver;

    .line 400
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$Directory;->CONTENT_NOTIFY_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mDirectoryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 402
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 403
    .local v0, vto:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_2

    .line 404
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 407
    :cond_2
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mContentHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 408
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 835
    instance-of v5, p1, Landroid/widget/AutoCompleteTextView;

    if-eqz v5, :cond_1

    .line 836
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 837
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setSelected(Z)V

    .line 838
    iput-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 839
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    instance-of v5, p1, Lcom/meizu/widget/RecipientEdit$ItemView;

    if-eqz v5, :cond_5

    .line 842
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->removeComposingSpan()V

    .line 843
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 844
    .local v4, text:Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 845
    invoke-virtual {p0, v4}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 846
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    :cond_2
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 850
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-ne p1, v5, :cond_3

    .line 851
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 852
    .local v1, index:I
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 853
    .local v3, phoneOrEmail:Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 854
    .local v2, name:Ljava/lang/String;
    invoke-direct {p0, v3, v2}, Lcom/meizu/widget/RecipientEdit;->goContactDetail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 857
    .end local v1           #index:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #phoneOrEmail:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setSelected(Z)V

    .line 863
    :goto_1
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 864
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 866
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 868
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 860
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto :goto_1

    .line 870
    .end local v4           #text:Ljava/lang/CharSequence;
    :cond_5
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 871
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setSelected(Z)V

    .line 872
    iput-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 873
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 876
    :cond_6
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 878
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 880
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 881
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 882
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5, v8}, Landroid/widget/AutoCompleteTextView;->ensureImeVisible(Z)V

    goto/16 :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 516
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 517
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/widget/RecipientEdit;->mIsFirstLayout:Z

    .line 519
    const v1, 0x10203ae

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 520
    .local v0, root:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105018c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105018d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 525
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .parameter "outAttrs"

    .prologue
    .line 355
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getImeOptions()I

    move-result v1

    and-int/lit16 v0, v1, -0x100

    .line 356
    .local v0, imeOptions:I
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->isDefaultInputMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v2, v0, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 369
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    return-object v1

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v2, v0, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_0

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 364
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 457
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 458
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mDirectoryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 460
    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->access$206(Lcom/meizu/widget/RecipientEdit$RecipientWorker;)I

    move-result v1

    if-nez v1, :cond_0

    .line 461
    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->quit()V

    .line 462
    sput-object v3, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    .line 465
    :cond_0
    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->access$206(Lcom/meizu/widget/RecipientEdit$RecipientWorker;)I

    move-result v1

    if-nez v1, :cond_1

    .line 466
    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->quit()V

    .line 467
    sput-object v3, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    .line 470
    :cond_1
    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->access$206(Lcom/meizu/widget/RecipientEdit$RecipientWorker;)I

    move-result v1

    if-nez v1, :cond_2

    .line 471
    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->quit()V

    .line 472
    sput-object v3, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    .line 475
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 476
    .local v0, vto:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_3

    .line 477
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 480
    :cond_3
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 481
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 21
    .parameter "event"

    .prologue
    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v10

    .line 613
    .local v10, localState:Ljava/lang/Object;
    instance-of v0, v10, Lcom/meizu/widget/RecipientEdit$DragInfo;

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v14

    .line 718
    :cond_0
    :goto_0
    return v14

    .line 617
    :cond_1
    const/4 v14, 0x0

    .line 618
    .local v14, result:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 619
    .local v17, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .local v18, y:I
    move-object v4, v10

    .line 620
    check-cast v4, Lcom/meizu/widget/RecipientEdit$DragInfo;

    .line 621
    .local v4, dragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;
    iget-object v6, v4, Lcom/meizu/widget/RecipientEdit$DragInfo;->mDragView:Lcom/meizu/widget/RecipientEdit$ItemView;

    .line 623
    .local v6, dragView:Lcom/meizu/widget/RecipientEdit$ItemView;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    goto :goto_0

    .line 625
    :pswitch_0
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/widget/RecipientEdit;->mInDrag:Z

    .line 626
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 627
    const/4 v14, 0x1

    .line 628
    goto :goto_0

    .line 631
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 632
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 633
    const/4 v14, 0x1

    .line 634
    goto :goto_0

    .line 637
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    .line 638
    const/4 v14, 0x1

    .line 639
    goto :goto_0

    .line 642
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 643
    .local v9, lastPos:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Lcom/meizu/widget/RecipientEdit;->changeViewPos(Lcom/meizu/widget/RecipientEdit$DragInfo;II)I

    move-result v12

    .line 644
    .local v12, pos:I
    if-eq v12, v9, :cond_2

    .line 645
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 647
    :cond_2
    const/4 v14, 0x1

    .line 648
    goto :goto_0

    .line 651
    .end local v9           #lastPos:I
    .end local v12           #pos:I
    :pswitch_4
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Lcom/meizu/widget/RecipientEdit;->changeViewPos(Lcom/meizu/widget/RecipientEdit$DragInfo;II)I

    move-result v5

    .line 652
    .local v5, dragPos:I
    if-lez v5, :cond_4

    .line 653
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    move/from16 v19, v0

    if-lez v19, :cond_5

    .line 654
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v5, v0, :cond_3

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 656
    .local v13, removeStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, v5, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 659
    .end local v13           #removeStr:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 660
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 661
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 662
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    .line 686
    :cond_4
    :goto_1
    const/4 v14, 0x1

    .line 687
    goto/16 :goto_0

    .line 664
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 665
    .local v3, clipData:Landroid/content/ClipData;
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v19

    if-lez v19, :cond_4

    .line 666
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    .line 667
    .local v8, item:Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 668
    .local v15, text:Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v16

    .line 669
    .local v16, token:[Landroid/text/util/Rfc822Token;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_4

    .line 670
    const/16 v19, 0x0

    aget-object v19, v16, v19

    invoke-virtual/range {v19 .. v19}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v16, v20

    invoke-virtual/range {v20 .. v20}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v5}, Lcom/meizu/widget/RecipientEdit;->addRecipientInternal(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    .line 673
    .local v7, flag:Z
    if-eqz v7, :cond_6

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 675
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 676
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 679
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 680
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 690
    .end local v3           #clipData:Landroid/content/ClipData;
    .end local v5           #dragPos:I
    .end local v7           #flag:Z
    .end local v8           #item:Landroid/content/ClipData$Item;
    .end local v15           #text:Ljava/lang/CharSequence;
    .end local v16           #token:[Landroid/text/util/Rfc822Token;
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    move/from16 v19, v0

    if-lez v19, :cond_8

    .line 691
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 692
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 693
    .local v11, oldParent:Landroid/view/ViewGroup;
    if-eqz v11, :cond_7

    .line 694
    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 697
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 699
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 700
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 704
    .end local v11           #oldParent:Landroid/view/ViewGroup;
    :goto_2
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    .line 707
    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/widget/RecipientEdit;->mInDrag:Z

    .line 708
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 709
    const/4 v14, 0x1

    .line 711
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/RecipientEdit;->mStartDrag:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mDragWatcher:Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mDragWatcher:Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;->afterDragEnded(Landroid/view/View;)V

    .line 713
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/widget/RecipientEdit;->mStartDrag:Z

    goto/16 :goto_0

    .line 702
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/meizu/widget/RecipientEdit;->removeRecipientAt(IZ)Z

    goto :goto_2

    .line 623
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->removeComposingSpan()V

    .line 529
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 530
    .local v0, text:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x10203b2

    if-ne v1, v2, :cond_0

    if-nez p2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 532
    invoke-virtual {p0, v0}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 533
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 537
    invoke-virtual {p0}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 540
    :cond_1
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 541
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 542
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 543
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 546
    :cond_2
    invoke-direct {p0, p2}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 547
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 1296
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1299
    .local v1, inputMethod:Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mLastInputMethod:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1300
    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mLastInputMethod:Ljava/lang/String;

    .line 1301
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getImeOptions()I

    move-result v2

    and-int/lit16 v0, v2, -0x100

    .line 1302
    .local v0, imeOptions:I
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->isDefaultInputMethod()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1303
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1304
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v3, v0, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1305
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 1316
    :goto_0
    iget v2, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    invoke-virtual {p0, v2}, Lcom/meizu/widget/RecipientEdit;->setInputType(I)V

    .line 1319
    .end local v0           #imeOptions:I
    :cond_0
    iget-boolean v2, p0, Lcom/meizu/widget/RecipientEdit;->mIsFirstLayout:Z

    if-eqz v2, :cond_1

    .line 1320
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/meizu/widget/RecipientEdit;->mIsFirstLayout:Z

    .line 1321
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 1325
    :cond_1
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1326
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->changePopupBackground()V

    .line 1329
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1330
    return-void

    .line 1307
    .restart local v0       #imeOptions:I
    :cond_3
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v3, v0, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1308
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const/4 v3, 0x6

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 1311
    :cond_4
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1312
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10405ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 787
    iget-boolean v6, p0, Lcom/meizu/widget/RecipientEdit;->mEnabledDrag:Z

    if-eqz v6, :cond_5

    instance-of v6, p1, Lcom/meizu/widget/RecipientEdit$ItemView;

    if-eqz v6, :cond_5

    .line 789
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->removeComposingSpan()V

    .line 790
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 791
    .local v4, text:Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 792
    invoke-virtual {p0, v4}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 793
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v9, ""

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    :cond_0
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 797
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 798
    iput-object v10, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 799
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 802
    :cond_1
    invoke-virtual {p1, v7}, Landroid/view/View;->setSelected(Z)V

    .line 805
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iput v6, p0, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    .line 806
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    iget v9, p0, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 807
    .local v3, phoneOrEmail:Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 808
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 809
    move-object v2, v3

    .line 811
    :cond_2
    new-instance v5, Landroid/text/util/Rfc822Token;

    invoke-direct {v5, v2, v3, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    .local v5, token:Landroid/text/util/Rfc822Token;
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 814
    .local v0, data:Landroid/content/ClipData;
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mDragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;

    if-nez v6, :cond_3

    .line 815
    new-instance v6, Lcom/meizu/widget/RecipientEdit$DragInfo;

    invoke-direct {v6}, Lcom/meizu/widget/RecipientEdit$DragInfo;-><init>()V

    iput-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mDragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;

    .line 817
    :cond_3
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mDragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;

    move-object v6, p1

    check-cast v6, Lcom/meizu/widget/RecipientEdit$ItemView;

    iput-object v6, v9, Lcom/meizu/widget/RecipientEdit$DragInfo;->mDragView:Lcom/meizu/widget/RecipientEdit$ItemView;

    .line 819
    new-instance v6, Lcom/meizu/widget/RecipientEdit$RecipientDragShadowBuilder;

    invoke-direct {v6, p0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientDragShadowBuilder;-><init>(Lcom/meizu/widget/RecipientEdit;Landroid/view/View;)V

    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mDragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;

    invoke-virtual {p1, v0, v6, v9, v8}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v1

    .line 820
    .local v1, flag:Z
    if-eqz v1, :cond_4

    .line 821
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 822
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mDragWatcher:Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;

    if-eqz v6, :cond_4

    .line 823
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mDragWatcher:Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;

    invoke-interface {v6, p0}, Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;->beforeDragStarted(Landroid/view/View;)V

    .line 824
    iput-boolean v7, p0, Lcom/meizu/widget/RecipientEdit;->mStartDrag:Z

    :cond_4
    move v6, v7

    .line 831
    .end local v0           #data:Landroid/content/ClipData;
    .end local v1           #flag:Z
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #phoneOrEmail:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/CharSequence;
    .end local v5           #token:Landroid/text/util/Rfc822Token;
    :goto_0
    return v6

    :cond_5
    move v6, v8

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 1257
    iget-boolean v2, p0, Lcom/meizu/widget/RecipientEdit;->mIsFirstLayout:Z

    if-eqz v2, :cond_0

    .line 1258
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1259
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1260
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1261
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1262
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1263
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1274
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2, v4, v4}, Landroid/view/View;->measure(II)V

    .line 1275
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v3

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 1278
    .local v1, textWidth:F
    iget v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 1281
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1283
    .local v0, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    if-eqz v0, :cond_1

    .line 1284
    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1285
    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 1286
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    .line 1287
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    iget v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setWidth(I)V

    .line 1291
    .end local v0           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1292
    return-void

    .line 1265
    .end local v1           #textWidth:F
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1266
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1267
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1269
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public openGlobalAddressBook(Z)V
    .locals 0
    .parameter "open"

    .prologue
    .line 2743
    iput-boolean p1, p0, Lcom/meizu/widget/RecipientEdit;->mOpenGlobalAddressBook:Z

    .line 2744
    return-void
.end method

.method public openHistory()V
    .locals 3

    .prologue
    .line 2550
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2560
    :goto_0
    return-void

    .line 2554
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2555
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z

    .line 2556
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;

    if-nez v0, :cond_1

    .line 2557
    new-instance v0, Lcom/meizu/widget/RecipientDbHelper;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/meizu/widget/RecipientDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;

    .line 2559
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAll()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2003
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2004
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    .line 2005
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .line 2006
    .local v0, num:I
    if-lez v0, :cond_2

    .line 2007
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    if-eqz v1, :cond_0

    .line 2008
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2010
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2011
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2012
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2013
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2014
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2015
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2016
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1, v3, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 2018
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->endCheck()V

    .line 2019
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 2021
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    if-eqz v1, :cond_1

    .line 2022
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    sget-object v2, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-interface {v1, p0, v2}, Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;->onSipStateChanged(Landroid/view/View;Lcom/meizu/widget/RecipientStateInfo$SipState;)V

    .line 2025
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    if-eqz v1, :cond_2

    .line 2026
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    invoke-interface {v1}, Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;->OnRecipientChanged()V

    .line 2029
    :cond_2
    return-void
.end method

.method public removeRecipient(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "number"

    .prologue
    .line 2037
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2038
    .local v0, dstNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2039
    const/4 v2, 0x0

    .line 2043
    :goto_0
    return v2

    .line 2042
    :cond_0
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2043
    .local v1, index:I
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/meizu/widget/RecipientEdit;->removeRecipientAt(IZ)Z

    move-result v2

    goto :goto_0
.end method

.method public removeSingleRecipientWhenGroup(I)V
    .locals 13
    .parameter "singleRecipientType"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2094
    iget v11, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    and-int/lit8 v11, v11, 0x2

    and-int/2addr v11, p1

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    move v2, v9

    .line 2096
    .local v2, hasEmail:Z
    :goto_0
    iget v11, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    and-int/lit8 v11, v11, 0x4

    and-int/2addr v11, p1

    const/4 v12, 0x4

    if-ne v11, v12, :cond_9

    move v3, v9

    .line 2099
    .local v3, hasSns:Z
    :goto_1
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2100
    .local v0, count:I
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2101
    .local v5, input:Ljava/lang/String;
    if-lez v0, :cond_2

    .line 2102
    if-eqz v2, :cond_0

    invoke-static {v5}, Lcom/meizu/widget/RecipientEdit;->isEmailAddress(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    if-eqz v3, :cond_2

    invoke-direct {p0, v5}, Lcom/meizu/widget/RecipientEdit;->isSns(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2103
    :cond_1
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2107
    :cond_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_12

    :cond_3
    if-le v0, v9, :cond_12

    .line 2108
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 2109
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 2110
    .local v8, refreshSipState:Z
    add-int/lit8 v4, v0, -0x1

    .local v4, index:I
    :goto_2
    if-lez v4, :cond_a

    .line 2111
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2112
    .local v7, number:Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-static {v7}, Lcom/meizu/widget/RecipientEdit;->isEmailAddress(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    :cond_4
    if-eqz v3, :cond_7

    invoke-direct {p0, v7}, Lcom/meizu/widget/RecipientEdit;->isSns(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2113
    :cond_5
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    if-eqz v11, :cond_6

    .line 2114
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    invoke-virtual {v11, v9, v7}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2117
    :cond_6
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2118
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2119
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2120
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2121
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2122
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    .line 2123
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 2110
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .end local v0           #count:I
    .end local v2           #hasEmail:Z
    .end local v3           #hasSns:Z
    .end local v4           #index:I
    .end local v5           #input:Ljava/lang/String;
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #number:Ljava/lang/String;
    .end local v8           #refreshSipState:Z
    :cond_8
    move v2, v10

    .line 2094
    goto/16 :goto_0

    .restart local v2       #hasEmail:Z
    :cond_9
    move v3, v10

    .line 2096
    goto/16 :goto_1

    .line 2127
    .restart local v0       #count:I
    .restart local v3       #hasSns:Z
    .restart local v4       #index:I
    .restart local v5       #input:Ljava/lang/String;
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8       #refreshSipState:Z
    :cond_a
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v9, :cond_e

    .line 2128
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2129
    .local v1, firstNumber:Ljava/lang/String;
    if-eqz v2, :cond_b

    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->isEmailAddress(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    :cond_b
    if-eqz v3, :cond_e

    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->isSns(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 2130
    :cond_c
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    if-eqz v11, :cond_d

    .line 2131
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    invoke-virtual {v11, v9, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2134
    :cond_d
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2135
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2136
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2137
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2138
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2139
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    .line 2140
    iget-object v11, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v11, v9}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 2144
    .end local v1           #firstNumber:Ljava/lang/String;
    :cond_e
    if-eqz v2, :cond_13

    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/meizu/widget/RecipientEdit;->isEmailAddress(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 2145
    iget v9, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    and-int/lit8 v9, v9, -0x3

    iput v9, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    .line 2150
    :cond_f
    :goto_3
    if-eqz v8, :cond_10

    .line 2151
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->refreshSipDestState()V

    .line 2153
    :cond_10
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->endCheck()V

    .line 2154
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v9

    invoke-direct {p0, v9}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 2156
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    if-eqz v9, :cond_11

    .line 2157
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getSipState()Lcom/meizu/widget/RecipientStateInfo$SipState;

    move-result-object v10

    invoke-interface {v9, p0, v10}, Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;->onSipStateChanged(Landroid/view/View;Lcom/meizu/widget/RecipientStateInfo$SipState;)V

    .line 2160
    :cond_11
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    if-eqz v9, :cond_12

    .line 2161
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    invoke-interface {v9}, Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;->OnRecipientChanged()V

    .line 2164
    .end local v4           #index:I
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #refreshSipState:Z
    :cond_12
    return-void

    .line 2146
    .restart local v4       #index:I
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8       #refreshSipState:Z
    :cond_13
    if-eqz v3, :cond_f

    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/meizu/widget/RecipientEdit;->isSns(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 2147
    iget v9, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    and-int/lit8 v9, v9, -0x5

    iput v9, p0, Lcom/meizu/widget/RecipientEdit;->mSingleRecipientFlag:I

    goto :goto_3
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 2758
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->setAccount(Landroid/accounts/Account;)V

    .line 2759
    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 2490
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2491
    return-void
.end method

.method public setButtonVisibility(Z)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 2494
    iput-boolean p1, p0, Lcom/meizu/widget/RecipientEdit;->mBtnVisibility:Z

    .line 2496
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2497
    return-void

    .line 2496
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setDragWatcher(Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;)V
    .locals 0
    .parameter "dragWatcher"

    .prologue
    .line 2435
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mDragWatcher:Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;

    .line 2436
    return-void
.end method

.method public setEnabledDrag(Z)V
    .locals 0
    .parameter "enabledDrag"

    .prologue
    .line 2431
    iput-boolean p1, p0, Lcom/meizu/widget/RecipientEdit;->mEnabledDrag:Z

    .line 2432
    return-void
.end method

.method public setFocusable(Z)V
    .locals 1
    .parameter "focusable"

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 1242
    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 1
    .parameter "focusableInTouchMode"

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1247
    return-void
.end method

.method public setHeaderText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 2472
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setHeaderText(Ljava/lang/String;)V

    .line 2473
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 2444
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2445
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2446
    return-void
.end method

.method public setImeOptions(I)V
    .locals 3
    .parameter "imeOptions"

    .prologue
    .line 2532
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getImeOptions()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 2533
    .local v0, oldImeOptions:I
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 2534
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .parameter "inputType"

    .prologue
    .line 2509
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    if-eq v0, p1, :cond_0

    .line 2510
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2511
    const v0, 0x1080683

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2517
    :cond_0
    :goto_0
    iput p1, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    .line 2518
    return-void

    .line 2513
    :cond_1
    const v0, 0x1080684

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setMaxHeight(I)V
    .locals 0
    .parameter "maxHeight"

    .prologue
    .line 2449
    iput p1, p0, Lcom/meizu/widget/RecipientEdit;->mMaxHeight:I

    .line 2450
    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2440
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnDragListener:Landroid/view/View$OnDragListener;

    .line 2441
    return-void
.end method

.method public setOnDropDownListener(Lcom/meizu/widget/RecipientEdit$OnDropDownListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 2736
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, p0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setOnPopupListener(Landroid/view/View;Lcom/meizu/widget/RecipientEdit$OnDropDownListener;)V

    .line 2737
    return-void
.end method

.method public setOnKeyPreImeListener(Landroid/widget/EditText$OnKeyPreImeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2701
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnKeyPreImeListener:Landroid/widget/EditText$OnKeyPreImeListener;

    .line 2702
    return-void
.end method

.method public setOnRecipientChangedListener(Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2715
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    .line 2716
    return-void
.end method

.method public setOnRecipientFirstAddListener(Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2722
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientFirstAddListener:Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;

    .line 2723
    return-void
.end method

.method public setOnSingleRecipientAddWhenGroupListener(Lcom/meizu/widget/RecipientEdit$OnSingleRecipientAddWhenGroupListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2729
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnSingleAddWhenGroupListener:Lcom/meizu/widget/RecipientEdit$OnSingleRecipientAddWhenGroupListener;

    .line 2730
    return-void
.end method

.method public setOnSipCheckerBehaviorListener(Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2697
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipCheckerBehaviorListener:Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;

    .line 2698
    return-void
.end method

.method public setOnSipStateChangedListener(Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2690
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    .line 2691
    return-void
.end method

.method public setOnTextChangedListener(Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2708
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnTextChangedListener:Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;

    .line 2709
    return-void
.end method

.method public setSipDestChecker(Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;)V
    .locals 4
    .parameter "checker"

    .prologue
    const/4 v3, 0x1

    .line 2673
    invoke-virtual {p0, v3}, Lcom/meizu/widget/RecipientEdit;->checkSipDestAddress(Z)V

    .line 2674
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    .line 2676
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2677
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2678
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2679
    .local v1, num:Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    sget-object v3, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_UNCHECK:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2681
    .end local v1           #num:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2682
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->endCheck()V

    .line 2684
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setSipDestState(Ljava/lang/String;Lcom/meizu/widget/RecipientStateInfo$SipState;I)V
    .locals 4
    .parameter "number"
    .parameter "state"
    .parameter "sipVersion"

    .prologue
    .line 2620
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2621
    .local v0, dstNum:Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2622
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2623
    .local v1, input:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2638
    :cond_0
    :goto_0
    return-void

    .line 2628
    :cond_1
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2629
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2630
    sget-object v2, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2631
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2634
    :cond_2
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->endCheck()V

    .line 2635
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    if-eqz v2, :cond_0

    .line 2636
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getSipState()Lcom/meizu/widget/RecipientStateInfo$SipState;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;->onSipStateChanged(Landroid/view/View;Lcom/meizu/widget/RecipientStateInfo$SipState;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .parameter "text"
    .parameter "filter"

    .prologue
    .line 2465
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 2466
    return-void
.end method
