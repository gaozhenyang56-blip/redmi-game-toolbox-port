.class Lcom/miui/securityscan/shortcut/ShortcutActivity$b;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/shortcut/ShortcutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Ljava/util/List<",
        "Lcom/miui/securityscan/shortcut/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private q:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/shortcut/ShortcutActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lw4/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$b;->q:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securityscan/shortcut/ShortcutActivity$b;->J()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/shortcut/c;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lq0/a;->F()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/miui/securityscan/shortcut/c;

    sget-object v3, Lcom/miui/securityscan/shortcut/d$b;->c:Lcom/miui/securityscan/shortcut/d$b;

    iget-object v4, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$b;->q:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/miui/securityscan/shortcut/c;-><init>(Lcom/miui/securityscan/shortcut/d$b;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/miui/securityscan/shortcut/c;

    sget-object v3, Lcom/miui/securityscan/shortcut/d$b;->j:Lcom/miui/securityscan/shortcut/d$b;

    iget-object v4, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$b;->q:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/miui/securityscan/shortcut/c;-><init>(Lcom/miui/securityscan/shortcut/d$b;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$b;->q:Landroid/content/Context;

    invoke-static {v2}, Lc4/e;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/miui/securityscan/shortcut/c;

    sget-object v3, Lcom/miui/securityscan/shortcut/d$b;->d:Lcom/miui/securityscan/shortcut/d$b;

    iget-object v4, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$b;->q:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/miui/securityscan/shortcut/c;-><init>(Lcom/miui/securityscan/shortcut/d$b;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lx4/k0;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/miui/securityscan/shortcut/c;

    sget-object v3, Lcom/miui/securityscan/shortcut/d$b;->g:Lcom/miui/securityscan/shortcut/d$b;

    iget-object v4, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$b;->q:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/miui/securityscan/shortcut/c;-><init>(Lcom/miui/securityscan/shortcut/d$b;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {}, Lx4/k0;->b()Z

    move-result v3

    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    new-instance v3, Lcom/miui/securityscan/shortcut/c;

    sget-object v4, Lcom/miui/securityscan/shortcut/d$b;->i:Lcom/miui/securityscan/shortcut/d$b;

    iget-object v5, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$b;->q:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/miui/securityscan/shortcut/c;-><init>(Lcom/miui/securityscan/shortcut/d$b;Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v3, Lcom/miui/securityscan/shortcut/c;

    sget-object v4, Lcom/miui/securityscan/shortcut/d$b;->e:Lcom/miui/securityscan/shortcut/d$b;

    iget-object v5, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$b;->q:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/miui/securityscan/shortcut/c;-><init>(Lcom/miui/securityscan/shortcut/d$b;Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/miui/securityscan/shortcut/c;

    sget-object v4, Lcom/miui/securityscan/shortcut/d$b;->f:Lcom/miui/securityscan/shortcut/d$b;

    iget-object v5, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$b;->q:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/miui/securityscan/shortcut/c;-><init>(Lcom/miui/securityscan/shortcut/d$b;Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_6

    if-eqz v2, :cond_5

    new-instance v2, Lcom/miui/securityscan/shortcut/c;

    sget-object v3, Lcom/miui/securityscan/shortcut/d$b;->l:Lcom/miui/securityscan/shortcut/d$b;

    iget-object v4, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$b;->q:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/miui/securityscan/shortcut/c;-><init>(Lcom/miui/securityscan/shortcut/d$b;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v2, Lcom/miui/securityscan/shortcut/c;

    sget-object v3, Lcom/miui/securityscan/shortcut/d$b;->n:Lcom/miui/securityscan/shortcut/d$b;

    iget-object v4, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$b;->q:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/miui/securityscan/shortcut/c;-><init>(Lcom/miui/securityscan/shortcut/d$b;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p0}, Lq0/a;->F()Z

    move-result v2

    if-eqz v2, :cond_7

    return-object v1

    :cond_7
    return-object v0
.end method
