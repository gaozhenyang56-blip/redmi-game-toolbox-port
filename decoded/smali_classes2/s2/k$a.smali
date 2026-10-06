.class Ls2/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls2/k;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ls2/k;


# direct methods
.method constructor <init>(Ls2/k;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ls2/k$a;->c:Ls2/k;

    iput-object p2, p0, Ls2/k$a;->a:Landroid/content/Intent;

    iput-object p3, p0, Ls2/k$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Ls2/k$a;->a:Landroid/content/Intent;

    const-string v2, "virusLevel"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, v0, Ls2/k$a;->a:Landroid/content/Intent;

    const-string v3, "packageName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, v0, Ls2/k$a;->a:Landroid/content/Intent;

    const-string v3, "virusDescription"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v2, v0, Ls2/k$a;->a:Landroid/content/Intent;

    const-string v3, "engineName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Ls2/k$a;->a:Landroid/content/Intent;

    const-string v5, "virusName"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v3, v0, Ls2/k$a;->a:Landroid/content/Intent;

    const-string v5, "versionName"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v1}, Lw2/v;->b(I)Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Ls2/k$a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, v0, Ls2/k$a;->c:Ls2/k;

    iget-object v5, v0, Ls2/k$a;->b:Landroid/content/Context;

    invoke-static {v3, v5, v4}, Ls2/k;->a(Ls2/k;Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lw2/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v1

    move-object v10, v3

    goto :goto_0

    :cond_0
    move-object v10, v5

    :goto_0
    iget-object v1, v0, Ls2/k$a;->b:Landroid/content/Context;

    invoke-static {v1, v4}, Le3/b;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lw2/t;->A()Z

    move-result v3

    const-wide/16 v11, 0x0

    const/4 v7, 0x1

    const v15, 0x7f1213f5

    if-eqz v3, :cond_1

    iget-object v3, v0, Ls2/k$a;->b:Landroid/content/Context;

    new-array v7, v7, [Ljava/lang/Object;

    const-string v16, "all"

    aput-object v16, v7, v6

    invoke-virtual {v3, v15, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v3, v0, Ls2/k$a;->b:Landroid/content/Context;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v6

    invoke-virtual {v3, v15, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v3, v11, v12}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v3, "yyyy-MM-dd"

    invoke-static {v3, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v3, v0, Ls2/k$a;->a:Landroid/content/Intent;

    const-string v6, "extras"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lw2/t;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "INSTALL_MONITOR"

    move-object v6, v1

    invoke-static/range {v4 .. v14}, Lq2/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
