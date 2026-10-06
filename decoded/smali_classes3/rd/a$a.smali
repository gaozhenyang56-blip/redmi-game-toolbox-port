.class Lrd/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrd/a;->l(Landroid/view/View;Lrd/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrd/a;


# direct methods
.method constructor <init>(Lrd/a;)V
    .locals 0

    iput-object p1, p0, Lrd/a$a;->a:Lrd/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/powercenter/PowerCenter;->r:Z

    iget-object v1, p0, Lrd/a$a;->a:Lrd/a;

    invoke-static {v1, v0}, Lrd/a;->d(Lrd/a;Z)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "miui.intent.action.APP_MANAGER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "enter_way"

    const-string v2, "com.miui.securitycenter"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object p1, p0, Lrd/a$a;->a:Lrd/a;

    invoke-static {p1}, Lrd/a;->e(Lrd/a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lhd/a;->O0(Ljava/lang/String;)V

    return-void
.end method
