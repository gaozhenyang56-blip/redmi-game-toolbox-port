.class Lcom/miui/applicationlock/FirstUseAppLockActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/FirstUseAppLockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/a$a<",
        "Ljava/util/ArrayList<",
        "Lc3/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/applicationlock/FirstUseAppLockActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/applicationlock/FirstUseAppLockActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/applicationlock/FirstUseAppLockActivity;Lcom/miui/applicationlock/FirstUseAppLockActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/FirstUseAppLockActivity$d;-><init>(Lcom/miui/applicationlock/FirstUseAppLockActivity;)V

    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Lc3/b;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/miui/applicationlock/FirstUseAppLockActivity$d;->a(Lq0/c;Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Lq0/c;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Lc3/b;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lc3/b;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/applicationlock/FirstUseAppLockActivity;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    if-ge v2, v0, :cond_1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc3/b;

    invoke-virtual {v3}, Lc3/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1, v0, v1}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->e0(Lcom/miui/applicationlock/FirstUseAppLockActivity;ILjava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Lc3/b;",
            ">;>;"
        }
    .end annotation

    new-instance p1, Lcom/miui/applicationlock/FirstUseAppLockActivity$b;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/miui/applicationlock/FirstUseAppLockActivity$b;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
