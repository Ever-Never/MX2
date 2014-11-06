.class final Lcom/android/server/pm/PermissionItem;
.super Ljava/lang/Object;
.source "PermissioItem.java"


# static fields
.field static final INITIAL:I = 0x0

.field static final SET_VALUE:I = 0x1


# instance fields
.field granted:I

.field permissoin:Ljava/lang/String;

.field set:I

.field type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter "per"
    .parameter "gt"
    .parameter "st"
    .parameter "pt"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/server/pm/PermissionItem;->permissoin:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/android/server/pm/PermissionItem;->granted:I

    .line 26
    iput p3, p0, Lcom/android/server/pm/PermissionItem;->set:I

    .line 27
    iput p4, p0, Lcom/android/server/pm/PermissionItem;->type:I

    .line 29
    return-void
.end method
