.class public final Landroid/provider/Telephony$Send_sections_state;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Send_sections_state"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final Message_URI:Ljava/lang/String; = "message_uri"

.field public static final SECTION_COUNT:Ljava/lang/String; = "section_count"

.field public static final SECTION_REF:Ljava/lang/String; = "section_ref"

.field public static final SEGMENT_NUM:Ljava/lang/String; = "segment_num"

.field public static final SMS_ID:Ljava/lang/String; = "sms_id"

.field public static final STATUS:Ljava/lang/String; = "status"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
