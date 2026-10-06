.class public Lpc/c;
.super Lpc/a;
.source "SourceFile"


# static fields
.field public static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "perm_notification"

    const-string v1, "perm_install_unknown"

    const-string v2, "perm_app_statistics"

    const-string v3, "perm_device_manager"

    const-string v4, "miui_open_debug"

    const-string v5, "miui_barrier_free"

    const-string v6, "miui_close_optimization"

    const-string v7, "oaid_close"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lpc/c;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Lpc/a;-><init>()V

    iput p1, p0, Lpc/c;->c:I

    iput p2, p0, Lpc/c;->a:I

    iput p3, p0, Lpc/c;->b:I

    return-void
.end method

.method public static b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpc/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lpc/c;

    const v2, 0x7f0808c6

    const v3, 0x7f121767

    const v4, 0x7f121766

    invoke-direct {v1, v2, v3, v4}, Lpc/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lpc/c;

    const v2, 0x7f0808e8

    const v3, 0x7f121758

    const v4, 0x7f121757

    invoke-direct {v1, v2, v3, v4}, Lpc/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lpc/c;

    const v2, 0x7f0808eb

    const v3, 0x7f12175f

    const v4, 0x7f12175e

    invoke-direct {v1, v2, v3, v4}, Lpc/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    sget-object v0, Lpc/c;->d:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpc/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lpc/c;

    const v2, 0x7f0808ea

    const v3, 0x7f12175b

    const v4, 0x7f12175a

    invoke-direct {v1, v2, v3, v4}, Lpc/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lpc/c;

    const v2, 0x7f0808eb

    const v3, 0x7f121777

    const v4, 0x7f121776

    invoke-direct {v1, v2, v3, v4}, Lpc/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static e(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lpc/c;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lpc/c;->b()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lpc/c;->n()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lpc/c;->f()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lpc/c;->d()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {}, Lpc/c;->o()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {}, Lpc/c;->g()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static f()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpc/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lpc/c;

    const v2, 0x7f0808e9

    const v3, 0x7f121769

    const v4, 0x7f121768

    invoke-direct {v1, v2, v3, v4}, Lpc/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lpc/c;

    const v2, 0x7f0808f0

    const v3, 0x7f121771

    const v4, 0x7f121770

    invoke-direct {v1, v2, v3, v4}, Lpc/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lpc/c;

    const v2, 0x7f0808ee

    const v3, 0x7f121762

    const v4, 0x7f121761

    invoke-direct {v1, v2, v3, v4}, Lpc/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static g()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpc/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lpc/c;

    const v2, 0x7f0808ed

    const v3, 0x7f12176f

    const v4, 0x7f12176e

    invoke-direct {v1, v2, v3, v4}, Lpc/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lpc/c;

    const v2, 0x7f0808ef

    const v3, 0x7f121764

    const v4, 0x7f121763

    invoke-direct {v1, v2, v3, v4}, Lpc/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lpc/c;

    const v2, 0x7f0808ec

    const v3, 0x7f12175d

    const v4, 0x7f12175c

    invoke-direct {v1, v2, v3, v4}, Lpc/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    sget-object v0, Lpc/c;->d:Ljava/util/List;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static i()Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment$a;
    .locals 4

    new-instance v0, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment$a;

    const/4 v1, 0x0

    const v2, 0x7f120f42

    const v3, 0x7f120f43

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment$a;-><init>(III)V

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    sget-object v0, Lpc/c;->d:Ljava/util/List;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static k()Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment$a;
    .locals 4

    new-instance v0, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment$a;

    const v1, 0x7f120de9

    const v2, 0x7f030037

    const v3, 0x7f120de8

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment$a;-><init>(III)V

    return-object v0
.end method

.method public static l(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const p0, 0x7f121760

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const p0, 0x7f120c92

    goto :goto_0

    :cond_2
    const p0, 0x7f12177f

    goto :goto_0

    :cond_3
    const p0, 0x7f121754

    goto :goto_0

    :cond_4
    const p0, 0x7f121756

    goto :goto_0

    :cond_5
    const p0, 0x7f12174e

    goto :goto_0
.end method

.method public static m(Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lpc/c;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lpc/c;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static n()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpc/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lpc/c;

    const v2, 0x7f0808f2

    const v3, 0x7f12176b

    const v4, 0x7f12176a

    invoke-direct {v1, v2, v3, v4}, Lpc/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lpc/c;

    const v2, 0x7f0808f3

    const v3, 0x7f12176d

    const v4, 0x7f12176c

    invoke-direct {v1, v2, v3, v4}, Lpc/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lpc/c;

    const v2, 0x7f0808f4

    const v3, 0x7f121775

    const v4, 0x7f121774

    invoke-direct {v1, v2, v3, v4}, Lpc/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lpc/c;

    const v2, 0x7f0808f5

    const v3, 0x7f121779

    const v4, 0x7f121778

    invoke-direct {v1, v2, v3, v4}, Lpc/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static o()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpc/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lpc/c;

    const v2, 0x7f0808f3

    const v3, 0x7f12177b

    const v4, 0x7f12177a

    invoke-direct {v1, v2, v3, v4}, Lpc/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lpc/c;

    const v2, 0x7f080908

    const v3, 0x7f121773

    const v4, 0x7f121772

    invoke-direct {v1, v2, v3, v4}, Lpc/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static p(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static q(I)Z
    .locals 1

    const/4 v0, 0x5

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
