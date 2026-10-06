.class Lcom/miui/permcenter/permissions/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/miui/permission/PermissionGroupInfo;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/permission/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/d;->b:Ljava/util/ArrayList;

    return-void
.end method
