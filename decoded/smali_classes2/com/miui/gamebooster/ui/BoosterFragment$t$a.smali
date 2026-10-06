.class Lcom/miui/gamebooster/ui/BoosterFragment$t$a;
.super Lcom/miui/common/base/asyn/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/BoosterFragment$t;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/BoosterFragment$t;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment$t;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$t$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment$t;

    invoke-direct {p0, p2}, Lcom/miui/common/base/asyn/b;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected runOnUiThread()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$t$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment$t;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/BoosterFragment$t;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->t1(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    return-void
.end method
