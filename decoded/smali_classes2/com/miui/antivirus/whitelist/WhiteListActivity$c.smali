.class Lcom/miui/antivirus/whitelist/WhiteListActivity$c;
.super Lw4/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/whitelist/WhiteListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/whitelist/WhiteListActivity;


# direct methods
.method private constructor <init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$c;->a:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-direct {p0}, Lw4/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;Lcom/miui/antivirus/whitelist/WhiteListActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/whitelist/WhiteListActivity$c;-><init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;)V

    return-void
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$c;->a:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-static {v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->d0(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "removeWhiteList"

    const-string v1, "begin---------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$c;->a:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-static {v1}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->d0(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antivirus/whitelist/b;

    iget-object v2, v2, Lcom/miui/antivirus/whitelist/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/antivirus/whitelist/c;

    invoke-virtual {v3}, Lcom/miui/antivirus/whitelist/c;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antivirus/whitelist/c;

    invoke-virtual {v2}, Lcom/miui/antivirus/whitelist/c;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/miui/antivirus/whitelist/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    aput-object v3, v0, v2

    move v2, v4

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$c;->a:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-static {v1}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->e0(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Lcom/miui/antivirus/whitelist/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/whitelist/d;->c([Ljava/lang/String;)I

    return-void
.end method

.method private d()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$c;->a:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-static {v1}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->f0(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$c;->a:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$c;->a:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    const/16 v3, 0x64

    invoke-virtual {v1, v3, v0, v2}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3fd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3fe

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/antivirus/whitelist/WhiteListActivity$c;->d()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/antivirus/whitelist/WhiteListActivity$c;->c()V

    :goto_0
    return-void
.end method
