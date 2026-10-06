.class Lcom/miui/gamebooster/ui/BoosterFragment$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/BoosterFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/BoosterFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$t;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$t;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    new-instance v1, Lcom/miui/gamebooster/ui/BoosterFragment$t$a;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment$t;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/BoosterFragment;->s1(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/miui/gamebooster/ui/BoosterFragment$t$a;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment$t;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->u1(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/common/base/asyn/b;)V

    return-void
.end method
