.class final enum Lcom/android/server/AlarmManagerService$LogToFileTag;
.super Ljava/lang/Enum;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LogToFileTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/AlarmManagerService$LogToFileTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/AlarmManagerService$LogToFileTag;

.field public static final enum ON_FINISH:Lcom/android/server/AlarmManagerService$LogToFileTag;

.field public static final enum REMOVE_LOCKED_BY_OPERATION:Lcom/android/server/AlarmManagerService$LogToFileTag;

.field public static final enum REMOVE_LOCKED_BY_PACKAGENAME:Lcom/android/server/AlarmManagerService$LogToFileTag;

.field public static final enum SET_LOCKED_JNI:Lcom/android/server/AlarmManagerService$LogToFileTag;

.field public static final enum SET_REPEAT:Lcom/android/server/AlarmManagerService$LogToFileTag;

.field public static final enum TRIGGER_NO_WAKEUP:Lcom/android/server/AlarmManagerService$LogToFileTag;

.field public static final enum TRIGGER_WAKEUP:Lcom/android/server/AlarmManagerService$LogToFileTag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1759
    new-instance v0, Lcom/android/server/AlarmManagerService$LogToFileTag;

    const-string v1, "SET_REPEAT"

    invoke-direct {v0, v1, v3}, Lcom/android/server/AlarmManagerService$LogToFileTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AlarmManagerService$LogToFileTag;->SET_REPEAT:Lcom/android/server/AlarmManagerService$LogToFileTag;

    new-instance v0, Lcom/android/server/AlarmManagerService$LogToFileTag;

    const-string v1, "SET_LOCKED_JNI"

    invoke-direct {v0, v1, v4}, Lcom/android/server/AlarmManagerService$LogToFileTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AlarmManagerService$LogToFileTag;->SET_LOCKED_JNI:Lcom/android/server/AlarmManagerService$LogToFileTag;

    new-instance v0, Lcom/android/server/AlarmManagerService$LogToFileTag;

    const-string v1, "REMOVE_LOCKED_BY_OPERATION"

    invoke-direct {v0, v1, v5}, Lcom/android/server/AlarmManagerService$LogToFileTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AlarmManagerService$LogToFileTag;->REMOVE_LOCKED_BY_OPERATION:Lcom/android/server/AlarmManagerService$LogToFileTag;

    new-instance v0, Lcom/android/server/AlarmManagerService$LogToFileTag;

    const-string v1, "REMOVE_LOCKED_BY_PACKAGENAME"

    invoke-direct {v0, v1, v6}, Lcom/android/server/AlarmManagerService$LogToFileTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AlarmManagerService$LogToFileTag;->REMOVE_LOCKED_BY_PACKAGENAME:Lcom/android/server/AlarmManagerService$LogToFileTag;

    new-instance v0, Lcom/android/server/AlarmManagerService$LogToFileTag;

    const-string v1, "TRIGGER_WAKEUP"

    invoke-direct {v0, v1, v7}, Lcom/android/server/AlarmManagerService$LogToFileTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AlarmManagerService$LogToFileTag;->TRIGGER_WAKEUP:Lcom/android/server/AlarmManagerService$LogToFileTag;

    new-instance v0, Lcom/android/server/AlarmManagerService$LogToFileTag;

    const-string v1, "TRIGGER_NO_WAKEUP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/AlarmManagerService$LogToFileTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AlarmManagerService$LogToFileTag;->TRIGGER_NO_WAKEUP:Lcom/android/server/AlarmManagerService$LogToFileTag;

    new-instance v0, Lcom/android/server/AlarmManagerService$LogToFileTag;

    const-string v1, "ON_FINISH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/AlarmManagerService$LogToFileTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AlarmManagerService$LogToFileTag;->ON_FINISH:Lcom/android/server/AlarmManagerService$LogToFileTag;

    .line 1758
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/server/AlarmManagerService$LogToFileTag;

    sget-object v1, Lcom/android/server/AlarmManagerService$LogToFileTag;->SET_REPEAT:Lcom/android/server/AlarmManagerService$LogToFileTag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/AlarmManagerService$LogToFileTag;->SET_LOCKED_JNI:Lcom/android/server/AlarmManagerService$LogToFileTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/AlarmManagerService$LogToFileTag;->REMOVE_LOCKED_BY_OPERATION:Lcom/android/server/AlarmManagerService$LogToFileTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/AlarmManagerService$LogToFileTag;->REMOVE_LOCKED_BY_PACKAGENAME:Lcom/android/server/AlarmManagerService$LogToFileTag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/AlarmManagerService$LogToFileTag;->TRIGGER_WAKEUP:Lcom/android/server/AlarmManagerService$LogToFileTag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/AlarmManagerService$LogToFileTag;->TRIGGER_NO_WAKEUP:Lcom/android/server/AlarmManagerService$LogToFileTag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/AlarmManagerService$LogToFileTag;->ON_FINISH:Lcom/android/server/AlarmManagerService$LogToFileTag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/AlarmManagerService$LogToFileTag;->$VALUES:[Lcom/android/server/AlarmManagerService$LogToFileTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1758
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/AlarmManagerService$LogToFileTag;
    .locals 1
    .parameter "name"

    .prologue
    .line 1758
    const-class v0, Lcom/android/server/AlarmManagerService$LogToFileTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$LogToFileTag;

    return-object v0
.end method

.method public static values()[Lcom/android/server/AlarmManagerService$LogToFileTag;
    .locals 1

    .prologue
    .line 1758
    sget-object v0, Lcom/android/server/AlarmManagerService$LogToFileTag;->$VALUES:[Lcom/android/server/AlarmManagerService$LogToFileTag;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/AlarmManagerService$LogToFileTag;

    return-object v0
.end method
