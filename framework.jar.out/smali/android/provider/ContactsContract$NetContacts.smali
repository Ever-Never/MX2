.class public final Landroid/provider/ContactsContract$NetContacts;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetContacts"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.meizu.netcontactservice.directory"

.field public static final ERROR_CODE_KEY:Ljava/lang/String; = "error_code"

.field public static final ERROR_CODE_NETWORK_UNAVAILABLE:I = 0x1

.field public static final ERROR_CODE_NO_ADDRESS:I = 0x2

.field public static final ERROR_CODE_NUMBER_INVALIDATE:I = 0x3

.field public static final ERROR_CODE_SUCCESS:I = 0x0

.field public static final ERROR_CODE_UNKNOWN:I = 0x4

.field public static final NET_CONTACT_ACCOUNT_TYPE:Ljava/lang/String; = "com.meizu.netcontactservice"

.field public static final NET_CONTACT_DIRECTORY_TYPE:Ljava/lang/String; = "NetContact"

.field public static final PHONE_LOOKUP_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9107
    const-string v0, "content://com.meizu.netcontactservice.directory"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "phone_lookup"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$NetContacts;->PHONE_LOOKUP_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
