.class Lcom/miui/powercenter/PowerSaveMainFragment$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/PowerSaveMainFragment$a;->a(Lcom/miui/powercenter/batteryhistory/i$a;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/z;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:D

.field final synthetic d:Lcom/miui/powercenter/PowerSaveMainFragment$a;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/PowerSaveMainFragment$a;Lcom/miui/powercenter/batteryhistory/z;Ljava/util/List;D)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/PowerSaveMainFragment$a$a;->d:Lcom/miui/powercenter/PowerSaveMainFragment$a;

    iput-object p2, p0, Lcom/miui/powercenter/PowerSaveMainFragment$a$a;->a:Lcom/miui/powercenter/batteryhistory/z;

    iput-object p3, p0, Lcom/miui/powercenter/PowerSaveMainFragment$a$a;->b:Ljava/util/List;

    iput-wide p4, p0, Lcom/miui/powercenter/PowerSaveMainFragment$a$a;->c:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment$a$a;->a:Lcom/miui/powercenter/batteryhistory/z;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/PowerSaveMainFragment$a$a;->b:Ljava/util/List;

    iget-wide v2, p0, Lcom/miui/powercenter/PowerSaveMainFragment$a$a;->c:D

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/powercenter/batteryhistory/z;->u(Ljava/util/List;DZ)V

    :cond_0
    return-void
.end method
