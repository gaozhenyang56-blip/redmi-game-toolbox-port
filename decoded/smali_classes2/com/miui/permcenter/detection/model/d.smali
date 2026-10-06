.class public Lcom/miui/permcenter/detection/model/d;
.super Lcom/miui/permcenter/detection/model/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/detection/model/d$a;
    }
.end annotation


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/permcenter/detection/model/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/detection/model/b;-><init>()V

    iput p1, p0, Lcom/miui/permcenter/detection/model/d;->d:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/detection/model/d;-><init>(I)V

    iput-object p2, p0, Lcom/miui/permcenter/detection/model/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/permcenter/detection/model/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static b(Landroid/content/Context;ILjava/util/List;)Lcom/miui/permcenter/detection/model/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/miui/permcenter/detection/model/RiskAppInfoBean;",
            ">;)",
            "Lcom/miui/permcenter/detection/model/a;"
        }
    .end annotation

    new-instance v0, Lcom/miui/permcenter/detection/model/a;

    const v1, 0x7f100117

    invoke-static {p0, v1, p1}, Lsb/b;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f1214e9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/miui/permcenter/detection/model/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/permcenter/detection/model/a;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lcom/miui/permcenter/detection/model/b;
    .locals 5

    new-instance v0, Lcom/miui/permcenter/detection/model/d;

    const v1, 0x7f10002d

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lsb/b;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1214e6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x16

    invoke-direct {v0, v3, v1, v2}, Lcom/miui/permcenter/detection/model/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/permcenter/detection/model/d;->i()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/miui/permcenter/detection/model/d$a;

    const v3, 0x7f120dda

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f121b29

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v4, -0x1

    invoke-direct {v2, v3, p0, v4}, Lcom/miui/permcenter/detection/model/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static d(Landroid/content/Context;I)Lcom/miui/permcenter/detection/model/d;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/miui/permcenter/detection/model/d;

    const v1, 0x7f100116

    invoke-static {p0, v1, p1}, Lsb/b;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f1214e6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-direct {v0, v2, p1, v1}, Lcom/miui/permcenter/detection/model/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/permcenter/detection/model/d;->i()Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/miui/permcenter/detection/model/d$a;

    const v2, 0x7f1214c6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1214c7

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v3, 0x7f0808af

    invoke-direct {v1, v2, p0, v3}, Lcom/miui/permcenter/detection/model/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static varargs e(Landroid/content/Context;[Lcom/miui/permcenter/detection/model/b;)Lcom/miui/permcenter/detection/model/d;
    .locals 4

    new-instance v0, Lcom/miui/permcenter/detection/model/d;

    const v1, 0x7f1214db

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1214da

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0xf

    invoke-direct {v0, v2, v1, p0}, Lcom/miui/permcenter/detection/model/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    instance-of v3, v2, Lcom/miui/permcenter/detection/model/d$a;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/miui/permcenter/detection/model/d;->i()Ljava/util/List;

    move-result-object v3

    check-cast v2, Lcom/miui/permcenter/detection/model/d$a;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/miui/permcenter/detection/model/d;->i()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_2

    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public static f(Landroid/content/Context;I)Lcom/miui/permcenter/detection/model/d;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/miui/permcenter/detection/model/d;

    const v1, 0x7f10011c

    invoke-static {p0, v1, p1}, Lsb/b;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f1214e6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    invoke-direct {v0, v2, p1, v1}, Lcom/miui/permcenter/detection/model/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lec/c;->u(Landroid/content/Context;)Z

    move-result p1

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/miui/permcenter/detection/model/d;->i()Ljava/util/List;

    move-result-object p1

    new-instance v2, Lcom/miui/permcenter/detection/model/d$a;

    const v3, 0x7f12151e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1214e5

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0, v1}, Lcom/miui/permcenter/detection/model/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/permcenter/detection/model/d;->i()Ljava/util/List;

    move-result-object p1

    new-instance v2, Lcom/miui/permcenter/detection/model/d$a;

    const v3, 0x7f1214e3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1214e4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0, v1}, Lcom/miui/permcenter/detection/model/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Lcom/miui/permcenter/detection/model/d;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/miui/permcenter/detection/model/d;

    const v1, 0x7f10011c

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lsb/b;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1214de

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Lcom/miui/permcenter/detection/model/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/permcenter/detection/model/d;->i()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/miui/permcenter/detection/model/d$a;

    const v3, 0x7f1214df

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1214e0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v4, -0x1

    invoke-direct {v2, v3, p0, v4}, Lcom/miui/permcenter/detection/model/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static h(Landroid/content/Context;I)Lcom/miui/permcenter/detection/model/d;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/miui/permcenter/detection/model/d;

    const v1, 0x7f10011d

    invoke-static {p0, v1, p1}, Lsb/b;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f1214e6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-direct {v0, v2, p1, v1}, Lcom/miui/permcenter/detection/model/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/permcenter/detection/model/d;->i()Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/miui/permcenter/detection/model/d$a;

    const v2, 0x7f1214ef

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1214f0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v3, 0x7f0808b3

    invoke-direct {v1, v2, p0, v3}, Lcom/miui/permcenter/detection/model/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/detection/model/d;->d:I

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/permcenter/detection/model/d$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/detection/model/d;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/detection/model/d;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/detection/model/d;->c:Ljava/util/List;

    return-object v0
.end method
