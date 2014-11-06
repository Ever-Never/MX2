.class public Landroid/text/util/UrlSpanHelper;
.super Ljava/lang/Object;
.source "UrlSpanHelper.java"


# static fields
.field private static final ALL_DAY:Ljava/lang/String; = "allDay"

.field private static final DATETIME_URI:Ljava/lang/String; = "datetime:"

.field private static final EMAIL_URI:Ljava/lang/String; = "mailto:"

.field private static final EVENT_BEGIN_TIME:Ljava/lang/String; = "eventBeginTime"

.field private static final EVENT_DIR_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/event"

.field private static final EVENT_END_TIME:Ljava/lang/String; = "eventEndTime"

.field private static final EVENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/event"

.field private static final ID_ADD_TO_BOOKMARK:I = 0x2

.field private static final ID_ADD_TO_CONTACT:I = 0x3

.field private static final ID_CALL_NUM:I = 0x0

.field private static final ID_COPY:I = 0x1

.field private static final ID_NEW_CONTACT:I = 0x2

.field private static final ID_NEW_EMAIL:I = 0x0

.field private static final ID_NEW_EVENT:I = 0x0

.field private static final ID_OPEN_CALENDAR:I = 0x2

.field private static final ID_OPEN_URL:I = 0x0

.field private static final ID_SEND_MMS:I = 0x1

.field private static final MEIZU_URI:Ljava/lang/String; = "http://app.meizu.com/phone/"

.field private static final MSTORE_URI:Ljava/lang/String; = "mstore:"

.field private static final QUICK_EVENT_INSERT:Ljava/lang/String; = "com.android.calendar.QUICK_EVENT_INSERT"

.field private static final TEL_URI:Ljava/lang/String; = "tel:"

.field private static final VIEW_TIME:Ljava/lang/String; = "viewTime"

