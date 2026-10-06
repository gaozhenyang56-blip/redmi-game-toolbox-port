.class Lcom/miui/antivirus/whitelist/WhiteListActivity$f;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/whitelist/WhiteListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/whitelist/WhiteListActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lw4/d;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$f;->q:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antivirus/whitelist/WhiteListActivity$f;->J()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/lang/Boolean;
    .locals 12

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$f;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/whitelist/WhiteListActivity;

    if-nez v0, :cond_0

    :goto_0
    invoke-super {p0}, Lw4/d;->G()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->d0(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->e0(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Lcom/miui/antivirus/whitelist/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/antivirus/whitelist/d;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f10014a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    new-array v9, v5, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {v3, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lx2/b;

    invoke-direct {v7}, Lx2/b;-><init>()V

    invoke-virtual {v7, v6}, Lx2/b;->b(Z)V

    new-array v8, v5, [Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v0, v3, v1, v8}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->i0(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v7, v3}, Lx2/b;->c(Ljava/lang/CharSequence;)V

    sget-object v3, Lx2/c;->a:Lx2/c;

    invoke-virtual {v7, v3}, Lx2/b;->d(Lx2/c;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/antivirus/whitelist/d$b;

    invoke-static {v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->d0(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v4

    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/antivirus/whitelist/b;

    iget-object v11, v10, Lcom/miui/antivirus/whitelist/b;->a:Lx2/b;

    if-ne v11, v7, :cond_1

    iget-object v9, v10, Lcom/miui/antivirus/whitelist/b;->b:Ljava/util/List;

    goto :goto_2

    :cond_2
    if-nez v9, :cond_3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->d0(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Ljava/util/List;

    move-result-object v8

    new-instance v10, Lcom/miui/antivirus/whitelist/b;

    invoke-direct {v10, v7, v9}, Lcom/miui/antivirus/whitelist/b;-><init>(Lx2/b;Ljava/util/List;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {v3}, Lcom/miui/antivirus/whitelist/c;->a(Lcom/miui/antivirus/whitelist/d$b;)Lcom/miui/antivirus/whitelist/c;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$f;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/whitelist/WhiteListActivity;

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    invoke-static {v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->e0(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Lcom/miui/antivirus/whitelist/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/antivirus/whitelist/d;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f10014b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    new-array v9, v5, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {v3, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lx2/b;

    invoke-direct {v7}, Lx2/b;-><init>()V

    invoke-virtual {v7, v6}, Lx2/b;->b(Z)V

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {v0, v3, v1, v5}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->i0(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v7, v1}, Lx2/b;->c(Ljava/lang/CharSequence;)V

    sget-object v1, Lx2/c;->b:Lx2/c;

    invoke-virtual {v7, v1}, Lx2/b;->d(Lx2/c;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antivirus/whitelist/d$c;

    invoke-static {v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->d0(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v5, v4

    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/antivirus/whitelist/b;

    iget-object v8, v6, Lcom/miui/antivirus/whitelist/b;->a:Lx2/b;

    if-ne v8, v7, :cond_6

    iget-object v5, v6, Lcom/miui/antivirus/whitelist/b;->b:Ljava/util/List;

    goto :goto_4

    :cond_7
    if-nez v5, :cond_8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->d0(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Ljava/util/List;

    move-result-object v3

    new-instance v6, Lcom/miui/antivirus/whitelist/b;

    invoke-direct {v6, v7, v5}, Lcom/miui/antivirus/whitelist/b;-><init>(Lx2/b;Ljava/util/List;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {v2}, Lcom/miui/antivirus/whitelist/c;->b(Lcom/miui/antivirus/whitelist/d$c;)Lcom/miui/antivirus/whitelist/c;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    return-object v4
.end method
