.class Lcom/miui/gamebooster/ui/BoosterFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/BoosterFragment;->n2(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/miui/gamebooster/ui/BoosterFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$f;->b:Lcom/miui/gamebooster/ui/BoosterFragment;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/BoosterFragment$f;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$f;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Leg/o;->c(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$f;->a:Landroid/app/Activity;

    instance-of v0, p1, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    iget-object p1, p1, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->g:Lcom/miui/gamebooster/ui/BoosterFragment$d0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/gamebooster/ui/BoosterFragment$d0;->a()V

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1, p2}, Lqf/c;->L0(ZZ)V

    return-void
.end method
