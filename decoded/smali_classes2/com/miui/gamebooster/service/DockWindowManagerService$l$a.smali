.class Lcom/miui/gamebooster/service/DockWindowManagerService$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls8/u$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/service/DockWindowManagerService$l;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/miui/gamebooster/service/DockWindowManagerService$l;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/DockWindowManagerService$l;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l$a;->c:Lcom/miui/gamebooster/service/DockWindowManagerService$l;

    iput-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l$a;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Lcom/miui/gamebooster/utils/a;->B0()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l$a;->a:Landroid/content/Context;

    const-class v2, Lcom/miui/gamebooster/ui/GameVideoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l$a;->b:Landroid/content/Intent;

    const-string v2, "match_md5"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l$a;->a:Landroid/content/Context;

    const-string v2, "00010"

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, La8/k0;->w(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V

    return-void
.end method
