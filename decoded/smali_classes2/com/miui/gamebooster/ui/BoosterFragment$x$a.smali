.class Lcom/miui/gamebooster/ui/BoosterFragment$x$a;
.super Lcom/miui/common/base/asyn/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/BoosterFragment$x;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/miui/gamebooster/ui/BoosterFragment$x;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment$x;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$x$a;->b:Lcom/miui/gamebooster/ui/BoosterFragment$x;

    iput-object p3, p0, Lcom/miui/gamebooster/ui/BoosterFragment$x$a;->a:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/miui/common/base/asyn/b;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected runOnUiThread()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$x$a;->b:Lcom/miui/gamebooster/ui/BoosterFragment$x;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$x$a;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/BoosterFragment$x;->b(Lcom/miui/gamebooster/ui/BoosterFragment$x;Ljava/util/List;)V

    return-void
.end method