.field private static mDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/CharSequence;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 30
    invoke-static {p0}, Landroid/text/util/UrlSpanHelper;->subDate(Ljava/lang/CharSequence;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(JLandroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-static {p0, p1, p2}, Landroid/text/util/UrlSpanHelper;->createAllDayEvent(JLandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(JLandroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-static {p0, p1, p2}, Landroid/text/util/UrlSpanHelper;->createStartTimeEvent(JLandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/CharSequence;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-static {p0}, Landroid/text/util/UrlSpanHelper;->subTimeToTime(Ljava/lang/CharSequence;)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(JJLandroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/util/UrlSpanHelper;->createTimeToTimeEvent(JJLandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/CharSequence;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-static {p0, p1}, Landroid/text/util/UrlSpanHelper;->setPrimaryClip(Ljava/lang/CharSequence;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(JLandroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-static {p0, p1, p2}, Landroid/text/util/UrlSpanHelper;->openCalendar(JLandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-static {p0, p1}, Landroid/text/util/UrlSpanHelper;->getDisplayNameFromPhone(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$900(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-static {p0, p1}, Landroid/text/util/UrlSpanHelper;->showWarning(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private static createAllDayEvent(JLandroid/content/Context;)V
    .locals 3
    .parameter "sTime"
    .parameter "context"

    .prologue
    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.calendar.QUICK_EVENT_INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "eventBeginTime"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 386
    const-string v1, "allDay"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 387
    const-string/jumbo v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 389
    return-void
.end method

.method private static createStartTimeEvent(JLandroid/content/Context;)V
    .locals 2
    .parameter "sTime"
    .parameter "context"

    .prologue
    .line 371
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.calendar.QUICK_EVENT_INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "eventBeginTime"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 373
    const-string/jumbo v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 375
    return-void
.end method

.method private static createTimeToTimeEvent(JJLandroid/content/Context;)V
    .locals 2
    .parameter "sTime"
    .parameter "eTime"
    .parameter "context"

    .prologue
    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.calendar.QUICK_EVENT_INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "eventBeginTime"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 359
    const-string v1, "eventEndTime"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 360
    const-string/jumbo v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    invoke-virtual {p4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 362
    return-void
.end method

.method private static getDisplayNameFromPhone(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "phoneNumber"
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 460
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 461
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 464
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 466
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 470
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 473
    :cond_0
    :goto_0
    return-object v3

    .line 470
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getEventType(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 412
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 417
    :goto_0
    return-object v0

    .line 415
    :catch_0
    move-exception v0

    .line 417
    const-string v0, "-1"

    goto :goto_0
.end method

.method private static openCalendar(JLandroid/content/Context;)V
    .locals 2
    .parameter "sTime"
    .parameter "context"

    .prologue
    .line 398
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "viewTime"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 400
    const-string/jumbo v1, "vnd.android.cursor.dir/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 402
    return-void
.end method

.method private static setPrimaryClip(Ljava/lang/CharSequence;Landroid/view/View;)V
    .locals 4
    .parameter "value"
    .parameter "widget"

    .prologue
    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 342
    .local v0, clipboard:Landroid/content/ClipboardManager;
    const/4 v1, 0x0

    invoke-static {v1, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104039d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/util/UrlSpanHelper;->showToastTip(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method private static showDateTimeDialog(Landroid/view/View;Ljava/lang/String;)V
    .locals 7
    .parameter "widget"
    .parameter "url"

    .prologue
    .line 88
    sget-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    sget-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    sget-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->hide()V

    .line 90
    const/4 v4, 0x0

    sput-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    .line 92
    :cond_0
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, value:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, title:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/util/UrlSpanHelper;->getEventType(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, eventType:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 98
    const v4, 0x107003f

    new-instance v5, Landroid/text/util/UrlSpanHelper$1;

    invoke-direct {v5, p0, v1, v3, v2}, Landroid/text/util/UrlSpanHelper$1;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    sput-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    .line 148
    sget-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 149
    return-void
.end method

.method public static showDialog(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0
    .parameter "widget"
    .parameter "url"
    .parameter "type"

    .prologue
    .line 63
    sparse-switch p2, :sswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 65
    :sswitch_0
    invoke-static {p0, p1}, Landroid/text/util/UrlSpanHelper;->showDateTimeDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :sswitch_1
    invoke-static {p0, p1}, Landroid/text/util/UrlSpanHelper;->showWebDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :sswitch_2
    invoke-static {p0, p1}, Landroid/text/util/UrlSpanHelper;->showEmailDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :sswitch_3
    invoke-static {p0, p1}, Landroid/text/util/UrlSpanHelper;->showTelDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private static showEmailDialog(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .parameter "widget"
    .parameter "url"

    .prologue
    .line 158
    sget-object v2, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    sget-object v2, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->hide()V

    .line 160
    const/4 v2, 0x0

    sput-object v2, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    .line 162
    :cond_0
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, value:Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 165
    const v2, 0x107003e

    new-instance v3, Landroid/text/util/UrlSpanHelper$2;

    invoke-direct {v3, p0, p1, v1}, Landroid/text/util/UrlSpanHelper$2;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 194
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    .line 195
    sget-object v2, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 196
    return-void
.end method

.method private static showTelDialog(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .parameter "widget"
    .parameter "url"

    .prologue
    .line 205
    sget-object v2, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    sget-object v2, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->hide()V

    .line 207
    const/4 v2, 0x0

    sput-object v2, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    .line 209
    :cond_0
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, value:Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 212
    const v2, 0x107003d

    new-instance v3, Landroid/text/util/UrlSpanHelper$3;

    invoke-direct {v3, p0, p1, v1}, Landroid/text/util/UrlSpanHelper$3;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    .line 247
    sget-object v2, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 249
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/text/util/UrlSpanHelper$4;

    invoke-direct {v3, v1, p0}, Landroid/text/util/UrlSpanHelper$4;-><init>(Ljava/lang/CharSequence;Landroid/view/View;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 266
    return-void
.end method

.method private static showToastTip(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "message"

    .prologue
    .line 477
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 478
    return-void
.end method

.method private static showWarning(Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .parameter "widget"
    .parameter "url"

    .prologue
    const/4 v5, 0x0

    .line 487
    sget-object v3, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    sget-object v3, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 488
    sget-object v3, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->hide()V

    .line 489
    sput-object v5, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    .line 493
    :cond_0
    if-eqz p1, :cond_1

    const-string v3, "http://app.meizu.com/phone/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mstore:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 498
    .local v2, uri:Landroid/net/Uri;
    :goto_0
    move-object v1, v2

    .line 499
    .local v1, openUri:Landroid/net/Uri;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 500
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x10405fb

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 501
    const v3, 0x10405fc

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 502
    const/high16 v3, 0x104

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 503
    const v3, 0x104000a

    new-instance v4, Landroid/text/util/UrlSpanHelper$6;

    invoke-direct {v4, v1, p0}, Landroid/text/util/UrlSpanHelper$6;-><init>(Landroid/net/Uri;Landroid/view/View;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 510
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    .line 511
    sget-object v3, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 512
    return-void

    .line 496
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #openUri:Landroid/net/Uri;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .restart local v2       #uri:Landroid/net/Uri;
    goto :goto_0
.end method

.method private static showWebDialog(Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .parameter "widget"
    .parameter "url"

    .prologue
    .line 275
    sget-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    sget-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    sget-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->hide()V

    .line 277
    const/4 v4, 0x0

    sput-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    .line 281
    :cond_0
    if-eqz p1, :cond_2

    const-string v4, "http://app.meizu.com/phone/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mstore:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 286
    .local v3, uri:Landroid/net/Uri;
    :goto_0
    move-object v2, v3

    .line 287
    .local v2, openUri:Landroid/net/Uri;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v4, "geo"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 289
    const-string v4, "="

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 293
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, items:[Ljava/lang/CharSequence;
    sget-object v4, Landroid/os/Build;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 297
    :cond_1
    new-instance v4, Landroid/text/util/UrlSpanHelper$5;

    invoke-direct {v4, p0, p1, v2}, Landroid/text/util/UrlSpanHelper$5;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 329
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    sput-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    .line 330
    sget-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 331
    return-void

    .line 284
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #items:[Ljava/lang/CharSequence;
    .end local v2           #openUri:Landroid/net/Uri;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .restart local v3       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 291
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    .restart local v2       #openUri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private static subDate(Ljava/lang/CharSequence;)J
    .locals 3
    .parameter "value"

    .prologue
    .line 427
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static subTimeToTime(Ljava/lang/CharSequence;)[J
    .locals 6
    .parameter "value"

    .prologue
    .line 439
    const/4 v2, 0x2

    new-array v0, v2, [J

    .line 440
    .local v0, time:[J
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, value1:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 446
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 449
    return-object v0
.end method
